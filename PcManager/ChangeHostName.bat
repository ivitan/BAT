@echo off
Color 0A
echo.
echo.����������������������ʾ��ǰ�������е��û�����������������
echo.
net user
echo.
set /p user=������Ҫ���ĵ��û�����
set /p newuser=�������µ����� ��
wmic useraccount where name='%user%' call Rename %newuser%
echo.
echo.
echo �������  !!!!!    2��� �˳�
ping 127.0.0.1 -n 1 -w 2000 >nul 
cls
pause