@ECHO off
Color 0A
mode con cols=50 lines=30
title ������˻�Ϊ����Ա

echo.
echo +++++++++++++
echo ���ڼ����ʹ��
echo +++++++++++++
echo.
set /p UserName= [���������˺�] # 
net localgroup administrators grgbanking\%UserName% /add
pause
exit