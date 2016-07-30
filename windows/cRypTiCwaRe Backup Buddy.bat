@echo off
title [- cRypTiCwaRe -]   [-]   [- 2ooX -]
color 0a
:MENU
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo           [-+- cRypTiCwaRe Backup Buddy -+- ]
echo.
echo.
echo.
echo.
echo        *******************     *******************
echo        *     Backup      *     *     Restore     *
echo        *******************     *******************
echo        *                 *     *                 *
echo        *  [1] EXE Files  *     *  [3] EXE Files  *
echo        *  [2] DLL Files  *     *  [4] DLL Files  *
echo        *                 *     *                 *
echo        *******************     *******************
echo.
echo        *******************     *******************
echo        *  [C]  Cleanup   *     *  [X] Exit       *
echo        *******************     *******************
echo.
CHOICE /C:12345CX /N
IF ERRORLEVEL == 7 GOTO END
IF ERRORLEVEL == 6 GOTO CLEAN
IF ERRORLEVEL == 5 GOTO CRACK
IF ERRORLEVEL == 4 GOTO RESD
IF ERRORLEVEL == 3 GOTO RESE
IF ERRORLEVEL == 2 GOTO DLL
IF ERRORLEVEL == 1 GOTO EXEC

:EXEC
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo *-----------------------*
echo  Backing up EXE files...
echo *-----------------------*
echo.
IF NOT EXIST cracked md cracked
copy *.exe *.bak
copy *.exe *.w32
if exist un*.w32 del un*.bak
if exist "unins000.w32" del "unins000.w32" 
if exist "unins000.bak" del "unins000.bak" 
echo.
echo.
echo Press a key to return to the main menu...
pause>nul
GOTO MENU

:CRACK
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo *------------------------------*
echo  Restoring Cracked EXE files...
echo *------------------------------*
echo.
xcopy cracked\*.exe *.exe /y /e /r 
echo.
echo.
echo Press a key to return to the main menu...
pause>nul
GOTO MENU

:DLL
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo *-----------------------*
echo  Backing up DLL files...
echo *-----------------------*
echo.
if not exist *.dll2 copy *.dll *.dll2
echo.
echo.
echo Press a key to return to the main menu...
pause>nul
GOTO MENU

:RESD
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo *-------------------------------*
echo  Restoring Original DLL files...
echo *-------------------------------*
echo.
copy *.dll2 *.dll
echo.
echo.
echo Press a key to return to the main menu...
pause>nul
GOTO MENU

:RESE
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo *-------------------------------*
echo  Restoring Original EXE files...
echo *-------------------------------*
echo.
copy *.bak *.exe
echo.
echo.
echo Press a key to return to the main menu...
pause>nul
GOTO MENU

:CLEAN
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo *----------------------------------*
echo  Cleaning Up All Backed Up Files...
echo *----------------------------------*
echo.
if exist *.bak del *.bak
if exist *.w32 del *.w32
if exist *.dll2 del *.dll2
echo Done!
echo.
echo.
echo Press a key to return to the main menu...
pause>nul
GOTO MENU

:END
exit