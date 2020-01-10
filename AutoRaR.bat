@ECHO OFF

cd C:\Users\irina\Desktop\Schedule\PENDING\

copy /-y/Y "\\NETGEAR_NAS\ServerNas\1\1\outlook\New Order\PENDING ORDERS\PENDING\*.rar" "\\NETGEAR_NAS\ServerNas\1\1\outlook\New Order\PENDING ORDERS\PENDING\OLD\"

copy /-y/Y "\\NETGEAR_NAS\ServerNas\1\1\outlook\New Order\PENDING ORDERS\PENDING\*.xlsx" "C:\Users\irina\Desktop\Schedule\PENDING\"

SET PATH=C:;C:\Program Files\WinRAR;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;%PATH%

FOR /f "delims=" %%d IN ('DIR /B') DO WinRAR a -m5 -agYYYY-MM-DD -ep -x*.rar -x*.bat -x*.txt "C:\Users\irina\Desktop\Schedule\PENDING\PENDING_.rar" "C:\Users\irina\Desktop\Schedule\PENDING\"

copy /-y/Y "C:\Users\irina\Desktop\Schedule\PENDING\*.rar" "\\NETGEAR_NAS\ServerNas\1\1\outlook\New Order\PENDING ORDERS\PENDING\"

EXIT
