@echo off
TITLE ��ȡ������IP��ַ(������)
Color 0A

for /f "tokens=2 delims=:" %%i in ('ipconfig ^| find "IPv4"') do set localip=%%i
echo ����IP��%localip%

for /f "tokens=2 delims=:" %%b in ('ipconfig^|find /i "IPv4"') do set ADRESS=%%b
echo ����IP��%ADRESS%

set HOSTNAME=%computername%
echo %HOSTNAME%
pause