@echo off

REM this is getting the path where the bat file is.
cd /D "%~dp0"
@REM config input and output folder (must be there)
set input=%cd%\input
set output=%cd%\output
@REM xcopy "%input%\*" "%output%\" /s /e


@REM REM this gives the ability to exlude subfolders from the copy process
@REM @REM example in the xcopy_exclude.txt
@REM @REM subfolder2\
@REM @REM subfolder1\
@REM @REM subfolder2\
xcopy "%input%\*" "%output%\" /s /e /exclude:xcopy_exclude.txt

