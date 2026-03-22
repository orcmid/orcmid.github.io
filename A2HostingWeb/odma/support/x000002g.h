//  ODMA.H
//
//  Definitions, prototypes, etc. for Open Document Managment API (ODMA) version 2.0.
//
//  Copyright (C) 1994-1998
//  AIIM International
//  All Right Reserved
//
//

#ifndef ODMA_H
#define ODMA_H

// Type definitions.
typedef LPVOID ODMHANDLE;
typedef LPSTR (*ODMSAVEASCALLBACK)(DWORD dwEnvData, LPSTR lpszFormat, LPVOID pInstanceData);
typedef int ODMSTATUS;

// Constants
#define ODM_API_VERSION                 200             /* Version of the API */

#ifdef WIN32
        #define ODM_DOCID_MAX           255             /* Win32 */

#elif defined( _WINDOWS_ ) || defined( _MSDOS )
        #define ODM_DOCID_MAX           80              /* Windows 3.x */

#else
        #define ODM_DOCID_MAX           255             /* Other platforms */
#endif

#define ODM_DMSID_MAX           9       // Max length of a DMS ID including the 
                                        // terminating NULL character.

#define ODM_APPID_MAX           16      // Max length of a application ID including
                                        // the terminating NULL character.

// ODMA 2.0
#define ODM_QUERYID_MAX         255     // Max length of a query ID including
                                        // the terminating NULL character.

#define ODM_FORMAT_MAX          81      // Max length of a format including
                                        // the terminating NULL character.

// Maximum length of a filename returned by ODMA including the terminating
// NULL character.  Platform dependent.

#ifdef WIN32
        #define ODM_FILENAME_MAX        255             /* Win32 */

#elif defined( _WINDOWS_ ) || defined( _MSDOS )
        #define ODM_FILENAME_MAX        128             /* Windows 3.x */

#elif defined( unix ) || defined( _UNIX )
        #define ODM_FILENAME_MAX        1024    /* Unix */

#else
        #define ODM_FILENAME_MAX        255             /* Other platforms */
#endif


// NOTE: These file format contants should be deleted from this header file!
//      They aren't part of the standard.
/* Common format type names */
#define ODM_FORMAT_TEXT "Text"
#define ODM_FORMAT_RTF  "Rich text format"
#define ODM_FORMAT_DCA  "DCA RFT"               /* IBM DCA Rich Format Text */
#define ODM_FORMAT_TIFF "Tiff"
#define ODM_FORMAT_GIF  "Gif"                           /* Compuserve Graphics Interchange Format */
#define ODM_FORMAT_BMP  "Windows bitmap"
#define ODM_FORMAT_PCX  "PCX"
#define ODM_FORMAT_CGM  "CGM"                           /* Computer Graphics Metafile */
#define ODM_FORMAT_EXE  "Executable file"
#define ODM_FORMAT_PCL  "PCL"                           /* HP Printer Control Language */
#define ODM_FORMAT_PS   "PostScript"


// Function return/error codes:
#define ODM_SUCCESS         0       // Success!
#define ODM_E_FAIL          1       // Unspecified failure.
#define ODM_E_CANCEL        2       // Action was canceled at user's request.
#define ODM_E_NODMS         3       // DMS not registered.
#define ODM_E_CANTINIT      4       // DMS failed to initalize.
#define ODM_E_VERSION       5       // DMS doesn't support the requested version of ODMA.
#define ODM_E_APPSELECT     6       // The user wants to use the application's file selection dialog.
#define ODM_E_USERINT       7       // Requested action cannot be performed without user interaction, but silent mode was specified.
#define ODM_E_HANDLE        8       // The DMHANDLE argument was invalid.
#define ODM_E_ACCESS        9       // User does not have requested access rights to specified document.
#define ODM_E_INUSE         10      // Document is currently in use and cannot be accessed in specified mode.
#define ODM_E_DOCID         11      // Invalid document ID.
#define ODM_E_OPENMODE      12      // The specified action is incompatible with the mode in which the document was opened.
#define ODM_E_NOOPEN        13      // The specified document is not open.
#define ODM_E_ITEM          14      // Invalid item specifier.
#define ODM_E_OTHERAPP      15      // The DMS allowed the user to open the document in another application.
#define ODM_E_NOMOREDATA    16      // No more data is available.
#define ODM_E_PARTIALSUCCESS 17     // A query operation was only partially successful.
// Additional error codes from ODMA 2.0
#define ODM_E_REQARG            18      // A required parameter is not specified.
#define ODM_E_NOSUPPORT     19      // The DMS does not support the function, attribute, item, action, etc.
#define ODM_E_TRUNCATED     20      // Application buffer too small to hold data that cannot be safely truncated.
#define ODM_E_INVARG        21      // An invalid parameter value was specified.
#define ODM_E_OFFLINE       22      // The DMS cannot currently access the document because the client is offline.
#define ODM_E_ARCHIVED      23      // The DMS cannot currently supply the document content because it is archived.
#define ODM_E_ALREADYOPENED     24      // The specified document is already opened.
#define ODM_E_FILELOCKED    25      // The temporary file is still opened by the application.
#define ODM_E_REFUSED       26      // The DMS is configured to refuse the calling application.
#define ODM_E_NOACTION      27      // No action occurred in the DMS, because the document was already in the requested state.
#define ODM_E_NORELATION    28      // The specified document has no related parent or child.

