@ECHO OFF
TITLE �ƻ�����
::ÿ���12��00ִ�����Ȼ��14��00��ֹ����
REM SCHTASKS /Create /SC onstart /delay mmmm:ss /tn name /tr "command"
SCHTASKS /Create /SC DAILY /TN gaming /TR C:\bat.bat /ST 12:00 /ET 14:00 /K