@echo off

call :msg Hello World
goto :End

:msg
    call :msg1 %1 %2
goto :eof

:msg1
    echo %1 %2
goto :eof

:End
pause