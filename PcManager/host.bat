@echo off
mode con cols=50 lines=20&color 0a 
TITLE ��� A ��¼�� host

REM ȡ��host��ֻ������
attrib -R C:\WINDOWS\system32\drivers\etc\hosts 

set /p IP=������IP:
set /p DOMAIN=����������:
REM ����
@echo:
@echo %IP%     %DOMAIN% >>C:\WINDOWS\system32\drivers\etc\hosts 

REM ˢ��DNS
ipconfig /flushdns 
echo ������
PAUSE