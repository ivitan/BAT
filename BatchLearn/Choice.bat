@ECHO OFF
TITLE Choice

goto han
choice ʹ�ô�����������û�����һ���ַ�(����ѡ��)���Ӷ������û���ѡ�񷵻ز�ͬ�� errorlevel��
Ȼ����� if errorlevel ѡ�����в�ͬ�����
ע�⣺choice����ΪDOS����Windowsϵͳ�ṩ���ⲿ�����ͬ�汾��choice�����﷨�����в�ͬ������choice /?�鿴�÷���
choice ʹ�ô�����������û�����һ���ַ����Ӷ����в�ͬ�����
ʹ��ʱӦ�ü�/c:������c:��Ӧд��ʾ��������ַ���֮���޿ո����ķ�����Ϊ1234����
Sample: choice /c:dme defrag,mem,end
����ʾ: defrag,mem,end[D,M,E]?
:han

choice /c:dme defrag,mem,end
:: (�����һ��Ӧ���ж���ֵ��ߵĴ�����)
if errorlevel 3 goto defrag 
if errorlevel 2 goto mem
if errotlevel 1 goto end

PAUSE