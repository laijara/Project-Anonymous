```batch

cd Local/Google/Chrome
rmdir "User Data" /s /q
cd ../../..

cd Local/Mozilla/Firefox
rmdir Profiles /s /q
cd ../../..

cd Roaming
rmdir "GitHub Desktop" /s /q
cd ..

pause
```