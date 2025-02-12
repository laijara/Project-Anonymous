@echo off
setlocal

rem Null path and check directory "AppData"
call :PathNull
call :Message
call :MoveDir AppData
call :PathDataCheck Local 
call :PathNull
call :Message
call :MoveDir AppData
call :PathDataCheck Roaming
call :PathNull
call :Message
call :PathDataCheck Documents
call :PathNull
call :Message

rem To Firefox, cache in Local
call :MoveDir AppData
call :MoveDir Local
call :MoveDir Mozilla
call :MoveDir Firefox
call :RemDir Profiles
call :PathNull
call :Message

rem To Firefox cache in Roaming
call :MoveDir AppData
call :MoveDir Roaming
call :MoveDir Mozilla
call :MoveDir Firefox
call :RemDir Profiles
call :PathNull
call :Message

rem To Google Chrome cache in Local
call :MoveDir AppData
call :MoveDir Local
call :MoveDir Google
call :MoveDir Chrome
call :RemDir "User Data"
call :PathNull
call :Message

rem To Yandex Browser cache in Local
call :MoveDir AppData
call :MoveDir Local
call :MoveDir Yandex
call :MoveDir YandexBrowser
call :RemDir "User Data"
call :PathNull
call :Message

rem To GitHub Desktop cache in Local
call :MoveDir AppData
call :MoveDir Roaming
call :RemDir "GitHub Desktop"
call :PathNull
call :Message

rem To GitHub Repositories cache in Local
call :MoveDir Documents
call :RemDir GitHub
call :PathNull
call :Message


goto :End

:PathNull
    c:
    cd %USERPROFILE%
goto :eof

:PathDataCheck
    if exist "%1\" (
        echo Directory \%1\ found
    ) else (
        echo Directory \%1\ not found
    )
goto :eof

:MoveDir
    if exist "%1\" (
        echo Directory \%1\ found
        cd %1
    ) else (
        echo Directory \%1\ not found
    )
goto :eof

:RemDir
    if exist "%1" (
        rmdir %1 /s /q
        echo.
        echo Cache in directory \%1\ remove
        echo.
        c:
        cd %USERPROFILE%
    ) else (
        echo.
        echo Cache in directory \%1\ not found
        echo.
        c:
        cd %USERPROFILE%
    )
goto :eof

:Message
    echo.
    echo The directory moves to the beginning
    echo.
goto :eof

:End
pause