/* client.cpp - ODMClient class implementation for ODMA 1.0 connection manager.
 *
 * COPYRIGHT (C) 1994, 1995, 1996
 * AIIM International
 * All Rights Reserved

	TABS(3,3)

	Created 5/5/94 by BHC.
*/

#include <windows.h>
#include <string.h>
#include "odma.h"
#include "conman.h"
#include <stdlib.h>


ODMClient::ODMClient(LPSTR lpszAppId, WORD version, DWORD dwEnvData)
: m_Unknown( this ), m_ODMDocMan( this ), m_ODMDocMan2( this ), m_ODMQuery( this )
{
	m_dwRefs = 1;
	m_version = version;
	strncpy(m_appid, lpszAppId, sizeof(m_appid));
	m_appid[sizeof(m_appid)-1] = '\0';
	m_pDefaultDms = NULL;
	m_clientWind = (HWND) dwEnvData;
	m_nQueryCount = 0;
	m_szQueryId[0] = '\0';
}

ODMClient::~ODMClient()
{
	if(m_pDefaultDms)
		delete m_pDefaultDms;

	ODMDmsListIterator iterator( m_otherDmss );
	while( iterator )
		delete iterator++;
}


//********** IUnknown implementation for ODMClient ********************
STDMETHODIMP ODMClient::CUnknown::QueryInterface(REFIID riid, LPVOID FAR* ppobj)
{
HRESULT hRes=NOERROR;
BOOL bSupport=TRUE;

	*ppobj = NULL;

	if(riid == IID_IUnknown) 
	{
		*ppobj = (LPVOID)&m_pObject->m_Unknown;
	} 
	else if(riid == IID_IODMDocMan) 
	{
		*ppobj = (LPVOID)&m_pObject->m_ODMDocMan;
	} 
	else if(riid == IID_IODMDocMan2) 
	{
		*ppobj = (LPVOID)&m_pObject->m_ODMDocMan2;
	} 
	else if(riid == IID_IODMQuery) 
	{
		*ppobj = (LPVOID)&m_pObject->m_ODMQuery;
	} 
	else if(m_pObject->m_pDefaultDms) 
	{
		hRes = m_pObject->m_pDefaultDms->m_pUnk->QueryInterface(riid, ppobj);
		bSupport = FALSE;
	}

	if(bSupport) 
	{
		if(*ppobj == NULL) 
		{
			hRes = ResultFromScode(E_NOINTERFACE);
		} 
		else 
		{
			((LPUNKNOWN)*ppobj)->AddRef();
		}
	}

	return hRes;
} /* QueryInterface() */



STDMETHODIMP_(ULONG) ODMClient::CUnknown::AddRef(VOID)
{
	ULONG dwRefs = ++m_pObject->m_dwRefs;

	return dwRefs;
} /* AddRef() */


STDMETHODIMP_(ULONG) ODMClient::CUnknown::Release(VOID)
{
	ULONG dwRefs = --m_pObject->m_dwRefs;
  
	if(dwRefs == 0) {
		delete m_pObject;
	}  

	return dwRefs;
} /* Release() */


/************************ IODMDocMan *************************/
STDMETHODIMP ODMClient::CODMDocMan::QueryInterface(REFIID riid, LPVOID FAR* ppobj)
{
	return m_pObject->m_Unknown.QueryInterface(riid, ppobj);
}


STDMETHODIMP_(ULONG) ODMClient::CODMDocMan::AddRef(VOID)
{
	return m_pObject->m_Unknown.AddRef();
}


