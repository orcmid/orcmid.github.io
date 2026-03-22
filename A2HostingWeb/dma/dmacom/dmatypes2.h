#ifndef DMATYPES_H
#define DMATYPES_H
/*
 *  Copyright 1995,1996,1997 by the Association for Information and Image Management Int'l
 *                                             1100 Wayne Avenue
 *                                             Silver Spring, MD 20910-5603
 *                                             Tel: 301/587-8202
 *                                             Fax: 301/587-2711
 *      All Rights Reserved.
 *      DMA (Document Management Alliance) working group.
 *
 *  DMA base type definitions 
 *
 */


/*
 * Includes
 */

/* wchar_t in stddef.h */
#include <stddef.h>

/* 
 *   DmaWChar - Wide Character
 */
typedef wchar_t DmaWChar;

/*
 *  DmaString - Follows the convention defined for OLE BSTRs
 */
typedef DmaWChar   *pDmaString;
typedef pDmaString *ppDmaString;
/* 
 *   DmaInteger8  - The range of DmaInteger8 is -128 to +127 inclusive.
 */
typedef signed char         DmaInteger8;
typedef DmaInteger8 *       pDmaInteger8;
typedef pDmaInteger8 *      ppDmaInteger8;

/* 
 *   DmaUInteger8  - The range of DmaUInteger8 is 0 to +255 inclusive.
 */
typedef unsigned char       DmaUInteger8;
typedef DmaUInteger8 *      pDmaUInteger8;
typedef pDmaUInteger8 *     ppDmaUInteger8;

/* 
 *   DmaInteger16  - The range of DmaInteger16 is -32768 to +32767 inclusive.
 */
typedef short               DmaInteger16;
typedef DmaInteger16 *      pDmaInteger16;
typedef pDmaInteger16 *     ppDmaInteger16;

/* 
 *   DmaUInteger16  - The range of DmaUInteger16 is 0 to +65535 inclusive.
 */
typedef unsigned short      DmaUInteger16;
typedef DmaUInteger16 *     pDmaUInteger16;
typedef pDmaUInteger16 *    ppDmaUInteger16;

/* 
 *   DmaInteger32  - The range of DmaInteger32 is -2,147,483,648 to  2,147,483,647
 */
typedef long                DmaInteger32;
typedef DmaInteger32 *      pDmaInteger32;
typedef pDmaInteger32 *     ppDmaInteger32;

/* 
 *   DmaUInteger32  - The range DmaUInteger32 of is 0 to 4,294,967,295
 */
typedef unsigned long       DmaUInteger32;
typedef DmaUInteger32 *     pDmaUInteger32;
typedef pDmaUInteger32 *    ppDmaUInteger32;

/*
 *  DMA_BIG_ENDIAN is used in the definition of DmaInt64 and DmaUInt64
 */
#if !defined(DMA_BIG_ENDIAN)
#   if defined(_WIN32) || defined(i386) || defined(_X86_) 
#       define DMA_BIG_ENDIAN 0
#   elif defined(_M_IX86) || defined(_M_MRX000) || defined(_M_ALPHA) || defined(_M_PPC)
#       define DMA_BIG_ENDIAN 0
#   elif defined(_ALPHA_) || defined(_PPC_) 
#       define DMA_BIG_ENDIAN 0
#   elif defined(_AIX)
#       define DMA_BIG_ENDIAN 1
#   elif defined(sparc) || defined(mips) || defined(MIPS)
#       define DMA_BIG_ENDIAN 1
#   elif defined(SOLARIS) || defined(HPUX)
#       define DMA_BIG_ENDIAN 1
#   else
#       error DMA_BIG_ENDIAN IS NOT DEFINED FOR THIS PLATFORM
#   endif
#endif

/* 
 *  DmaInt64  This is the signed 64 bit integer data type. This typedef is needed
 *      only for the "offset" parameter to the stream interface to content objects. 
 *      It is not needed as the value of any property. 
 */

#if defined(DMA_CPU64)
/*
 * The following typedef is according to the leading 64 bit standard. 
 * On some platforms, the following typedef may be different.
 */
    typedef int                  DmaInteger64;
#   define  _DmaInteger64_Defined_
#elif defined (_MSC_VER)
        typedef __int64              DmaInteger64;
#   define  _DmaInteger64_Defined_
#endif

    typedef union DmaInt64
    {
        struct
        {
#if DMA_BIG_ENDIAN
            DmaInteger32        ms;
            DmaUInteger32       ls;
#else
            DmaUInteger32       ls;
            DmaInteger32        ms;
#endif
        }
                                s;
#if defined(_DmaInteger64_Defined_)
        DmaInteger64            i;
#endif
    }
        DmaInt64;

typedef DmaInt64 *          pDmaInt64;
typedef pDmaInt64 *         ppDmaInt64;

/* 
 *  DmaIntU64  This is the unsigned 64 bit integer data type. This datatype is
 *      defined for completeness. It is defined by analogy from DmaInt64.
 */

#if defined(DMA_CPU64)
    /* 
     * The following typedef is platform dependent. This one follows
     * the dominant 64 bit standard.
     */
    typedef unsigned int        DmaUInteger64;
#   define  _DmaUInteger64_Defined_
#elif defined(_MSC_VER)
    typedef unsigned __int64    DmaUInteger64;
