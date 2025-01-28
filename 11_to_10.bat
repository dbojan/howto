
@echo off

rem 2024-12-28-1

echo add 'This PC' (refresh desktop to activate) ...
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel  /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}"  /t REG_DWORD  /d 0 /f

echo add control panel ...
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel  /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}"  /t REG_DWORD  /d 0 /f

echo add users files ...
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel  /v "{59031a47-3f72-44a7-89c5-5595fe6b30ee}"  /t REG_DWORD  /d 0 /f

REM echo add network files ...
REM reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel  /v "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}"  /t REG_DWORD  /d 0 /f

echo disable snapbar box at the top of the screen (needs re-log to activate) ...
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced  /v "EnableSnapBar"  /t REG_DWORD  /d 0 /f

echo set start menu left align ...
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced  /v "TaskbarAl"  /t REG_DWORD  /d 0 /f

echo set search to box ...
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search  /v "SearchboxTaskbarMode"  /t REG_DWORD  /d 1 /f

echo context menu old ...
rem /ve for default "value name", do not specify "value name" 
reg add "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InProcServer32" /ve  /t REG_SZ /d " " /f

echo disable taskview
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced"  /v "ShowTaskViewButton"  /t REG_DWORD  /d 0 /f

echo remove new notepad and add shortcut to the old version to 'start menu' and to 'send to' ...
powershell -command "Get-AppxPackage *Microsoft.WindowsNotepad* | Remove-AppxPackage"

set "source=C:\Windows\System32\notepad.exe"
set "destination=%APPDATA%\Microsoft\Windows\Start Menu\Programs\notepad.lnk"
powershell -c "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%destination%'); $s.TargetPath = '%source%'; $s.Save()"

set "source=C:\Windows\System32\notepad.exe"
set "destination=%APPDATA%\Microsoft\Windows\SendTo\notepad.lnk"
powershell -c "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%destination%'); $s.TargetPath = '%source%'; $s.Save()"

echo create links to logoff, lockscreen, shutdown and restart in start menu\programs ...

REM LOGOFF
set "source=%windir%\System32\shutdown.exe"
set "parameters=/l /f"
set "startin=%windir%\System32"
set "destination=%APPDATA%\Microsoft\Windows\Start Menu\Programs\logoff.lnk"
powershell -c "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%destination%'); $s.TargetPath = '%source%'; $s.Arguments = '%parameters%'; $s.WorkingDirectory = '%startin%'; $s.Save()"

REM LOCKSCREEN
set "source=%windir%\System32\rundll32.exe"
set "parameters=user32.dll,LockWorkStation"
set "startin=%windir%\System32"
set "destination=%APPDATA%\Microsoft\Windows\Start Menu\Programs\lockscreen.lnk"
powershell -c "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%destination%'); $s.TargetPath = '%source%'; $s.Arguments = '%parameters%'; $s.WorkingDirectory = '%startin%'; $s.Save()"

REM SHUTDOWN
set "source=%windir%\System32\shutdown.exe"
set "parameters=/s /f /t 0"
set "startin=%windir%\System32"
set "destination=%APPDATA%\Microsoft\Windows\Start Menu\Programs\shutdown.lnk"
powershell -c "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%destination%'); $s.TargetPath = '%source%'; $s.Arguments = '%parameters%'; $s.WorkingDirectory = '%startin%'; $s.Save()"

REM RESTART
set "source=%windir%\System32\shutdown.exe"
set "parameters=/r /f /t 0"
set "startin=%windir%\System32"
set "destination=%APPDATA%\Microsoft\Windows\Start Menu\Programs\restart.lnk"
powershell -c "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%destination%'); $s.TargetPath = '%source%'; $s.Arguments = '%parameters%'; $s.WorkingDirectory = '%startin%'; $s.Save()"

echo remove news ... (might take some time)
powershell -c "Get-AppxPackage  *WebExperience* | Remove-AppxPackage"

echo complete.
pause

exit /b

