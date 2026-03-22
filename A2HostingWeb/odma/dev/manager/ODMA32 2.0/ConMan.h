/* conman.h - Prototypes, definitions, etc. for the ODMA connection manager.
 *
 * COPYRIGHT (C) 1994, 1995
 * AIIM International
 * All Rights Reserved
*/

#include "odmacom.h"
#include "Resource.h"
#include "odmlist.h"

//#define NC(a,b) a##::##b
#define MAXERRSTRING	120		/* maximum length of error string */

#define CONMAN_ID "::ODMA\\ODMA_MGR\\" 

#ifndef WIN32
#define INVALID_HANDLE_VALUE (HANDLE)-1
#endif

class ODMClient;
class ODMRegistry;
class ODMDms;

/* The ODMClient class.  Represents a caller or user of the ODMA API. */
class ODMClient 
{
	struct CUnknown;
	struct CODMDocMan;
	struct CODMQuery;
	friend ODMSTATUS WINAPI ODMRegisterApp(ODMHANDLE FAR *, WORD, LPSTR, DWORD, LPVOID);
	
public:
	ODMClient(LPSTR lpszAppId, WORD version, DWORD dwEnvData);
	~ODMClient();
	HRESULT DocIdQueryInterface(LPSTR lpszDocId, REFIID riid, LPVOID FAR *ppvObj);
	ODMSTATUS ClientQueryExecute(LPCSTR lpszQuery, DWORD flags, LPCSTR lpszDmsList, LPSTR queryId );
//	ODMClient::CODMDocMan& ODMDocMan(){ return m_ODMDocMan; }
//	ODMClient::CODMQuery& ODMQuery(){ return m_ODMQuery; }

private:
	// Internal functions.
	ODMSTATUS ConnectDocId(LPSTR lpszDocId, ODMDms **ppDms);
	ODMSTATUS ConnectDms(LPCSTR lpszDmsId, ODMDms **ppDms);
	void ConnectDmss( LPCSTR lpszDmsList );

	//----------------------------------------------------------------
	// IUnknown implementation
	//----------------------------------------------------------------
  	struct CUnknown : IUnknown 
	{
    	CUnknown(ODMClient *pObject) { m_pObject = pObject; }

    	//*** IUnknown ***
    	STDMETHOD(QueryInterface) (REFIID riid, LPVOID FAR* ppvObj);
    	STDMETHOD_(ULONG,AddRef) (VOID);
    	STDMETHOD_(ULONG,Release) (VOID);

		private:
    	ODMClient *m_pObject;	// pointer to parent object
  	};
  	friend CUnknown;

	//----------------------------------------------------------------
	// IODMDocMan implementation
	//----------------------------------------------------------------
  	struct CODMDocMan : IODMDocMan 
	{
		CODMDocMan(ODMClient *pObject) { m_pObject = pObject; }
		~CODMDocMan() {};

    	//*** IUnknown ***
		STDMETHOD(QueryInterface) (REFIID riid, LPVOID FAR* ppvObj);
		STDMETHOD_(ULONG,AddRef) (VOID);
    	STDMETHOD_(ULONG,Release) (VOID);

    	// *** IODMDocMan methods ***
		STDMETHOD_(ODMSTATUS, SelectDoc)(LPSTR lpszDocId, LPDWORD pdwFlags);
		STDMETHOD_(ODMSTATUS, OpenDoc)(DWORD flags, LPSTR lpszDocId, LPSTR lpszDocLocation);
		STDMETHOD_(ODMSTATUS, SaveDoc)(LPSTR lpszDocId, LPSTR lpszNewDocId);
		STDMETHOD_(ODMSTATUS, CloseDoc)(LPSTR lpszDocId, DWORD activeTime,
			DWORD pagesPrinted, LPVOID sessionData, WORD dataLen);
		STDMETHOD_(ODMSTATUS, NewDoc)(LPSTR lpszDocId, DWORD dwFlags,
			LPSTR lpszFormat, LPSTR lpszDocLocation);
		STDMETHOD_(ODMSTATUS, SaveAs)(LPSTR lpszDocId, LPSTR lpszNewDocId,
			LPSTR lpszFormat, ODMSAVEASCALLBACK pcbCallBack, LPVOID pInstanceData);
		STDMETHOD_(ODMSTATUS, Activate)(WORD action, LPSTR lpszDocId);
		STDMETHOD_(ODMSTATUS, GetDocInfo)(LPSTR lpszDocId, WORD item,
			LPSTR lpszData, WORD dataLen);
		STDMETHOD_(ODMSTATUS, SetDocInfo)(LPSTR lpszDocId, WORD item, LPSTR lpszData);
		STDMETHOD_(ODMSTATUS, GetDMSInfo) (LPSTR lpszDmsId, LPWORD pwVerNo,
			LPDWORD pdwExtensions);
		STDMETHOD_(ODMSTATUS, GetLeadMoniker)(LPSTR lpszDocId, LPMONIKER FAR *ppMoniker);

