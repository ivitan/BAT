@echo off
rem ��ǰĿ¼��%cd%
rem odbc_binĿ¼·��ֱ
set odbc_bin_pathname=D:\tools\Oracle\instantclient\bin
set odbc_tns_pathname=D:\tools\Oracle\instantclient\network\admin
rem ����ע���
regedit /s %cd%\bin\register.reg
rem ���»�������path
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v NLS_LANG /t REG_SZ /d "SIMPLIFIED CHINESE_CHINA.ZHS16GBK" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v TNS_ADMIN /t REG_SZ /d "%odbc_tns_pathname%" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v PATH /t REG_EXPAND_SZ /d "%path%;%odbc_bin_pathname%" /f
rem ����odbc_install.exe
cd %cd%\bin\
odbc_install.exe 
ping -n 5 127.0.0.1>nul
rem ��������Դע���
regedit /s %cd%\bin\cadence.reg
rem ����explorer.exe
taskkill /im explorer.exe /f
start %systemroot%\explorer.exe

