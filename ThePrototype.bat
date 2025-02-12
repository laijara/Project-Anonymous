@echo off
setlocal

rem Null path and check directory "AppData"
call :PathNull
call :MoveDir AppData
call :PathDataCheck Local 
call :PathNull
call :MoveDir AppData
call :PathDataCheck Roaming
call :PathNull
call :PathDataCheck Documents
call :PathNull

rem To Firefox cache in Local
call :PrototypeMoveDir AppData Local Mozilla Firefox
call :RemDir Profiles
call :PathNull

rem To Firefox cache in Roaming
call :PrototypeMoveDir AppData Roaming Mozilla Firefox
call :RemDir Profiles
call :PathNull

rem To Google Chrome cache in Local
call :PrototypeMoveDir AppData Google Chrome
call :RemDir "User Data"
call :PathNull

rem To Yandex Browser cache in Local
call :PrototypeMoveDir AppData Local Yandex YandexBrowser
call :RemDir "User Data"
call :PathNull

rem To GitHub Desktop cache in Local
call :PrototypeMoveDir AppData Roaming
call :RemDir "GitHub Desktop"
call :PathNull

rem To GitHub Repositories cache in Local
call :PrototypeMoveDir Documents
call :RemDir GitHub
call :PathNull


goto :End

:PathNull
    c:
    cd %USERPROFILE%
    echo.
    echo The directory moves to the beginning
    echo.
goto :eof

:PathDataCheck
    if exist "%~1\" (
        echo Directory \%~1\ found
    ) else (
        echo Directory \%~1\ not found
    )
goto :eof

:MoveDir
    if exist "%~1\" (
        echo Directory \%~1\ found
        cd %1
    ) else (
        echo Directory \%~1\ not found
    )
goto :eof

:RemDir
    if exist "%~1" (
        rmdir %~1 /s /q
        echo.
        echo Cache in directory \%~1\ remove
        echo.
    ) else (
        echo.
        echo Cache in directory \%~1\ not found
        echo.
    )
goto :eof

:PrototypeMoveDir
    :back
    if "%~1"=="" goto :eof
    call :MoveDir %~1 
    shift
    goto back

:End
pause