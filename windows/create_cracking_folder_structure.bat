@echo off

title Create Cracking Folder Structure For Practice Applications        [cRypTiC 2012]


set ver=2.0


color 0e


:: Setting all variables to "noentry" to cause the menus to return to themselves if no data is typed and ENTER is pressed
set app=noentry
set info=noentry
set iso=noentry
set misc=noentry
set portable=noentry
set setup=noentry
set txtfiles=noentry


:_app
cls
echo Enter or Paste Application/Game Name Here:
echo.
echo.
echo.
echo When finished press ENTER....
echo.
echo.

set /p app=

if "%app%"=="noentry" goto _app


md "%app%"
cd "%app%"

goto _crkexe



:_crkexe
md crack
goto _origexe


:_origexe
md crack\original
md crack\patches
md crack\unpacked
::goto _info
goto _all

:_info
cls
echo Current Application: %app%
echo.
echo.
echo Does this application require an INFO folder?
echo.
echo Only needed if you have the original download page saved or app info.
echo.
echo.
echo.
echo Type either Y or N or ALL and press ENTER:
echo.
echo.
set /p info=

if %info%==y md info
if %info%==Y md info
if %info%==n goto _iso
if %info%==N goto _iso
if %info%==a goto _all
if %info%==A goto _all
if %info%==all goto _all
if %info%==ALL goto _all
if %info%==aLL goto _all
if %info%==aLl goto _all
if %info%==alL goto _all
if %info%==All goto _all
if %info%==ALl goto _all
if %info%==AlL goto _all
if %info%==noentry goto _info
goto _iso



:_all
set info=Yes [Auto]
set iso=Yes [Auto]
set misc=Yes [Auto]
set portable=Yes [Auto]
set setup=Yes [Auto]
set txtfiles=Yes [Auto]
md info
md iso
md misc
md portable
md setup
echo. > _breakpoints.txt
echo. > _notes.txt
echo. > _strings.txt
echo. > "%app%.nfo"
goto _preview



:_iso
cls
echo Current Application: %app%
echo.
echo INFO Folder: %info%
echo.
echo.
echo Does this application require an ISO folder?
echo.
echo Only needed if the source is optical media (CD-ROM, DVD-ROM, BD-ROM).
echo.
echo.
echo.
echo Type either Y or N and press ENTER:
echo.
echo.
set /p iso=

if %iso%==y md iso
if %iso%==Y md iso
if %iso%==n goto _misc
if %iso%==N goto _misc
if %iso%==noentry goto _iso
goto _misc



:_misc
cls
echo Current Application: %app%
echo.
echo INFO Folder: %info%
echo.
echo ISO Folder: %iso%
echo.
echo.
echo Does this application require a MISC folder?
echo.
echo Only needed if you plan to have misc data that can be kept all together.
echo.
echo.
echo.
echo Type either Y or N and press ENTER:
echo.
echo.
set /p misc=

if %misc%==y md misc
if %misc%==Y md misc
if %misc%==n goto _portable
if %misc%==N goto _portable
if %misc%==noentry goto _misc
goto _portable



:_portable
cls
echo Current Application: %app%
echo.
echo INFO Folder: %info%
echo.
echo ISO Folder: %iso%
echo.
echo MISC Folder: %misc%
echo.
echo.
echo Does this application require a PORTABLE folder?
echo.
echo Only needed if you plan to run the app without being installed.
echo.
echo Sandboxie is recommended for portable installations.
echo.
echo.
echo.
echo Type either Y or N and press ENTER:
echo.
echo.
set /p portable=

if %portable%==y md misc
if %portable%==Y md misc
if %portable%==n goto _setup
if %portable%==N goto _setup
if %portable%==noentry goto _portable
goto _setup



:_setup
md setup
goto _txtfiles



:_txtfiles
cls
echo Current Application: %app%
echo.
echo INFO Folder: %info%
echo.
echo ISO Folder: %iso%
echo.
echo MISC Folder: %misc%
echo.
echo PORTABLE Folder: %portable%
echo.
echo.
echo Do you require text files to be created?
echo.
echo Creates a "_notes.txt" and "_strings.txt" in the root of the folder.
echo.
echo A blank NFO file will also be created to list any information you require.
echo.
echo.
echo.
echo Type either Y or N and press ENTER:
echo.
echo.
set /p txtfiles=

if %txtfiles%==y echo. > _notes.txt&echo. > _strings.txt&echo. > "%app%.nfo"
if %txtfiles%==Y echo. > _notes.txt&echo. > _strings.txt&echo. > "%app%.nfo"
if %txtfiles%==n goto _preview
if %txtfiles%==N goto _preview
if %txtfiles%==noentry goto _txtfiles
goto _preview



:_preview
cls
echo Current Application: %app%
echo.
echo INFO Folder: %info%
echo.
echo ISO Folder: %iso%
echo.
echo MISC Folder: %misc%
echo.
echo PORTABLE Folder: %portable%
echo.
echo TEXT Files: %txtfiles%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Press any key to exit....
echo.
echo.

::pause>nul

goto end



:end


