@echo off

set adb_path="YOUR PATH TO adb.exe HERE"
set frida_server_name=YOUR FRIDA SERVER VERSION HERE

rem Change the working directory to the platform-tools folder
cd /d "YOUR platform-tools PATH HERE"

rem Push the frida-server to /sdcard
%adb_path% push %frida_server_name% /sdcard

rem Start an adb shell and execute commands non-interactively
echo su > commands.txt
echo mv /sdcard/%frida_server_name% /data/local/tmp >> commands.txt
echo chmod +x /data/local/tmp/%frida_server_name% >> commands.txt
echo /data/local/tmp/%frida_server_name% >> commands.txt
%adb_path% shell < commands.txt
del commands.txt

rem Pause the script to keep the Command Prompt window open
pause