		private:
    	ODMClient *m_pObject;					// pointer to parent object
	};
	friend CODMDocMan;

	/***************************************************
	 IODMDocMan2 implementation
	***************************************************/
	struct CODMDocMan2 : IODMDocMan2 
	{
		CODMDocMan2(ODMClient *pObject) { m_pObject = pObject; }
		~CODMDocMan2() {};

    //*** IUnknown ***
		STDMETHOD(QueryInterface) (REFIID riid, LPVOID FAR* ppvObj);
		STDMETHOD_(ULONG,AddRef) (VOID);
    	STDMETHOD_(ULONG,Release) (VOID);
	
	// *** IODMDocMan2 methods ***
		STDMETHOD_( ODMSTATUS, CloseDocEx ) (LPSTR lpszDocId, LPDWORD pdwFlags,
			DWORD activeTime, DWORD pagesPrinted, LPVOID sessionData, WORD dataLen);
		STDMETHOD_( ODMSTATUS, SaveAsEx ) (LPSTR lpszDocId, LPSTR lpszNewDocId,
			LPSTR lpszFormat, ODMSAVEASCALLBACK pcbCallBack,
			LPVOID pInstanceData, LPDWORD pdwFlags);
		STDMETHOD_( ODMSTATUS, SaveDocEx ) (LPSTR lpszDocId, LPSTR lpszNewDocId,
			LPDWORD pdwFlags);
		STDMETHOD_( ODMSTATUS, SelectDocEx ) (LPSTR lpszDocIds, LPWORD pwDocIdsLen,
			LPWORD pwDocCount, LPDWORD pdwFlags, LPSTR lpszFormatFilter);
		STDMETHOD_( ODMSTATUS, QueryCapability ) (LPCSTR lpszDmsId, DWORD function,
			DWORD item, DWORD flags );
		STDMETHOD_( ODMSTATUS, SetDocEvent ) (LPSTR lpszDocId, DWORD flags,
			DWORD event, LPVOID lpData, DWORD dwDataLen, LPSTR lpszComment);
		STDMETHOD_( ODMSTATUS, GetAlternateContent ) (LPSTR lpszDocId,
			LPDWORD pdwFlags, LPSTR lpszFormat, LPSTR lpszDocLocation);
		STDMETHOD_( ODMSTATUS, SetAlternateContent ) (LPSTR lpszDocId,
			LPDWORD pdwFlags, LPSTR lpszFormat, LPSTR lpszDocLocation);
		STDMETHOD_( ODMSTATUS, GetDocRelation ) (LPSTR lpszDocId, LPDWORD pdwFlags,
			LPSTR lpszLinkedId, LPSTR lpszFormat, LPSTR lpszPreviousId );
		STDMETHOD_( ODMSTATUS, SetDocRelation ) (LPSTR lpszDocId, LPDWORD pdwFlags,
			LPSTR lpszLinkedId, LPSTR lpszFormat, LPSTR lpszPreviousId );
 	
		private:
    	ODMClient *m_pObject;					// pointer to parent object
	};
	friend CODMDocMan2;

	//----------------------------------------------------------------
	// IODMQuery implementation
	//----------------------------------------------------------------
	struct CODMQuery : IODMQuery 
	{
		CODMQuery( ODMClient *pObject ){ m_pObject = pObject; }
		~CODMQuery() {}

    	//*** IUnknown ***
		STDMETHOD(QueryInterface) (REFIID riid, LPVOID FAR* ppvObj);
		STDMETHOD_(ULONG,AddRef) (VOID);
    	STDMETHOD_(ULONG,Release) (VOID);

