# Microsoft Developer Studio Generated NMAKE File, Based on odma32.dsp
!IF "$(CFG)" == ""
CFG=odma32 - Win32 Release
!MESSAGE No configuration specified. Defaulting to odma32 - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "odma32 - Win32 Release" && "$(CFG)" != "odma32 - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "odma32.mak" CFG="odma32 - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "odma32 - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "odma32 - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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

!IF  "$(CFG)" == "odma32 - Win32 Release"

OUTDIR=.\..\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\..\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "..\ODMASetup\ODMA32.dll" "$(OUTDIR)\odma32.bsc"

!ELSE 

ALL : "..\ODMASetup\ODMA32.dll" "$(OUTDIR)\odma32.bsc"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\Client.obj"
	-@erase "$(INTDIR)\Client.sbr"
	-@erase "$(INTDIR)\Init.obj"
	-@erase "$(INTDIR)\Init.sbr"
	-@erase "$(INTDIR)\Odma.res"
	-@erase "$(INTDIR)\Odmaent.obj"
	-@erase "$(INTDIR)\Odmaent.sbr"
	-@erase "$(INTDIR)\Odmdms.obj"
	-@erase "$(INTDIR)\Odmdms.sbr"
	-@erase "$(INTDIR)\Registry.obj"
	-@erase "$(INTDIR)\Registry.sbr"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\odma32.bsc"
	-@erase "$(OUTDIR)\ODMA32.exp"
	-@erase "$(OUTDIR)\ODMA32.lib"
	-@erase "..\ODMASetup\ODMA32.dll"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /FR"$(INTDIR)\\" /Fp"$(INTDIR)\odma32.pch" /YX /Fo"$(INTDIR)\\"\
 /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Release/
CPP_SBRS=.\Release/
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\Odma.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\odma32.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\Client.sbr" \
	"$(INTDIR)\Init.sbr" \
	"$(INTDIR)\Odmaent.sbr" \
	"$(INTDIR)\Odmdms.sbr" \
	"$(INTDIR)\Registry.sbr"

"$(OUTDIR)\odma32.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)\ODMA32.pdb" /machine:I386 /def:".\Odma32.def"\
 /out:"..\ODMASetup\ODMA32.dll" /implib:"$(OUTDIR)\ODMA32.lib" 
DEF_FILE= \
	".\Odma32.def"
LINK32_OBJS= \
	"$(INTDIR)\Client.obj" \
	"$(INTDIR)\Init.obj" \
	"$(INTDIR)\Odma.res" \
	"$(INTDIR)\Odmaent.obj" \
	"$(INTDIR)\Odmdms.obj" \
	"$(INTDIR)\Registry.obj"

"..\ODMASetup\ODMA32.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "odma32 - Win32 Debug"

OUTDIR=.\..\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\..\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\odma32.dll"

!ELSE 

ALL : "$(OUTDIR)\odma32.dll"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\Client.obj"
	-@erase "$(INTDIR)\Init.obj"
	-@erase "$(INTDIR)\Odma.res"
	-@erase "$(INTDIR)\Odmaent.obj"
	-@erase "$(INTDIR)\Odmdms.obj"
	-@erase "$(INTDIR)\Registry.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\odma32.dll"
	-@erase "$(OUTDIR)\odma32.exp"
	-@erase "$(OUTDIR)\odma32.lib"
	-@erase "$(OUTDIR)\odma32.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)\odma32.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\Odma.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\odma32.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)\odma32.pdb" /debug /machine:I386 /def:".\Odma32.def"\
 /out:"$(OUTDIR)\odma32.dll" /implib:"$(OUTDIR)\odma32.lib" 
DEF_FILE= \
	".\Odma32.def"
LINK32_OBJS= \
	"$(INTDIR)\Client.obj" \
	"$(INTDIR)\Init.obj" \
	"$(INTDIR)\Odma.res" \
	"$(INTDIR)\Odmaent.obj" \
	"$(INTDIR)\Odmdms.obj" \
	"$(INTDIR)\Registry.obj"

"$(OUTDIR)\odma32.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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


!IF "$(CFG)" == "odma32 - Win32 Release" || "$(CFG)" == "odma32 - Win32 Debug"
SOURCE=.\Client.cpp

!IF  "$(CFG)" == "odma32 - Win32 Release"

