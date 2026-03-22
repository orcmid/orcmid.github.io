// odmlist.h--List classes for handling lists used by ODMClient and ODMRegistry
//
// COPYRIGHT (C) 1996
// AIIM International
// All Rights Reserved
//
//	TABS(4,4)
//
//	Created 10/25/96 by GLW.

// These classes were created from two template classes that I had written here.
// After I had created and used the template classes under MSVC4.0, I rediscovered
// that MSVC1.52 does not support templates.  For comments on the behavoir of the 
// methods of these classes see the end of this file where I have placed my comments
// on the TUList and TUListIterator template classes.
#ifndef __ODMULIST_H
#define __ODMULIST_H

class ODMDms; // This class is declared in conman.h

class ODMDmsList;
class ODMDmsListIterator;
class AppDmsOverrideItem;
class AppDmsOverrideList;
class AppDmsOverrideListIterator;

class ODMDmsList
{
	friend ODMDmsListIterator;
	struct ListNode
	{
		ODMDms* m_item;
		ListNode* m_pNext;

		ListNode( const ODMDms*& rItem, ListNode*& rpHead ) 
			: m_item( (ODMDms*&)rItem )
		{ 
			m_pNext = rpHead;
			rpHead = this;
		}
	};

	ListNode* m_pListHead;

	BOOL UpdateList( const ODMDms*& rItem )
	{
		ODMDms** pItem = Find( rItem );
		if ( pItem )
		{
			*pItem = (ODMDms*&)rItem;
			return TRUE;
		}

		return FALSE;
	}

public:
	ODMDmsList(){ m_pListHead = NULL; }
	
	~ODMDmsList(){ ClearList(); }
	
	BOOL IsEmpty(){ return m_pListHead == NULL; }

	BOOL Add( const ODMDms*& rItem )
	{
		if ( UpdateList( rItem ) )
			return TRUE;

		return NULL != new ListNode( rItem, m_pListHead );
	}

	ODMDms** Find( const ODMDms*& rItem )
	{
		ListNode* pTestNode = m_pListHead;
		while ( pTestNode )
		{
			if ( pTestNode->m_item == rItem )
				break;
			pTestNode = pTestNode->m_pNext;
		}

		return &pTestNode->m_item;
	}

	void Remove( const ODMDms*& rItem )
	{
		ListNode* pPreviousNode = NULL;
		ListNode* pRemoveNode = m_pListHead;
		while ( pRemoveNode )
		{
			if ( pRemoveNode->m_item == rItem )
				break;
			pPreviousNode = pRemoveNode;
			pRemoveNode = pRemoveNode->m_pNext;
		}

		if ( pRemoveNode )
		{
			if ( pPreviousNode )
				pPreviousNode->m_pNext = pRemoveNode->m_pNext;
			else
				m_pListHead = pRemoveNode->m_pNext;

			delete pRemoveNode;
		}
	}

	void ClearList()
	{ 
		ListNode* pTemp;
		while( m_pListHead )
		{
			pTemp = m_pListHead->m_pNext;
			delete m_pListHead;
			m_pListHead = pTemp;
		}
	}
};

class ODMDmsListIterator
{
	ODMDmsList& m_rList;
	ODMDmsList::ListNode* m_pCurrent;
public:
	ODMDmsListIterator( ODMDmsList& rList ) : m_rList( rList ) { m_pCurrent = rList.m_pListHead; }
	ODMDms*& Current(){ return m_pCurrent->m_item; }
	void Restart(){ m_pCurrent = m_rList.m_pListHead; };
	operator int(){ return m_pCurrent != NULL; }
	ODMDms*& operator ++(){ m_pCurrent = m_pCurrent->m_pNext; return m_pCurrent->m_item; }
	ODMDms*& operator ++( int )
	{
		ODMDms*& r = m_pCurrent->m_item;
		m_pCurrent = m_pCurrent->m_pNext;
		return r;
	}
};

class AppDmsOverrideItem
{
	char szAppId[ ODM_APPID_MAX ];
	char szDmsId[ ODM_DMSID_MAX ];
			
public:
	AppDmsOverrideItem( LPCSTR lpszAppId, LPCSTR lpszDmsId )
	{
		strncpy( szAppId, lpszAppId, ODM_APPID_MAX );
		szAppId[ ODM_APPID_MAX - 1 ] = '\0';
		strncpy( szDmsId, lpszDmsId, ODM_DMSID_MAX );
		szDmsId[ ODM_DMSID_MAX - 1 ] = '\0';
	}
	BOOL operator ==( const	AppDmsOverrideItem& rOther ) const
	{ 
		return stricmp( this->szAppId, rOther.szAppId ) == 0;
	}
	LPCSTR AppId() const { return szAppId; }
	LPCSTR DmsId() const { return szDmsId; }
};


class AppDmsOverrideList
{
	friend AppDmsOverrideListIterator;
	struct ListNode
	{
		AppDmsOverrideItem m_item;
		ListNode* m_pNext;

		ListNode( const AppDmsOverrideItem& rItem, ListNode*& rpHead ) 
			: m_item( rItem )
		{ 
			m_pNext = rpHead;
			rpHead = this;
		}
	};

