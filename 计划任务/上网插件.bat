@echo off
COPY \\10.1.1.5\�������\ʵ�ù���\����\���������Ĭ��װ-��ɾ\Singerss.bat C:\UniAccessAgentDownloadData\

SCHTASKS /CREATE /SC  ONLOGON /TN "�������" /TR "C:\UniAccessAgentDownloadData\Singerss.bat"