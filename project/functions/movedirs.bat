@echo off

if exist "%~1\" (
    echo Directory \%~1\ found
    cd %1
) else (
    echo Directory \%~1\ not found
)

exist