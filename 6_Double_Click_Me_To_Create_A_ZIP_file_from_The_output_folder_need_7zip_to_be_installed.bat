@echo off

@REM %~dp0: Breaks down as follows:
@REM %~d0: Extracts the drive letter from %0.
@REM %~p0: Extracts the path (directory) from %0.
@REM Combining the above two (%~d0 and %~p0) gives the drive and path of the batch file.
rem Add 7-Zip path to the system PATH temporarily
@REM %ProgramFiles%\7-Zip 
@REM set path=%ProgramFiles%\7-Zip ;%path%
set "path=C:\Program Files\7-Zip;%path%"

REM this is getting the path where the bat file is.
cd /D "%~dp0"

set output=%cd%\output
set zipFile=%cd%\output.zip

@REM rem Create a zip file from the output folder
call 7z a "%zipFile%" "%output%\*"
@REM call 7-Zip a "%zipFile%" "%output%\*"


echo All operations completed successfully.
pause


@REM @echo off
@REM set "inputFolder=C:\Path\to\inputFolder"
@REM set "outputFolder=C:\Path\to\outputFolder"
@REM set "zipFile=C:\Path\to\outputZipFile.zip"

@REM rem Copy all files from input folder to output folder
@REM xcopy "%inputFolder%\*" "%outputFolder%\" /s /e /exclude:%~dp0exclude.txt

@REM rem Generate .pyc files for existing .py files
@REM for %%f in ("%outputFolder%\*.py") do (
@REM     python -m compileall "%%f"
@REM )

@REM rem Delete all .py files inside the output folder and its subfolders
@REM for /R "%outputFolder%" %%f in (*.py) do (
@REM     del "%%f"
@REM )

@REM rem Create a zip file from the output folder
@REM 7z a "%zipFile%" "%outputFolder%\*"

@REM echo All operations completed successfully. Zip file created: %zipFile%
@REM pause
