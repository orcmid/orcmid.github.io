/* odmacom.h - Component Object Model related definitions, macros, etc. for
   ODMA version 2.0.

	COPYRIGHT (C) 1994, 1995
	AIIM International
	All Rights Reserved
*/

#ifndef ODMACOM_H
#define ODMACOM_H

#ifndef ODMA_H
#include "odma.h"
#endif

#ifdef WIN32
#ifndef _OBJBASE_H_
#include <objbase.h>
#endif /*!_OBJBASE_H_*/
#else
#ifndef _COMPOBJ_H_
#include <memory.h>
#include <compobj.h>
#endif /*!_COMPOBJ_H_*/
#endif /*WIN32*/

#ifndef _OLE2_H_
#include <ole2.h>
#include <moniker.h>
#endif

#ifdef WIN32
#define _export
#endif

// Define the IODMDocMan interface
DEFINE_OLEGUID(IID_IODMDocMan, 0x22FF0, 0, 0);

// Define the IODMQuery interface
DEFINE_OLEGUID(IID_IODMQuery, 0x22FF1, 0, 0);

// Define the IODMDocMan2 interface
DEFINE_OLEGUID(IID_IODMDocMan2, 0x22FF2, 0, 0);

#undef  INTERFACE
#define INTERFACE   IODMDocMan

DECLARE_INTERFACE_(IODMDocMan, IUnknown)
{
	// *** IUnknown methods ***
	STDMETHOD(QueryInterface)(THIS_ REFIID riid, LPVOID FAR *ppvObj)  PURE;
	STDMETHOD_(ULONG, AddRef)(THIS) PURE;
	STDMETHOD_(ULONG, Release)(THIS) PURE;

	// *** IODMADocMan methods ***
	STDMETHOD_(ODMSTATUS, SelectDoc) (THIS_
		LPSTR lpszDocId,
		LPDWORD pdwFlags) PURE;

	STDMETHOD_(ODMSTATUS, OpenDoc) (THIS_
		DWORD flags,
		LPSTR lpszDocId,
		LPSTR lpszDocLocation) PURE;

	STDMETHOD_(ODMSTATUS, SaveDoc) (THIS_
		LPSTR lpszDocId,
		LPSTR lpszNewDocId) PURE;

	STDMETHOD_(ODMSTATUS, CloseDoc) (THIS_
		LPSTR lpszDocId,
		DWORD activeTime,
		DWORD pagesPrinted,
		LPVOID sessionData,
		WORD dataLen) PURE;

	STDMETHOD_(ODMSTATUS, NewDoc) (THIS_
		LPSTR lpszDocId,
		DWORD dwFlags,
		LPSTR lpszFormat,
		LPSTR lpszDocLocation) PURE;

	STDMETHOD_(ODMSTATUS, SaveAs) (THIS_
		LPSTR lpszDocId,
		LPSTR lpszNewDocId,
		LPSTR lpszFormat,
		ODMSAVEASCALLBACK pcbCallBack,
		LPVOID pInstanceData) PURE;

	STDMETHOD_(ODMSTATUS, Activate) (THIS_
		WORD action,
		LPSTR lpszDocId) PURE;

	STDMETHOD_(ODMSTATUS, GetDocInfo) (THIS_
		LPSTR lpszDocId,
		WORD item,
		LPSTR lpszData,
		WORD dataLen ) PURE;

	STDMETHOD_(ODMSTATUS, SetDocInfo) (THIS_
		LPSTR lpszDocId,
		WORD item,
		LPSTR lpszData ) PURE;

	STDMETHOD_(ODMSTATUS, GetDMSInfo) (THIS_
		LPSTR lpszDmsId,
		LPWORD pwVerNo,
		LPDWORD pdwExtensions) PURE;

	STDMETHOD_(ODMSTATUS, GetLeadMoniker) (THIS_
		LPSTR lpszDocId,
		LPMONIKER FAR *ppMoniker) PURE;

};

typedef IODMDocMan FAR * LPODMDOCMAN;
 
#undef  INTERFACE
#define INTERFACE   IODMDocMan2

