@echo off
:: autostart.bat
:: Windows replacement for autostart.sh (which uses the Linux-only xte tool).
:: Sends the same key sequence to the TORCS window to navigate the Quick Race menu.
:: The PowerShell SendKeys approach works when TORCS has foreground focus.

powershell -NoProfile -Command ^
  "Add-Type -AssemblyName System.Windows.Forms; " ^
  "$wsh = New-Object -ComObject WScript.Shell; " ^
  "Start-Sleep -Milliseconds 100; " ^
  "$wsh.SendKeys('{ENTER}'); Start-Sleep -Milliseconds 100; " ^
  "$wsh.SendKeys('{ENTER}'); Start-Sleep -Milliseconds 100; " ^
  "$wsh.SendKeys('{UP}');    Start-Sleep -Milliseconds 100; " ^
  "$wsh.SendKeys('{UP}');    Start-Sleep -Milliseconds 100; " ^
  "$wsh.SendKeys('{ENTER}'); Start-Sleep -Milliseconds 100; " ^
  "$wsh.SendKeys('{ENTER}'); Start-Sleep -Milliseconds 100"