DEP_CPP_CLIEN=\
	".\Conman.h"\
	".\Odma.h"\
	".\odmacom.h"\
	".\Odmlist.h"\
	

"$(INTDIR)\Client.obj"	"$(INTDIR)\Client.sbr" : $(SOURCE) $(DEP_CPP_CLIEN)\
 "$(INTDIR)"


!ELSEIF  "$(CFG)" == "odma32 - Win32 Debug"

DEP_CPP_CLIEN=\
	".\Conman.h"\
	".\Odma.h"\
	".\odmacom.h"\
	".\Odmlist.h"\
	

"$(INTDIR)\Client.obj" : $(SOURCE) $(DEP_CPP_CLIEN) "$(INTDIR)"


!ENDIF 

SOURCE=.\Init.cpp

!IF  "$(CFG)" == "odma32 - Win32 Release"

DEP_CPP_INIT_=\
	".\Conman.h"\
	".\Odma.h"\
	".\odmacom.h"\
	".\Odmlist.h"\
	

"$(INTDIR)\Init.obj"	"$(INTDIR)\Init.sbr" : $(SOURCE) $(DEP_CPP_INIT_)\
 "$(INTDIR)"


!ELSEIF  "$(CFG)" == "odma32 - Win32 Debug"

DEP_CPP_INIT_=\
	".\Conman.h"\
	".\Odma.h"\
	".\odmacom.h"\
	".\Odmlist.h"\
	

"$(INTDIR)\Init.obj" : $(SOURCE) $(DEP_CPP_INIT_) "$(INTDIR)"


!ENDIF 

SOURCE=.\Odmaent.cpp

!IF  "$(CFG)" == "odma32 - Win32 Release"

DEP_CPP_ODMAE=\
	".\Conman.h"\
	".\Odma.h"\
	".\odmacom.h"\
	".\Odmlist.h"\
	

"$(INTDIR)\Odmaent.obj"	"$(INTDIR)\Odmaent.sbr" : $(SOURCE) $(DEP_CPP_ODMAE)\
 "$(INTDIR)"


!ELSEIF  "$(CFG)" == "odma32 - Win32 Debug"

DEP_CPP_ODMAE=\
	".\Conman.h"\
	".\Odma.h"\
	".\odmacom.h"\
	".\Odmlist.h"\
	

"$(INTDIR)\Odmaent.obj" : $(SOURCE) $(DEP_CPP_ODMAE) "$(INTDIR)"


!ENDIF 

SOURCE=.\Odmdms.cpp

!IF  "$(CFG)" == "odma32 - Win32 Release"

DEP_CPP_ODMDM=\
	".\Conman.h"\
	".\Odma.h"\
	".\odmacom.h"\
	".\Odmlist.h"\
	

"$(INTDIR)\Odmdms.obj"	"$(INTDIR)\Odmdms.sbr" : $(SOURCE) $(DEP_CPP_ODMDM)\
 "$(INTDIR)"


!ELSEIF  "$(CFG)" == "odma32 - Win32 Debug"

DEP_CPP_ODMDM=\
	".\Conman.h"\
	".\Odma.h"\
	".\odmacom.h"\
	".\Odmlist.h"\
	

"$(INTDIR)\Odmdms.obj" : $(SOURCE) $(DEP_CPP_ODMDM) "$(INTDIR)"


!ENDIF 

SOURCE=.\Registry.cpp

!IF  "$(CFG)" == "odma32 - Win32 Release"

DEP_CPP_REGIS=\
	".\Conman.h"\
	".\Odma.h"\
	".\odmacom.h"\
	".\Odmlist.h"\
	

"$(INTDIR)\Registry.obj"	"$(INTDIR)\Registry.sbr" : $(SOURCE) $(DEP_CPP_REGIS)\
 "$(INTDIR)"


!ELSEIF  "$(CFG)" == "odma32 - Win32 Debug"

DEP_CPP_REGIS=\
	".\Conman.h"\
	".\Odma.h"\
	".\odmacom.h"\
	".\Odmlist.h"\
	

"$(INTDIR)\Registry.obj" : $(SOURCE) $(DEP_CPP_REGIS) "$(INTDIR)"


!ENDIF 

SOURCE=.\Odma.rc

"$(INTDIR)\Odma.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)



!ENDIF 

