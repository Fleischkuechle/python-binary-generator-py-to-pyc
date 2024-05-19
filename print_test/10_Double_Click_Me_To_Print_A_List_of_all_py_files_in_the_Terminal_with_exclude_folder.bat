@echo off
setlocal enabledelayedexpansion

set "source_folder=%cd%"
set "exclude_subfolder=dev_env"

for /r "%source_folder%" %%F in (*.py) do (
    set "file_path=%%~fF"
    set "subfolder=%%~dpF"
    echo !subfolder! | findstr /C:"%exclude_subfolder%" >nul || (
        echo !file_path!
    )
)

endlocal
pause


@REM echo !subfolder! | findstr /C:"%source_folder%\%exclude_subfolder%\" >nul || (
