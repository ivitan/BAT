@echo off
TITLE �鿴ϵͳ��
set DRIVE=%systemdrive%
echo ϵͳ���ǣ�%DRIVE%

wmic LogicalDisk where "Caption='D:'" get Size /value
pause