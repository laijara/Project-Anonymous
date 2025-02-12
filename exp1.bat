@echo off
setlocal

c:
cd %USERPROFILE%

call :PrototypeMoveDir "AppData" "Local" "Google" "Chrome"
goto :End

:PrototypeMoveDir
    :back
    if "%~1"=="" goto :eof
    call :MoveDir %~1 
    shift
    goto back
:MoveDir
    if exist "%~1\" (
        echo Directory \%~1\ found
        cd %~1
    ) else (
        echo Directory \%~1\ not found
    )
goto :eof

:End
pause