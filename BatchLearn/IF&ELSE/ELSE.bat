@ECHO OFF
TITLE ELSE
ECHO �﷨�� if ���� (����ʱִ�е�����) else (������ʱִ�е�����)
ECHO ����Ƕ�������������ʵ�ʹ�����ŰѸ��������������������

ECHO ʵ��: if 1 == 0 ( echo comment1 ) else if 1==0 ( echo comment2 ) else (echo comment3 )

ECHO ע����� else �������Ҫ���У�if ִ�е���β���á�^�����ӣ����� if ִ�еĶ�������(������)�����򱨴�

ECHO ʵ��: 

if 1 == 0 ( echo comment1 ) else if 1==0 ( echo comment2 ) ^
else (echo comment3 )

PAUSE