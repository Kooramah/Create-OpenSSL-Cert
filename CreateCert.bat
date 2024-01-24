@echo off
SET opensslDIR=%cd%\OpenSSL-Files\bin
SET "certName="
SET "certKey="
goto "input"

: "input"
set /p certName="What do you wanna name your Certificate? "
echo:
set /p certKey="What do you wanna name your Private Key? "
echo:
echo Your Cert will be named %certName%.crt
echo Your Private key will be named %certKey%.key
echo:
echo ============================== Creating Cert ==============================
echo:

"%opensslDIR%\openssl.exe" req -x509 -nodes -days 7305 -newkey rsa:2048 -keyout %certKey%.key -out %certName%.crt -config san.conf -extensions "v3_req"

echo:
echo Done!

timeout 5