 @echo off 
 setlocal

call ..\cachepaths\pathchecks.bat
call ..\cachepaths\chromecache.bat
call ..\cachepaths\firefoxcache.bat
call ..\cachepaths\yandexbrowsercache.bat
call ..\cachepaths\githubcache.bat

 endlocal
 pause