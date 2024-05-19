@echo off
setlocal enabledelayedexpansion

set "source_folder=%cd%"
set "exclude_subfolder=dev_env"

for /d /r "%source_folder%" %%A in (*) do (
        echo !%%A! | findstr /C:"%source_folder%\%exclude_subfolder%\" >nul
        if  !errorlevel! neq 0 (
            echo !!%%A!!
            @REM for %%F in ("%%A\*.py") do (
            @REM set "subfolder=%%~dpF"
            @REM if /i not "!subfolder!"=="%source_folder%\%exclude_subfolder%\" (
            @REM     echo %%~fF
            @REM )
        )
        )
    


)

endlocal
pause
