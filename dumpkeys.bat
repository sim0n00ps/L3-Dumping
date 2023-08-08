@echo off
setlocal

rem Set the path to the folder containing the Python script
set "folder_path=YOUR PATH HERE"

rem Set the name of the Python script to run
set "python_script=dump_keys.py"

rem Change the directory to the specified folder
cd /d "%folder_path%"

rem Run the Python script
python "%python_script%"

pause
endlocal