msg %username% /time:10 "Ҫ��ʾ������"

mshta vbscript:msgbox("Ҫ��ʾ������",64,"Ҫ��ʾ�ı���")(window.close)

mshta vbscript:CreateObject("Wscript.Shell").popup("Ҫ��ʾ������",7,"Ҫ��ʾ�ı���",64)(window.close)

mshta "javascript:new ActiveXObject('WScript.Shell').popup('Ҫ��ʾ������',7,'Ҫ��ʾ�ı���',64);window.close();"