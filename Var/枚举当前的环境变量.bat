@echo off
COLOR 02
TITLE ö�ٵ�ǰ�Ļ�������

setlocal enabledelayedexpansion
FOR /F "usebackq delims==" %%i IN (`set`) DO @echo %%i !%%i!

PAUSE