@echo off
setlocal

set "folder_path=YOUR PATH HERE"

set "python_script=dump_keys.py"

cd /d "%folder_path%"

python "%python_script%"

pause
endlocal
