' �ȶ���һ��Shell����
Set WshShell = WScript.CreateObject("WScript.Shell")
 
WScript.Sleep 5000
wshShell.SendKeys "{SCROLLLOCK}"
WScript.Sleep 500
wshShell.SendKeys "{SCROLLLOCK}"
 
'���ó�����Ҫ������ʱ��
for i=1 to 180
'���óɱ�����ʱ��̵�Ϳ���
	WScript.Sleep 180000
	wshShell.SendKeys "{SCROLLLOCK}"
	WScript.Sleep 500
	wshShell.SendKeys "{SCROLLLOCK}"
next
 