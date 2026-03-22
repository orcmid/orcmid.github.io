/* sampapp.cpp - Application class for ODMA     sample DMS.
 *
 * COPYRIGHT (C) 1994, 1995
 * AIIM International
 * All Rights Reserved
 */

#include <windows.h>
#include "odmasamp.h" 

//
Application::Application(LPUNKNOWN pUnkOuter, DWORD dwEnvData)
: m_Unknown(this), m_ODMDocMan(this), m_ODMDocMan2(this), m_ODMQuery( this )
{
	m_dwRefs = 1;

	if(pUnkOuter == NULL) {
		m_pUnkOuter = &m_Unknown;
	}
	else {
		m_pUnkOuter = pUnkOuter;
	}

	m_clientWind = (HWND) dwEnvData;

	m_szQueryId[0] = '\0';
	m_nQueryDocListIndex = 0;
	m_nQuery = 0;
}


Application::~Application()
{
	DocList.SaveList();             // save list of documents to disk
}

/* Application::GetInterface - This function allows a holder of an Application
	object to get a pointer to one of its COM interfaces. */
HRESULT Application::GetInterface(REFIID riid, LPVOID FAR *ppvObj)
{
	return m_Unknown.QueryInterface(riid, ppvObj);
}

/*********************** IUnknown Interface ****************************/
STDMETHODIMP Application::CUnknown::QueryInterface(REFIID riid, LPVOID FAR* ppobj)
{
	HRESULT hRes = NOERROR;
	*ppobj = NULL;

	if(riid == IID_IUnknown) {
		*ppobj = (LPVOID)&m_pObject->m_Unknown;
	}
	else if(riid == IID_IODMDocMan) {
		*ppobj = (LPVOID)&m_pObject->m_ODMDocMan;
	}
	else if(riid == IID_IODMDocMan2) {
		*ppobj = (LPVOID)&m_pObject->m_ODMDocMan2;
	}
	else if(riid == IID_IODMQuery) {
		*ppobj = (LPVOID)&m_pObject->m_ODMQuery;
	}

	if(*ppobj == NULL) {
		hRes = ResultFromScode(E_NOINTERFACE);
	}
	else {
		((LPUNKNOWN)*ppobj)->AddRef();
	}

	return hRes;
}


STDMETHODIMP_(ULONG) Application::CUnknown::AddRef(VOID)
{
	ULONG dwRefs = ++m_pObject->m_dwRefs;

	return dwRefs;
}


STDMETHODIMP_(ULONG) Application::CUnknown::Release(VOID)
{
	ULONG dwRefs = --m_pObject->m_dwRefs;

	if(dwRefs == 0) {
		delete m_pObject;
	}

	return dwRefs;
}


/***************************** IODMDocMan Interface *****************/
STDMETHODIMP Application::CODMDocMan::QueryInterface(REFIID riid, LPVOID FAR* ppobj)
{
	return m_pObject->m_pUnkOuter->QueryInterface(riid, ppobj);
}


STDMETHODIMP_(ULONG) Application::CODMDocMan::AddRef(VOID)
{
	return m_pObject->m_pUnkOuter->AddRef();
}


STDMETHODIMP_(ULONG) Application::CODMDocMan::Release(VOID)
{
	return m_pObject->m_pUnkOuter->Release();
}


STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan::SelectDoc(LPSTR lpszDocId,
LPDWORD pdwFlags)
{
ODMSTATUS err;

	if(*pdwFlags & ODM_SILENT)
		return ODM_E_USERINT;   // This DMS can't make a selection without user input.

	err = DialogBoxParam(hInst, MAKEINTRESOURCE(SELECT_DIALOG),
				m_pObject->m_clientWind, (DLGPROC)SelectDocProc, (LPARAM)lpszDocId);

	if(err == IDOK) 
	{
		err = 0;
	} 
	else if(err == IDAPPSELECT)
		err = ODM_E_APPSELECT;
	else
		err = ODM_E_CANCEL;

	return err;
}


STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan::OpenDoc(DWORD flags,
LPSTR lpszDocId, LPSTR lpszDocLocation)
{
Document *pDoc;

	pDoc = DocList.GetDocumentById(lpszDocId);

	if(pDoc == NULL)
		return ODM_E_DOCID;

	// Don't allow the document to be opened in write mode if it's already open.
	if((flags & ODM_MODIFYMODE) && pDoc->GetOpenCount() > 0)
		return ODM_E_INUSE;

	return pDoc->Open(lpszDocLocation);
}


STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan::SaveDoc(LPSTR lpszDocId,
LPSTR lpszNewDocId)
{
Document *pDoc;

	pDoc = DocList.GetDocumentById(lpszDocId);

	if(pDoc == NULL)
		return ODM_E_DOCID;

	strcpy(lpszNewDocId, lpszDocId);
	return pDoc->Save();
}


STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan::CloseDoc(LPSTR lpszDocId,
DWORD activeTime, DWORD pagesPrinted, LPVOID sessionData, WORD dataLen)
{
Document *pDoc;

	pDoc = DocList.GetDocumentById(lpszDocId);

	if(pDoc == NULL)
		return ODM_E_DOCID;

	return pDoc->Close(activeTime, pagesPrinted, sessionData, dataLen);
}


STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan::NewDoc(LPSTR lpszDocId,
DWORD dwFlags, LPSTR lpszFormat, LPSTR lpszDocLocation)
{
Document *pDoc;
LPSTR lp;
ODMSTATUS err;

	err = DocList.NewDocument(lpszFormat, lpszDocLocation, &pDoc, dwFlags,
				m_pObject->m_clientWind);

	if(err)
		return err;

	lp = pDoc->GetId();
	wsprintf(lpszDocId, "::ODMA\\%s\\%s", (LPSTR) DMSID, lp);
	return 0;
}


STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan::SaveAs(LPSTR lpszDocId,
LPSTR lpszNewDocId, LPSTR lpszFormat, ODMSAVEASCALLBACK pcbCallBack,
LPVOID pInstanceData)
{
ODMSTATUS err;
SaveAsData saData;
Document *pDoc;
LPSTR lp;

	pDoc = DocList.GetDocumentById(lpszDocId);

	if(!pDoc)
		return ODM_E_DOCID;

	if(pDoc->HasBeenAccessed()) 
	{
		saData.pcbCallBack = pcbCallBack;
		saData.pInstanceData = pInstanceData;
		strncpy(saData.Format, lpszFormat, sizeof(saData.Format));
		saData.Format[sizeof(saData.Format)-1] = '\0';

		err = DialogBoxParam(hInst, MAKEINTRESOURCE(SAVEAS_DIALOG),
					m_pObject->m_clientWind, (DLGPROC)SaveAsProc, (LPARAM)&saData);
	}
	else 
	{		/* Document has never been accessed, so the Save as new document
						and Save as new version options don't make a lot of sense.
						Just present the application's options if any. */
		if(pcbCallBack) 
		{
			lp = pcbCallBack((DWORD)m_pObject->m_clientWind, lpszFormat, pInstanceData);
			strncpy(saData.Format, lp, strlen(lp));
			saData.Format[strlen(lp)] = '\0';
			err = IDOK;
		}
		else 
		{
			strcpy(saData.Format, lpszFormat);
			err = IDOK;
		}
	}

	if(err == IDOK) 
	{
		err = 0;
		if(!(pDoc->HasBeenEdited()))
		{
			err = pDoc->EditAttributes(m_pObject->m_clientWind);
		}
		lpszNewDocId[0] = '\0';
		pDoc->SetInfo(ODM_CONTENTFORMAT, saData.Format);
	}
	else if(err == IDCOPY) 
	{
		err = DocList.CopyDocument(lpszDocId, &pDoc, m_pObject->m_clientWind);

		if(!err) 
		{
			lp = pDoc->GetId();
			pDoc->SetInfo(ODM_CONTENTFORMAT, saData.Format);
			wsprintf(lpszNewDocId, "::ODMA\\%s\\%s", (LPSTR) DMSID, lp);
		}

	}
	else
		err = ODM_E_CANCEL;

	return err;
}


STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan::Activate(WORD action,
LPSTR lpszDocId)
{
Document *pDoc;
ODMSTATUS err;

	if(lpszDocId == NULL) {
		if(action != ODM_NONE)
			return ODM_E_DOCID;
	}
	else {
		pDoc = DocList.GetDocumentById(lpszDocId);

		if(pDoc == NULL)
			return ODM_E_DOCID;
	}

	switch(action) {
		case ODM_NONE:
			MessageBox(NULL, "A real DMS would typically display menus or"
				" other user interface elements allowing the user to interact"
				" with the DMS at this point.",
				DMSNAME, MB_OK | MB_ICONINFORMATION | MB_TASKMODAL);
			err = 0;
			break;

		case ODM_DELETE:
			err = DocList.DeleteDocument(lpszDocId);
			break;

		case ODM_SHOWATTRIBUTES:
			err = pDoc->ShowAttributes(m_pObject->m_clientWind);
			break;

		case ODM_EDITATTRIBUTES:
			err = pDoc->EditAttributes(m_pObject->m_clientWind);
			break;

		case ODM_VIEWDOC:
			MessageBox(NULL, "A real DMS would open the document into a viewer"
				" window at this point.  This sample doesn't include a file viewer,"
				" so this is all you get.", DMSNAME,
				MB_OK  | MB_ICONINFORMATION | MB_TASKMODAL);
			err = 0;
			break;

		case ODM_OPENDOC:
			MessageBox(NULL, "A real DMS would open the document into its native"
				" application at this point.  This sample doesn't include application"
				" integrations, so this is all you get.", DMSNAME,
				MB_OK  | MB_ICONINFORMATION | MB_TASKMODAL);
			err = 0;
			break;

		default:
			err = ODM_E_ITEM;

	}

	return err;
}


STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan::GetDocInfo(LPSTR lpszDocId,
WORD item, LPSTR lpszData, WORD dataLen)
{
Document *pDoc;

	pDoc = DocList.GetDocumentById(lpszDocId);

	if(pDoc == NULL)
		return ODM_E_DOCID;

	return pDoc->GetInfo(item, lpszData, dataLen);
}


STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan::SetDocInfo(LPSTR lpszDocId,
WORD item, LPSTR lpszData)
{
Document *pDoc;

	pDoc = DocList.GetDocumentById(lpszDocId);

	if(pDoc == NULL)
		return ODM_E_DOCID;

	return pDoc->SetInfo(item, lpszData);
}


STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan::
GetDMSInfo(LPSTR lpszDmsId, LPWORD pwVerNo, LPDWORD pdwExtensions)
{
	strcpy(lpszDmsId, DMSID);

	if(pwVerNo)
		*pwVerNo = ODM_API_VERSION;

	if(pdwExtensions)
		*pdwExtensions = ODM_EXT_QUERY;

	return 0;
}


STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan::
GetLeadMoniker(LPSTR lpszDocId, LPMONIKER FAR *ppMoniker)
{
	// This sample doesn't support OLE 2.
	*ppMoniker = NULL;
	return ODM_E_FAIL;
}


/***************************** IODMDocMan2 Interface *****************/
STDMETHODIMP Application::CODMDocMan2::QueryInterface(REFIID riid, LPVOID FAR* ppobj)
{
	return m_pObject->m_pUnkOuter->QueryInterface(riid, ppobj);
}

STDMETHODIMP_(ULONG) Application::CODMDocMan2::AddRef(VOID)
{
	return m_pObject->m_pUnkOuter->AddRef();
}

STDMETHODIMP_(ULONG) Application::CODMDocMan2::Release(VOID)
{
	return m_pObject->m_pUnkOuter->Release();
}

STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan2::CloseDocEx(LPSTR lpszDocId, LPDWORD pdwFlags,
		DWORD activeTime, DWORD pagesPrinted, LPVOID sessionData, WORD dataLen)
{
	return m_pObject->m_ODMDocMan.CloseDoc(lpszDocId, activeTime, pagesPrinted, sessionData, dataLen);
}

	
STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan2::SaveAsEx(LPSTR lpszDocId, LPSTR lpszNewDocId,
		LPSTR lpszFormat, ODMSAVEASCALLBACK pcbCallBack,
		LPVOID pInstanceData, LPDWORD pdwFlags)
{
ODMSTATUS odmstatus;

	if(*pdwFlags==ODM_SILENT) return ODM_E_USERINT;

	if(lpszDocId!=NULL)
		return m_pObject->m_ODMDocMan.SaveAs(lpszDocId, lpszNewDocId,
										lpszFormat, pcbCallBack, pInstanceData);
	else
	{
		LPSTR lpszTempDocId;
		lpszTempDocId=new char[ODM_DOCID_MAX];

		odmstatus=m_pObject->m_ODMDocMan.NewDoc(lpszTempDocId, 
										ODM_SILENT, lpszFormat, NULL);
		if(odmstatus!=ODM_SUCCESS)
			odmstatus=ODM_E_FAIL;
		else
		odmstatus = m_pObject->m_ODMDocMan.SaveAs(lpszTempDocId, lpszNewDocId,
										lpszFormat, pcbCallBack, pInstanceData);

		if(odmstatus == ODM_E_CANCEL)
			DocList.DeleteDocument(lpszTempDocId);

		else if(lpszNewDocId[0] == '\0')
			strcpy(lpszNewDocId, lpszTempDocId);

		delete lpszTempDocId;
	}

return odmstatus;		
}


STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan2::SaveDocEx(LPSTR lpszDocId, 
										LPSTR lpszNewDocId, LPDWORD pdwFlags)
{
ODMSTATUS odmstatus;

	odmstatus=m_pObject->m_ODMDocMan.SaveDoc(lpszDocId, lpszNewDocId);
	if(odmstatus==ODM_SUCCESS)
		*pdwFlags=(*pdwFlags)|ODM_VERSION_SAME; 

return ODM_E_NOSUPPORT; 
}
	
STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan2::SelectDocEx(LPSTR lpszDocIds, LPWORD pwDocIdsLen,
		LPWORD pwDocCount, LPDWORD pdwFlags, LPSTR lpszFormatFilter)
{
ODMSTATUS odmstatus;

	if(*pdwFlags & ODM_SILENT)
		return ODM_E_USERINT;   // This DMS can't make a selection without user input.

	odmstatus = DialogBoxParam(hInst, MAKEINTRESOURCE(SELECT_DIALOG_EX),
				m_pObject->m_clientWind, (DLGPROC)SelectDocProcEx, (LPARAM)lpszDocIds);

	if(odmstatus == IDOK) 
	{
		odmstatus = 0;
	} 
	else if(odmstatus == IDAPPSELECT)
		odmstatus = ODM_E_APPSELECT;
	else
		odmstatus = ODM_E_CANCEL;

return odmstatus;
}
	
STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan2::QueryCapability( LPCSTR lpszDmsId, DWORD function,
		DWORD item,	DWORD flags )
{
	return ODM_E_NOSUPPORT; 
}
		
STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan2::SetDocEvent(LPSTR lpszDocId, DWORD flags, DWORD event,
		LPVOID lpData, DWORD dwDataLen, LPSTR lpszComment)
{
	return ODM_E_NOSUPPORT; 
}
			
STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan2::GetAlternateContent(LPSTR lpszDocId, LPDWORD pdwFlags,
		LPSTR lpszFormat, LPSTR lpszDocLocation)
{
Document *pDoc;

	pDoc = DocList.GetDocumentById(lpszDocId);

	if(pDoc == NULL)
		return ODM_E_DOCID;

	return pDoc->GetComponent(lpszFormat, lpszDocLocation);
}

		
STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan2::SetAlternateContent(LPSTR lpszDocId, LPDWORD pdwFlags,
		LPSTR lpszFormat, LPSTR lpszDocLocation)
{
Document *pDoc;

	pDoc = DocList.GetDocumentById(lpszDocId);

	if(pDoc == NULL)
		return ODM_E_DOCID;

	if( *pdwFlags & ODM_ALT_DELETE )
		return pDoc->DeleteComponent(lpszFormat);
	else
		return pDoc->SetComponent(lpszFormat, lpszDocLocation);
}

		
STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan2::GetDocRelation(LPSTR lpszDocId,	LPDWORD pdwFlags, 
		LPSTR lpszLinkedId,	LPSTR lpszFormat, LPSTR lpszPreviousId )
{
	return ODM_E_NOSUPPORT; 
}
		
STDMETHODIMP_(ODMSTATUS) Application::CODMDocMan2::SetDocRelation(LPSTR lpszDocId,	LPDWORD pdwFlags,
		LPSTR lpszLinkedId,	LPSTR lpszFormat, LPSTR lpszPreviousId )
{
	return ODM_E_NOSUPPORT; 
}


/***************************** IODMQuery Interface ******************/
STDMETHODIMP Application::CODMQuery::QueryInterface(REFIID riid, LPVOID FAR* ppobj)
{
	return m_pObject->m_Unknown.QueryInterface(riid, ppobj);
}

STDMETHODIMP_(ULONG) Application::CODMQuery::AddRef(VOID)
{
	return m_pObject->m_Unknown.AddRef();
}

STDMETHODIMP_(ULONG) Application::CODMQuery::Release(VOID)
{
	return m_pObject->m_Unknown.Release();
}

STDMETHODIMP_(ODMSTATUS) Application::CODMQuery::
QueryExecute( LPCSTR lpszSearchCriteria, LPSTR queryId )
{
	// A real DMS will process the lpszSearchCriteria string.  We are going to 
	// ignore the search string and say that all of our document match the search.

	// We only allow one open query.  If they have no closed the previous one
	// we will close it now.
	if ( *m_pObject->m_szQueryId )
		QueryClose( m_pObject->m_szQueryId );

	m_pObject->m_nQueryDocListIndex = 0;
	wsprintf( m_pObject->m_szQueryId, "::ODMA\\%s\\%X", DMSID, ++m_pObject->m_nQuery );
	strcpy( queryId, m_pObject->m_szQueryId );
	
	return ODM_SUCCESS;
}


STDMETHODIMP_(ODMSTATUS) Application::CODMQuery::
QueryGetResults( LPCSTR lpszQuery, LPSTR lpszDocId, LPSTR lpszDocName, WORD docNameLen, WORD *docCount )
{
	WORD& rnIndex = m_pObject->m_nQueryDocListIndex;
	WORD nCount;
	Document *pDoc;
	
	if ( strcmp( m_pObject->m_szQueryId, lpszQuery ) != 0 )
		return ODM_E_FAIL;

	for ( nCount = 0; rnIndex < MAXDOCS && nCount < *docCount; rnIndex++ )
	{
		pDoc = DocList.GetDocumentByIndex( rnIndex );
		if ( pDoc == NULL )
			continue;
		
		wsprintf( &lpszDocId[ nCount * ODM_DOCID_MAX ], 
						"::ODMA\\%s\\%s", DMSID, pDoc->GetId() );
		pDoc->GetInfo( ODM_NAME, &lpszDocName[ nCount * docNameLen ], docNameLen );
		++nCount;
	}

	if ( nCount )
	{
		*docCount = nCount;
		return ODM_SUCCESS;
	}

	return ODM_E_NOMOREDATA;
}


STDMETHODIMP_(ODMSTATUS) Application::CODMQuery::QueryClose( LPCSTR queryId )
{
	if ( strcmp( m_pObject->m_szQueryId, queryId ) == 0 )
	{
		m_pObject->m_szQueryId[0] = '\0';
		return ODM_SUCCESS;
	}
	
	return ODM_E_FAIL;
}

