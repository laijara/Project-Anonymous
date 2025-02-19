@echo off

if exist "%~1\" (
    echo Directory \%~1\ found
) else (
    echo Directory \%~1\ not found
)

exist