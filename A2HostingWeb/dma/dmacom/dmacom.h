#ifndef DMACOM_H
#define DMACOM_H

/* DMACOM.H Version 1.10                                                    */
/* **** REVIEW DRAFT 0.02. DO NOT REDISTRIBUTE.  These lines will ********* */
/* **** BE REMOVED FROM THE OFFICIAL, AUTHORIZED DMACOM.H Version 1.10. *** */ 
/*                                                                          */
/*             Copyright © 1992-1998 Microsoft Corporation                  */
/*             Copyright © 1995-2000 AIIM International                     */
/*                                                                          */
/* This file is distributed under license.  See file        DMACDIST.TXT    */
/* Additional information about DMACOM.H usage is in file   DMACINFO.HTM    */
/* This information is also available on the Web at                         */
/*                          http://www.infonuovo.com/DMware/dmacinfo.htm    */

/*      DMA COM Definitions                                                 */

#if !defined(DMATYPES_H)
#   include <dmatypes.h>
#endif


#if defined(CINTERFACE)
#   define DMA_CINTERFACE
#endif

#if defined(_WIN32) || defined(_MPPC_)
#ifdef _68K_
  #define DMA_STDMETHODCALLTYPE   __cdecl
#else
  #define DMA_STDMETHODCALLTYPE   __stdcall
#endif  

#else
  #define DMA_STDMETHODCALLTYPE   __export __stdcall
#endif

#define DMA_STDMETHODIMP DmaRC DMA_STDMETHODCALLTYPE
#define DMA_STDMETHODIMP_(type) type DMA_STDMETHODCALLTYPE


/*
 *   Defines if C++
 */
