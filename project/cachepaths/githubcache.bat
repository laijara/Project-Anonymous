@echo off

call ..\functions\prototypemovedirs.bat AppData Roaming
call ..\functions\removedirs.bat "GitHub Desktop"
call ..\functions\pathnumerounos.bat

call ..\functions\prototypemovedirs.bat Document\
call ..\functions\removedirs.bat GitHub
call ..\functions\pathnumerounos.bat

exist