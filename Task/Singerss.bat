@echo off
COPY \\10.1.1.5\�������\02-�������\singress.exe "C:\UniAccessAgentDownloadData\singress.exe"
CD C:\UniAccessAgentDownloadData\
.\singress.exe /sp- /silent 
EXIT