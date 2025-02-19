@echo off

call ..\functions\pathnumerounos.bat
call ..\functions\pathdatacheks.bat AppData
call ..\functions\movedirs.bat AppData
call ..\functions\pathdatacheks Local 
call ..\functions\pathnumerounos.bat
call ..\functions\movedirs.bat AppData
call ..\functions\pathdatacheks.bat Roaming
call ..\functions\pathnumerounos.bat
call ..\functions\pathdatacheks.bat Documents
call ..\functions\pathnumerounos.bat

exist