@ECHO OFF&PUSHD %~DP0 &TITLE �޸���������ϵͳ -- Jay
mode con cols=58 lines=25
color 2F
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У�&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
cd %~dp0
@echo. & @echo.  ��ѡ���豸������������
@echo. & @echo.  1=�칫����   2=��������
@echo.
set /p  xj= �������ְ��س���
if /i "%xj%"=="1"   call :wsus_Server WSUS_BG
if /i "%xj%"=="2"   call :wsus_Server WSUS_BM
:wsus_Server
@echo.  ����ϵͳ�칫�����豸���·�������......
REGEDIT /S config\%1.reg >nul
@echo. & @echo.  ���¼��ظ��·�������......
taskkill /f /im explorer.exe & start explorer.exe >nul
ping -n 3 172.1>nul
wuauclt.exe /detectnow
@echo. & @echo.  ������ɣ���������˳�... 
@echo. & pause>nul
exit