    	// *** IODMQuery methods ***
		STDMETHOD_(ODMSTATUS, QueryExecute) (THIS_
			LPCSTR lpszQuery, LPSTR dmsQueryId );

		STDMETHOD_(ODMSTATUS, QueryGetResults) (THIS_
			LPCSTR dmsQueryId, LPSTR lpszDocId, LPSTR lpszDocName, 
			WORD docNameLen, WORD *docCount );

		STDMETHOD_(ODMSTATUS, QueryClose)(THIS_ LPCSTR dmsQueryId );

		private:
    	ODMClient *m_pObject;					// pointer to parent object
	};
	friend CODMQuery;

	// Internal data
	CUnknown	m_Unknown;

public:	
	CODMDocMan	m_ODMDocMan;
	CODMDocMan2	m_ODMDocMan2;
	CODMQuery	m_ODMQuery;

private:	
	DWORD m_dwRefs;					// reference count
	WORD m_version;					// version of the API that this client expects to see
	HWND m_clientWind;				// client's window handle
	char m_appid[ODM_APPID_MAX];	// application ID of the client
	ODMDms *m_pDefaultDms;			// default DMS for this client
	ODMDmsList m_otherDmss;			// list of implicitly connected DMSs

	ODMDmsList m_queryDmss;
	DWORD m_nQueryCount;
	char m_szQueryId[ sizeof( CONMAN_ID ) + 2 * sizeof( long ) ];
};	/* ODMClient */


/* The ODMA Registry class.  Represents the registry of information about which
   DMSs should be used with which applications. */
class ODMRegistry 
{
public:
	ODMRegistry();
	~ODMRegistry();
	WORD GetDMSCount();
	WORD GetDMSList( LPSTR buffer, WORD buffer_size );
	ODMSTATUS GetDMS( LPCSTR lpszAppId, LPSTR lpszDMSId );
	ODMSTATUS SetDMS( LPCSTR lpszAppId, LPCSTR lpszDMSId );
	int GetDMSEntry(LPCSTR lpszDmsId, LPSTR lpszDMSEntry, int entryLen);

	HANDLE GetLogFile();

	BOOL m_bLogEnable;
	char m_lpszLogPath[ODM_FILENAME_MAX];
	char m_lplistTokens[255];

private:
	
	AppDmsOverrideList m_overrideList;

	int GetAppDefaultDmsId( LPCSTR lpszAppId, LPSTR lpszDmsId );
	int GetSystemDefaultDmsId( LPSTR lpszDmsId );
};

// The ODMDms class.  Represents a DMS that is acting as an ODMA provider.
class ODMDms 
{
	char m_szId[ODM_DMSID_MAX]; /* We could ask the DMS for it, but it's used often
							   so for efficiency we'll cache it here. */
	HINSTANCE m_hDms;         /* Handle to the DMS's DLL. */
	char m_szQueryId[ODM_DOCID_MAX];  // Handle to this DMS's queryId, if avail.

public:
	ODMDms();
	~ODMDms();
	ODMSTATUS Init(LPCSTR lpszDmsId, LPSTR lpszAppId, WORD version,
		LPUNKNOWN pUnkOuter, DWORD dwEnvData);
	
	LPCSTR GetId(){ return m_szId; } // Return a pointer to the DMS ID string.
	
	void QueryId( LPSTR lpszQueryId ){ strcpy( m_szQueryId, lpszQueryId ); }
	
	LPCSTR QueryId(){ return m_szQueryId; }

	LPUNKNOWN	m_pUnk;			// The DMS's IUnknown interface.
	LPODMDOCMAN m_pDocMan;		// IODMDocMan interface from the DMS.
	LPODMQUERY m_pQuery;		// IODMQuery interface from the DMS.
	LPODMDOCMAN2 m_pDocMan2;		// IODMDocMan2 interface from the DMS.
};


// Globals
extern HINSTANCE hInst;
extern ODMRegistry Registry;

// Prototypes
BOOL TimeBomb(WORD wYear, WORD wMonth);
void ErrorMessage(UINT stringId);

void LogString(const char *s);
void LogParString(const char *prompt, const char *s,WORD wLen = 0,WORD wCount = 1);
void LogParNumber(const char *s, ULONG lvalue);
void LogParList(const char *lpszParam, const char *str );
