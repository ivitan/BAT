@ECHO OFF&PUSHD %~DP0 &TITLE Install
mode con cols=58 lines=25
color 2F
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У�&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
@echo off
powercfg -h off
rmdir /S /Q "%USERPROFILE%\Favorites\Microsoft Websites"
rmdir /S /Q "%USERPROFILE%\Favorites\Microsoft ��վ"
rmdir /S /Q "%USERPROFILE%\Favorites\MSN Websites"
rmdir /S /Q "%USERPROFILE%\Favorites\MSN ��վ"
rmdir /S /Q "%USERPROFILE%\Favorites\�й�����վ"
rmdir /S /Q "%USERPROFILE%\Favorites\Windows Live"
del /S /Q "%USERPROFILE%\Favorites\Links\Web Slice Gallery.url"
del /S /Q "%USERPROFILE%\Favorites\Links\��ҳ��Ѷ��.url"
del /S /Q "%USERPROFILE%\Favorites\Links\������վ.url"
attrib -R -A -S -H "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Games\*.*"
RMDIR /S /Q "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Games"
attrib -R -A -S -H "%ProgramFiles%\Microsoft Games\*.*"
RMDIR /S /Q "%ProgramFiles%\Microsoft Games"
cls
ECHO ���ڸ���FeiQ�����棬���Եȡ���
copy /Y ".\01-OA\FeiQ2013.exe" "C:\Users\Public\Desktop\"
ECHO.
ping -n 2 127.1 >nul
ECHO ���ڰ�װ�ѹ�ƴ�������Եȡ���
".\07-���뷨\�ѹ�ƴ�����뷨v8.8b(1956)ȥ��澫���Ż���.exe" /S
ECHO.
ping -n 2 127.1 >nul
ECHO ���ڰ�װ7zip�����Եȡ���
".\06-WPS_PDF\7z1900-x64.exe" /S
ECHO.
ping -n 2 127.1 >nul
ECHO ���ڸ���WPS�����棬���Եȡ���
copy /Y ".\06-WPS_PDF\W.P.S.7311.12012.0.exe" "C:\Users\Public\Desktop\"
ECHO.
ECHO ���ڰ�װ��ȫ���֣����Եȡ���
".\03-�칫����ȫ����V8080\lva_setupfull_BM.exe" /S
ping -n 2 127.1 >nul
ECHO ���ڰ�װɱ����������Եȡ���
".\04-ɱ�����\setup_x64_BM.exe" /S
ECHO.
ping -n 2 127.1 >nul
ECHO ���ڰ�װAdobe Reader�����Եȡ���
".\06-WPS_PDF\AdbeRdr11000_zh_CN.exe" /sALL /msi /quiet
ECHO.
ping -n 2 127.1 >nul
ECHO ����ж��win10�Դ�office_365�����Եȡ���
pushd %~dp0
powershell.exe -command ^
  "& {set-executionpolicy Remotesigned -Scope Process; .'.\office-uninstall.ps1' }"
popd
ECHO.
@echo.&echo.  ���ֶ��������Ƿ�ȫ����װ��ɡ� & echo. & echo.  ��������˳�... & pause>nul
exit