STDMETHODIMP_(ULONG) ODMClient::CODMDocMan::Release(VOID)
{
	return m_pObject->m_Unknown.Release();
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan::SelectDoc(LPSTR lpszDocId, LPDWORD pdwFlags)
{
	return m_pObject->m_pDefaultDms->m_pDocMan->SelectDoc(lpszDocId, pdwFlags);
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan::OpenDoc(DWORD flags,
		LPSTR lpszDocId, LPSTR lpszDocLocation)
{
	ODMDms *pDms;

	ODMSTATUS odm = m_pObject->ConnectDocId(lpszDocId, &pDms);

	if(odm == ODM_E_DOCID)
		return ODM_E_DOCID;

	else if(odm != ODM_SUCCESS)
		return ODM_E_FAIL;

	odm = pDms->m_pDocMan->OpenDoc(flags, lpszDocId, lpszDocLocation);

	return odm;
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan::SaveDoc(LPSTR lpszDocId,
		LPSTR lpszNewDocId)
{
	ODMDms *pDms;

	ODMSTATUS odm = m_pObject->ConnectDocId(lpszDocId, &pDms);

	if(odm)
		return ODM_E_FAIL;

	odm = pDms->m_pDocMan->SaveDoc(lpszDocId, lpszNewDocId);

	return odm;
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan::CloseDoc(LPSTR lpszDocId,
DWORD activeTime, DWORD pagesPrinted, LPVOID sessionData, WORD dataLen)
{
	ODMDms *pDms;

	ODMSTATUS odm = m_pObject->ConnectDocId(lpszDocId, &pDms);

	if(odm != ODM_SUCCESS)
		return ODM_E_FAIL;

	odm = pDms->m_pDocMan->CloseDoc(lpszDocId, activeTime, pagesPrinted, sessionData, dataLen);

	return odm;
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan::NewDoc(LPSTR lpszDocId,
		DWORD dwFlags,	LPSTR lpszFormat, LPSTR lpszDocLocation)
{
	return m_pObject->m_pDefaultDms->m_pDocMan->NewDoc(lpszDocId, dwFlags, lpszFormat,
				lpszDocLocation);
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan::SaveAs(LPSTR lpszDocId,
		LPSTR lpszNewDocId, LPSTR lpszFormat, ODMSAVEASCALLBACK pcbCallBack,
		LPVOID pInstanceData)
{
	ODMDms *pDms;

	ODMSTATUS odm = m_pObject->ConnectDocId(lpszDocId, &pDms);
	 
	if(odm)
		return ODM_E_DOCID;

	odm = pDms->m_pDocMan->SaveAs(lpszDocId, lpszNewDocId, lpszFormat, pcbCallBack,
				pInstanceData);

	return odm;
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan::Activate(WORD action, LPSTR lpszDocId)
{
ODMSTATUS odm;
ODMDms *pDms;

	if(lpszDocId) {
		// Define the DMS for current DocId
		odm = m_pObject->ConnectDocId(lpszDocId, &pDms);

		if(odm != ODM_SUCCESS)
			return ODM_E_DOCID;
	}
	else {
		// Use the default DMS
		pDms = m_pObject->m_pDefaultDms;
	}

	odm = pDms->m_pDocMan->Activate(action, lpszDocId);

	return odm;
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan::GetDocInfo(LPSTR lpszDocId,
WORD item, LPSTR lpszData, WORD dataLen)
{
	ODMDms *pDms;

	ODMSTATUS odm = m_pObject->ConnectDocId(lpszDocId, &pDms);

	if(odm != ODM_SUCCESS)
		return ODM_E_DOCID;

	odm = pDms->m_pDocMan->GetDocInfo(lpszDocId, item, lpszData, dataLen);

	return odm;
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan::SetDocInfo(LPSTR lpszDocId,
WORD item, LPSTR lpszData)
{
	ODMSTATUS odm;
	ODMDms *pDms;

	odm = m_pObject->ConnectDocId(lpszDocId, &pDms);

	if(odm)
		return ODM_E_DOCID;

	odm = pDms->m_pDocMan->SetDocInfo(lpszDocId, item, lpszData);

	return odm;
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan::GetDMSInfo(LPSTR lpszDmsId,
LPWORD pwVerNo, LPDWORD pdwExtensions)
{
	return m_pObject->m_pDefaultDms->m_pDocMan->GetDMSInfo(lpszDmsId, pwVerNo,
				pdwExtensions );
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan::GetLeadMoniker(LPSTR lpszDocId,
LPMONIKER FAR *ppMoniker)
{
	ODMDms *pDms;

	ODMSTATUS odm = m_pObject->ConnectDocId(lpszDocId, &pDms);
	if(odm != ODM_SUCCESS)
		return ODM_E_DOCID;


	odm = pDms->m_pDocMan->GetLeadMoniker(lpszDocId, ppMoniker);

	return odm;
}


/************************ IODMDocMan2 *************************/
STDMETHODIMP ODMClient::CODMDocMan2::QueryInterface(REFIID riid, LPVOID FAR* ppobj)
{
	return m_pObject->m_Unknown.QueryInterface(riid, ppobj);
}


STDMETHODIMP_(ULONG) ODMClient::CODMDocMan2::AddRef(VOID)
{
	return m_pObject->m_Unknown.AddRef();
}


STDMETHODIMP_(ULONG) ODMClient::CODMDocMan2::Release(VOID)
{
	return m_pObject->m_Unknown.Release();
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan2::CloseDocEx(LPSTR lpszDocId,
	LPDWORD pdwFlags, DWORD activeTime, DWORD pagesPrinted,
	LPVOID sessionData, WORD dataLen)
{
	ODMDms *pDms;

	ODMSTATUS odm = m_pObject->ConnectDocId(lpszDocId, &pDms);

	if(odm != ODM_SUCCESS)
		return ODM_E_FAIL;

	odm = pDms->m_pDocMan2->CloseDocEx(lpszDocId, pdwFlags, activeTime,
		pagesPrinted, sessionData, dataLen);

	return odm;
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan2::SaveAsEx(LPSTR lpszDocId,
	LPSTR lpszNewDocId, LPSTR lpszFormat, ODMSAVEASCALLBACK pcbCallBack,
	LPVOID pInstanceData, LPDWORD pdwFlags)
{
	ODMDms *pDms;
	ODMSTATUS odm;

	if(lpszDocId && *lpszDocId)
	{
		odm = m_pObject->ConnectDocId(lpszDocId, &pDms);
		if(odm)
			return ODM_E_DOCID ;
		odm = pDms->m_pDocMan2->SaveAsEx(lpszDocId, lpszNewDocId, lpszFormat,
			pcbCallBack, pInstanceData, pdwFlags);
	}
	else
		odm = m_pObject->m_pDefaultDms->m_pDocMan2->SaveAsEx(lpszDocId,
			lpszNewDocId, lpszFormat,	pcbCallBack, pInstanceData, pdwFlags);
	
	return odm;
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan2::SaveDocEx(LPSTR lpszDocId,
LPSTR lpszNewDocId,	LPDWORD pdwFlags)
{
	ODMDms *pDms;
	ODMSTATUS odm = m_pObject->ConnectDocId(lpszDocId, &pDms);

	if(odm)
		return ODM_E_FAIL;

	odm = pDms->m_pDocMan2->SaveDocEx(lpszDocId, lpszNewDocId, pdwFlags);

	return odm;
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan2::SelectDocEx(LPSTR lpszDocIds,
	LPWORD pwDocIdsLen,	LPWORD pwDocCount, LPDWORD pdwFlags, LPSTR lpszFormatFilter)
{
	if(!lpszDocIds || !pwDocCount|| !pwDocIdsLen)
		return ODM_E_REQARG;

	if(!*pwDocCount|| !*pwDocIdsLen)
		return ODM_E_INVARG;
	
	return m_pObject->m_pDefaultDms->m_pDocMan2->SelectDocEx(lpszDocIds,
			pwDocIdsLen, pwDocCount, pdwFlags, lpszFormatFilter);
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan2::QueryCapability(LPCSTR lpszDmsId,
	DWORD function,	DWORD item, DWORD flags)
{
	ODMDms *pDms = NULL;

	if(!function)
	   return ODM_E_REQARG; 

	ODMSTATUS odm = m_pObject->ConnectDms(lpszDmsId, &pDms);
	
	if(odm != ODM_SUCCESS)
		return ODM_E_NODMS;

	odm = pDms->m_pDocMan2->QueryCapability(lpszDmsId, function, item, flags);

	return odm;
}

STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan2::SetDocEvent(LPSTR lpszDocId,
	DWORD flags, DWORD event, LPVOID lpData, DWORD dwDataLen, LPSTR lpszComment)
{
	if(lpData && !dwDataLen)
		return ODM_E_REQARG;

	ODMDms *pDms;
	ODMSTATUS odm = m_pObject->ConnectDocId(lpszDocId, &pDms);

	if(odm)
		return ODM_E_DOCID;

	odm = pDms->m_pDocMan2->SetDocEvent(lpszDocId, flags, event, lpData,
		dwDataLen, lpszComment);

	return odm;
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan2::GetAlternateContent(LPSTR lpszDocId,
	LPDWORD pdwFlags, LPSTR lpszFormat, LPSTR lpszDocLocation)
{
	ODMDms *pDms;

	if(!lpszFormat || !*lpszFormat || !lpszDocLocation)
	   return ODM_E_REQARG; 

	ODMSTATUS odm = m_pObject->ConnectDocId(lpszDocId, &pDms);
	if(odm != ODM_SUCCESS)
		return ODM_E_DOCID;

	odm = pDms->m_pDocMan2->GetAlternateContent(lpszDocId, pdwFlags,
		lpszFormat, lpszDocLocation);

	return odm;
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan2::SetAlternateContent(LPSTR lpszDocId,
	LPDWORD pdwFlags, LPSTR lpszFormat, LPSTR lpszDocLocation)
{
	if(!lpszFormat||!*lpszFormat)
		return ODM_E_INVARG;
	
	ODMDms *pDms;
	ODMSTATUS odm = m_pObject->ConnectDocId(lpszDocId, &pDms);

	if(odm)
		return ODM_E_DOCID;

	odm = pDms->m_pDocMan2->SetAlternateContent(lpszDocId, pdwFlags,
		lpszFormat, lpszDocLocation);

	return odm;
}

 
STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan2::GetDocRelation(LPSTR lpszDocId,
	 LPDWORD pdwFlags, LPSTR lpszLinkedId, LPSTR lpszFormat, LPSTR lpszPreviousId)
 {
 	ODMDms *pDms;

	if(!lpszLinkedId || !*lpszLinkedId)
	   return ODM_E_REQARG; 

	ODMSTATUS odm = m_pObject->ConnectDocId(lpszDocId, &pDms);
	
	if(odm == ODM_E_DOCID)
		return ODM_E_DOCID;

	else if(odm != ODM_SUCCESS)
		return ODM_E_FAIL;

	odm = pDms->m_pDocMan2->GetDocRelation(lpszDocId, pdwFlags,
		lpszLinkedId, lpszFormat, lpszPreviousId);

	return odm;
}


STDMETHODIMP_(ODMSTATUS) ODMClient::CODMDocMan2::SetDocRelation(LPSTR lpszDocId,
	 LPDWORD pdwFlags, LPSTR lpszLinkedId, LPSTR lpszFormat, LPSTR lpszPreviousId)
{
	if(!lpszDocId || !*lpszDocId || !lpszLinkedId || !*lpszLinkedId)
		return ODM_E_REQARG;

	ODMDms *pDms;
	ODMSTATUS odm = m_pObject->ConnectDocId(lpszDocId, &pDms);

	if(odm)
		return ODM_E_DOCID;

	odm = pDms->m_pDocMan2->SetDocRelation(lpszDocId, pdwFlags,
		lpszLinkedId, lpszFormat, lpszPreviousId);

	return odm;
}


/************************ IODMQuery *************************/
STDMETHODIMP ODMClient::CODMQuery::QueryInterface(REFIID riid, LPVOID FAR* ppobj)
{
	return m_pObject->m_Unknown.QueryInterface(riid, ppobj);
}


STDMETHODIMP_(ULONG) ODMClient::CODMQuery::AddRef(VOID)
{
	return m_pObject->m_Unknown.AddRef();
}


STDMETHODIMP_(ULONG) ODMClient::CODMQuery::Release(VOID)
{
	return m_pObject->m_Unknown.Release();
}

// Should never get called?
STDMETHODIMP_(ODMSTATUS) ODMClient::CODMQuery
		::QueryExecute(LPCSTR lpszSearchCriteria, LPSTR queryId )
{
	//Call function ClientQueryExecute;
	return ODM_E_FAIL;
}

STDMETHODIMP_(ODMSTATUS) ODMClient::CODMQuery::QueryGetResults( LPCSTR lpszQuery,
		LPSTR lpszDocId, LPSTR lpszDocName, WORD docNameLen, WORD *docCount )
{
	ODMSTATUS odm;			// The return value of a call to a DMS
	
	// Is this queryId the valid open query?
	if(!lpszQuery || !*lpszQuery ||	stricmp(lpszQuery, m_pObject->m_szQueryId) ||
		!docNameLen || !docCount || !*docCount)
		return ODM_E_REQARG;
	
	ODMDmsListIterator iterator(m_pObject->m_queryDmss);
	WORD nTotalRetrieved = 0;

	while( iterator && nTotalRetrieved < *docCount )
	{
		ODMDms* pDms = iterator.Current(); 	// The DMS to call for results
		// The number of results to retrieve
		WORD nSingleRetrieve = *docCount - nTotalRetrieved;	
		// Index where a DMS should start writing its DocId results
		WORD nWriteIdNdx = ODM_DOCID_MAX * nTotalRetrieved; 
		// Index where a DMS should start its DocName results
		WORD nWriteNameNdx = docNameLen * nTotalRetrieved;
		
		odm = pDms->m_pQuery->QueryGetResults( pDms->QueryId(), 
												&lpszDocId[ nWriteIdNdx ], 
												&lpszDocName[ nWriteNameNdx ], 
												docNameLen, 
												&nSingleRetrieve );
		if( odm != ODM_SUCCESS )
		{
			pDms->m_pQuery->QueryClose( pDms->QueryId() );
			pDms->QueryId( "" );
			m_pObject->m_queryDmss.Remove( pDms );
			iterator.Restart();
		}
		else
			nTotalRetrieved += nSingleRetrieve;
	}

	*docCount = nTotalRetrieved;
	if (!nTotalRetrieved)
		return ODM_E_NOMOREDATA;

	return ODM_SUCCESS;
}

STDMETHODIMP_(ODMSTATUS) ODMClient::CODMQuery::QueryClose( LPCSTR queryId )
{
	ODMDms *pDms;

	if(!queryId || !*queryId || !stricmp(queryId, m_pObject->m_szQueryId))
		return ODM_E_FAIL;

	// Close each assocaited DMS query.
	ODMDmsListIterator iterator(m_pObject->m_queryDmss);
	while( iterator )
	{
		pDms = iterator++;
		pDms->m_pQuery->QueryClose(pDms->QueryId());
		pDms->QueryId("");
	}

	m_pObject->m_queryDmss.ClearList();
	m_pObject->m_szQueryId[0] = '\0';

	return ODM_SUCCESS;
}

//*************** Other ODMClient functions ********************

/***************************************************************************** 
ODMClientConnectDocId - Given a docId, create and initialize an ODMDms
object for the DMS that created the docId. If the specified ODMDms object
has already been initialized for this client, simply return the existing object.
Uses ConnectDmsId to perform most of the work.

If sucessful ppDms is pointed at the newly created ODMDms object and
ODM_SUCCESS is returned. Otherwise an ODMA error code.

ODM_E_DOCID
ODM_E_CANTINIT
ODM_E_VERSION
ODM_E_NODMS
*****************************************************************************/
ODMSTATUS ODMClient::ConnectDocId(LPSTR lpszDocId, ODMDms **ppDms)
{
	char DmsId[ODM_DMSID_MAX];

	// Document IDs are of the form "::ODMA\dmsId\dms_specific_info".
	// The minimum valid length of a docId is 9 = 7 (::ODMA\) + 1 (dmsId) + 1 (\).
	// So to  extract the dmsId, from (lpszDocId + 7) to the next backslash.

	if(strlen(lpszDocId) < 9)
	{
		ErrorMessage(IDS_INVDOCID);
		return ODM_E_DOCID;
	}
	
	char *s = lpszDocId+7;
	for(int i=0; *s && *s != '\\' && i < sizeof(DmsId)-1; i++, s++)
		DmsId[i] = *s;

	DmsId[i] = '\0';

	return ConnectDms(DmsId, ppDms);
}


/***************************************************************************** 
ODMClient::ConnectDms - Given a DmsId, return an intialized ODMDms object.
If the specified ODMDms object has already been initialized for this client, the
existing object is returned.  Otherwise a new ODMDms object is created, initialized,
and attached to the ODMClient object.  It is attached as the defaultDms object if
there isn't one already.  Otherwise it is added to the list of other DMS objects.

If sucessful ppDms is pointed at the ODMDms object and ODM_SUCCESS
is returned.  Otherwise an ODMA  is returned error code:

ODM_E_CANTINIT
ODM_E_VERSION
ODM_E_NODMS
********************************************************************************/
ODMSTATUS ODMClient::ConnectDms(LPCSTR lpszDmsId, ODMDms **ppDms)
{
	LPCSTR lpszCmpDmsId;
	
	// First we have to determine whether or not the needed ODMDms object
	//	already exists.  We have to check both the client's default DMS as
	//	well as its linked list of other DMS objects. 
	if(m_pDefaultDms) 
	{
		lpszCmpDmsId = m_pDefaultDms->GetId();

		if(!stricmp(lpszCmpDmsId, lpszDmsId)) 
		{
			*ppDms = m_pDefaultDms;
			return ODM_SUCCESS;
		}
	}

	ODMDmsListIterator iterator( m_otherDmss );
	while( iterator ) 
	{
		lpszCmpDmsId = iterator.Current()->GetId();

		if(!stricmp(lpszCmpDmsId, lpszDmsId)) 
		{
			*ppDms = iterator.Current();
			return ODM_SUCCESS;
		}
	}

	// This client isn't already connected to the specified DMS, so create and initialize the DMS.
	*ppDms = new ODMDms;

	if(!*ppDms) 
	{
		return ODM_E_CANTINIT;
	}

	/* BHC 3/13/95 - We used to pass &m_Unknown as the 4th parameter which caused
		the DMS to be aggregated into the connection manager.  We decided that
		this is not the desired behavior.  We will now pass NULL so it won't be
		aggregated.  That way a caller can QueryInterface the DMS directly to get
		at its interfaces.  It can still call ODMQueryInterface to go through the
		connection manager. */

	ODMSTATUS odm = (*ppDms)->Init(lpszDmsId, m_appid, m_version, NULL,
		(DWORD)m_clientWind);
	if(odm) 
	{
#ifdef DEBUG
		MessageBox(NULL, "(*ppDms)->Init FAILED", "ConnectDms", MB_OK);
#endif
		delete *ppDms;
		return odm;
	}


	/* Successfully created and initialized the new ODMDms object.  Now attach
		it to the ODMClient object.  It will be attached as the default DMS
		unless there already is one.  In that case it will be added to the list
		of other Dmss. */
	if(m_pDefaultDms == NULL)
		m_pDefaultDms = *ppDms;
	else 
	{
		if(!m_otherDmss.Add(*ppDms))
		{
			delete *ppDms;
			return ODM_E_CANTINIT;
		}
	}

	return ODM_SUCCESS;
}

///////////////////////////////////////////////////////////////////////////////
//
//	ConnectDmss
//
//	lpszDmsList	<in>	The list of DMSs to connect to.  
//						The format of this list is "<id#1>\0<id#2>\0\0".
//
//	This method calls ConnectDms for each DMS in the input list.  There is no
//	error checking here.  The caller can iterate through the m_otherDmss list 
//	and check the m_pDefaultDms to determine how successful this mehtod was.
//
///////////////////////////////////////////////////////////////////////////////
void ODMClient::ConnectDmss( LPCSTR lpszDmsList )
{
	if( lpszDmsList )
	{
		ODMDms* pDms;
		while( *lpszDmsList )
		{
			ConnectDms( lpszDmsList, &pDms );
			lpszDmsList = &lpszDmsList[ strlen( lpszDmsList ) + 1 ];
		}
	}
}

////////////////////////////////////////////////////////////////////////////////
//
// DocIdQueryInterface - Given a document ID, query the corresponding DMS for
//   an interface.  The normal QueryInterface in IUnknown always goes to the
//   default DMS for the client; this function lets them query other DMSs.
//
//   S_OK is returned if successful.  Otherwise a COM error code is returned and
//   *ppvObj is set to NULL.
//
////////////////////////////////////////////////////////////////////////////////

HRESULT ODMClient::DocIdQueryInterface(LPSTR lpszDocId, REFIID riid, LPVOID FAR *ppvObj)
{
	ODMDms *pDms;
	*ppvObj = NULL;

	if(lpszDocId)
	{
		ODMSTATUS odm = ConnectDocId(lpszDocId, &pDms);
		if(odm == ODM_E_DOCID)
			return ResultFromScode(E_INVALIDARG);
		else if (odm != ODM_SUCCESS)
			return ResultFromScode(E_FAIL);
	}
	else 
		pDms = m_pDefaultDms;
	
	/* BHC 3/10/95 The following line used to call pDms->m_pDocMan->QueryInterface.
		This resulted in the call getting directed back to us because the document
		manager is aggregated with us.  Since here we are after the document
		manager's native implementation of these interfaces, we call them through
		their IUnknown interface. */
	return pDms->m_pUnk->QueryInterface(riid, ppvObj);
}

///////////////////////////////////////////////////////////////////////////////
//
//	ODMClient::CleintQueryExecute--This method is called by ODMQueryExecute.
//
//	lpszQuery	<in>	The query string.
//	flags		<in>	ODM_ALL or ODM_SPECIFIC
//	lpszDmsList	<in>	The list of DMSs only valid when flags==ODM_SPECFIC.
//						The format of this list is "<id#1>\0<id#2>\0\0".
//	queryId		<out>	The handle that the caller will use in subsequent calls
//						to ODMQueryGetResults and ODMQueryClose.
//
//	Returns ODM_SUCCESS, ODM_E_PARTIALSUCCESS, ODM_E_FAIL, or ODM_E_CANCEL
//
//	This method passes the query to all DMSs on the machine or to the DMSs 
//	specified in the lpszDmsList parameter depending on the value of the flags
//	parameter.  If all DMS queries are successful, the return value is ODM_SUCCESS.
//	If atleast one DMS query is successful, and one or more fail or are cancelled,
//	the return value is ODM_E_PARTIALSUCCESS.  If no queries are successful and 
//	atleast one queries failed, the return value is ODM_E_FAIL.  If all the 
//	queries were cancelled, the return value is ODM_E_CANCEL.
//
///////////////////////////////////////////////////////////////////////////////
ODMSTATUS ODMClient::ClientQueryExecute( LPCSTR lpszQuery, DWORD flags, 
										LPCSTR lpszList, LPSTR queryId )
{
	ODMSTATUS odm = ODM_SUCCESS;

	// If the caller has not closed the previous query do it now.
	if (m_szQueryId[0] != '\0')
		m_ODMQuery.QueryClose(m_szQueryId);

	// If we are searching all the DMSs, we need the full list so that we can
	// connect to all of them and track any query failures due to connection failures.
	LPSTR lpszDmsList = NULL;

	if (flags == ODM_ALL)
	{
		int nBufSize = ODM_DMSID_MAX * ODMGetDMSCount() + 1;
		lpszDmsList = new char[nBufSize];
		if(lpszDmsList)
			ODMGetDMSList((char*)lpszDmsList, nBufSize);
	}
	else if(flags == ODM_SPECIFIC)
		lpszDmsList = (LPSTR)lpszList;
	else
		return ODM_E_FAIL;


	// Make sure we are connected to all the DMSs thet we want to query.  We do 
	// not need any error checking here, connection failures will be detected
	// in the loop below.
	
	ConnectDmss(lpszDmsList);

	int nCancelCount = 0;
	int nFailCount = 0;

	if(lpszDmsList && *lpszDmsList)
	{
		ODMDms* pDms;
		ODMDmsListIterator itrOtherDmss(m_otherDmss);
		const char* lpszId = lpszDmsList;
		
		while(*lpszId)
		{
			pDms = NULL;
			if(!stricmp(lpszId, m_pDefaultDms->GetId()))
				pDms = m_pDefaultDms;
			else
				for(itrOtherDmss.Restart(); itrOtherDmss; ++itrOtherDmss)
					if(!stricmp(lpszId, itrOtherDmss.Current()->GetId()))
						pDms = itrOtherDmss.Current();

			if (pDms && pDms->m_pQuery)
				switch(pDms->m_pQuery->QueryExecute(lpszQuery, queryId))
				{
					case ODM_SUCCESS: 
						pDms->QueryId(queryId); 
						m_queryDmss.Add(pDms); 
						break;
					case ODM_E_CANCEL:
						++nCancelCount;
						break;
					case ODM_E_FAIL:
						++nFailCount;
						break;
				}
			else
				++nFailCount;	// We were unable to connect to this DMS

			lpszId = &lpszId[strlen(lpszId) + 1];
		}
	}
	else
		odm = ODM_E_FAIL;	// Invalid parameters

	if (flags == ODM_ALL && lpszDmsList)
		delete[] (char*)lpszDmsList;

	// Set the error code/return value
	if(odm == ODM_SUCCESS)				// We had valid parameter
		if(m_queryDmss.IsEmpty())		// No successful queries
			if(nFailCount)				// Atleast one query resulted in ODM_E_FAIL
				odm = ODM_E_FAIL;
			else
				odm = ODM_E_CANCEL;			// All the queries were cancelled
		else
			odm == ODM_E_PARTIALSUCCESS;	// Atleast one successful query and
											// one or more failures or cancels

	// We have query results.  Build the query handle string for this query.
	// Save it in m_szQueryId and return it to the client in queryId.
	if(odm == ODM_SUCCESS || odm == ODM_E_PARTIALSUCCESS)
	{
		++m_nQueryCount;
		strcpy(m_szQueryId,CONMAN_ID);
		char* p = &m_szQueryId[strlen(m_szQueryId)];
		ultoa(m_nQueryCount, p, 16);
		strcpy(queryId, m_szQueryId);
	}
	
	return odm;
}
