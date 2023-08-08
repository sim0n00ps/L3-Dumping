@echo off

set adb_path="YOUR PATH TO adb.exe HERE"
set frida_server_name=YOUR FRIDA SERVER VERSION HERE

cd /d "YOUR platform-tools PATH HERE"

%adb_path% push %frida_server_name% /sdcard

echo su > commands.txt
echo mv /sdcard/%frida_server_name% /data/local/tmp >> commands.txt
echo chmod +x /data/local/tmp/%frida_server_name% >> commands.txt
echo /data/local/tmp/%frida_server_name% >> commands.txt
%adb_path% shell < commands.txt
del commands.txt

pause
