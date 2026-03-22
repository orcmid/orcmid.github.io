# Microsoft Developer Studio Generated NMAKE File, Based on ODMASamp32.dsp
!IF "$(CFG)" == ""
CFG=ODMASamp - Win32 Debug
!MESSAGE No configuration specified. Defaulting to ODMASamp - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "ODMASamp - Win32 Release" && "$(CFG)" !=\
 "ODMASamp - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ODMASamp32.mak" CFG="ODMASamp - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ODMASamp - Win32 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "ODMASamp - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "ODMASamp - Win32 Release"

OUTDIR=.\..\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\..\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ODMASamp32.dll"

!ELSE 

ALL : "$(OUTDIR)\ODMASamp32.dll"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\DIALOGS.OBJ"
	-@erase "$(INTDIR)\Doclist.obj"
	-@erase "$(INTDIR)\Document.obj"
	-@erase "$(INTDIR)\ODMASAMP.OBJ"
	-@erase "$(INTDIR)\Odmasamp.res"
	-@erase "$(INTDIR)\SAMPAPP.OBJ"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\ODMASamp32.dll"
	-@erase "$(OUTDIR)\ODMASamp32.exp"
	-@erase "$(OUTDIR)\ODMASamp32.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /I "..\Include" /D "WIN32" /D "NDEBUG" /D\
 "_WINDOWS" /Fp"$(INTDIR)\ODMASamp32.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\"\
 /FD /c 
CPP_OBJS=.\Release/
CPP_SBRS=.
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /o NUL /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\Odmasamp.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ODMASamp32.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)\ODMASamp32.pdb" /machine:I386 /def:".\ODMASamp32.def"\
 /out:"$(OUTDIR)\ODMASamp32.dll" /implib:"$(OUTDIR)\ODMASamp32.lib" 
DEF_FILE= \
	".\ODMASamp32.def"
LINK32_OBJS= \
	"$(INTDIR)\DIALOGS.OBJ" \
	"$(INTDIR)\Doclist.obj" \
	"$(INTDIR)\Document.obj" \
	"$(INTDIR)\ODMASAMP.OBJ" \
	"$(INTDIR)\Odmasamp.res" \
	"$(INTDIR)\SAMPAPP.OBJ"

"$(OUTDIR)\ODMASamp32.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ODMASamp - Win32 Debug"

OUTDIR=.\..\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\..\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\ODMASamp32.dll" "$(OUTDIR)\ODMASamp32.bsc"

!ELSE 

ALL : "$(OUTDIR)\ODMASamp32.dll" "$(OUTDIR)\ODMASamp32.bsc"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\DIALOGS.OBJ"
	-@erase "$(INTDIR)\DIALOGS.SBR"
	-@erase "$(INTDIR)\Doclist.obj"
	-@erase "$(INTDIR)\Doclist.sbr"
	-@erase "$(INTDIR)\Document.obj"
	-@erase "$(INTDIR)\Document.sbr"
	-@erase "$(INTDIR)\ODMASAMP.OBJ"
	-@erase "$(INTDIR)\Odmasamp.res"
	-@erase "$(INTDIR)\ODMASAMP.SBR"
	-@erase "$(INTDIR)\SAMPAPP.OBJ"
	-@erase "$(INTDIR)\SAMPAPP.SBR"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\ODMASamp32.bsc"
	-@erase "$(OUTDIR)\ODMASamp32.dll"
	-@erase "$(OUTDIR)\ODMASamp32.exp"
	-@erase "$(OUTDIR)\ODMASamp32.ilk"
	-@erase "$(OUTDIR)\ODMASamp32.lib"
	-@erase "$(OUTDIR)\ODMASamp32.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /Zi /Od /I "..\Include" /D "WIN32" /D\
 "_DEBUG" /D "_WINDOWS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\ODMASamp32.pch" /YX\
 /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.\Debug/
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /o NUL /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\Odmasamp.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\ODMASamp32.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\DIALOGS.SBR" \
	"$(INTDIR)\Doclist.sbr" \
	"$(INTDIR)\Document.sbr" \
	"$(INTDIR)\ODMASAMP.SBR" \
	"$(INTDIR)\SAMPAPP.SBR"

"$(OUTDIR)\ODMASamp32.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)\ODMASamp32.pdb" /debug /machine:I386 /def:".\ODMASamp32.def"\
 /out:"$(OUTDIR)\ODMASamp32.dll" /implib:"$(OUTDIR)\ODMASamp32.lib"\
 /pdbtype:sept 
DEF_FILE= \
	".\ODMASamp32.def"
