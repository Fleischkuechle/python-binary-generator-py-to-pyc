@echo off

@REM %~dp0: Breaks down as follows:
@REM %~d0: Extracts the drive letter from %0.
@REM %~p0: Extracts the path (directory) from %0.
@REM Combining the above two (%~d0 and %~p0) gives the drive and path of the batch file.

REM this is getting the path where the bat file is.
cd /D "%~dp0"

@REM REM this is getting the parent path fro where the bat file is.
@REM cd /D "%~dp0.."

set PATH=%PATH%;%SystemRoot%\system32

echo "%CD%"| findstr /C:" " >nul && echo This script relies on Miniconda which can not be silently installed under a path with spaces. && goto end

@rem fix failed install when installing to a separate drive
set TMP=%cd%\dev_env
set TEMP=%cd%\dev_env

@rem deactivate existing conda envs as needed to avoid conflicts
(call conda deactivate && call conda deactivate && call conda deactivate) 2>nul

@rem config
set CONDA_ROOT_PREFIX=%cd%\dev_env\conda
set INSTALL_ENV_DIR=%cd%\dev_env\env
@REM set "inputFolder=C:\Path\to\inputFolder"
@REM set "outputFolder=C:\Path\to\outputFolder"
set input=%cd%\input
set output=%cd%\output
REM copy  from  input to output folder
xcopy "%input%\*" "%output%\" /s /e



@rem activate installer env
call "%CONDA_ROOT_PREFIX%\condabin\conda.bat" activate "%INSTALL_ENV_DIR%" || ( echo. && echo Miniconda hook not found. && goto end )

call python -m compileall -b -f %output%


@REM rem Generate .pyc files for existing .py files
@REM for %%f in ("%output%\*.py") do (
@REM     python -m compileall "%%f"
@REM )

@REM rem Delete all .py files inside the output folder
@REM del "%outputFolder%\*.py"

rem Delete all .py files inside the output folder and its subfolders
for /R "%output%" %%f in (*.py) do (
    del "%%f"
)

echo All operations completed successfully.
pause


REM Using build in compiler to compile all python files.
@REM call python -m compileall -b -f .
REM comileall -l means not recursive that means it only compiles the files
REM that are inside the . folder it ignores sub folders
@REM call python -m compileall -b -f -l .
@REM call python -m compileall -b -f -l BackendCoreClassLib\InBlenderRunningLib




@REM @echo off
@REM set "inputFolder=C:\Path\to\inputFolder"
@REM set "outputFolder=C:\Path\to\outputFolder"

@REM rem Copy all files from input folder to output folder
@REM xcopy "%inputFolder%\*" "%outputFolder%\" /s /e

@REM rem Generate .pyc files for existing .py files
@REM for %%f in ("%outputFolder%\*.py") do (
@REM     python -m compileall "%%f"
@REM )

@REM rem Delete all .py files inside the output folder
@REM del "%outputFolder%\*.py"

@REM echo All operations completed successfully.
@REM pause
