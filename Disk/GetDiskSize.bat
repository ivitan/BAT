@echo off
TITLE �鿴���̴�С
wmic DiskDrive get Size /value
::�鿴C��
wmic LogicalDisk where "Caption='C:'" get FreeSpace,Size /value
::�鿴D��
wmic LogicalDisk where "Caption='D:'" get FreeSpace,Size /value
wmic LogicalDisk where "Caption='D:'" get Size /value
pause