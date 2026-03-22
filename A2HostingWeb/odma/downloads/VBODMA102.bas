Attribute VB_Name = "Module1"
' VB ODMA Declarations
' ====================
' 2002-05-07-15:09 1.02 Correct one declaration and make comments a little tidier
' 2002-05-07-14:14 1.01 Transcription of Simon Tomlinson's e-mail definitions into a text file
Public Declare Function ODMRegisterApp Lib "odma32.dll" (pOdmHandle As Long, _
ByVal Version As Integer, ByVal lpszAppId As String, ByVal hwnd As Long, ByVal Reserved As Long) As Integer
Declare Sub ODMUnRegisterApp Lib "odma32.dll" (ByVal odmHandle As Long)
Declare Function ODMSelectDoc Lib "odma32.dll" (ByVal odmHandle As Long, ByVal lpszDocId As String, _
pdwFlags As Long) As Integer
Declare Function ODMOpenDoc Lib "odma32.dll" (ByVal odmHandle As Long, ByVal Flags As Long, _
ByVal lpszDocId As String, ByVal lpszDocLocation As String) As Integer
Declare Function ODMSaveDoc Lib "odma32.dll" (ByVal odmHandle As Long, ByVal lpszDocId As _
String, ByVal lpszNewDocId As String) As Integer
Declare Function ODMSaveAs Lib "odma32.dll" (ByVal odmHandle As Long, ByVal lpszDocId As String, _
ByVal lpszNewDocId As String, ByVal lpszFormat As String, ByVal pcbCallBack As Long, _
ByVal pInstanceData As Long) As Integer
Declare Function ODMNewDoc Lib "odma32.dll" (ByVal odmHandle As Long, _
ByVal lpszDocId As String, ByVal dwFlags As Long, ByVal lpszFormat As String, _
ByVal lpszDocLocation As Long) As Integer
Declare Function ODMCloseDoc Lib "odma32.dll" (ByVal odmHandle As Long, _
ByVal lpszDocId As String, ByVal activeTime As Long, ByVal pagesPrinted As Long, _
ByVal sessionData As Long, ByVal dataLen As Long) As Integer
Declare Function ODMGetDocInfo Lib "odma32.dll" (ByVal odmHandle As Long, _
ByVal lpszDocId As String, ByVal item As Integer, ByVal lpszData As _
String, ByVal dataLen As Integer) As Integer

Public Enum Errors
E_FAIL = -1
S_OK = 0
ODM_E_FAIL = 1 ' Unspecified failure
ODM_E_CANCEL = 2 ' Action was cancelled at user's request
ODM_E_NODMS = 3 ' DMS not registered
ODM_E_CANTINIT = 4 ' DMS failed to initalize
ODM_E_VERSION = 5 ' DMS doesn't support the requested
'  version of ODMA
ODM_E_APPSELECT = 6 ' User has indicated that he wants to use
'  the application's file selection
'  capabilities rather than those of the DMS.
ODM_E_USERINT = 7 ' Requested action cannot be performed
'  without user interaction, but silent
'  mode was specified.
ODM_E_HANDLE = 8 ' The DMHANDLE argument was invalid.
ODM_E_ACCESS = 9 ' User does not have requested access
'  rights to specified document.
ODM_E_INUSE = 10 ' Document is currently in use and cannot
'  be accessed in specified mode.
ODM_E_DOCID = 11 ' Invalid document ID
ODM_E_OPENMODE = 12 ' The specified action is incompatible
'  with the mode in which the document was opened.
ODM_E_NOOPEN = 13 ' The specified document is not open.
ODM_E_ITEM = 14 ' Invalid item specifier.
ODM_E_OTHERAPP = 15 ' Selected document was for another app.
End Enum

Public Enum DocOpenModes
ODM_MODIFYMODE = 1 ' Open document in a modifiable mode.
ODM_VIEWMODE = 2 ' Open document in non-modifiable mode.
ODM_NONE = 0 ' No specific action is requested.
End Enum

Public Enum DocViewModes
ODM_DELETE = 1 ' Delete the specified document.
ODM_SHOWATTRIBUTES = 2 ' Display the specified document's profile
'  or attributes.
ODM_EDITATTRIBUTES = 3 ' Edit the specified document's profile or
'  attributes.
ODM_VIEWDOC = 4 ' Display the specified document in a
'  viewer window.
ODM_OPENDOC = 5 ' Open the specified document in its
'  native application.
End Enum

Public Enum DocInfo
ODM_AUTHOR = 1 ' Author of the document.
ODM_NAME = 2 ' Descriptive name of the document.
ODM_TYPE = 3 ' Type of the document.
ODM_TITLETEXT = 4 ' Suggested text to display in the
'  document window's title bar.
ODM_DMS_DEFINED = 5 ' DMS defined data.
ODM_CONTENTFORMAT = 6 ' String describing document's format
ODM_SILENT = 16 ' Don't interact with the user while

End Enum

Public Enum typeLengths
ODM_DOCID_MAX = 255 ' Maximum length of a document ID including
'  the terminating NULL character.
ODM_DMSID_MAX = 9 ' Maximum length of a DMS ID including the
'  terminating NULL character.
ODM_FILENAME_MAX = 255 ' Maximum length of a filename returned
'  by ODMA including the terminating NULL character.
'  Platform dependent.
End Enum

Public Enum odmaVersion
NOTIME = &HFFFFFFFF
ODM_API_VERSION = 100 ' Version of the API
End Enum
