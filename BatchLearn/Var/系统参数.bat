@echo off
TITLE ϵͳ����
COLOR 02

::  C:\Users\vitan
ECHO USERPROFILE: %USERPROFILE%

::C:\WINDOWS (%windir% ͬ��)
ECHO SystemRoot: %SystemRoot%

:: C:\Program Files
ECHO ProgramFiles: %ProgramFiles%

:: C:\Documents and Settings\Administrator (��Ŀ¼�С����桱,����ʼ�˵���,���ղؼС���)
ECHO USERPROFILE: %USERPROFILE%

:: C:\Documents and Settings\Administrator\Application Data
ECHO APPDATA: %APPDATA%

:: C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp (%TEM% ͬ��)
ECHO TEMP: %TEMP%

:: C:\Documents and Settings\Administrator\Application Data
ECHO APPDATA: %APPDATA%

:: Windows_NT (ϵͳ)
ECHO OS: %OS%

:: %SystemRoot%\system32;%SystemRoot%;%SystemRoot%\System32\Wbem (ԭ��������)
ECHO Path: %Path%

:: C: (ϵͳ��)
ECHO %HOMEDRIVE%

:: \Documents and Settings\Administrator
ECHO HOMEPATH: %HOMEPATH%

PAUSE