// ODMOpenDoc modes.  Note that the first two are also used in ODMSelectDoc and ODMSelectDocEx.
#define ODM_MODIFYMODE      1           // Open document in a modifiable mode.
#define ODM_VIEWMODE        2           // Open document in non-modifiable mode.
#define ODM_REFCOPY         4           // DMS should provide a read-only reference copy of the document.  (ODMA 2.0)

// ODMSelectDocEx flags:
#define ODM_TEMPLATES       8

// Actions for ODMActivate
#define ODM_NONE            0       // No specific action is requested.
#define ODM_DELETE          1       // Delete the specified document.
#define ODM_SHOWATTRIBUTES  2       // Display the specified document's profile or attributes.
#define ODM_EDITATTRIBUTES  3       // Edit the specified document's profile or attributes.
#define ODM_VIEWDOC         4       // Display the specified document in a viewer window.
#define ODM_OPENDOC         5       // Open the specified document in its native application.
// ODMA 2.0
#define ODM_NEWDOC          6       // Allow the user to create and save a new document.
#define ODM_CHECKOUT        7       // Check-out/reserve the document for the user.
#define ODM_CANCELCHECKOUT  8       // Cancel a previous check-out/reserve operation.
#define ODM_CHECKIN         9       // Check-in/unreserve the document if it's checked-out by the user.
#define ODM_SHOWHISTORY     10      // Display the specified document's history.


// Item selectors (attribute identifiers) for ODMGetDocInfo and ODMSetDocInfo:
#define ODM_AUTHOR              1   // Author of the document.
#define ODM_NAME                2   // Descriptive name of the document.
#define ODM_TYPE                3   // Type of the document.
#define ODM_TITLETEXT           4   // Suggested text to display in the document window's title bar.
#define ODM_DMS_DEFINED         5   // DMS defined data.
#define ODM_CONTENTFORMAT       6   // String describing document's format.
// Attributes added in ODMA 2.0
#define ODM_ALTERNATE_RENDERINGS 7
#define ODM_CHECKEDOUTBY        8
#define ODM_CHECKOUTCOMMENT     9
#define ODM_CHECKOUTDATE        10
#define ODM_CREATEDBY           11
#define ODM_CREATEDDATE         12
#define ODM_DOCID_LATEST        13
#define ODM_DOCID_RELEASED      14
#define ODM_DOCVERSION          15
#define ODM_DOCVERSION_LATEST   16
#define ODM_DOCVERSION_RELEASED 17
#define ODM_LOCATION            18
#define ODM_KEYWORDS            19
#define ODM_LASTCHECKINBY       20
#define ODM_LASTCHECKINDATE     21
#define ODM_MODIFYDATE          22
#define ODM_MODIFYDATE_LATEST   23
#define ODM_MODIFYDATE_RELEASED 24
#define ODM_OWNER               25
#define ODM_SUBJECT             26
#define ODM_TITLETEXT_RO        27
#define ODM_URL                 28


