@echo off

if exist "%~1\" (
    rmdir %~1 /s /q
    echo.
    echo Cache in directory \%~1\ remove
    echo.
) else (
    echo.
    echo Cache in directory \%~1\ not found
    echo.
)

exist