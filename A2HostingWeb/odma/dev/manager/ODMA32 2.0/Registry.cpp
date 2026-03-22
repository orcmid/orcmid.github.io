/* registry.cpp - ODMRegistry class implementation for ODMA 1.0 connection
 * manager.  This implementation is for Microsoft Windows.
 *
 * COPYRIGHT (C) 1994, 1995, 1996
 * AIIM International
 * All Rights Reserved

 TABS(3,3)

 Created 5/10/94 by BHC.

 Revised	4/20/95 by MGardiner.
 	Added ODMA_KEY define for ODMA32.
*/

#include <windows.h>
#include <shellapi.h>
#include <string.h>
#include <limits.h>
#include <assert.h>
#include "conman.h"

#ifdef WIN32
	#define ODMA_KEY	"ODMA32"
#else
	#define ODMA_KEY	"ODMA"
#endif


/**********************************




**********************************/

ODMRegistry::ODMRegistry(){

	m_bLogEnable = FALSE;

	char szLogKey[255];
	strncpy(szLogKey, ODMA_KEY, sizeof(ODMA_KEY));
	strcat(szLogKey,".ConnectionManager\\Logging");

	HKEY hLogKey;
	LONG err = RegOpenKey(HKEY_CLASSES_ROOT, szLogKey, &hLogKey);
	if(err != ERROR_SUCCESS)
	{
		RegCloseKey(hLogKey);
		return;
	}

	HKEY hKey;
	err = RegOpenKey(hLogKey, "Enabled", &hKey);
	if(err != ERROR_SUCCESS)
	{
		RegCloseKey(hKey);
		RegCloseKey(hLogKey);
		return;
	}

	m_bLogEnable = TRUE;
	RegCloseKey(hKey);
	
	long Len = ODM_FILENAME_MAX;
	
	err = RegQueryValue(hLogKey, "File", m_lpszLogPath, &Len);
	if(err != ERROR_SUCCESS || sizeof(m_lpszLogPath) == 0)
	{
		strcpy(m_lpszLogPath, "C:\\");
		strcat(m_lpszLogPath, ODMA_KEY);
		strcat(m_lpszLogPath, ".log");
	}

	err = RegQueryValue(hLogKey, "Options", m_lplistTokens, &Len);
  
	if(sizeof(m_lplistTokens) != 0)
	{
		char *lpNewLog = strstr(m_lplistTokens, "NEWLOG");
		
		if(lpNewLog != NULL) 
#ifdef WIN32		
			DeleteFile(m_lpszLogPath);
#else
			_lcreat(m_lpszLogPath, 0);
#endif
	}
	
	RegCloseKey(hLogKey);
}

ODMRegistry::~ODMRegistry(){

}