// Item selectors ODMQueryCapability (ODMA 2.0):
#define ODM_QC_ACTIVATE                         1
#define ODM_QC_CLOSEDOC                         2
#define ODM_QC_CLOSEDOCEX                       3
#define ODM_QC_GETALTERNATECONTENT      4
#define ODM_QC_GETDMSINFO                       5
#define ODM_QC_GETDOCINFO                       6
#define ODM_QC_GETDOCRELATION           7
#define ODM_QC_GETLEADMONIKER           8
#define ODM_QC_NEWDOC                           9
#define ODM_QC_OPENDOC                          10
#define ODM_QC_QUERYCLOSE                       11
#define ODM_QC_QUERYEXECUTE                     12
#define ODM_QC_QUERYGETRESULTS          13
#define ODM_QC_SAVEAS                           14
#define ODM_QC_SAVEASEX                         15
#define ODM_QC_SAVEDOC                          16
#define ODM_QC_SAVEDOCEX                        17
#define ODM_QC_SELECTDOC                        18
#define ODM_QC_SELECTDOCEX                      19
#define ODM_QC_SETALTERNATECONTENT      20
#define ODM_QC_SETDOCEVENT                      21
#define ODM_QC_SETDOCRELATION           22
#define ODM_QC_SETDOCINFO                       23


// Misc. modes, flags.
#define ODM_SILENT          16      // Don't interact with the user while
                                    // fulfilling this request. Note: The 
                                    // ODM_SILENT flag is used in many functions.

// Flags used by ODMSaveDocEx (ODMA 2.0).
#define ODM_VERSION_SAME    1 
#define ODM_VERSION_MAJOR   2
#define ODM_VERSION_MINOR   4
#define ODM_VERSION_CHANGED 8 

// Flags for ODMSetAlternateContent.
#define ODM_ALT_DELETE      32

// Flags used in the pdwExtenstion parameter of ODMGetDMSInfo (ODMA 2.0):
#define ODM_EXT_QUERY       1	
#define ODM_EXT_WORKFLOW    2	

// Flags used by ODMGetDocRelation and ODMSetDocRelation:
#define ODM_REL_PARENT      1
#define ODM_REL_CHILD       2
#define ODM_REL_NONE        4
#define ODM_REL_NOTORDERED  8
#define ODM_REL_FIXED       32
#define ODM_REL_RELEASED    64
#define ODM_REL_LATEST      128

// Events used by ODMSetDocEvent:
#define ODM_EVENT_PRINTED       1
#define ODM_EVENT_POSTED        2
#define ODM_EVENT_SENT          3
#define ODM_EVENT_FAXED         4
#define ODM_EVENT_ROUTED        5
#define ODM_EVENT_COPIED        6
#define ODM_EVENT_CONVERTED     7
#define ODM_EVENT_DMSDEFINED    8

// Flags for ODMQueryExecute
#define ODM_ALL             1       // All DMS's should be searched
#define ODM_SPECIFIC        2       // Only specific DMS's should be searched


