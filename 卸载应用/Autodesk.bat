@echo off
title ��Ĭ��Զ��ж��Autodesk��Ʒ
::msiexec.exe /x{ProductCode} /quiet

goto han
  - ��Regedit.exe�������� HKEY_LOCAL_MACHINE\SOFTWARE\Autodesk\UPI2
    ��Ʒ����,����Կ���������Ѱ�װ��Autodesk��
  - ��Regedit.exe��������  HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall
  - ʹ��Orca�� ��װOrca�����ض���.MSI��MSP���ļ���ȥ����>��Ʒ���롣
  - https://support.microsoft.com/en-us/help/255905/how-to-use-the-orca-database-editor-to-edit-windows-installer-files
:han

REM AutoCAD 2017
msiexec.exe / x {547931BA-595F-445D-9564-CF3F3A09B77D} / quiet
msiexec.exe / x {28B89EEF-0001-0409-1102-CF3F3A09B77D} / quiet
msiexec.exe / x {5F0F7049-0000-1033-0102-73A6DA3D7FA6} / quiet
msiexec.exe / x {28B89EEF-0001-0000-3102-CF3F3A09B77D} / quiet
msiexec.exe / x {28B89EEF-0001-0000-0102-CF3F3A09B77D} / quiet
msiexec.exe / x {28B89EEF-0004-0000-5102-CF3F3A09B77D} / quiet
msiexec.exe / x {EB6FE58F-8576-4272-BB9C-6B47D9EDFA4D} / quiet
msiexec.exe / x {28B89EEF-0001-0409-2102-CF3F3A09B77D} / quiet
msiexec.exe / x {7758802D-9486-4883-9927-CCAC366A3BA4} / quiet

 