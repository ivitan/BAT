@Echo off
Color 0A
title ���ļ������
:A
cls
echo.
echo [0]�˳�
echo.
echo �����������Ծ���Ч
echo �����Թ���Ա������� 
echo.
echo.

set /p pc=       [������������] #
If "%pc%"=="" goto A
If "%pc%"=="0" exit
set COMPUTERNAME=%pc%
:: PC name
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v ComputerName /t reg_sz /d "%COMPUTERNAME%" /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ComputerName" /v ComputerName /t reg_sz /d "%COMPUTERNAME%" /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d "%COMPUTERNAME%" /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d "%COMPUTERNAME%" /f

echo =====��Ӱ칫����=====
netdom join %COMPUTERNAME% /DOMAIN:grgit.com /UserD:adddomain /PasswordD:grg8033
 
set/p=  ��<nul
for /L %%i in (1,1,38) do set /p a=��<nul&ping /n 1 127.0.0.1>nul
echo   100%%
:end
exit