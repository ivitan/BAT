::==================�������ȡ����IP(������)��MAC��ַ==============
@echo off
for /f "tokens=2 delims=:" %%i in ('ipconfig ^| findstr "IPv4"') do set localip=%%i
for /f "tokens=1,3 delims=," %%a in ('getmac /fo csv /v') do (
if %%a == "��������" set localmac=%%~b
)
echo �������ӵ�IPΪ%localip%
echo �������ӵ�MACΪ%localmac%
pause