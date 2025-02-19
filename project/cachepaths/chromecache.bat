@echo off

call ..\functions\prototypemovedirs.bat AppData Local Google Chrome
call ..\functions\removedirs.bat "User Data"
call ..\functions\pathnumerounos.bat

exist