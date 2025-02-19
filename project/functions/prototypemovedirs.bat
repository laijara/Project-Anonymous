@echo off

:back
if "%~1"=="" goto :End
call movedirs.bat "%~1" 
shift
goto back

:End
exist