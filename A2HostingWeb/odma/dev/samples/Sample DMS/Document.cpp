/* document.cpp - Document class for ODMA sample DMS.
 *
 * COPYRIGHT (C) 1994, 1995
 * AIIM International
 * All Rights Reserved
 */

#include <windows.h>
#include <dos.h>
#include "odmasamp.h"
#include <stdlib.h>

Document::Document()
{
	Init();
}

//Create new document
Document::Document(LPSTR lpszFormat, LPSTR lpszDocLocation)
{
	Init();
	strncpy(Format[0], lpszFormat, sizeof(Format[0]));
	Format[0][sizeof(Format[0])-1] = '\0';

	if(lpszDocLocation) 
	{
		strncpy(DocLocation[0], lpszDocLocation, sizeof(DocLocation[0]));
		DocLocation[0][sizeof(DocLocation[0])-1] = '\0';
		DocAccessed = 1;
	}
}

//Create document as the copy
Document::Document(Document *pOldDoc)
{
	Init();
	bEdited = pOldDoc->bEdited; //BVG:
	strcpy(Author, pOldDoc->Author);
	strcpy(Name, pOldDoc->Name);
	strcpy(DocType, pOldDoc->DocType);

	//BVG Copy first component attributes
	iComponents = 1;
	strcpy(Format[0], pOldDoc->Format[0]);
}


// Load a document saved from a previous session
Document::Document(LPSTR lpszDocId)
{
	strcpy(DocId, lpszDocId);
	SaveFlag = 0;
	OpenCount = 0;
	DocAccessed = 1;	// It was accessed in a previous session.

	//BVG: assunption: that all profiles has been edited at previous seseion 
	bEdited=TRUE;

	GetPrivateProfileString(DocId, "Author", "", Author, sizeof(Author), DMSINI);
	GetPrivateProfileString(DocId, "Name", "", Name, sizeof(Name), DMSINI);
	GetPrivateProfileString(DocId, "DocType", "", DocType, sizeof(DocType), DMSINI);

	//BVG: Load components properties
	iComponents = GetPrivateProfileInt(DocId, "Components", 0, DMSINI);
	for( int ii=0; ii<iComponents; ii++)
	{
		char szKey[20];
		sprintf(szKey, "%s%d", "Format", ii);
		GetPrivateProfileString(DocId, szKey, "", Format[ii], sizeof(Format[ii]), DMSINI);
		sprintf(szKey, "%s%d", "DocLocation", ii);
		GetPrivateProfileString(DocId, szKey, "", DocLocation[ii], sizeof(DocLocation[ii]), DMSINI);
	}
}


void Document::Init(void)
{
#ifdef WIN32
SYSTEMTIME tm;
#elif __BORLANDC__
	struct time tm;
#else
	struct _dostime_t tm;
#endif


	bEdited = FALSE; //BVG:
	SaveFlag = 0;
	Author[0] = '\0';
	Name[0] = '\0';
	DocType[0] = '\0';
	OpenCount = 0;

	//BVG Init first component
	iComponents=1;
	Format[0][0] = '\0';
	DocLocation[0][0] = '\0';

	DocAccessed = 0;

#ifdef WIN32
	GetLocalTime(&tm);

	if(tm.wMilliseconds > 99)
		tm.wMilliseconds /= 10;

	wsprintf(DocId, "%02d-%02d-%02d-%02d", tm.wHour, tm.wMinute, tm.wSecond, tm.wMilliseconds);
#elif __BORLANDC__
	gettime(&tm);
	wsprintf(DocId, "%02d-%02d-%02d-%02d", tm.ti_hour, tm.ti_min, tm.ti_sec, tm.ti_hund);
#else
	_dos_gettime(&tm);
	wsprintf(DocId, "%02d-%02d-%02d-%02d", tm.hour, tm.minute, tm.second, tm.hsecond);
#endif
}


ODMSTATUS Document::Open(LPSTR lpszFileName)
{
	OpenCount++;
	char drive[_MAX_DRIVE];
	char dir[_MAX_DIR];
	char fname[_MAX_FNAME];
	char ext[_MAX_EXT];

	if(DocLocation[0][0] == '\0') 
	{
	#ifdef WIN32
		char szTmpPath[256];

		// WIN32 requires you to get a temp path first, then pass it to get
		// a temp filename.
		GetTempPath(256, (LPTSTR) szTmpPath);
		GetTempFileName(szTmpPath, "ODM", 0, DocLocation[0]);
		_splitpath(DocLocation[0], drive, dir, fname, ext);
		_makepath(DocLocation[0], drive, dir, fname, "txt");
	#else
		GetTempFileName(0, "ODM", 0, DocLocation[0]);
		_splitpath(DocLocation[0], drive, dir, fname, ext);
		_makepath(DocLocation[0], drive, dir, fname, "txt");
	#endif
	}

	strcpy(lpszFileName, DocLocation[0]);
	DocAccessed = 1;
	return 0;
}


ODMSTATUS Document::Close(DWORD activeTime, DWORD pagesPrinted,
LPVOID sessionData, WORD dataLen)
{
	OpenCount--;
	return 0;
}


ODMSTATUS Document::EditAttributes(HWND hParent)
{
ProDlgData pdData;
int err;

	pdData.pDocument = this;
	pdData.Mode = PROFILE_EDIT;

	err = DialogBoxParam(hInst, MAKEINTRESOURCE(PROFILE_DIALOG), hParent,
				(DLGPROC)ProfileProc, (LPARAM)&pdData);

	if(err == IDOK)
	{
		bEdited=TRUE; //BVG:
		err = 0;
	}
	else
		err = ODM_E_CANCEL;

	return err;
}


