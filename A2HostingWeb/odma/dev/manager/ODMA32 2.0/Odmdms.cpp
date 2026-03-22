/* odmdms.cpp - ODMDms class implementation for ODMA 1.0 connection manager.
 *
 * COPYRIGHT (C) 1994, 1995, 1996
 * AIIM International
 * All Rights Reserved

TABS(3,3)

 Created 5/5/94 by BHC.
*/

#include <windows.h>
#include "conman.h"


ODMDms::ODMDms(void)
{
	m_pUnk = NULL;
	m_pDocMan = NULL;
	m_pQuery = NULL;
	m_pDocMan = NULL;
	m_hDms = NULL;
	m_szId[0] = '\0';
	m_szQueryId[0] = '\0';
}

ODMDms::~ODMDms(void)
{
	if(m_pUnk)
		m_pUnk->Release();

	if(m_hDms)
		FreeLibrary(m_hDms);

/* Note: We don't release m_pDocMan or m_pQuery here.  It was released in Init() because
   it is an additional interface on an object. */
}


/* We use a separate Init function in this object instead of performing this
   initialization in the constructor because we need to be able to pass back
   specific error codes in the event of failure.

   Returns 0 or an ODMA error code. */
ODMSTATUS ODMDms::Init(LPCSTR lpszDmsId, LPSTR lpszAppId, WORD version,
		LPUNKNOWN pUnkOuter, DWORD dwEnvData)
{
	ODMSTATUS err;
	SCODE sc;
	int ierr;
	char DmsLoc[80];
	typedef HRESULT (WINAPI *PFNODMGETODMINTERFACE)(REFIID, LPVOID FAR *,
		LPUNKNOWN, LPVOID, LPSTR, DWORD);
	PFNODMGETODMINTERFACE lpfnODMGetODMInterface;

	/* Store the DMS Id unless it's known to be invalid. */
	if(strlen( lpszDmsId ) >= ODM_DMSID_MAX)
	{
#ifdef DEBUG
		MessageBox(NULL, lpszDmsId, "ODMDms::Init() - bad size", MB_OK);
#endif
		return ODM_E_NODMS;
	}

	strcpy(m_szId, lpszDmsId);

	/* In the future we will look at version here to decide which interface
		to query for.  But for now there is only one interface defined
		(IODMDocMan) and it corresonds to ODMA 1.0 (version == 100). */
	if(version > ODM_API_VERSION)
		return ODM_E_VERSION;

	// Get the DMS Entry point information.  Under Windows this returns the path to the
	// DLL provided by the DMS that contains the ODMGetODMInterface entry point.
	ierr = Registry.GetDMSEntry(lpszDmsId, DmsLoc, sizeof(DmsLoc));
	if(ierr) 
	{
#ifdef DEBUG
		MessageBox(NULL, "GetDMSEntry failed", "ODMDms::Init()", MB_OK);
#endif
		ErrorMessage(IDS_NODMS);
		return ODM_E_NODMS;
	}

	// Load the DMS's DLL and find the entry function. 
	m_hDms = LoadLibrary(DmsLoc);
	if((UINT)m_hDms < HINSTANCE_ERROR) 
	{
#ifdef DEBUG
		MessageBox(NULL, DmsLoc, "ODMDms::Init() - unable to load lib", MB_OK);
#endif
		m_hDms = NULL;
		return ODM_E_NODMS;
	}

	lpfnODMGetODMInterface = (PFNODMGETODMINTERFACE) GetProcAddress(m_hDms, "ODMGetODMInterface");
	if(lpfnODMGetODMInterface == NULL)
	{
#ifdef DEBUG
		MessageBox(NULL, DmsLoc, "ODMDms::Init() - no proc address", MB_OK);
#endif
		return ODM_E_NODMS;
	}

	// Call the DMS entry function to get an IUnknown interface. */
	sc = GetScode(lpfnODMGetODMInterface(IID_IUnknown, (LPVOID FAR *)&m_pUnk, pUnkOuter,
		NULL, lpszAppId, dwEnvData ));

	if(sc == S_OK) 
	{
		// Now get the IODMDocMan interface. Since this is an additional
		//interface on an object, we release it immediately.
		sc = GetScode( m_pUnk->QueryInterface(IID_IODMDocMan, (LPVOID FAR *)&m_pDocMan ));
		if(m_pDocMan)
			m_pDocMan->Release();

		// Now get the IODMQuery interface.  This interface was added with ODMA 1.5 so we
		// only need to get this interface if version is 150 or greater.
		if( version >= 150 )
		{
			sc = GetScode( m_pUnk->QueryInterface( IID_IODMQuery, (LPVOID FAR *)&m_pQuery ));
			if( m_pQuery )
				m_pQuery->Release();
#ifdef DEBUG
			else
				MessageBox( NULL, "No IID_IODMQuery", "DMS::Init()", MB_OK );
#endif
		}
		// Now get the IODMDocMan2 interface.  This interface was added with ODMA 2.0 so we
		// only need to get this interface if version is 200 or greater.
		if( version >= 200 )
		{
			sc = GetScode( m_pUnk->QueryInterface( IID_IODMDocMan2, (LPVOID FAR *)&m_pDocMan2 ));
			if( m_pDocMan2 )
				m_pDocMan2->Release();
#ifdef DEBUG
			else
				MessageBox( NULL, "No IID_IODMDocMan2", "DMS::Init()", MB_OK );
#endif
		}
	}

	if(sc == S_OK)
		err = ODM_SUCCESS;
	else if(sc == E_NOINTERFACE)
		err = ODM_E_VERSION;
	else
		err = ODM_E_CANTINIT;

	return err;
}