///////////////////////////////////////////////////////////////////////////////
// private
// ODMRegistry::GetAppDefaultDmsId--Get the default DMSId for an application.
//
// lpszAppId	<in>	The application.
// lpszDmsId	<out>	The default DMSId for this application.
//
// Returns 0 if a default DMSId is found; -1 otherwise.
//
// This method first checks the override list for a DMSId for the application.
// If one is not found, then it checks the registry for this application ODMA
// provider.
//
///////////////////////////////////////////////////////////////////////////////				 
int ODMRegistry::GetAppDefaultDmsId( LPCSTR lpszAppId, LPSTR lpszDmsId )
{
	if ( m_overrideList.GetDMS( lpszAppId, lpszDmsId ) )
		return 0;


	char * DMSKey = new char[ODM_APPID_MAX + 1 + sizeof(ODMA_KEY)];
	strncpy(DMSKey, lpszAppId, ODM_APPID_MAX);
	DMSKey[ODM_APPID_MAX - 1 ] = '\0';     // ensure NULL termination
	strcat(DMSKey, "\\" );
	strcat(DMSKey, ODMA_KEY);
	
	LONG nLen = ODM_DMSID_MAX;
	char *DMSName = new char[nLen];

	if (RegQueryValue(HKEY_CLASSES_ROOT, DMSKey, DMSName, &nLen) != ERROR_SUCCESS )
	{
		delete DMSKey, DMSName;
		return -1;
	}

	strcpy(lpszDmsId, DMSName);
	delete DMSKey, DMSName;
	
	return 0;
}
///////////////////////////////////////////////////////////////////////////////
// private
// ODMRegistry::GetSystemDefaultDmsId--Get the default DMSId registered on this system.
//
// lpszDmsId	<out>	The default DMS on this system.
//
// Returns 0 if a default DMS is found; -1 otherwise.
//
///////////////////////////////////////////////////////////////////////////////
int ODMRegistry::GetSystemDefaultDmsId( LPSTR lpszDmsId )
{
	int nRet = -1;

	HKEY hODMKey;
	LONG err = RegOpenKey( HKEY_CLASSES_ROOT, ODMA_KEY, &hODMKey );
	if(err != ERROR_SUCCESS)
		return -1;

	char strDMS[ODM_DMSID_MAX];
	for(DWORD iSubKey=0; RegEnumKey(hODMKey, iSubKey, strDMS, ODM_DMSID_MAX )
			== ERROR_SUCCESS; iSubKey++) 
	{
		char strKey[25];
		strncpy(strKey, strDMS, ODM_DMSID_MAX );
		strKey[ODM_DMSID_MAX - 1] = '\0';
		strcat(strKey, "\\");
		strcat(strKey, "DEFAULT");
	
		HKEY hDefKey;
		err = RegOpenKey(hODMKey, strKey, &hDefKey);

		if(err == ERROR_SUCCESS) 
		{
			strcpy(lpszDmsId, strDMS);
			RegCloseKey(hDefKey);
			nRet = 0;
			break;
		}

		RegCloseKey(hDefKey);
	}

	RegCloseKey(hODMKey);
	return nRet;
}

/**************************************************************************
ODMRegistry::GetDMSEntry - Given a DMSId, return the DMS Entry point
information from the registry.  The nature of this information will vary
from platform to platform.  On Windows this is the path to a DLL containing
the ODMA provider entry point.

Returns 0 if successful or non-zero otherwise.  If successful then NULL-
terminated entry information will be returned in lpszDMSEntry.  The total
length of the returned information including the trailing NULL will not
exceed entryLen.
***************************************************************************/
int ODMRegistry::GetDMSEntry(LPCSTR lpszDmsId, LPSTR lpszDMSEntry, int entryLen)
{
char key[ sizeof(ODMA_KEY) + 1 + ODM_DMSID_MAX ];
int len;
LONG err, vlen;

	len = strlen(lpszDmsId);

	if(len > ODM_DMSID_MAX)
		return -1;

	strcpy(key, ODMA_KEY);
	strcat(key, "\\");
	strcat(key, lpszDmsId);
	vlen = entryLen;
	err = RegQueryValue(HKEY_CLASSES_ROOT, key, lpszDMSEntry, &vlen);

	if(err == ERROR_SUCCESS)
		return 0;
	else
		return -1;
}

/********************************************************

 ODMRegistry::GetDMSCount--Count the DMS's in the registry

 Return the number of DMS's in the registry

**********************************************************/
WORD ODMRegistry::GetDMSCount()
{
	DWORD nDMSCount = 0;
	HKEY hkey;	
	if( RegOpenKey( HKEY_CLASSES_ROOT, ODMA_KEY, &hkey ) == ERROR_SUCCESS )
	{
		char buffer[ ODM_DMSID_MAX ];
		while ( RegEnumKey( hkey, nDMSCount, buffer, ODM_DMSID_MAX ) == ERROR_SUCCESS )
			++nDMSCount;
	
		RegCloseKey( hkey );
	}
	
	return (WORD)nDMSCount;
}