	ListNode* m_pListHead;

	BOOL UpdateList( const AppDmsOverrideItem& rItem )
	{
		AppDmsOverrideItem* pItem = Find( rItem );
		if ( pItem )
		{
			*pItem = rItem;
			return TRUE;
		}

		return FALSE;
	}

public:
	AppDmsOverrideList(){ m_pListHead = NULL; }
	
	~AppDmsOverrideList(){ ClearList(); }

	BOOL Add( const AppDmsOverrideItem& rItem )
	{
		if ( UpdateList( rItem ) )
			return TRUE;

		return NULL != new ListNode( rItem, m_pListHead );
	}

	AppDmsOverrideItem* Find( const AppDmsOverrideItem& rItem )
	{
		ListNode* pTestNode = m_pListHead;
		while ( pTestNode )
		{
			if ( pTestNode->m_item == rItem )
				break;
			pTestNode = pTestNode->m_pNext;
		}

		return &pTestNode->m_item;
	}

	void Remove( const AppDmsOverrideItem& rItem )
	{
		ListNode* pPreviousNode = NULL;
		ListNode* pRemoveNode = m_pListHead;
		while ( pRemoveNode )
		{
			if ( pRemoveNode->m_item == rItem )
				break;
			pPreviousNode = pRemoveNode;
			pRemoveNode = pRemoveNode->m_pNext;
		}

		if ( pRemoveNode )
		{
			if ( pPreviousNode )
				pPreviousNode->m_pNext = pRemoveNode->m_pNext;
			else
				m_pListHead = pRemoveNode->m_pNext;

			delete pRemoveNode;
		}
	}

	void ClearList()
	{ 
		ListNode* pTemp;
		while( m_pListHead )
		{
			pTemp = m_pListHead->m_pNext;
			delete m_pListHead;
			m_pListHead = pTemp;
		}
	}
	
///////////////////////////////////////////////////////////////////////////////
//
// GetDMS--Find the override DMS for an app.
//
// lpszAppId	<in>	The application.
// lpszDMSId	<out>	The DMSId to use as the application defualt DMS.
//
//	Returns TRUE if an override DMS is found for the application; FALSE otherwise.
//
///////////////////////////////////////////////////////////////////////////////
	BOOL GetDMS( LPCSTR lpszAppId, LPSTR lpszDMSId )
	{
		AppDmsOverrideItem* pItem = Find( AppDmsOverrideItem( lpszAppId, "" ) );
		if ( pItem )
		{
			strcpy( lpszDMSId, pItem->DmsId() );
			return TRUE;
		}

		return FALSE;
	}
};


class AppDmsOverrideListIterator
{
	AppDmsOverrideList& m_rList;
	AppDmsOverrideList::ListNode* m_pCurrent;
public:
	AppDmsOverrideListIterator( AppDmsOverrideList& rList ) 
		: m_rList( rList ) 
	{ 
		m_pCurrent = rList.m_pListHead; 
	}
	AppDmsOverrideItem& Current(){ return m_pCurrent->m_item; }
	void Restart(){ m_pCurrent = m_rList.m_pListHead; };
	operator int(){ return m_pCurrent != NULL; }
	AppDmsOverrideItem& operator ++(){ m_pCurrent = m_pCurrent->m_pNext; return m_pCurrent->m_item; }
	AppDmsOverrideItem& operator ++( int )
	{
		AppDmsOverrideItem& r = m_pCurrent->m_item;
		m_pCurrent = m_pCurrent->m_pNext;
		return r;
	}
};

///////////////////////////////////////////////////////////////////////////////
//
// TUList is a simple template class for maintaining and updating a list of
// unique objects of type T.  TUList assumes that T has meaningful copy 
// semantics, and an equality operator.  TUList maintains the uniqueness of the 
// objects in the list by using T’s equality operator.
// 
// Consturctor:
// TUList()--Consturcts an empty list.
//
// Public Methods:
// BOOL IsEmpty()--Returns TRUE if the list is empty; returns FALSE otherwise.
// BOOL Add( const T& )--Add an item to the list or update the equivalent item 
//							already in the list.  This method returns TRUE if 
//							the item is added or a list item is updated; returns 
//							FALSE otherwise.
// T* Find( const T& )--Find this item in the list.  Return a pointer to the item 
//							in the list.
// void Remove( const T& )--Remove this item from the list.
// void ClearList()--Clear the list.
//
///////////////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////////////
//
// TUListIterator implemets a list iterator that works on a TUList< T > object.
//
// Constructor:
// TUListIterator( TUList< T >& )--Constructs an iterator that traverses the
//									indicated TUList< T > object.
//
// Public methods:
// T& Current()--Return the current type T object.
// void Restart()--Restart iteration from the beginning of the list.
// operator int()--Converts the iterator to an integer value for testing if 
//					objects remain in the iterator. The iterator converts to 0 
//					if nothing remains in the iterator.
// T& operator ++()--Moves to the next object, and returns the object that was 
//						current after the move (pre-increment).
// T& operator ++(int)--Moves to the next object, and returns the object that 
//						was current before the move (post-increment).
//
///////////////////////////////////////////////////////////////////////////////

#endif
