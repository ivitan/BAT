@echo off
TITLE����ȡ����IP(������)��MAC��ַ
for /f "tokens=2 delims=:" %%i in ('ipconfig ^| find "IPv4"') do set localip=%%i
echo ����IP��%localip%

for /f "skip=14 tokens=1,2* delims=:" %%a in ('ipconfig /all') do set "b=%%b"& goto a
:a
echo ����MAC��%b%
pause