///////////////////////////////////////////////////////////////////////////////
//
// ODMRegistry::GetDMSList--Get a list of the DMS's in the registry.
//
// buffer		<out>	A buffer to store the DMS list in.
// buffer_size	<in>	The size of buffer in bytes.
//
// Returns the number of DMS's return in the DMS list in "buffer".  If buffer 
// was no large enough to hold all the DMS's, zero is returned.
//
// The format of the list returned in buffer is "<id#1>\0<id#2>\0\0".
//
///////////////////////////////////////////////////////////////////////////////
WORD ODMRegistry::GetDMSList( LPSTR buffer, WORD buffer_size )
{
	// Check for valid parameters.  Must have a buffer to write to and it must 
	// be large enough	to hold atleast one DMS ID.
	if ( buffer == NULL || buffer_size < ODM_DMSID_MAX )
		return 0;
	
	WORD iSubKey = 0;
	HKEY hkey;	
	
	if( RegOpenKey( HKEY_CLASSES_ROOT, ODMA_KEY, &hkey )== ERROR_SUCCESS )
	{
		WORD i = 0;
		while ( RegEnumKey( hkey, iSubKey, &buffer[i], ODM_DMSID_MAX ) == ERROR_SUCCESS )
		{
			++iSubKey;
			i += strlen( &buffer[i] ) + 1;
			
			// Avoid overflowing the buffer.
			if ( i + ODM_DMSID_MAX >= buffer_size )
			{
				char temp[ ODM_DMSID_MAX ];
				if ( RegEnumKey( hkey, iSubKey, temp, ODM_DMSID_MAX ) == ERROR_SUCCESS )
				{
					buffer[0] = '\0';
					iSubKey = 0;
					i = 0;
					break;
				}
			}
		}

		buffer[i] = '\0';

		RegCloseKey( hkey );
	}
	
	return iSubKey;
}

/************************************************************************
ODMRegistry::SetDMS--Set the default DmsId for this AppId

lpszAppId	<in>	The application Id.
lpszDMSId	<in>	The DMSId to set as the default for this app.

  Returns:
	ODM_SUCCESS if succesful; 
	ODM_E_NODMS if the DMS specified in lpszDmsId is not valid.
	ODM_E_REQARG if if the lpszAppId parameter is Null.

 This method does not change the default DMS in the registry.  It simply
 stores the override in the ODMRegistry object.

************************************************************************/
ODMSTATUS ODMRegistry::SetDMS( LPCSTR lpszAppId, LPCSTR lpszDMSId )
{
	if(!lpszAppId || !*lpszAppId || strlen( lpszAppId) >= ODM_APPID_MAX)
		return ODM_E_REQARG;

	if(!lpszDMSId || !*lpszDMSId || strlen( lpszDMSId ) >= ODM_DMSID_MAX)
		return ODM_E_NODMS;
	
	HKEY hkey;
	char szKey[sizeof(ODMA_KEY) + 1 + ODM_DMSID_MAX];

	strcpy( szKey, ODMA_KEY );
	strcat( szKey, "\\" );
	strcat( szKey, lpszDMSId );

	if(RegOpenKey( HKEY_CLASSES_ROOT, szKey, &hkey ) == ERROR_SUCCESS)
		RegCloseKey( hkey );
	else
		return ODM_E_NODMS;

	if (!m_overrideList.Add(AppDmsOverrideItem(lpszAppId, lpszDMSId)))
		return ODM_E_NODMS;

	return ODM_SUCCESS;
}

/************************************************************************
ODMRegistry::GetDMS - Given an application ID, return the DMS ID
for the default DMS for this application.  Look first for an app-specific
registration.  If not found then use the overall default registration.

Returns:
	ODM_SUCCESS if successful;
	ODM_E_NODMS if no valid ODMA registration can be found;
	ODM_E_REQARG if if either parameter is not specified.
************************************************************************/

ODMSTATUS ODMRegistry::GetDMS( LPCSTR lpszAppId, LPSTR lpszDMSId )
{
	if (!lpszAppId || !*lpszAppId || strlen(lpszAppId) >= ODM_APPID_MAX || !lpszDMSId)
		return ODM_E_REQARG;
	
	if ( GetAppDefaultDmsId( lpszAppId, lpszDMSId ) == 0
			|| GetSystemDefaultDmsId( lpszDMSId ) == 0 )
		return ODM_SUCCESS;

	return ODM_E_NODMS;
}

HANDLE ODMRegistry::GetLogFile()
{
	if(!m_bLogEnable || m_lpszLogPath==NULL)
		return INVALID_HANDLE_VALUE;
				
#ifdef WIN32
	HANDLE hFile = CreateFile(m_lpszLogPath, GENERIC_WRITE, FILE_SHARE_READ,
							NULL, OPEN_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
#else
	HANDLE hFile = _lopen(m_lpszLogPath, OF_WRITE);
#endif

	return hFile;
}

