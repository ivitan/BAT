@ECHO OFF
mode con cols=50 lines=20&color 0a 
TITLE �ƻ�����
REM ÿ���19��00 �� System Ȩ������C:\�Զ��ػ�.bat��Ȼ��24��00��ֹ����
REM SCHTASKS /Create /SC onstart /delay mmmm:ss /tn name /tr "command"

SCHTASKS /Create /SC DAILY /TN "�Զ��ػ�" /TR C:\�Զ��ػ�.bat /ST 19:00 /ET 24:00 /K /ru "System"

EXIT