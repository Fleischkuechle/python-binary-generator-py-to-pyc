@echo off
setlocal enabledelayedexpansion

set "source_folder=%cd%"
set "exclude_subfolder=Iam_The_Exclude_folder"

for /r "%source_folder%" %%F in (*.py) do (
    set "file_path=%%~fF"
    set "subfolder=%%~dpF"
    set "exclude=0"
    for %%A in ("%subfolder%") do (
        if /I "!subfolder:\%%~nxA\=!" neq "!subfolder!" set exclude=1
    )
    if %exclude%==0 (
        echo !file_path!
    )
)

endlocal
pause