#if defined(__cplusplus) && !defined(DMA_CINTERFACE)
#define DMA_EXTERN_C    extern "C"
#define interface struct
#define DMA_STDMETHOD(method)       virtual DmaRC DMA_STDMETHODCALLTYPE method
#define DMA_STDMETHOD_(type,method) virtual type  DMA_STDMETHODCALLTYPE method
#define DMA_PURE                    = 0
#define DMA_THIS_
#define DMA_THIS                    void
#if defined(_MSC_VER) && (_MSC_VER >= 1100)
# define DMA_DECLARE_INTERFACE(itfuuid,iface)				\
	interface __declspec(novtable) __declspec(uuid(#itfuuid)) iface
#else
# define DMA_DECLARE_INTERFACE(itfuuid,iface)    interface iface
#endif
#define DMA_DECLARE_INTERFACE_(itfuuid,iface, baseiface)	\
	DMA_DECLARE_INTERFACE(itfuuid,iface) : public baseiface


#if defined(_MPPC_)  && \
    ( (defined(_MSC_VER) || defined(__SC__) || defined(__MWERKS__)) && \
    !defined(NO_NULL_VTABLE_ENTRY) )

   #define DMA_BEGIN_INTERFACE virtual void a() {}
   #define DMA_END_INTERFACE
#else
   #define DMA_BEGIN_INTERFACE
   #define DMA_END_INTERFACE
#endif


/*
 * Defines for C
 */
#else   

#define DMA_EXTERN_C    extern

#define interface       struct

#define DMA_STDMETHOD(method)       DmaRC (DMA_STDMETHODCALLTYPE * method)
#define DMA_STDMETHOD_(type,method) type  (DMA_STDMETHODCALLTYPE * method)

#if defined(_MPPC_)
    #define DMA_BEGIN_INTERFACE       void    *b;
    #define DMA_END_INTERFACE
#else
    #define DMA_BEGIN_INTERFACE
    #define DMA_END_INTERFACE
#endif



#define DMA_PURE
#define DMA_THIS_                   INTERFACE DMA_DATA_FAR * This,
#define DMA_THIS                    INTERFACE DMA_DATA_FAR * This


#ifdef  DMA_CONST_VTABLE
#define DMA_DECLARE_INTERFACE(itfuuid,iface)		\
							    typedef interface iface { \
                                    const struct iface##Vtbl DMA_DATA_FAR * lpVtbl; \
                                } iface; \
                                typedef const struct iface##Vtbl iface##Vtbl; \
                                const struct iface##Vtbl

#else
#define DMA_DECLARE_INTERFACE(itfuuid,iface)		\
							    typedef interface iface { \
                                    struct iface##Vtbl DMA_DATA_FAR * lpVtbl; \
                                } iface; \
                                typedef struct iface##Vtbl iface##Vtbl; \
                                struct iface##Vtbl

#endif

#define DMA_DECLARE_INTERFACE_(itfuuid,iface,baseiface)  DMA_DECLARE_INTERFACE(iface)


#endif  /* Not _cplusplus */


/* 
 *   Define an IUnknown Interface if one not defined.
 */
#ifndef __IUnknown_INTERFACE_DEFINED__
#undef  INTERFACE
#define INTERFACE   IUnknown
DMA_DECLARE_INTERFACE(00000000-0000-0000-C000-000000000046,IUnknown)
{
DMA_BEGIN_INTERFACE
DMA_STDMETHOD(QueryInterface) (DMA_THIS_ DMA_REFIID riid, pDmapv ppIObject) DMA_PURE;
DMA_STDMETHOD_(DmaUInteger32, AddRef)  (DMA_THIS) DMA_PURE;
DMA_STDMETHOD_(DmaUInteger32, Release) (DMA_THIS) DMA_PURE;
DMA_END_INTERFACE
};
typedef IUnknown DMA_DATA_FAR * LPUNKNOWN;
#endif  

#define IID_IUnknownVal {0x00000000, 0x0000, 0x0000, {0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46}}


/* 
 *   Define a single Macro which can be used to insert the IUnknown
 *   method declarations into other interface definitions
 */
# define DMA_DECLARE_IUNKNOWN_METHODS \
DMA_STDMETHOD(QueryInterface) (DMA_THIS_ DMA_REFIID riid, pDmapv ppIObject) DMA_PURE; \
DMA_STDMETHOD_(DmaUInteger32, AddRef)  (DMA_THIS) DMA_PURE; \
DMA_STDMETHOD_(DmaUInteger32, Release) (DMA_THIS) DMA_PURE;

/* 
 *   Define an IMalloc Interface if one not defined.
 */
#ifndef __IMalloc_INTERFACE_DEFINED__
#undef  INTERFACE
#define INTERFACE   IMalloc
DMA_DECLARE_INTERFACE_(00000002-0000-0000-C000-000000000046,IMalloc,IUnknown)
{
DMA_BEGIN_INTERFACE
DMA_DECLARE_IUNKNOWN_METHODS
DMA_STDMETHOD_(void DMA_DATA_FAR *, Alloc)  (DMA_THIS_ DmaUInteger32 cb) DMA_PURE;
DMA_STDMETHOD_(void DMA_DATA_FAR *, Realloc)(DMA_THIS_ void DMA_DATA_FAR *pv, DmaUInteger32 cb) DMA_PURE;
DMA_STDMETHOD_(void, Free)(DMA_THIS_ void DMA_DATA_FAR *pv) DMA_PURE;
DMA_STDMETHOD_(DmaUInteger32, GetSize)(DMA_THIS_ void DMA_DATA_FAR *pv) DMA_PURE;
DMA_STDMETHOD_(DmaInteger16, DidAlloc)(DMA_THIS_ void DMA_DATA_FAR *pv) DMA_PURE;
DMA_STDMETHOD_(void, HeapMinimize)(DMA_THIS) DMA_PURE;
DMA_END_INTERFACE
};
typedef IMalloc DMA_DATA_FAR * LPMALLOC;
#endif
#define IID_IMallocVal {0x00000002, 0x0000, 0x0000, {0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46}}

/* $Header:: /InfoNuovo Conclave Web/DMware/dmacom.h 6     00-04-07 11:46 Orcmid       $ */
#endif  /* DMACOM_H */
