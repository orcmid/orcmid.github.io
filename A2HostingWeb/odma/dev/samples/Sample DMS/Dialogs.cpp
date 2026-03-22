/* dialogs.cpp - Dialog procedures for ODMA sample DMS.
 *
 * COPYRIGHT (C) 1994, 1995
 * AIIM International
 * All Rights Reserved
 */

#include <windows.h>
#include <windowsx.h>
#include "odmasamp.h"
#ifndef WIN32
#include <string.h>
#endif

BOOL CALLBACK _export SelectDocProc(HWND hwndDlg, UINT message, WPARAM wParam,
LPARAM lParam)
{
static char FAR *DocId;
int ii, index, count;
Document *pDoc;
LPSTR lpNowDocId;

	switch(message) {
		case WM_INITDIALOG:
			DocId = (char FAR *)lParam;

			for(ii=0, count=0; ii<MAXDOCS; ii++) 
			{
				pDoc = DocList.GetDocumentByIndex(ii);

				if(pDoc == NULL)
					continue;

				//BVG: Set Doc Name into List Box 
				LPSTR lpNowDocName=new char[DOC_NAME_MAX];
				pDoc->GetInfo(ODM_NAME, lpNowDocName, DOC_NAME_MAX);
				index=(int)SendDlgItemMessage(hwndDlg, IDC_SELECT, LB_ADDSTRING, 0, (LPARAM)lpNowDocName);
				delete lpNowDocName;

				//BVG: Save DocId as ItemData
				lpNowDocId=new char[ODM_DOCID_MAX];
				lstrcpy(lpNowDocId, pDoc->GetId());
				SendDlgItemMessage(hwndDlg, IDC_SELECT, LB_SETITEMDATA, index, (LPARAM)lpNowDocId);

				count++;
			}

			if(count == 0) 
			{
				// No documents in the DMS!
				EnableWindow(GetDlgItem(hwndDlg, IDOK), FALSE );
			}
			else 
			{
				// Select the first item in the list.
				SendDlgItemMessage(hwndDlg, IDC_SELECT, LB_SETCURSEL, 0, 0);
			}

			return TRUE;

		case WM_COMMAND: 
			switch(GET_WM_COMMAND_ID(wParam, lParam)) 
			{
				case IDC_SELECT:
					if(GET_WM_COMMAND_CMD(wParam, lParam) == LBN_DBLCLK) 
					{
						SendMessage(hwndDlg, WM_COMMAND, (WPARAM)IDOK, (LPARAM)lParam);
					}
					break;

				case IDOK:
					//BVG: Get DocId from List Boxe's ItemData
					index = (int)SendDlgItemMessage(hwndDlg, IDC_SELECT, LB_GETCURSEL, 0, 0 );
					wsprintf(DocId, "::ODMA\\%s\\%s", (LPSTR) DMSID,
						(LPSTR) SendDlgItemMessage(hwndDlg, IDC_SELECT, LB_GETITEMDATA, index, 0) );


				//Fall through.
				case IDCANCEL:
				case IDAPPSELECT:
					//BVG: Memory Clean Up
					for(ii=0; ii<SendDlgItemMessage(hwndDlg, IDC_SELECT, LB_GETCOUNT, 0, 0); ii++)
					{
						lpNowDocId=(LPSTR)SendDlgItemMessage(hwndDlg, IDC_SELECT, LB_GETITEMDATA, ii, 0);
						delete lpNowDocId;
					}
					EndDialog(hwndDlg, wParam);
					return TRUE;
			}
	}
	return FALSE;
}

BOOL CALLBACK _export SelectDocProcEx(HWND hwndDlg, UINT message, WPARAM wParam,
LPARAM lParam)
{
static char FAR *lpDocList;
int ii, index, count = 0, end;
Document *pDoc;
LPSTR lpNowDocId;

	switch(message) {
		case WM_INITDIALOG:
			lpDocList = (char FAR *)lParam;

			//hLBWnd = GetDlgItem(hwndDlg,IDC_SELECT);
			//lStile = GetWindowLong(hLBWnd, GWL_STYLE);
			//lStile |= LBS_MULTIPLESEL;
			//SetWindowLong(hLBWnd, GWL_STYLE, lStile);

			for(ii=0; ii<MAXDOCS; ii++) 
			{
				pDoc = DocList.GetDocumentByIndex(ii);

				if(pDoc == NULL)
					continue;

				//BVG: Set Doc Name into List Box 
				LPSTR lpNowDocName=new char[DOC_NAME_MAX];
				pDoc->GetInfo(ODM_NAME, lpNowDocName, DOC_NAME_MAX);
				index=(int)SendDlgItemMessage(hwndDlg, IDC_SELECT, LB_ADDSTRING, 0, (LPARAM)lpNowDocName);
				delete lpNowDocName;

				//BVG: Save DocId as ItemData
				lpNowDocId=new char[ODM_DOCID_MAX];
				lstrcpy(lpNowDocId, pDoc->GetId());
				SendDlgItemMessage(hwndDlg, IDC_SELECT, LB_SETITEMDATA, index, (LPARAM)lpNowDocId);

				count++;
			}

			return TRUE;

		case WM_ACTIVATE:
			return TRUE;


		case WM_COMMAND: 
			switch(GET_WM_COMMAND_ID(wParam, lParam)) 
			{
				case IDC_SELECT:
					if(GET_WM_COMMAND_CMD(wParam, lParam) == LBN_DBLCLK) 
					{
						SendMessage(hwndDlg, WM_COMMAND, (WPARAM)IDOK, (LPARAM)lParam);
					}
					break;

				case IDOK:
					//Get DocIds from List Boxe's ItemData
					if(SendDlgItemMessage(hwndDlg, IDC_SELECT, LB_GETSELCOUNT, 0, 0)==0) break;
			
					count = (int)SendDlgItemMessage(hwndDlg, IDC_SELECT, LB_GETCOUNT, 0, 0 );

					strcpy(lpDocList, "");
					char	szDocId[ODM_DOCID_MAX];

					for(ii=0, end=0; ii<count; ii++)
					{
						if(SendDlgItemMessage(hwndDlg, IDC_SELECT, LB_GETSEL, ii, 0))
						{
						wsprintf(&szDocId[0], "::ODMA\\%s\\%s", (LPSTR) DMSID,
									(LPSTR) SendDlgItemMessage(hwndDlg, IDC_SELECT, 
														LB_GETITEMDATA, ii, 0) );

						strcpy(lpDocList + end, &szDocId[0]);
						end += strlen(&szDocId[0]) + 1;
						}
					}
					strcpy(lpDocList + end, "");


				//Fall through.
				case IDCANCEL:
				case IDAPPSELECT:
					//BVG: Memory Clean Up
					for(ii=0; ii<SendDlgItemMessage(hwndDlg, IDC_SELECT, LB_GETCOUNT, 0, 0); ii++)
					{
						lpNowDocId=(LPSTR)SendDlgItemMessage(hwndDlg, IDC_SELECT, LB_GETITEMDATA, ii, 0);
						delete lpNowDocId;
					}
					EndDialog(hwndDlg, wParam);
					return TRUE;
			}
	}
	return FALSE;
}


