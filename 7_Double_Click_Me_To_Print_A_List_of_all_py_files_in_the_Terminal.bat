@echo off
setlocal enabledelayedexpansion
REM this is getting the path where the bat file is.
cd /D "%~dp0"

set search_dir=%cd%

for /d "%search_dir%" %%a in (*.py) do (
    echo %%~fa
)
echo All operations completed successfully.
endlocal
pause


@REM @echo off
@REM setlocal enabledelayedexpansion

@REM set "search_dir=%cd%

@REM for /r "%search_dir%" %%a in (*.py) do (
@REM     echo %%~fa
@REM )

@REM pause