LINK32_OBJS= \
	"$(INTDIR)\DIALOGS.OBJ" \
	"$(INTDIR)\Doclist.obj" \
	"$(INTDIR)\Document.obj" \
	"$(INTDIR)\ODMASAMP.OBJ" \
	"$(INTDIR)\Odmasamp.res" \
	"$(INTDIR)\SAMPAPP.OBJ"

"$(OUTDIR)\ODMASamp32.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(CFG)" == "ODMASamp - Win32 Release" || "$(CFG)" ==\
 "ODMASamp - Win32 Debug"
SOURCE=.\DIALOGS.CPP

!IF  "$(CFG)" == "ODMASamp - Win32 Release"

DEP_CPP_DIALO=\
	"..\include\odma.h"\
	"..\include\odmacom.h"\
	".\Odmasamp.h"\
	

"$(INTDIR)\DIALOGS.OBJ" : $(SOURCE) $(DEP_CPP_DIALO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ODMASamp - Win32 Debug"

DEP_CPP_DIALO=\
	"..\include\odma.h"\
	"..\include\odmacom.h"\
	".\Odmasamp.h"\
	

"$(INTDIR)\DIALOGS.OBJ"	"$(INTDIR)\DIALOGS.SBR" : $(SOURCE) $(DEP_CPP_DIALO)\
 "$(INTDIR)"


!ENDIF 

SOURCE=.\Doclist.cpp

!IF  "$(CFG)" == "ODMASamp - Win32 Release"

DEP_CPP_DOCLI=\
	"..\include\odma.h"\
	"..\include\odmacom.h"\
	".\Odmasamp.h"\
	

"$(INTDIR)\Doclist.obj" : $(SOURCE) $(DEP_CPP_DOCLI) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ODMASamp - Win32 Debug"

DEP_CPP_DOCLI=\
	"..\include\odma.h"\
	"..\include\odmacom.h"\
	".\Odmasamp.h"\
	

"$(INTDIR)\Doclist.obj"	"$(INTDIR)\Doclist.sbr" : $(SOURCE) $(DEP_CPP_DOCLI)\
 "$(INTDIR)"


!ENDIF 

SOURCE=.\Document.cpp

!IF  "$(CFG)" == "ODMASamp - Win32 Release"

DEP_CPP_DOCUM=\
	"..\include\odma.h"\
	"..\include\odmacom.h"\
	".\Odmasamp.h"\
	

"$(INTDIR)\Document.obj" : $(SOURCE) $(DEP_CPP_DOCUM) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ODMASamp - Win32 Debug"

DEP_CPP_DOCUM=\
	"..\include\odma.h"\
	"..\include\odmacom.h"\
	".\Odmasamp.h"\
	

"$(INTDIR)\Document.obj"	"$(INTDIR)\Document.sbr" : $(SOURCE) $(DEP_CPP_DOCUM)\
 "$(INTDIR)"


!ENDIF 

SOURCE=.\ODMASAMP.CPP

!IF  "$(CFG)" == "ODMASamp - Win32 Release"

DEP_CPP_ODMAS=\
	"..\include\odma.h"\
	"..\include\odmacom.h"\
	".\Odmasamp.h"\
	

"$(INTDIR)\ODMASAMP.OBJ" : $(SOURCE) $(DEP_CPP_ODMAS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ODMASamp - Win32 Debug"

DEP_CPP_ODMAS=\
	"..\include\odma.h"\
	"..\include\odmacom.h"\
	".\Odmasamp.h"\
	

"$(INTDIR)\ODMASAMP.OBJ"	"$(INTDIR)\ODMASAMP.SBR" : $(SOURCE) $(DEP_CPP_ODMAS)\
 "$(INTDIR)"


!ENDIF 

SOURCE=.\Odmasamp.rc

"$(INTDIR)\Odmasamp.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\SAMPAPP.CPP

!IF  "$(CFG)" == "ODMASamp - Win32 Release"

DEP_CPP_SAMPA=\
	"..\include\odma.h"\
	"..\include\odmacom.h"\
	".\Odmasamp.h"\
	

"$(INTDIR)\SAMPAPP.OBJ" : $(SOURCE) $(DEP_CPP_SAMPA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ODMASamp - Win32 Debug"

DEP_CPP_SAMPA=\
	"..\include\odma.h"\
	"..\include\odmacom.h"\
	".\Odmasamp.h"\
	

"$(INTDIR)\SAMPAPP.OBJ"	"$(INTDIR)\SAMPAPP.SBR" : $(SOURCE) $(DEP_CPP_SAMPA)\
 "$(INTDIR)"


!ENDIF 


!ENDIF 

