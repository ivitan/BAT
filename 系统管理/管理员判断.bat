@ECHO OFF
title ����Ա����ж�
Rem �����ļ�·��
set TempFile_Name=%SystemRoot%\System32\BatTestUACin_SysRt%Random%.batemp
echo %TempFile_Name%
 
Rem д���ļ�
( echo "BAT Test UAC in Temp" >%TempFile_Name% ) 1>nul 2>nul
 
Rem �ж�д���Ƿ�ɹ�
if exist %TempFile_Name% (
echo �����Թ���Ա������е�ǰ������
) else (
echo û���Թ���Ա������е�ǰ������ 
exit
)
pause
 
Rem ɾ����ʱ�ļ�
del %TempFile_Name% 1>nul 2>nul
 
echo ���ո���˳�����
pause >nul