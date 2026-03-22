@echo off
rem tidygen.bat 0.0.6                UTF-8                          2017-11-06 
rem -----1---------2---------3---------4---------5---------6---------7-------*

rem                  TIDY GENERATION OF PUBLIC HEXO SPANNER
rem                  ======================================

rem This procedure tidies the nfoCentrale/spanner Hexo-authoring folder 
rem prior to generation of updates to the public blog folder.  This avoids
rem interference with Hexo and cluttering of the material uploaded to 
rem <http://orcmid.com/BlunderDome/wingnut>.
rem
rem Tidying removes ephemeral files and *.scc files left as part of editing 
rem and source-code management operations.  The clutter can also disrupt
rem generation operations that fail on encountering unrecognized material.
rem
rem There are recursive file deletions.  Protections against dangerous use
rem are included.  Performance from the proper location and configuration
rem are checked.  Along with that, a common nfoTools approach to command-line
rem Windows batch files is employed, allowing embedded and terse options as
rem well as the default verbose presentation. 

rem DESIGNATE THE SEMANTIC VERSION CASE
SET TGverNum=0.0.6
SET TGauthoring=spanner
rem customization of commands below should not be required for simple
rem incorporation in other Hexo-processed authoring folders.

rem SELECT EMBEDDED, TERSE, OR DEFAULT
rem     %1 value "+" selects smooth non-stop operation for splicing output
rem        into that of a calling script.
rem     %2 might then be "*" and allow for that.
SET TGterse=
SET TGsplice=%1
IF NOT "%1" == "+" GOTO :MAYBETERSE
IF "%2" == "*" SET TGterse=^>NUL

:MAYBETERSE
rem SELECT TERSE OR VERBOSE
rem     %1 value "*" selects terse operation

IF "%1" == "*" SET TGterse=^>NUL
rem                used to dump verbose echoes

rem ANNOUNCE THIS SCRIPT
IF "%1" == "*" GOTO :WHISPER
IF "%1" == "+" GOTO :WHISPER
TITLE %TGauthoring% AUTHORING FOLDER CLEANUP AND HEXO GENERATION
COLOR 71
rem   Soft white background with blue text
CLS
ECHO:

:WHISPER
ECHO:[tidygen] %TGverNum% TIDY FILES AND GENERATE %TGauthoring% PUBLIC UPDATE
IF NOT CMDEXTVERSION 2 GOTO :FAIL0
IF "%TGsplice%" == "+" GOTO :LOCATE
ECHO:          %TIME% %DATE% on %USERNAME%'s %COMPUTERNAME%%TGterse%
ECHO:          %~dp0%TGterse%
rem            reporting script directory location

:LOCATE
rem VERIFY RUNNING OF SCRIPT FROM A CORRECT LOCATION
IF NOT EXIST "%~dp0LICENSE.txt" GOTO :FAIL1
IF NOT EXIST "%~dp0NOTICE.txt" GOTO :FAIL1
IF NOT EXIST "%~dp0%TGauthoring%.txt" GOTO :FAIL1
IF NOT EXIST "%~dp0tidygen.bat" GOTO :FAIL1 

SET ERRORLEVEL=

rem CLEANUP
ECHO:[tidygen] Removing Any Scrap Files%TGterse%
DEL /S /ARH *.scc %TGterse%
DEL /S *.*~ %TGterse%
DEL /S #*.* %TGterse%

rem GENERATE
ECHO: %TGterse%
ECHO:[tidygen] Generating%TGterse%
hexo generate %TGterse%
IF ERRORLEVEL 1 GOTO :FAIL2

:SUCCESS
ECHO: %TGterse%
ECHO:[tidygen] Success%TGterse%
IF "%TGsplice%" == "+" EXIT /B 0
ECHO: %TGterse%
IF "%TGterse%" == "" PAUSE
EXIT /B 0

:FAIL2
ECHO:[tidygen] *** TIDYGEN APPEARS TO HAVE FAILED ***
ECHO:          Check any preceding message(s) for details.       
GOTO :BAIL

:FAIL1
ECHO:[tidygen] **** FAIL: SCRIPT NOT RUN IN THE REQUIRED LOCATION ****
ECHO:          tidygen.bat must be in the %TGauthoring% authoring   %TGterse%
ECHO:          authoring folder and performed from that location.   %VCterse%
ECHO:          NO TIDYGEN OPERATIONS HAVE BEEN PERFORMED                   
GOTO :BAIL

:FAIL0
ECHO:[tidygen] **** FAIL: COMMAND SHELL EXTENSIONS REQUIRED ****
ECHO:          tidygen.bat requires CMDEXTVERSION 2 or greater.     %VCterse%
ECHO:          This is available on all platforms node.js supports. %VCterse%
ECHO:          %VCterse%
ECHO:          NO TIDYGEN OPERATIONS HAVE BEEN PERFORMED               
ECHO:          To enable Command Extensions, arrange to initiate    %VCterse%
ECHO:          the command shell with the /E:ON command-line option %VCterse%
ECHO:          before tidygen is performed directly or indirectly.  %VCterse%
GOTO :BAIL

:BAIL
IF NOT ERRORLEVEL 2 SET ERRORLEVEL=2
IF NOT "%TGterse%" == "" EXIT /B %ERRORLEVEL%
IF "%TGsplice%" == "+" EXIT /B %ERRORLEVEL%
COLOR 74
rem   Soft White background and Red text
ECHO:
PAUSE
EXIT /B %ERRORLEVEL%

rem -----1---------2---------3---------4---------5---------6---------7-------*

rem                    Copyright 2017 Dennis E. Hamilton

rem Licensed under the Apache License, Version 2.0 (the "License");
rem you may not use this file except in compliance with the License.
rem You may obtain a copy of the License at
rem     <http://www.apache.org/licenses/LICENSE-2.0>

rem Unless required by applicable law or agreed to in writing, software
rem distributed under the License is distributed on an "AS IS" BASIS,
rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem See the License for the specific language governing permissions and
rem limitations under the License.


rem -----1---------2---------3---------4---------5---------6---------7-------*

rem TODO
rem
rem  * Add a "?" usage option.
rem
rem  * When available, add a reference to where the command line options
rem    technique is described under the nfoWare nfoTools activity.
rem
rem  * Document this somewhere else too.  Determine where in nfoCentrale
rem    this should be.  nfoWare?  orcmid.com?

rem 0.0.6 2017-11-06-08:54 Add explicit notice of completion, touch up text
rem 0.0.5 2017-11-05-10:51 Take leading space out of echos
rem 0.0.4 2017-11-05-10:36 Reflect change of dev folder from wingnut/ to
rem       spanner/.  Add checks to prevent execution from an incorrect
rem       location and configuration, based on VCbind.bat code.  Handle
rem       terse and spliced operation parameters.
rem 0.0.3 2017-11-04-08:16 Escape ">" so it can be used.
rem 0.0.2 2017-11-03-10:58 Remove accidental redirections from ECHOs.
rem 0.0.1 2017-11-03-10:33 Adjusted for tidying of Hexo authoring folders 
rem       before generation of public pages from clean source material.
rem 0.0.0 2017-11-03-09:59 Cloned from VCbind.bat 0.1.9 of 2006-13-13-19:33
rem       as someplace to start.

rem                     *** end of tidygen.bat ***
