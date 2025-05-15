@echo off
set MAYA_PATH="C:\Program Files\Autodesk\Maya2020\bin\maya.exe"
set SCRIPT_PATH="C:\stuff\source\auto_playblast.py"
set LOG_PATH="C:\Projects\playblast_log.txt"

%MAYA_PATH% -script %SCRIPT_PATH% > %LOG_PATH% 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo "Playblast failed. Check the log file at %LOG_PATH%."
) else (
    echo "Playblast completed successfully."
)
pause