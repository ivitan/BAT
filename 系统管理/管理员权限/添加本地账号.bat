@ECHO off
Color 0A
mode con cols=50 lines=30
title ��ӱ����˻�

ECHO.
ECHO.
ECHO.
set /p UserName= [�������˺���] # 
set /p UserPass= [�������˺�����] # 
net user %UserName% %UserPass% /add

ECHO ����Ϊ����Ա
net localgroup administrators %UserName% /add

pause
exit
REM ɾ���û�
::net user tmp /del