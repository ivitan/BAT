@ECHO off
Color 0A
mode con cols=50 lines=30
title ��ӹ���Ա�˻�
REM ��ӹ���Ա�˻�

REM ����û� tmp������123
net user tmp 123 /add

REM ���� tmp Ϊ����Ա
net localgroup administrators tmp /add

pause
exit

REM ɾ���û�tmp
net user tmp /del