@ECHO OFF&PUSHD %~DP0 &TITLE GRGInstall -- Jeremy
mode con cols=58 lines=25
color 2F
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(ECHO ��ʹ���Ҽ�����Ա������У�&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
cd %~dp0\config
powercfg -h off
set _PublicPath="%PUBLIC%\Desktop\˵��.txt"
@ECHO. ****************** ��鰲װ���������� ****************** >> %_PublicPath%
:batMenu
@ECHO.
@ECHO. ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@ECHO. ::                                                    ::
@ECHO. ::          ���ڼ�鲢��װ��������Ե�...             ::
@ECHO. ::                                                    ::
@ECHO. ::                                       By: Jeremy   ::
@ECHO. ::                                       Ver:19H1     ::
@ECHO. ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@ECHO.
@echo. & @echo.  ��ѡ���豸������������
@echo. & @echo.  1=�칫����   2=��������
@echo.
set /p  xj= �������ְ��س���
if /i "%xj%"=="1"   SET _Net=BG& GOTO GRGIT
if /i "%xj%"=="2"   SET _Net=BM& GOTO GRGIT
@echo. & @echo.  ����������Ч������������
ping -n 2 172.1>nul & cls
GOTO batMenu

:GRGIT
IF %_Net% EQU BG call :install_FoxMail Foxmail.exe FoxMail
call :install_S 7-Zip\7z.exe 7-Zip 7-Zip_19.00_x86_x64.exe
IF %_Net% EQU BG call :install_S GRGTalk\GRGTalk.exe OA GRGTalk.exe
call :install_MSI Adobe AdobeReader AdobeReader.exe
IF %_Net% EQU BG call :install_SILENT  Sangfor\SecurityDesktop\SangforSDUI.exe �������� singress.exe
call :install_SILENT Symantec Symantec setup_x64_%_Net%.exe
call :install_SP  %windir%\LVUAAgentInstBaseRoot\UniAccessAgent.exe ��ȫ���� lva_setupfull_%_Net%.exe 
IF NOT EXIST "%ProgramFiles%\7-Zip\7z.exe" @ECHO.  >> %_PublicPath% & ECHO. - ��� 7-Zip ��װ������ >> %_PublicPath%
IF %_Net% EQU BG IF NOT EXIST "%ProgramFiles(x86)%\GRGTalk\GRGTalk.exe" @ECHO.  >> %_PublicPath% & ECHO. - ��� OA ��װ������ >> %_PublicPath%
IF NOT EXIST "%ProgramFiles(x86)%\Adobe" @ECHO.  >> %_PublicPath% & ECHO. - ��� AdobeReader ��װ������ >> %_PublicPath%
IF %_Net% EQU BG IF NOT EXIST "%ProgramFiles%\Sangfor\SecurityDesktop\SangforSDUI.exe" @ECHO.  >> %_PublicPath% & ECHO. - ��� �������� ��װ������ >> %_PublicPath%
IF NOT EXIST "%ProgramFiles(x86)%\Symantec" @ECHO.  >> %_PublicPath% & ECHO. - ��� Symantec ��װ������ >> %_PublicPath%
IF %_Net% EQU BG IF NOT EXIST "%windir%\LVUAAgentInstBaseRoot\UniAccessAgent.exe" @ECHO.  >> %_PublicPath% & ECHO. - ��� ��ȫ���� ��װ������ >> %_PublicPath%
IF %_Net% EQU BG ( SET _SAMBA=\\10.1.1.5\������� & SET _INNET=�칫���� ) ELSE ( SET _SAMBA=\\10.1.200.3\01-������� & SET _INNET=��������)
@ECHO. >> %_PublicPath% & ECHO.    ��δ��ʾ�����װ����˵�����ȫ����װ��ɡ����밲װ����������� ��%_SAMBA%�� �в��Ұ�װ��ѡ��װ�� >> %_PublicPath%
@ECHO. >> %_PublicPath% & ECHO. - ITָ�ϣ�http://it.grgbanking.com >> %_PublicPath%
@ECHO. - �������%_SAMBA% >> %_PublicPath%
@ECHO. - IT���ϣ�6287 8033 >> %_PublicPath%
@ECHO.                                              ��ά���ϲ�/������ά�� >> %_PublicPath%
@ECHO.                                               %date% %time% >> %_PublicPath%
@ECHO. & ECHO. ����Ѱ�װ��ɡ�
@ECHO. & ECHO. ����ϵͳ%_INNET%�豸���·�������......
REGEDIT /S WSUS_%_Net%.reg >nul
@ECHO. & Pause && EXIT


:install_FoxMail
IF EXIST "D:\$RECYCLE.BIN" set _FoxMailPath=D:\Program Files\FoxMail
IF DEFINED _FoxMailPath (
	@ECHO. ���ڰ�װ %2�����Ե�... &ECHO.
	IF EXIST "D:\Program Files\FoxMail\%1"  ECHO. �����Ѱ�װ %2 ��
	IF NOT EXIST "D:\Program Files\FoxMail\%1" (
		"FoxmailSetup.exe" "D:\Program Files\FoxMail" -silent
		IF ERRORLEVEL 0 @ECHO. ��װ %2 ���!!
		IF %ERRORLEVEL% NEQ 0 @ECHO. ��װ %2 �������ֶ���顣
	)
	IF NOT EXIST "D:\Program Files\FoxMail\%1"  @ECHO. & ECHO. -> ��� %2 ��װ������ >> %_PublicPath%
	GOTO :EOF
) else ( ECHO. δ���ַ��� D �̣���δ��װ %2 �����Ժ��ֶ���װ��>> %_PublicPath% && GOTO :EOF )
GOTO :EOF

:install_S
@ECHO. & ECHO. ���ڰ�װ %2�����Ե�... && ECHO.
IF EXIST "%ProgramFiles%\%1" ECHO. �����Ѱ�װ %2 ��& GOTO :EOF
IF EXIST "%ProgramFiles(x86)%\%1" ECHO. �����Ѱ�װ %2 ��& GOTO :EOF
"%3" /S & IF ERRORLEVEL 0 @ECHO. ��װ %2 ���!! && IF %ERRORLEVEL% NEQ 0 @ECHO. ��װ %2 �������ֶ���顣
GOTO :EOF

:install_SP
@ECHO. & ECHO. ���ڰ�װ %2�����Ե�... && ECHO.
IF EXIST "%1" ECHO. �����Ѱ�װ %2 ��& GOTO :EOF
"%3" /sp- /silent /norestart & IF ERRORLEVEL 0 @ECHO. ��װ %2 ���!! && IF %ERRORLEVEL% NEQ 0 @ECHO. ��װ %2 �������ֶ���顣
GOTO :EOF

:install_MSI
@ECHO. & ECHO. ���ڰ�װ %2�����Ե�... && ECHO.
IF EXIST "%ProgramFiles%\%1" ECHO. �����Ѱ�װ %2 ��& GOTO :EOF
IF EXIST "%ProgramFiles(x86)%\%1" ECHO. �����Ѱ�װ %2 ��& GOTO :EOF
"%3" /sALL /msi /quiet & IF ERRORLEVEL 0 @ECHO. ��װ %2 ���!! && IF %ERRORLEVEL% NEQ 0 @ECHO. ��װ %2 �������ֶ���顣
GOTO :EOF

:install_SILENT
@ECHO. & ECHO. ���ڰ�װ %2�����Ե�... && ECHO.
IF EXIST "%ProgramFiles%\%1" ECHO. �����Ѱ�װ %2 ��& GOTO :EOF
IF EXIST "%ProgramFiles(x86)%\%1" ECHO. �����Ѱ�װ %2 ��& GOTO :EOF
"%3" /silent & IF ERRORLEVEL 0 @ECHO. ��װ %2 ���!! && IF %ERRORLEVEL% NEQ 0 @ECHO. ��װ %2 �������ֶ���顣
GOTO :EOF
