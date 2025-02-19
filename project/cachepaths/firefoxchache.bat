@echo off

call ..\functions\prototypemovedirs.bat AppData Local Mozilla Firefox
call ..\functions\removedirs.bat Profiles
call ..\functions\pathnumerounos.bat

call ..\functions\prototypemovedirs.bat AppData Roaming Mozilla Firefox
call ..\functions\removedirs.bat Profiles
call ..\functions\pathnumerounos.bat

exist