BOOL CALLBACK _export SaveAsProc(HWND hwndDlg, UINT message, WPARAM wParam,
LPARAM lParam)
{
static SaveAsData FAR *pSaveAsData;
char *lp;

	switch(message) {
		case WM_INITDIALOG:
			pSaveAsData = (SaveAsData FAR *)lParam;
			SendDlgItemMessage(hwndDlg, ST_FORMAT, WM_SETTEXT, 0,
					(LPARAM)(pSaveAsData->Format));

			if(pSaveAsData->pcbCallBack == NULL)
				ShowWindow(GetDlgItem(hwndDlg, IDC_OPTIONS), SW_HIDE);

			return TRUE;

		case WM_COMMAND:
			switch(LOWORD(wParam)) {
				case IDC_OPTIONS:
					lp = pSaveAsData->pcbCallBack((DWORD)hwndDlg, pSaveAsData->Format,
						pSaveAsData->pInstanceData);

					strncpy(pSaveAsData->Format, lp, sizeof(pSaveAsData->Format));
					pSaveAsData->Format[sizeof(pSaveAsData->Format)-1] = '\0';
					SendDlgItemMessage(hwndDlg, ST_FORMAT, WM_SETTEXT, 0,
						(LPARAM)(pSaveAsData->Format));

					return TRUE;

				case IDOK:
				case IDCOPY:
				case IDCANCEL:
					EndDialog(hwndDlg, wParam);
					return TRUE;
			}
	}
	return FALSE;
}


BOOL CALLBACK _export ProfileProc( HWND hwndDlg, UINT message, WPARAM wParam,
LPARAM lParam)
{
static ProDlgData FAR *pDlgData;

	switch(message) {
		case WM_INITDIALOG:
			pDlgData = (ProDlgData FAR *)lParam;
			SendDlgItemMessage(hwndDlg, ST_DOCID, WM_SETTEXT, 0,
				(LPARAM)(pDlgData->pDocument->GetId()));

			SendDlgItemMessage(hwndDlg, IDC_NAME, WM_SETTEXT, 0,
				(LPARAM)pDlgData->pDocument->Name);

			SendDlgItemMessage(hwndDlg, IDC_AUTHOR, WM_SETTEXT, 0,
				(LPARAM)pDlgData->pDocument->Author);

			SendDlgItemMessage(hwndDlg, IDC_TYPE, WM_SETTEXT, 0,
				(LPARAM)pDlgData->pDocument->DocType);

			if(pDlgData->Mode & PROFILE_EDIT) 
			{
				SendDlgItemMessage(hwndDlg, IDC_NAME, EM_SETREADONLY, 0, 0);
				SendDlgItemMessage(hwndDlg, IDC_AUTHOR, EM_SETREADONLY, 0, 0);
				SendDlgItemMessage(hwndDlg, IDC_TYPE, EM_SETREADONLY, 0, 0);
				SetFocus(GetDlgItem(hwndDlg, IDC_NAME ));
			} else {
				SetFocus(GetDlgItem(hwndDlg, IDOK));
				ShowWindow(GetDlgItem(hwndDlg, IDCANCEL), SW_HIDE);
			}
			return TRUE;

		case WM_COMMAND:
			switch(LOWORD(wParam)) {
				case IDOK:
					if(pDlgData->Mode & PROFILE_EDIT) {
						SendDlgItemMessage(hwndDlg, IDC_NAME, WM_GETTEXT,
							sizeof(pDlgData->pDocument->Name),
							(LPARAM)pDlgData->pDocument->Name);

						SendDlgItemMessage(hwndDlg, IDC_AUTHOR, WM_GETTEXT,
							sizeof(pDlgData->pDocument->Author), (
							LPARAM)pDlgData->pDocument->Author);

						SendDlgItemMessage(hwndDlg, IDC_TYPE, WM_GETTEXT,
							sizeof(pDlgData->pDocument->DocType),
							(LPARAM)pDlgData->pDocument->DocType);
					}

					// fall through to below

				case IDCANCEL:
					EndDialog(hwndDlg, wParam);
					return TRUE;
			}
	}
	return FALSE;
}

