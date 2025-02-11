@echo off

if exist "Local\" (
cd Local

if exist "Google\" (
echo Folder Google found
cd Google
if exist "Chrome\" (
echo Folder ..\Chrome found
cd Chrome
If exist "User Data\" (
echo Folder and cache ..\..\User Data found
rmdir "User Data" /s /q
echo Folder and cache ..\..\User Data clean
) else (
echo Folder ..\..\User Data not found
cd ../..
)
) else (
echo Folder ..\Chrome not found 
cd ..
)
) else (
echo Folder Google not found
)

if exist "Yandex\" (
echo Folder Yandex found
cd Yandex
if exist "YandexBrowser\" (
echo Folder YandexBrowser found
cd YandexBrowser
If exist "User Data\" (
echo Folder and cache User Data found
rmdir "User Data" /s /q
echo Folder and cache User Data clean
) else (
echo Folder User Data not found
cd ../..
)
) else (
echo Folder YandexBrowser not found 
cd ..
)
) else (
echo Folder Yandex not found
)

if exist "Mozilla\" (
echo Folder Mozilla found
cd Mozilla
if exist "Firefox\" (
echo Folder ..\Firefox found
cd Firefox
If exist "Profiles\" (
echo Folder ..\..\Profiles found
rmdir Profiles /s /q
echo Folder and cache ..\..\Profiles clean
cd ../..
) else (
echo Folder ..\..\Profiles not found
cd ../..
)
) else (
echo Folder ..\Firefox not found 
cd ..
)
) else (
echo Folder Mozilla not found
)
cd ..
) else (
echo Folder Local not found
)

if exist "Roaming\" (
cd Roaming
if exist "GitHub Desktop\" (
echo Folder ..\GitHub Desktop found
rmdir "GitHub Desktop" /s /q
echo Folder and cache ..\GitHub Desktop clean
cd ..
) else (
echo Folder ..\GitHub Desktop not found
cd ..
)
) else (
echo Folder Roaming not found
)

cd ..
if exist "Documents\" (
echo Folder Documents found
cd Documents
if exist "GitHub\" (
echo Folder ..\..\GitHubRep found
rmdir GitHub
echo Folder and cache ..\..\GitHubRep clean
) else (
echo Folder ..\..\GitHubRep not found
cd ..
)
) else (
echo Folder Documents not found
)

pause