@ECHO off
Color 0A
mode con cols=50 lines=30
title ������˻�Ϊ����Ա

echo.
echo ������ʹ��
echo.
set /p UserName = [���������˺�] # 

net localgroup administrators domain\%UserName% /add

pause
exit