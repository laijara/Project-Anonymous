@echo off

call ..\functions\prototypemovedirs.bat AppData Local Yandex YandexBrowse
call ..\functions\removedirs.bat "User Data"
call ..\functions\pathnumerounos.bat

exist