// Function prototypes
#ifdef __cplusplus
extern "C" {
#endif

ODMSTATUS WINAPI ODMRegisterApp(ODMHANDLE FAR *pOdmHandle, WORD version,
        LPSTR lpszAppId, DWORD dwEnvData, LPVOID pReserved);

void WINAPI ODMUnRegisterApp(ODMHANDLE odmHandle);

ODMSTATUS WINAPI ODMSelectDoc(ODMHANDLE odmHandle, LPSTR lpszDocId,
        LPDWORD pdwFlags);

ODMSTATUS WINAPI ODMOpenDoc(ODMHANDLE odmHandle, DWORD flags,
        LPSTR lpszDocId, LPSTR lpszDocLocation);

ODMSTATUS WINAPI ODMSaveDoc(ODMHANDLE odmHandle, LPSTR lpszDocId,
        LPSTR lpszNewDocId);

ODMSTATUS WINAPI ODMCloseDoc(ODMHANDLE odmHandle, LPSTR lpszDocId,
        DWORD activeTime, DWORD pagesPrinted, LPVOID sessionData, WORD dataLen);

ODMSTATUS WINAPI ODMNewDoc(ODMHANDLE odmHandle, LPSTR lpszDocId,
        DWORD dwFlags, LPSTR lpszFormat, LPSTR lpszDocLocation);

ODMSTATUS WINAPI ODMSaveAs(ODMHANDLE odmHandle, LPSTR lpszDocId,
        LPSTR lpszNewDocId, LPSTR lpszFormat, ODMSAVEASCALLBACK pcbCallBack,
        LPVOID pInstanceData);

ODMSTATUS WINAPI ODMActivate(ODMHANDLE odmHandle, WORD action,
        LPSTR lpszDocId);

ODMSTATUS WINAPI ODMGetDocInfo(ODMHANDLE odmHandle, LPSTR lpszDocId,
        WORD item, LPSTR lpszData, WORD dataLen);

ODMSTATUS WINAPI ODMSetDocInfo(ODMHANDLE odmHandle, LPSTR lpszDocId,
        WORD item, LPSTR lpszData);

ODMSTATUS WINAPI ODMGetDMSInfo(ODMHANDLE odmHandle, LPSTR lpszDmsId,
        LPWORD pwVerNo, LPDWORD pdwExtensions);

// Query Enhancements.
WORD WINAPI ODMGetDMSCount();

WORD WINAPI ODMGetDMSList( LPSTR buffer, WORD buffer_size );

ODMSTATUS WINAPI ODMGetDMS( LPCSTR lpszAppId, LPSTR lpszDMSId );

ODMSTATUS WINAPI ODMSetDMS( LPCSTR lpszAppId, LPCSTR lpszDMSId );

ODMSTATUS WINAPI ODMQueryExecute(ODMHANDLE odmHandle, LPCSTR lpszQuery,
                                                                 DWORD flags, LPCSTR lpszDMSList, LPSTR queryId );

ODMSTATUS WINAPI ODMQueryGetResults(ODMHANDLE odmHandle, LPCSTR queryId,
                                                                        LPSTR lpszDocId, LPSTR lpszDocName, WORD docNameLen,
                                                                        WORD *docCount );

ODMSTATUS WINAPI ODMQueryClose(ODMHANDLE odmHandle, LPCSTR queryId );

// ODMA 2.0 Enhancements.
ODMSTATUS WINAPI ODMCloseDocEx(ODMHANDLE odmHandle, LPSTR lpszDocId,
                                                        LPDWORD pdwFlags, DWORD activeTime, DWORD pagesPrinted,
                                                        LPVOID sessionData, WORD dataLen);

ODMSTATUS WINAPI ODMSaveAsEx(ODMHANDLE odmHandle, LPSTR lpszDocId,
                                                        LPSTR lpszNewDocId, LPSTR lpszFormat, ODMSAVEASCALLBACK pcbCallBack,
                                                        LPVOID pInstanceData, LPDWORD pdwFlags);

ODMSTATUS WINAPI ODMSaveDocEx(ODMHANDLE odmHandle, LPSTR lpszDocId,
                                                        LPSTR lpszNewDocId,     LPDWORD pdwFlags);

ODMSTATUS WINAPI ODMSelectDocEx(ODMHANDLE odmHandle, LPSTR lpszDocIds,
                                                        LPWORD pwDocIdsLen, LPWORD pwDocCount, LPDWORD pdwFlags,
                                                        LPSTR lpszFormatFilter);

ODMSTATUS WINAPI ODMQueryCapability(ODMHANDLE odmHandle, LPCSTR lpszDmsId,
                                                        DWORD function, DWORD item, DWORD flags);

ODMSTATUS WINAPI ODMSetDocEvent(ODMHANDLE odmHandle, LPSTR lpszDocId,
                                                        DWORD flags, DWORD event, LPVOID lpData, DWORD dwDataLen,
                                                        LPSTR lpszComment);

ODMSTATUS WINAPI ODMGetAlternateContent(ODMHANDLE odmHandle, LPSTR lpszDocId,
                                                        LPDWORD pdwFlags, LPSTR lpszFormat, LPSTR lpszDocLocation);

ODMSTATUS WINAPI ODMSetAlternateContent(ODMHANDLE odmHandle, LPSTR lpszDocId,
                                                        LPDWORD pdwFlags, LPSTR lpszFormat, LPSTR lpszDocLocation);

ODMSTATUS WINAPI ODMGetDocRelation(ODMHANDLE odmHandle, LPSTR lpszDocId,
                                                        LPDWORD pdwFlags, LPSTR lpszLinkedId, LPSTR lpszFormat,
                                                        LPSTR lpszPreviousId);

ODMSTATUS WINAPI ODMSetDocRelation(ODMHANDLE odmHandle, LPSTR lpszDocId,
                                                        LPDWORD pdwFlags, LPSTR lpszLinkedId, LPSTR lpszFormat,
                                                        LPSTR lpszPreviousId);

#ifdef __cplusplus
}
#endif

#endif