#   define  _DmaUInteger64_Defined_
#endif

    typedef union DmaUInt64
    {
        struct
        {
#if DMA_BIG_ENDIAN
            DmaUInteger32       ms;
            DmaUInteger32       ls;
#else
            DmaUInteger32       ls;
            DmaUInteger32       ms;
#endif
        }
                                s;
#if defined(_DmaInteger64_Defined_)
        DmaUInteger64           i;
#endif
    }
        DmaUInt64;

    typedef DmaUInt64 *         pDmaUInt64;
    typedef pDmaUInt64 *        ppDmaUInt64;


/* 
 *  DmaFloat4 - DmaFloat64 has at least the range of the C type "double" as defined 
 *      in the ANSI C standard ANSI/ISO 9899-1990. 
 */
typedef double              DmaFloat64;
typedef DmaFloat64 *        pDmaFloat64;
typedef pDmaFloat64 *       ppDmaFloat64;

/* 
 *   Dmapv - Interface pointer used in Interface methods
 */ 
typedef void *              Dmapv;
typedef Dmapv *             pDmapv;

/* 
 *   Dmavoid - void and void pointer
 */ 
typedef void                DmaVoid;
typedef DmaVoid *           pDmaVoid;

/*
 *   DMA_DATA_FAR is a define used to specify FAR addressing.  If your site needs to specify
 *   FAR addressing, change the define below.
 */
#ifndef DMA_DATA_FAR
#define DMA_DATA_FAR
#endif

/* 
 *   pDmaBinary - Pointer to Binary Data derived from DmaUInteger8
 */ 
typedef pDmaUInteger8       pDmaBinary;
typedef pDmaBinary *        ppDmaBinary;
typedef struct DmaBinaryValue
{
	DmaUInteger32 cbBytes;
	pDmaBinary    pbBytes;
} DmaBinaryValue;


/* 
 *   DmaSizeT   - Used to indicate size of a variable or buffer
 *                Derived from the DmaUInteger32
 */
typedef DmaUInteger32       DmaSizeT;
typedef DmaSizeT *          pDmaSizeT;
typedef pDmaSizeT *         ppDmaSizeT; 


/* 
 *  DmaId -   This data type carries a DCE UUID (Distributed Computing Environment
 *      Universally Unique ID). A DmaID is a struct that contains a 32-bit long,
 *      two 16-bit shorts, and an array of 8 bytes, for a total of 16 bytes.
 */
#if defined(GUID_DEFINED)
typedef GUID DmaId;
#else
typedef struct DmaId
{
    DmaUInteger32           Data1;
    DmaUInteger16           Data2;
    DmaUInteger16           Data3;
    DmaUInteger8            Data4[8];
}
    DmaId;
#endif

typedef DmaId *             pDmaId;
typedef pDmaId *            ppDmaId;


#if defined(__cplusplus)
#   define DMA_REFIID       const DmaId &
#else
#   define DMA_REFIID       const DmaId * const
#endif


/* 
 *  DmaDateTime is a specialization of a DmaString with the following syntax derived
 *  from ISO 8601:YYYYMMDDThhmmss[,f]Z
 */
typedef pDmaString          pDmaDateTime;
typedef pDmaDateTime *      ppDmaDateTime;

   
/* 
 *  DmaBoolean  - Derived from DmaUInteger16 data type. The range of 
 *      DmaBoolean is 0 to +65535 inclusive.
 */
typedef DmaUInteger16       DmaBoolean;
typedef DmaBoolean *        pDmaBoolean;
typedef pDmaBoolean *       ppDmaBoolean;

/*
 * These are the legal values of properties of type DmaBoolean
 * that may be stored in document space databases:
 */
#define DMA_TRUE            (1)
#define DMA_FALSE           (0)


/* 
 *  DmaIndex32  - Derived from DmaInteger32 data type. The range of this type
 *      is      -1 to 2,147,483,647. Note that the value -1 is not a legal index into
 *      a list, since list element indexes start at zero. It is usually appropriate
 *      to return -1 as the list index on unsuccessful searches for a list element.
 */
typedef DmaInteger32        DmaIndex32;
typedef DmaIndex32  *       pDmaIndex32;
typedef pDmaIndex32  *      ppDmaIndex32;

/* 
 *  DmaRC  - Derived from DmaInteger32 data type. The return codes for DMA 
 *      methods defined in the DMA COM interfaces are based on Microsoft's
 *      HRESULT type.  
 *  Starting with bit 31 the format is as follows:
 *
 *  Severity   (1 bit) Severity field
 *      0       Success.  The function was successful.
 *      1       Error.    The function failed due to an error condition.
 *
 *  Facility    (15 bits)
 *      Indicates which group of status codes this belongs to.  
 *      Microsoft reserves the exclusive right to define facility codes.  
 *      The define FACILITY_ITF is used for all errors arising from custom interfaces.
 *      Note that FACILITY_ITF is the facility used by DMA return codes.   
 * 
 *   Code       (16 bits) 
 *      The code describes what actually took place, error or otherwise. We bias
 *      the codes by 512 to be a good COM citizen.
 */
typedef DmaInteger32        DmaRC;
typedef DmaRC *             pDmaRC;
typedef pDmaRC *            ppDmaRC;

#define DMA_MAKE_ERROR_RC(rc) \
    ((DmaRC)(((DmaUInteger32)(0x8004)<<16)|((DmaUInteger32)(rc))+512))

#define DMA_MAKE_SUCCESS_RC(rc) \
    ((DmaRC)(((DmaUInteger32)(0x04)<<16)|((DmaUInteger32)(rc))+512))

#define DMA_SUCCEEDED(_rc) ((_rc) >= 0)
#define DMA_FAILED(_rc) ((_rc) < 0)

#endif /* DMATYPES.h */



