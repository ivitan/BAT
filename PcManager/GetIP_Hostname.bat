@echo off
TITLE ��ȡ������IP��ַ(������)
Color 0A
for /f "tokens=2 delims=:" %%b in ('ipconfig^|find /i "ip"') do set ADRESS=%%b
echo %ADRESS%

set HOSTNAME=%computername%
echo %HOSTNAME%
pause