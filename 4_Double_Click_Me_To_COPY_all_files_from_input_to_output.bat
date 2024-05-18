@echo off

REM this is getting the path where the bat file is.
cd /D "%~dp0"
@REM config input and output folder (must be there)
set input=%cd%\input
set output=%cd%\output
xcopy "%input%\*" "%output%\" /s /e


