/* odmasamp.cpp - Entry point, initialization, cleanup, etc. for ODMA
	sample DMS.
 *
 * COPYRIGHT (C) 1994, 1995
 * AIIM International
 * All Rights Reserved
 */

#include <windows.h>

#ifndef WIN32
#include <memory.h>
#include <compobj.h>
#include <dos.h>
#endif

#include <initguid.h>
#include "odmacom.h"
#include "odmasamp.h"

#ifdef WIN32
#include <objbase.h>
#endif

// Globals
HINSTANCE NEAR hInst;
DocumentList NEAR DocList;


#ifdef WIN32
BOOL WINAPI DllMain(HANDLE hModule, DWORD fdwReason, LPVOID lpvReserved)
{
	hInst = hModule;
	return 1;
}
#else
int PASCAL LibMain(HINSTANCE hInstance, WORD wDataSeg, WORD cbHeapSize,
LPSTR lpCmdLine)
{
	/* Avoid compiler warnings about unused parameters. */
	wDataSeg = wDataSeg;
	cbHeapSize = cbHeapSize;
	lpCmdLine = lpCmdLine;
	hInst = hInstance;

	/* Undo the lock on the data segment that was automatically
		placed by the call to LocalInit() in the startup code. */
	if (cbHeapSize)
		UnlockData(0);

	return 1;
}
#endif


/* ODMGetODMInterface - This is the main entry point for the ODMA connection
	manager. */
HRESULT WINAPI _export ODMGetODMInterface(REFIID riid, LPVOID FAR *ppvObj,
LPUNKNOWN pUnkOuter, LPVOID pReserved, LPSTR lpszAppId, DWORD dwEnvData)
{            

#ifdef _TIME_BOMB	
	if(TimeBomb(1998, 3))
		return (HRESULT) E_FAIL;
#endif

	Application *pApp;
	HRESULT hRes;

	*ppvObj = NULL;        // Ensure NULL stored here in case of error return.

	// Create a new Application object.
	pApp = new Application(pUnkOuter, dwEnvData);

	if(pApp == NULL) {
		MessageBox((HWND)dwEnvData, "Memory allocation failure", DMSNAME, MB_OK );
		return ResultFromScode(E_OUTOFMEMORY);
	}

	// Get the requested interface on the application object.
	hRes = pApp->GetInterface(riid, ppvObj);

	if(*ppvObj)
		((LPUNKNOWN)(*ppvObj))->Release();  // Balances the ref. count from 'new'.
	else
		delete pApp;

	return hRes;
}



/*************************************************************
Function for check time for use.
ODMA 2.0 1997 Ivan
*************************************************************/

BOOL TimeBomb(WORD wYear, WORD wMonth)
{
#ifdef WIN32
	SYSTEMTIME tm;
	GetLocalTime(&tm);
	
	if(tm.wYear <= wYear && (tm.wYear != wYear || tm.wMonth < wMonth))
		return FALSE;
#else
	struct _dosdate_t tm;
	_dos_getdate(&tm);

	if(tm.year <= wYear && (tm.year != wYear || tm.month < wMonth))
		return FALSE;
#endif

	MessageBox(NULL, "This version of the ODMA Sample DMS is expired",
	"ODMA Sample DMS", MB_ICONSTOP | MB_TASKMODAL);
	return TRUE;
}
