@ echo off 
title: �Զ��ػ�
mode con cols=50 lines=20&color 0a 
for /l %%a in (600 -1 0) do (
echo.
echo ϵͳ���ڡ�%%a�����ػ�,�뱣�����й������˳�.
echo.
echo ȡ���ػ���ֱ�ӹرյ�ǰ���򼴿�!
ping /n 2 127.1 >nul
cls
)
shutdown.exe /f /s /t 0