ODMSTATUS Document::ShowAttributes(HWND hParent)
{
ProDlgData pdData;

	pdData.pDocument = this;
	pdData.Mode = 0;

	DialogBoxParam(hInst, MAKEINTRESOURCE(PROFILE_DIALOG), hParent,
		(DLGPROC)ProfileProc, (LPARAM)&pdData);

	return 0;
}


ODMSTATUS Document::GetInfo( WORD item, LPSTR lpszData, WORD dataLen )
{
ODMSTATUS err;
char *dataSource;
char szFormatNames[MAXCOMPONENTS * (ODM_FORMAT_MAX + 1)];
char buff[165];

	switch(item) {
		case ODM_AUTHOR: dataSource = Author; break;
		case ODM_NAME: dataSource = Name; break;
		case ODM_TYPE: dataSource = DocType; break;
		case ODM_TITLETEXT:
			wsprintf(buff, "%s - %s", (LPSTR)DocId, (LPSTR)Name);
			dataSource = buff;
			break;

		case ODM_CONTENTFORMAT: 
			//BVG:
			dataSource = Format[0]; 
		break;

		//BVG: Build comma-separated list of content format names  
		case ODM_ALTERNATE_RENDERINGS:
		{
			strcpy(szFormatNames, "");
			for(int ii=0; ii<iComponents; ii++)
			{
				strcat(szFormatNames, Format[ii]);
				strcat(szFormatNames, ",");
				if(strlen(szFormatNames) > dataLen) return ODM_E_TRUNCATED;
			}
			strcpy(szFormatNames+strlen(szFormatNames)-1, "");
			dataSource = szFormatNames; 
		}
		break;

		default: dataSource = NULL;
	}

	if(dataSource) 
	{
		strncpy(lpszData, dataSource, dataLen);
		lpszData[dataLen-1] = '\0';
		err = ODM_SUCCESS;
	} else
		err = ODM_E_ITEM;

	return err;
}


ODMSTATUS Document::SetInfo( WORD item, LPSTR lpszData )
{
char *target;
int len;
ODMSTATUS err;

	switch(item) 
	{
		case ODM_AUTHOR: target = Author; len = sizeof(Author); break;
		case ODM_NAME: target = Name; len = sizeof(Name); break;
		case ODM_TYPE: target = DocType; len = sizeof(DocType); break;
		case ODM_CONTENTFORMAT:
			//BVG:
			target = Format[0]; 
			len = sizeof(Format[0]);
			break;
		default: target = NULL;
	}

	if(target) 
	{
		strncpy(target, lpszData, len);
		target[len-1] = '\0';
		err = 0;
	} else
		err = ODM_E_ITEM;

	return err;
}


void Document::SaveInfo(void)
{
	// Put the docId into the DocList section.
	WritePrivateProfileString("DocList", DocId, "", DMSINI);

	// Put the document's info. into its own section
	WritePrivateProfileString(DocId, "Author", Author, DMSINI);
	WritePrivateProfileString(DocId, "Name", Name, DMSINI);
	WritePrivateProfileString(DocId, "DocType", DocType, DMSINI);

	//BVG:
	for( int ii=0; ii<iComponents; ii++)
	{
		char	szValue[20];
		char	szKey[20];

		sprintf(szValue, "%d", iComponents);
		WritePrivateProfileString(DocId, "Components", szValue, DMSINI);

		sprintf(szKey, "%s%d", "Format", ii);
		WritePrivateProfileString(DocId, szKey, Format[ii], DMSINI);

		sprintf(szKey, "%s%d", "DocLocation", ii);
		WritePrivateProfileString(DocId, szKey, DocLocation[ii], DMSINI);
	}
}

//BVG:
//Add new component, Content Format Name & Doc Location
ODMSTATUS Document::AddComponent(LPSTR lpszFormat, LPSTR lpszDocLocation)
{
	if(iComponents==MAXCOMPONENTS) return ODM_E_FAIL;

	iComponents++;
	strcpy(Format[iComponents-1], lpszFormat);
	strcpy(DocLocation[iComponents-1], lpszDocLocation);
	return ODM_SUCCESS;
}

//BVG:
//Set DocLocation for speciffic Content Format Name
ODMSTATUS Document::SetComponent(LPSTR lpszFormat, LPSTR lpszDocLocation)
{
	for(int ii=0; ii<iComponents; ii++)
	{
		if( strcmp(Format[ii], lpszFormat) == 0 )
		{
			strcpy(DocLocation[ii], lpszDocLocation);
			return ODM_SUCCESS;
		}
	}

	return AddComponent(lpszFormat, lpszDocLocation);
}

//BVG:
ODMSTATUS Document::DeleteComponent(LPSTR lpszFormat)
{
	for(int ii=0; ii<iComponents; ii++)
	{
		if( strcmp(Format[ii], lpszFormat) == 0 )
		{
			for(int jj=ii; jj<iComponents-1; jj++)
			{
				strcpy(DocLocation[jj], DocLocation[jj+1]);
				strcpy(Format[jj], Format[jj+1]);
			}
			iComponents--;
			return ODM_SUCCESS;
		}
	}
	return ODM_E_FAIL;	
}

//BVG:
//Get DocLocation for specific Content Format Name
ODMSTATUS Document::GetComponent(LPSTR lpszFormat, LPSTR lpszDocLocation)
{
	for(int ii=0; ii<iComponents; ii++)
	{
		if( strcmp(Format[ii], lpszFormat) == 0 )
		{
			strcpy(lpszDocLocation, DocLocation[ii]);
			return ODM_SUCCESS;
		}
	}
	return ODM_E_FAIL;
}
