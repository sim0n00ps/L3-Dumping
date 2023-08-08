@echo off

start cmd /k "frida.bat"
timeout /t 5 > nul
start cmd /k "dumpkeys.bat"