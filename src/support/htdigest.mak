# Microsoft Developer Studio Generated NMAKE File, Based on htdigest.dsp
!IF "$(CFG)" == ""
CFG=htdigest - Win32 Debug
!MESSAGE No configuration specified. Defaulting to htdigest - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "htdigest - Win32 Release" && "$(CFG)" !=\
 "htdigest - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "htdigest.mak" CFG="htdigest - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "htdigest - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "htdigest - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "htdigest - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\htdigest.exe"

!ELSE 

ALL : "$(OUTDIR)\htdigest.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\ap_cpystrn.obj"
	-@erase "$(INTDIR)\ap_getpass.obj"
	-@erase "$(INTDIR)\ap_md5c.obj"
	-@erase "$(INTDIR)\htdigest.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\htdigest.exe"
	-@erase "$(OUTDIR)\htdigest.map"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "..\include" /D "WIN32" /D "NDEBUG" /D\
 "_CONSOLE" /D "_MBCS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Release/
CPP_SBRS=.
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\htdigest.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)\htdigest.pdb" /map:"$(INTDIR)\htdigest.map" /machine:I386\
 /out:"$(OUTDIR)\htdigest.exe" 
LINK32_OBJS= \
	"$(INTDIR)\ap_cpystrn.obj" \
	"$(INTDIR)\ap_getpass.obj" \
	"$(INTDIR)\ap_md5c.obj" \
	"$(INTDIR)\htdigest.obj"

"$(OUTDIR)\htdigest.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "htdigest - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\htdigest.exe"

!ELSE 

ALL : "$(OUTDIR)\htdigest.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\ap_cpystrn.obj"
	-@erase "$(INTDIR)\ap_getpass.obj"
	-@erase "$(INTDIR)\ap_md5c.obj"
	-@erase "$(INTDIR)\htdigest.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\htdigest.exe"
	-@erase "$(OUTDIR)\htdigest.map"
	-@erase "$(OUTDIR)\htdigest.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /I "..\include" /D "WIN32" /D\
 "_DEBUG" /D "_CONSOLE" /D "_MBCS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\htdigest.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)\htdigest.pdb" /map:"$(INTDIR)\htdigest.map" /debug\
 /machine:I386 /out:"$(OUTDIR)\htdigest.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\ap_cpystrn.obj" \
	"$(INTDIR)\ap_getpass.obj" \
	"$(INTDIR)\ap_md5c.obj" \
	"$(INTDIR)\htdigest.obj"

"$(OUTDIR)\htdigest.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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


!IF "$(CFG)" == "htdigest - Win32 Release" || "$(CFG)" ==\
 "htdigest - Win32 Debug"
SOURCE=..\ap\ap_cpystrn.c

!IF  "$(CFG)" == "htdigest - Win32 Release"

DEP_CPP_AP_CP=\
	"..\include\alloc.h"\
	"..\include\ap.h"\
	"..\include\ap_config.h"\
	"..\include\ap_ctype.h"\
	"..\include\ap_mmn.h"\
	"..\include\buff.h"\
	"..\include\hsregex.h"\
	"..\include\httpd.h"\
	"..\include\util_uri.h"\
	"..\os\win32\os.h"\
	"..\os\win32\readdir.h"\
	

"$(INTDIR)\ap_cpystrn.obj" : $(SOURCE) $(DEP_CPP_AP_CP) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "htdigest - Win32 Debug"

DEP_CPP_AP_CP=\
	"..\include\alloc.h"\
	"..\include\ap.h"\
	"..\include\ap_config.h"\
	"..\include\ap_ctype.h"\
	"..\include\ap_mmn.h"\
	"..\include\buff.h"\
	"..\include\hsregex.h"\
	"..\include\httpd.h"\
	"..\include\util_uri.h"\
	"..\os\win32\os.h"\
	"..\os\win32\readdir.h"\
	

"$(INTDIR)\ap_cpystrn.obj" : $(SOURCE) $(DEP_CPP_AP_CP) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\ap\ap_getpass.c

!IF  "$(CFG)" == "htdigest - Win32 Release"

DEP_CPP_AP_GE=\
	"..\include\ap.h"\
	"..\include\ap_config.h"\
	"..\include\ap_ctype.h"\
	"..\include\ap_mmn.h"\
	"..\include\hsregex.h"\
	"..\os\win32\os.h"\
	

"$(INTDIR)\ap_getpass.obj" : $(SOURCE) $(DEP_CPP_AP_GE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "htdigest - Win32 Debug"

DEP_CPP_AP_GE=\
	"..\include\ap.h"\
	"..\include\ap_config.h"\
	"..\include\ap_ctype.h"\
	"..\include\ap_mmn.h"\
	"..\include\hsregex.h"\
	"..\os\win32\os.h"\
	

"$(INTDIR)\ap_getpass.obj" : $(SOURCE) $(DEP_CPP_AP_GE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\ap\ap_md5c.c

!IF  "$(CFG)" == "htdigest - Win32 Release"

DEP_CPP_AP_MD=\
	"..\include\ap.h"\
	"..\include\ap_config.h"\
	"..\include\ap_ctype.h"\
	"..\include\ap_md5.h"\
	"..\include\ap_mmn.h"\
	"..\include\hsregex.h"\
	"..\os\win32\os.h"\
	

"$(INTDIR)\ap_md5c.obj" : $(SOURCE) $(DEP_CPP_AP_MD) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "htdigest - Win32 Debug"

DEP_CPP_AP_MD=\
	"..\include\ap.h"\
	"..\include\ap_config.h"\
	"..\include\ap_ctype.h"\
	"..\include\ap_md5.h"\
	"..\include\ap_mmn.h"\
	"..\include\hsregex.h"\
	"..\os\win32\os.h"\
	

"$(INTDIR)\ap_md5c.obj" : $(SOURCE) $(DEP_CPP_AP_MD) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\htdigest.c
DEP_CPP_HTDIG=\
	"..\include\ap.h"\
	"..\include\ap_config.h"\
	"..\include\ap_ctype.h"\
	"..\include\ap_md5.h"\
	"..\include\ap_mmn.h"\
	"..\include\hsregex.h"\
	"..\os\win32\os.h"\
	

"$(INTDIR)\htdigest.obj" : $(SOURCE) $(DEP_CPP_HTDIG) "$(INTDIR)"



!ENDIF 

