@echo off
for /f "tokens=2 delims=:" %%a in ('ipconfig /all^|find "�����ַ"') do ( set mac=%%a )
for /f "tokens=2 delims=:" %%b in ('ipconfig /all^|find "IPv4 ��ַ"') do ( set ip=%%b )
for /f "tokens=2 delims=:" %%i in ('ipconfig ^| find "IPv4"') do set localip=%%i
echo;  %mac%
echo ����һIP��%ip%
echo ������IP��%localip%
pause