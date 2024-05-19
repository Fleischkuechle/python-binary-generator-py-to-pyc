@echo off
setlocal enabledelayedexpansion

set "source_folder=%cd%"
set "exclude_subfolder=dev_env"

for /d /r "%source_folder%" %%A in (*) do (
    if /i not "%%~fA"=="%source_folder%\%exclude_subfolder%\" (
        for %%F in ("%%A\*.py") do (
            echo %%~fF
        )
    )
)

endlocal
pause
