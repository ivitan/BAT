@ECHO OFF
TITLE �ƻ�����
::ÿ���20��00ִ�����Ȼ��24��00��ֹ����
REM SCHTASKS /Create /SC onstart /delay mmmm:ss /tn name /tr "command"
SCHTASKS /Create /SC DAILY /TN �Զ��ػ� /TR C:\�Զ��ػ�.bat /ST 12:00 /ET 14:00 /K