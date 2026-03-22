/* doclist.cpp - This file contains the implementation of the document list
	object for the ODMA sample application.  This is a container object
	holding lists of Document objects. */

#include <windows.h>
#include "odmasamp.h"


DocumentList::DocumentList(void)
{
int i;
char *buff, *entry;

	for(i=0; i<MAXDOCS; i++)
		List[i] = NULL;

	buff = new char[2048];

	if(buff) {
		// Read in documents from previous session if any.
		GetPrivateProfileString("DocList", NULL, "", buff, 2048, DMSINI);

		for(i=0, entry=buff; *entry; i++, entry += strlen(entry)+1)
			List[i] = new Document(entry);

		delete[] buff;
	}
}


DocumentList::~DocumentList(void)
{
int i;

	// Delete all the document objects in the list.
	for(i=0; i<MAXDOCS; i++) {
		if(List[i])
			delete List[i];
	}
}


Document* DocumentList::GetDocumentByIndex(int n)
{
	if(List[n])
		return List[n];
	else
		return NULL;
}


int DocumentList::GetDocumentIndexById(LPSTR lpszDocId)
{
char FAR *lp;
int i, offset;

	// ::ODMA\<DmsId>\<doc-specific>
	offset = 7+strlen(DMSID)+1;

	for(i=0; i<MAXDOCS; i++) {
		if(List[i] == NULL)
			continue;

		lp = List[i]->GetId();

		if(!strcmp(lp, lpszDocId+offset)) {
			return i;
		}
	}//for

	return -1;
}


Document* DocumentList::GetDocumentById(LPSTR lpszDocId)
{
int n;

	n = GetDocumentIndexById(lpszDocId);

	if(n == -1)
		return NULL;
	else
		return List[n];
}


ODMSTATUS DocumentList::NewDocument(LPSTR lpszFormat, LPSTR lpszDocLocation,
Document** ppDoc, DWORD dwFlags, HWND hParent)
{
int i;
ODMSTATUS err;

	for(i=0; i<MAXDOCS; i++) {
		if(List[i] == NULL) 
		{
			// Found an empty slot.
			List[i] = new Document(lpszFormat, lpszDocLocation);

			if(List[i] == NULL) 
			{
				err = ODM_E_FAIL;
				break;
			}

			if(dwFlags & ODM_SILENT) 
			{
				// Non-interactive mode. Fill in default values.
				List[i]->SetInfo(ODM_AUTHOR, "Default");
				List[i]->SetInfo(ODM_TYPE, "Default");
				err = 0;
			}
			else
				err = List[i]->EditAttributes( hParent );

			if(err) 
			{
				delete List[i];
				List[i] = NULL;
				break;
			}

			*ppDoc = List[i];
			break;
		}//if
	}//for

	if(i == MAXDOCS) {
		MessageBox( NULL, "Too many documents", DMSNAME,
			MB_OK | MB_ICONEXCLAMATION | MB_TASKMODAL );

		err = ODM_E_FAIL;
	}

	return err;
}


ODMSTATUS DocumentList::CopyDocument( LPSTR lpszDocId, Document **ppDoc,
HWND hParent )
{
int i;
ODMSTATUS err;
Document *pOldDoc;

	pOldDoc = GetDocumentById(lpszDocId);

	if(!pOldDoc)
		return ODM_E_DOCID;

	for(i=0; i<MAXDOCS; i++) {
		if(List[i] == NULL) {
			// Found an empty slot.
			List[i] = new Document(pOldDoc);

			if(List[i] == NULL) {
				err = ODM_E_FAIL;
				break;
			}

			err = List[i]->EditAttributes(hParent);

			if(err)
				break;

			*ppDoc = List[i];
			break;
		}
	}

	if(i == MAXDOCS) {
		MessageBox( NULL, "Too many documents", DMSNAME,
			MB_OK | MB_ICONEXCLAMATION | MB_TASKMODAL );

		err = ODM_E_FAIL;
	}

	return err;
}


ODMSTATUS DocumentList::DeleteDocument( LPSTR lpszDocId )
{
int n;

	n = GetDocumentIndexById(lpszDocId);

	if(n == -1)
		return ODM_E_DOCID;

	delete List[n];
	List[n] = NULL;
	return 0;
}


void DocumentList::SaveList(void)
{
int i;

	// First wipe out the previous list
	WritePrivateProfileString("DocList", NULL, NULL, "ODMASAMP.INI");

	// Now save each document's info. to the file.
	for(i=0; i<MAXDOCS; i++) {
		if(List[i])
			List[i]->SaveInfo();
	}
}

