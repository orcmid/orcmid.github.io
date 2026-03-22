/********************************************************************************************
OdmaEnt.cpp - ODMA API entry points for ODMA 1.0 connection manager.
Other than ODMRegisterApp these do very little but just call the
    corresponding ODMClient functions.
COPYRIGHT (C) 1994, 1995, 1996.


ODMA 2.0 -1997. Discrabe all Function see in ODMA20.doc

LogString(str), LogParString(str, str), LogParNumber(str, str), LogParList(str, str) -
function for work with logging. 
*********************************************************************************************/

#include <windows.h>
#include "conman.h"

// ODMA 1.0 connection manager function.

ODMSTATUS WINAPI _export ODMActivate(ODMHANDLE odmHandle, WORD action,
		LPSTR lpszDocId)
{
	LogString("ODMActivate\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParNumber("action", action);
	LogParString("lpszDocId", lpszDocId);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan.Activate(action, lpszDocId);
	}

	LogString("\tNo output parameters\r\n");
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMCloseDoc(ODMHANDLE odmHandle, LPSTR lpszDocId,
		DWORD activeTime, DWORD pagesPrinted, LPVOID sessionData, WORD dataLen)
{
	LogString("ODMCloseDoc\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszDocId", lpszDocId);
	LogParNumber("activeTime", activeTime);
	LogParNumber("pagesPrinted", pagesPrinted);
	LogParNumber("sessionData address", (ULONG)sessionData);
	LogParNumber("dataLen", dataLen);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan.CloseDoc(lpszDocId, activeTime, pagesPrinted,
			sessionData, dataLen);
	}

	LogString("\tNo output parameters\r\n");
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMGetDMSInfo(ODMHANDLE odmHandle, LPSTR lpszDmsId,
		LPWORD pwVerNo, LPDWORD pdwExtensions)
{
	LogString("ODMGetDMSInfo\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan.GetDMSInfo(lpszDmsId, pwVerNo, pdwExtensions);
	}

	LogString("\tOutput parameters:\r\n");
	LogParString("lpszDmsId", lpszDmsId);
	LogParNumber("pwVerNo", *pwVerNo);
	LogParNumber("pdwExtensions", *pdwExtensions);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMGetDocInfo(ODMHANDLE odmHandle, LPSTR lpszDocId,
		WORD item, LPSTR lpszData, WORD dataLen)
{
	LogString("ODMGetDocInfo\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszDocId", lpszDocId);
	LogParNumber("item", item);
	if(item == ODM_DMS_DEFINED)
		LogParString("lpszData", lpszData);
	LogParNumber("dataLen", dataLen);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan.GetDocInfo(lpszDocId, item, lpszData, dataLen);
	}

	LogString("\tOutput parameters:\r\n");
	LogParString("lpszData", lpszData);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMGetLeadMoniker(ODMHANDLE odmHandle, LPSTR lpszDocId,
		LPMONIKER FAR *ppMoniker)
{
	LogString("ODMGetLeadMoniker\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszDocId", lpszDocId);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm =  pClient->m_ODMDocMan.GetLeadMoniker(lpszDocId, ppMoniker);
	}

	LogString("\tOutput parameters:\r\n");
	LogParNumber("ppMoniker address", (ULONG)ppMoniker);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMNewDoc(ODMHANDLE odmHandle, LPSTR lpszDocId,
		DWORD dwFlags, LPSTR lpszFormat, LPSTR lpszDocLocation)
{
	LogString("ODMNewDoc\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParNumber("dwFlags", dwFlags);
	LogParString("lpszFormat", lpszFormat);
	LogParString("lpszDocLocation", lpszDocLocation);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan.NewDoc(lpszDocId, dwFlags, lpszFormat, lpszDocLocation);
	}

	LogString("\tOutput parameters:\r\n");
	LogParString("lpszDocId", lpszDocId);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMOpenDoc(ODMHANDLE odmHandle, DWORD flags,
		LPSTR lpszDocId, LPSTR lpszDocLocation)
{
	LogString("ODMOpenDoc\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParNumber("flags", flags);
	LogParString("lpszDocId", lpszDocId);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan.OpenDoc( flags, lpszDocId, lpszDocLocation );
	}

	LogString("\tOutput parameters:\r\n");
	LogParString("lpszDocLocation", lpszDocLocation);
	LogParNumber("Return value", odm);

	return odm;
}


HRESULT WINAPI _export ODMQueryInterface(ODMHANDLE odmHandle, LPSTR lpszDocId,
		REFIID riid, LPVOID FAR *ppvObj)
{
	LogString("ODMQueryInterface\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszDocId", lpszDocId);
	LogParNumber("riid address", (ULONG)(&riid));

	HRESULT hRes = (HRESULT) E_INVALIDARG;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		hRes = pClient->DocIdQueryInterface(lpszDocId, riid, ppvObj);
	}

	LogString("\tOutput parameters:\r\n");
	LogParNumber("ppvObj address", (ULONG)ppvObj);
	LogParNumber("Return value", (ULONG)hRes);

	return hRes;
}


ODMSTATUS WINAPI _export ODMRegisterApp(ODMHANDLE FAR *pOdmHandle,
		WORD version, LPSTR lpszAppId, DWORD dwEnvData, LPVOID pReserved)
{
	LogString("ODMRegisterApp\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("version", version);
	LogParString("lpszAppId", lpszAppId);
	LogParNumber("dwEnvData", dwEnvData);

	ODMSTATUS odm;

#ifdef __TIME_BOMB__
	if(TimeBomb(1998,3))
		return ODM_E_VERSION;
#endif

	char lpszDmsId[ODM_DMSID_MAX];
	*pOdmHandle = NULL;

	// Get the apropriate DMS ID from the registry.
	odm = Registry.GetDMS(lpszAppId, lpszDmsId);
	if(odm == ODM_SUCCESS) 
	{
		// Create a new ODMClient object.
		ODMClient *pClient = new ODMClient(lpszAppId, version, dwEnvData);

		if(pClient)
		{
			ODMDms *pDms = NULL;
			odm = pClient->ConnectDms(lpszDmsId, &pDms);
			if(odm == ODM_SUCCESS)
				*pOdmHandle = (ODMHANDLE) pClient;
			else
				delete pClient;
		}
		else
			odm = ODM_E_CANTINIT;
	}
	else
		odm = ODM_E_NODMS;

	LogString("\tOutput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)*pOdmHandle);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMSaveAs(ODMHANDLE odmHandle, LPSTR lpszDocId,
		LPSTR lpszNewDocId, LPSTR lpszFormat, ODMSAVEASCALLBACK pcbCallBack,
		LPVOID pInstanceData)
{
	LogString("ODMSaveAs\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszDocId", lpszDocId);
	LogParString("lpszFormat", lpszFormat);
	LogParNumber("pcbCallBack address", (ULONG) pcbCallBack);
	LogParNumber("pInstanceData address", (ULONG) pInstanceData);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan.SaveAs(lpszDocId, lpszNewDocId, lpszFormat,
			pcbCallBack, pInstanceData);
	}

	LogString("\tOutput parameters:\r\n");
	LogParString("lpszNewDocId", lpszNewDocId);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMSaveDoc(ODMHANDLE odmHandle, LPSTR lpszDocId,
		LPSTR lpszNewDocId)
{
	LogString("ODMSaveDoc\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszDocId", lpszDocId);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm =  pClient->m_ODMDocMan.SaveDoc(lpszDocId, lpszNewDocId);
	}

	LogString("\tOutput parameters:\r\n");
	LogParString("lpszNewDocId", lpszNewDocId);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMSelectDoc(ODMHANDLE odmHandle,
		LPSTR lpszDocId, LPDWORD pdwFlags)
{
	LogString("ODMSelectDoc\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParNumber("pdwFlags", *pdwFlags);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan.SelectDoc(lpszDocId, pdwFlags);
	}

	LogString("\tOutput parameters:\r\n");
	LogParString("lpszDocId", lpszDocId);
	LogParNumber("pdwFlags", *pdwFlags);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMSetDocInfo(ODMHANDLE odmHandle, LPSTR lpszDocId,
		WORD item, LPSTR lpszData)
{
	LogString("ODMSetDocInfo\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszDocId", lpszDocId);
	LogParNumber("item", item);
	LogParString("lpszData", lpszData);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan.SetDocInfo(lpszDocId, item, lpszData);
	}

	LogString("\tNo output parameters\r\n");
	LogParNumber("Return value", odm);

	return odm;
}


void WINAPI _export ODMUnRegisterApp(ODMHANDLE odmHandle)
{
	LogString("ODMUnRegisterApp\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);

	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *) odmHandle;
		delete pClient;
	}
	LogString("\tNo output parameters\r\n");
	LogString("\tNo return value\r\n");
}

/*******************************************************
 Next function from ODMA 1.5 Function, except ODMGetDMS..
 Using ODMRegestry class then work with information
 from regestry.
*******************************************************/

WORD WINAPI _export ODMGetDMSCount()
{
	LogString("ODMGetDMSCount\r\n");

	WORD odm = Registry.GetDMSCount();

	LogParNumber("Return value", odm);

	return odm;
}

WORD WINAPI _export ODMGetDMSList(LPSTR buffer, WORD buffer_size )
{
	LogString("ODMGetDMSList \r\n");
	
	WORD odm = Registry.GetDMSList(buffer, buffer_size);

	LogString("\tOutput parameters:\r\n");
	if(odm)
		LogParList("buffer", buffer);
	else
		LogParString("buffer", "Parameter not defined");
	LogParNumber("buffer_size", buffer_size);
	LogParNumber("Return value", odm);

	return odm;
}

ODMSTATUS WINAPI _export ODMGetDMS( LPCSTR lpszAppId, LPSTR lpszDMSId)
{
	LogString("ODMGetDMS\r\n");
	LogString("\tInput parameters:\r\n");
	LogParString("lpszAppId", lpszAppId);
	
	ODMSTATUS odm = Registry.GetDMS(lpszAppId, lpszDMSId);
	
	LogString("\tOutput parameters:\r\n");
	LogParString("lpszDMSId", lpszDMSId);
	LogParNumber("Return value", odm);

	return odm;
}

ODMSTATUS WINAPI _export ODMSetDMS(LPCSTR lpszAppId, LPCSTR lpszDMSId)
{
	LogString("ODMSetDMS\r\n");
	LogString("\tInput parameters:\r\n");
	LogParString("lpszAppId", lpszAppId);
	LogParString("lpszDMSId", lpszDMSId);

	ODMSTATUS odm = Registry.SetDMS(lpszAppId, lpszDMSId);
	
	LogParNumber("Return value", odm);

	return odm;
}

/*******************************************************
 The three next function from ODMA 1.5 Function.
 Using ODMQuery interface.
*******************************************************/

ODMSTATUS WINAPI _export ODMQueryExecute(ODMHANDLE odmHandle, LPCSTR lpszQuery,
		DWORD flags, LPCSTR lpszDMSList, LPSTR queryId)
{
	LogString("ODMQueryExecute\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszQuery", lpszQuery);
	LogParNumber("flags", flags);
	LogParList("lpszDMSList", lpszDMSList);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->ClientQueryExecute( lpszQuery, flags, lpszDMSList, queryId);
	}

	LogString("\tOutput parameters:\r\n");
	LogParString("queryId", queryId);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMQueryGetResults(ODMHANDLE odmHandle, LPCSTR queryId,
		LPSTR lpszDocId, LPSTR lpszDocName, WORD docNameLen, WORD *docCount)
{
	LogString("ODMQueryGetResults\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("queryId", queryId);
	LogParNumber("docNameLen", docNameLen);
	LogParNumber("docCount", *docCount);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMQuery.QueryGetResults( queryId, lpszDocId,
			lpszDocName, docNameLen, docCount );
	}

	LogString("\tOutput parameters:\r\n");
	if(!odm)
	{
		LogParString("lpszDocId", lpszDocId, ODM_DOCID_MAX, *docCount);
		LogParString("lpszDocName", lpszDocName, docNameLen, *docCount);
	}
	else
	{
		LogParString("lpszDocId", "Parameter not defined");
		LogParString("lpszDocName", "Parameter not defined");
	}

	LogParNumber("docCount", *docCount);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMQueryClose(ODMHANDLE odmHandle, LPCSTR queryId)
{
	LogString("ODMQueryClose\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("queryId", queryId);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMQuery.QueryClose(queryId);
	}

	LogString("\tNo output parameters\r\n");
	LogParNumber("Return value", odm);

	return odm;
}


/*******************************************************
 The ten next function is ODMA 2.0 Function.
 Using ODMDocMan2 interface.
 Ivan Pavlov
*******************************************************/

ODMSTATUS WINAPI _export ODMCloseDocEx(ODMHANDLE odmHandle, LPSTR lpszDocId,
			LPDWORD pdwFlags, DWORD activeTime, DWORD pagesPrinted,
			LPVOID sessionData, WORD dataLen)
{
	LogString("ODMCloseDocEx\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("Handle", (ULONG)odmHandle);
	LogParString("lpszDocId", lpszDocId);
	LogParNumber("pdwFlags", *pdwFlags);
	LogParNumber("activeTime", activeTime);
	LogParNumber("pagesPrinted", pagesPrinted);
	LogParNumber("sessionData address", (ULONG)sessionData);
	LogParNumber("dataLen", dataLen);
	
	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan2.CloseDocEx(lpszDocId, pdwFlags,
			activeTime, pagesPrinted, sessionData, dataLen);
	}
	
	LogString("\tOutput parameters:\r\n");
	LogParNumber("pdwFlags", *pdwFlags);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMGetAlternateContent(ODMHANDLE odmHandle, LPSTR lpszDocId,
			LPDWORD pdwFlags, LPSTR lpszFormat, LPSTR lpszDocLocation)
{
	LogString("ODMGetAlternateContent\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszDocId", lpszDocId);
	LogParNumber("pdwFlags", *pdwFlags);
	LogParString("lpszFormat", lpszFormat);
	LogParString("lpszDocLocation", lpszDocLocation);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan2.GetAlternateContent(lpszDocId,
			pdwFlags, lpszFormat, lpszDocLocation);
	}
	
	LogString("\tOutput parameters:\r\n");
	LogParNumber("pdwFlags", *pdwFlags);
	LogParString("lpszDocLocation", lpszDocLocation);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMGetDocRelation(ODMHANDLE odmHandle, LPSTR lpszDocId,
			LPDWORD pdwFlags, LPSTR lpszLinkedId, LPSTR lpszFormat, LPSTR lpszPreviousId)
{
	LogString("ODMGetDocRelation\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszDocId", lpszDocId);
	LogParNumber("pdwFlags", *pdwFlags);
	LogParString("lpszFormat", lpszFormat);
	LogParString("lpszPreviousId", lpszPreviousId);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan2.GetDocRelation(lpszDocId, pdwFlags,
			lpszLinkedId, lpszFormat, lpszPreviousId);
	}
	
	LogString("\tOutput parameters:\r\n");
	LogParNumber("pdwFlags", *pdwFlags);
	LogParString("lpszLinkedId", lpszLinkedId);
	LogParString("lpszFormat", lpszFormat);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMQueryCapability(ODMHANDLE odmHandle, LPCSTR lpszDmsId,
			DWORD function,	DWORD item, DWORD flags)
{
	LogString("ODMQueryCapability\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszDmsId", lpszDmsId);
	LogParNumber("function", function);
	LogParNumber("item", item);
	LogParNumber("flags", flags);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan2.QueryCapability(lpszDmsId, function, item, flags);
	}
	
	LogString("\tNo output parameters\r\n");
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMSaveAsEx(ODMHANDLE odmHandle, LPSTR lpszDocId,
			LPSTR lpszNewDocId,	LPSTR lpszFormat, ODMSAVEASCALLBACK pcbCallBack,
			LPVOID pInstanceData, LPDWORD pdwFlags)
{
	LogString("ODMSaveAsEx\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszDocId", lpszDocId);
	LogParString("lpszFormat", lpszFormat);
	LogParNumber("pcbCallBack address", (ULONG) pcbCallBack);
	LogParNumber("pInstanceData address", (ULONG) pInstanceData);
	LogParNumber("pdwFlags", *pdwFlags);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan2.SaveAsEx(lpszDocId,  lpszNewDocId,
			 lpszFormat, pcbCallBack, pInstanceData, pdwFlags);
	}
	
	LogString("\tOutput parameters:\r\n");
	LogParString("lpszNewDocId", lpszNewDocId);
	LogParNumber("pdwFlags", *pdwFlags);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMSaveDocEx(ODMHANDLE odmHandle, LPSTR lpszDocId,
			LPSTR lpszNewDocId,	LPDWORD pdwFlags)
{
	LogString("ODMSaveDocEx\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszDocId", lpszDocId);
	LogParNumber("pdwFlags", *pdwFlags);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan2.SaveDocEx(lpszDocId, lpszNewDocId, pdwFlags);
	}
	
	LogString("\tOutput parameters:\r\n");
	LogParString("lpszNewDocId", lpszNewDocId);
	LogParNumber("pdwFlags", *pdwFlags);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMSelectDocEx(ODMHANDLE odmHandle, LPSTR lpszDocIds,
			LPWORD pwDocIdsLen,	LPWORD pwDocCount, LPDWORD pdwFlags,
			LPSTR lpszFormatFilter)
{
	LogString("ODMSelectDocEx\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParNumber("pwDocIdsLen", *pwDocIdsLen);
	LogParNumber("pwDocCount", *pwDocCount);
	LogParNumber("pdwFlags", *pdwFlags);
	LogParList("lpszFormatFilter", lpszFormatFilter);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan2.SelectDocEx(lpszDocIds, pwDocIdsLen,
			pwDocCount, pdwFlags, lpszFormatFilter);
	}
	
	LogString("\tOutput parameters:\r\n");
	if(!odm)
		LogParList("lpszDocIds", lpszDocIds);
	else
		LogParString("lpszDocIds", "Parameter not defined");
	LogParNumber("pwDocIdsLen", *pwDocIdsLen);
	LogParNumber("pwDocCount", *pwDocCount);
	LogParNumber("pdwFlags", *pdwFlags);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMSetAlternateContent(ODMHANDLE odmHandle, LPSTR lpszDocId,
			LPDWORD pdwFlags, LPSTR lpszFormat, LPSTR lpszDocLocation)
{
	LogString("ODMSetAlternateContent\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszDocId", lpszDocId);
	LogParNumber("pdwFlags", *pdwFlags);
	LogParString("lpszFormat", lpszFormat);
	LogParString("lpszDocLocation", lpszDocLocation);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan2.SetAlternateContent(lpszDocId,
			pdwFlags, lpszFormat, lpszDocLocation);
	}
	
	LogString("\tOutput parameters:\r\n");
	LogParNumber("pdwFlags", *pdwFlags);
	LogParString("lpszDocLocation", lpszDocLocation);
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMSetDocEvent(ODMHANDLE odmHandle, LPSTR lpszDocId,
			DWORD flags, DWORD event, LPVOID lpData, DWORD dwDataLen, LPSTR lpszComment)
{
	LogString("ODMSetDocEvent\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszDocId", lpszDocId);
	LogParNumber("flags", flags);
	LogParNumber("event", event);
	LogParNumber("lpData", (ULONG)lpData);
	LogParNumber("dwDataLen", dwDataLen);
	LogParString("lpszComment", lpszComment);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan2.SetDocEvent(lpszDocId, flags,
			event, lpData, dwDataLen, lpszComment);
	}
	
	LogString("\tNo output parameters:\r\n");
	LogParNumber("Return value", odm);

	return odm;
}


ODMSTATUS WINAPI _export ODMSetDocRelation(ODMHANDLE odmHandle, LPSTR lpszDocId,
			LPDWORD pdwFlags, LPSTR lpszLinkedId, LPSTR lpszFormat, LPSTR lpszPreviousId)
{
	LogString("ODMSetDocRelation\r\n");
	LogString("\tInput parameters:\r\n");
	LogParNumber("odmHandle", (ULONG)odmHandle);
	LogParString("lpszDocId", lpszDocId);
	LogParNumber("pdwFlags", *pdwFlags);
	LogParString("lpszLinkedId", lpszLinkedId);
	LogParString("lpszFormat", lpszFormat);
	LogParString("lpszPreviousId", lpszPreviousId);

	ODMSTATUS odm = ODM_E_HANDLE;
		
	if(odmHandle)
	{
		ODMClient *pClient = (ODMClient *)odmHandle;
		odm = pClient->m_ODMDocMan2.SetDocRelation(lpszDocId, pdwFlags,
			lpszLinkedId, lpszFormat, lpszPreviousId);
	}
	
	LogString("\tOutput parameters:\r\n");
	LogParNumber("pdwFlags", *pdwFlags);
	LogParString("lpszFormat", lpszFormat);
	LogParNumber("Return value", odm);

	return odm;
}
