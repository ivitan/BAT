@echo off

SCHTASKS /Create /TN "AutoCAD Uninstall" /RU system /TR D:\aizzw\del-7.bat /sc weekly /d mon /st 01:00

start %systemroot%\tasks

echo �����ɹ�������...

pause

del /f Create.bat