DECLARE_INTERFACE_(IODMDocMan2, IUnknown)
{
	// *** IUnknown methods ***
	STDMETHOD(QueryInterface)(THIS_ REFIID riid, LPVOID FAR *ppvObj)  PURE;
	STDMETHOD_(ULONG, AddRef)(THIS) PURE;
	STDMETHOD_(ULONG, Release)(THIS) PURE;
	
	// *** IODMDocMan2 methods ***
	STDMETHOD_( ODMSTATUS, CloseDocEx ) (THIS_
		LPSTR lpszDocId,
		LPDWORD pdwFlags,
		DWORD activeTime,
		DWORD pagesPrinted,
		LPVOID sessionData,
		WORD dataLen) PURE;
	
	STDMETHOD_( ODMSTATUS, SaveAsEx ) (THIS_
		LPSTR lpszDocId,
		LPSTR lpszNewDocId,
		LPSTR lpszFormat,
		ODMSAVEASCALLBACK pcbCallBack,
		LPVOID pInstanceData,
		LPDWORD pdwFlags) PURE;

	STDMETHOD_( ODMSTATUS, SaveDocEx ) (THIS_
		LPSTR lpszDocId,
		LPSTR lpszNewDocId,
		LPDWORD pdwFlags) PURE;
		
	STDMETHOD_( ODMSTATUS, SelectDocEx ) (THIS_
		LPSTR lpszDocIds,
		LPWORD pwDocIdsLen,
		LPWORD pwDocCount,
		LPDWORD pdwFlags,
		LPSTR lpszFormatFilter) PURE;
		
	STDMETHOD_( ODMSTATUS, QueryCapability ) (THIS_
		LPCSTR lpszDmsId,
		DWORD function,
		DWORD item,
		DWORD flags ) PURE;
		
	STDMETHOD_( ODMSTATUS, SetDocEvent ) (THIS_
		LPSTR lpszDocId,
		DWORD flags,
		DWORD event,
		LPVOID lpData,
		DWORD dwDataLen,
		LPSTR lpszComment) PURE;
		
	STDMETHOD_( ODMSTATUS, GetAlternateContent ) (THIS_
		LPSTR lpszDocId,
		LPDWORD pdwFlags,
		LPSTR lpszFormat,
		LPSTR lpszDocLocation) PURE;
		
	STDMETHOD_( ODMSTATUS, SetAlternateContent ) (THIS_
		LPSTR lpszDocId,
		LPDWORD pdwFlags,
		LPSTR lpszFormat,
		LPSTR lpszDocLocation) PURE;
		
	STDMETHOD_( ODMSTATUS, GetDocRelation ) (THIS_
		LPSTR lpszDocId,
		LPDWORD pdwFlags,
		LPSTR lpszLinkedId,
		LPSTR lpszFormat,
		LPSTR lpszPreviousId ) PURE;
		
	STDMETHOD_( ODMSTATUS, SetDocRelation ) (THIS_
		LPSTR lpszDocId,
		LPDWORD pdwFlags,
		LPSTR lpszLinkedId,
		LPSTR lpszFormat,
		LPSTR lpszPreviousId ) PURE;
};

typedef IODMDocMan2 FAR * LPODMDOCMAN2;

#undef  INTERFACE
#define INTERFACE   IODMQuery

DECLARE_INTERFACE_(IODMQuery, IUnknown)
{
	// *** IUnknown methods ***
	STDMETHOD(QueryInterface)(THIS_ REFIID riid, LPVOID FAR *ppvObj)  PURE;
	STDMETHOD_(ULONG, AddRef)(THIS) PURE;
	STDMETHOD_(ULONG, Release)(THIS) PURE;

	// *** IODMQuery methods ***
	STDMETHOD_(ODMSTATUS, QueryExecute) (THIS_
		LPCSTR lpszQuery, LPSTR dmsQueryId ) PURE;

	STDMETHOD_(ODMSTATUS, QueryGetResults) (THIS_
			LPCSTR dmsQueryId, LPSTR lpszDocId, LPSTR lpszDocName, 
			WORD docNameLen, WORD *docCount ) PURE;

	STDMETHOD_(ODMSTATUS, QueryClose)(THIS_ LPCSTR dmsQueryId ) PURE;
};

typedef IODMQuery FAR * LPODMQUERY;

#ifdef __cplusplus
extern "C" {
#endif

// ODMA prototypes
HRESULT WINAPI ODMQueryInterface(ODMHANDLE odmHandle, LPSTR lpszDocId,
	REFIID riid, LPVOID FAR *ppvObj);

ODMSTATUS WINAPI ODMGetLeadMoniker(ODMHANDLE odmHandle, LPSTR lpszDocId,
	LPMONIKER FAR *ppMoniker);

// Prototype for ODMA provider entry point function
HRESULT WINAPI _export ODMGetODMInterface(REFIID riid, LPVOID FAR *ppvObj,
	LPUNKNOWN pUnkOuter, LPVOID pReserved, LPSTR lpszAppId, DWORD dwEnvData);

#ifdef __cplusplus
}
#endif

#endif



