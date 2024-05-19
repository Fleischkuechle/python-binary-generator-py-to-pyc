
@echo off
setlocal enabledelayedexpansion

set "source_folder=%cd%"
set "exclude_subfolder=Iam_The_Exclude_folder"

for /r "%source_folder%" %%F in (*.py) do (
    set "file_path=%%~fF"
    set "subfolder=%%~dpF"
    if /I not "!subfolder!"=="%exclude_subfolder%\" (
        echo !file_path!
    )
)

endlocal
pause

@REM endlocal


@REM @echo off
@REM setlocal

@REM set "source_folder=%cd%"
@REM set "exclude_subfolder=Iam_The_Exclude_folder"

@REM for %%F in ("%source_folder%\*.py") do (
@REM     set "file_path=%%~fF"
@REM     set "subfolder=%%~dpF"
@REM     if /I not "!subfolder!"=="%source_folder%\%exclude_subfolder%" (
@REM         echo !file_path!
@REM     )
@REM )

@REM endlocal



























@REM @echo off
@REM REM This script lists all .py files in a directory and its subfolders, excluding a specific folder.

@REM setlocal enabledelayedexpansion

@REM REM Set the search directory (current directory in this case)
@REM set "search_dir=%cd%"
@REM set "exclude_folder=Iam_The_Exclude_folder"

@REM REM Loop through all .py files recursively
@REM for /r "%search_dir%" %%a in (*.py) do (
@REM     set "filepath=%%~fa"
@REM     set "folderpath=%%~dpa"

@REM     REM Check if the folder path contains the excluded folder
@REM     set "exclude_file=0"
@REM     for /f %%b in ('dir /ad /b "%search_dir%\%exclude_folder%"') do (
@REM         if "!folderpath:%search_dir%\=!"=="\%%b\" (
@REM             set "exclude_file=1"
@REM             goto :skip_file
@REM         )
@REM     )

@REM     REM Print the file path if it's not in the excluded folder
@REM     :skip_file
@REM     if !exclude_file! == 0 (
@REM         echo !filepath!
@REM     )
@REM )

@REM pause

























@REM @REM @echo off
@REM @REM REM This script lists all .py files in a directory and its subfolders, excluding a specific folder.

@REM @REM setlocal enabledelayedexpansion
@REM @REM REM this is getting the path where the bat file is.
@REM @REM cd /D "%~dp0"
@REM @REM REM Set the search directory (current directory in this case)
@REM @REM set search_dir=%cd%
@REM @REM set exclude_folder=Iam_The_Exclude_folder
@REM @REM @REM #set input=%cd%\input
@REM @REM REM Loop through all .py files recursively
@REM @REM for /r "%search_dir%" %%a in (*.py) do (
@REM @REM     set "filepath=%%~fa"
@REM @REM     set "folderpath=%%~dpa"

@REM @REM     REM Check if the folder path contains the excluded folder
@REM @REM     set "exclude_file=0"
@REM @REM     for /f %%b in ('dir /ad /b "%search_dir%\%exclude_folder%"') do (
@REM @REM         if "!folderpath:%search_dir%\=!"=="\%%b\" (
@REM @REM             set "exclude_file=1"
@REM @REM             goto :skip_file
@REM @REM         )
@REM @REM     )

@REM @REM     REM Print the file path if it's not in the excluded folder
@REM @REM     :skip_file
@REM @REM     if !exclude_file! == 0 (
@REM @REM         echo !filepath!
@REM @REM     )
@REM @REM )

@REM @REM pause




























@REM @REM @REM @echo off
@REM @REM @REM REM This script lists all .py files in a directory and its subfolders, excluding a specific folder.

@REM @REM @REM setlocal enabledelayedexpansion

@REM @REM @REM REM Set the search directory (current directory in this case)
@REM @REM @REM set "search_dir=%cd%"
@REM @REM @REM set "exclude_folder=Iam_The_Exclude_folder"

@REM @REM @REM REM Loop through all .py files recursively
@REM @REM @REM for /r "%search_dir%" %%a in (*.py) do (
@REM @REM @REM     set "filepath=%%~fa"
@REM @REM @REM     set "folderpath=%%~dpa"

@REM @REM @REM     REM Check if the folder path contains the excluded folder
@REM @REM @REM     set "exclude_file=0"
@REM @REM @REM     for /f %%b in ('dir /ad /b "%search_dir%\%exclude_folder%"') do (
@REM @REM @REM         if "!folderpath:%search_dir%\=!"=="\%%b\" (
@REM @REM @REM             set "exclude_file=1"
@REM @REM @REM             goto :skip_file
@REM @REM @REM         )
@REM @REM @REM     )

@REM @REM @REM     REM Print the file path if it's not in the excluded folder
@REM @REM @REM     :skip_file
@REM @REM @REM     if !exclude_file! == 0 (
@REM @REM @REM         echo !filepath!
@REM @REM @REM     )
@REM @REM @REM )

@REM @REM @REM pause


































@REM @REM @REM @echo off
@REM @REM @REM REM This script lists all .py files in a directory and its subfolders, excluding a specific folder.

@REM @REM @REM setlocal enabledelayedexpansion

@REM @REM @REM REM Set the search directory (current directory in this case)
@REM @REM @REM set "search_dir=%cd%"
@REM @REM @REM set "exclude_folder=Iam_The_Exclude_folder"

@REM @REM @REM REM Loop through all .py files recursively
@REM @REM @REM for /r "%search_dir%" %%a in (*.py) do (
@REM @REM @REM     set "filepath=%%~fa"
@REM @REM @REM     set "folderpath=%%~dpa"

@REM @REM @REM     REM Check if the folder path contains the excluded folder
@REM @REM @REM     set "exclude_file=0"
@REM @REM @REM     for /f %%b in ('dir /ad /b "%search_dir%\%exclude_folder%"') do (
@REM @REM @REM         if "!folderpath:%search_dir%\=!"=="\%%b\" set "exclude_file=1"
@REM @REM @REM     )

@REM @REM @REM     REM Print the file path if it's not in the excluded folder
@REM @REM @REM     if !exclude_file! == 0 (
@REM @REM @REM         echo !filepath!
@REM @REM @REM     )
@REM @REM @REM )

@REM @REM @REM pause


























@REM @REM @REM @REM @echo off
@REM @REM @REM @REM setlocal enabledelayedexpansion

@REM @REM @REM @REM REM this is getting the path where the bat file is.
@REM @REM @REM @REM cd /D "%~dp0"



@REM @REM @REM @REM set "search_dir=%cd%"
@REM @REM @REM @REM set "exclude_folder=Iam_The_Exclude_folder"

@REM @REM @REM @REM for /r "%search_dir%" %%a in (*.py) do (
@REM @REM @REM @REM     set "filepath=%%~fa"
@REM @REM @REM @REM     set "folderpath=%%~dpa"

@REM @REM @REM @REM     set "exclude_file=0"
@REM @REM @REM @REM     for /f %%b in ('dir /ad /b "%search_dir%\%exclude_folder%"') do (
@REM @REM @REM @REM         if "!folderpath:%search_dir%\=!"=="\%%b\" set "exclude_file=1"
@REM @REM @REM @REM     )

@REM @REM @REM @REM     if !exclude_file! == 0 (
@REM @REM @REM @REM         echo !filepath!
@REM @REM @REM @REM     )
@REM @REM @REM @REM )

@REM @REM @REM @REM pause

























@REM @REM @REM @REM set "search_dir=%cd%"
@REM @REM @REM @REM set "exclude_folder=dev_env"

@REM @REM @REM @REM for /r "%search_dir%" %%a in (*.py) do (
@REM @REM @REM @REM     set "filepath=%%~fa"
@REM @REM @REM @REM     set "folderpath=%%~dpa"

@REM @REM @REM @REM     set "exclude_subfolder=0"
@REM @REM @REM @REM     if /i "!folderpath:~0,-1!"=="%search_dir%\%exclude_folder%\" set "exclude_subfolder=1"
@REM @REM @REM @REM     if "!folderpath:~0,-1!"=="%search_dir%\%exclude_folder%\" set "exclude_subfolder=0"

@REM @REM @REM @REM     if !exclude_subfolder! == 0 (
@REM @REM @REM @REM         echo !filepath!
@REM @REM @REM @REM     )
@REM @REM @REM @REM )


@REM @REM @REM @REM pause







@REM @REM @REM @REM set "search_dir=%cd%"
@REM @REM @REM @REM @REM set zipFile=%cd%\output.zip
@REM @REM @REM @REM @REM set exclude_folder=%cd%\dev_env
@REM @REM @REM @REM set "exclude_folder=D:\11\01\python-binary-generator-py-to-pyc\dev_env"
@REM @REM @REM @REM for /r "%search_dir%" %%a in (*.py) do (
@REM @REM @REM @REM     set "filepath=%%~fa"
@REM @REM @REM @REM     set "folderpath=%%~dpa"

@REM @REM @REM @REM     set "exclude_subfolder=0"
@REM @REM @REM @REM     if /i "!folderpath:~0,-1!"=="%search_dir%\%exclude_folder%\" set "exclude_subfolder=1"
@REM @REM @REM @REM     if "!folderpath:~0,-1!"=="%search_dir%\%exclude_folder%\" set "exclude_subfolder=0"

@REM @REM @REM @REM     if !exclude_subfolder! == 0 (
@REM @REM @REM @REM         echo !filepath!
@REM @REM @REM @REM     )
@REM @REM @REM @REM )

@REM @REM @REM @REM echo All operations completed successfully.
@REM @REM @REM @REM pause


@REM @REM @REM @REM @echo off
@REM @REM @REM @REM setlocal enabledelayedexpansion

@REM @REM @REM @REM set "search_dir=%cd%

@REM @REM @REM @REM for /r "%search_dir%" %%a in (*.py) do (
@REM @REM @REM @REM     echo %%~fa
@REM @REM @REM @REM )

@REM @REM @REM @REM pause




@REM @REM @REM @REM @echo off
@REM @REM @REM @REM setlocal enabledelayedexpansion

@REM @REM @REM @REM set "search_dir=C:\Your\Search\Directory"
@REM @REM @REM @REM set "exclude_folder=exclude_folder"

@REM @REM @REM @REM for /r "%search_dir%" %%a in (*.py) do (
@REM @REM @REM @REM     set "filepath=%%~fa"
@REM @REM @REM @REM     set "folderpath=%%~dpa"
    
@REM @REM @REM @REM     if /i not "!folderpath:~0,-1!"=="%search_dir%\%exclude_folder%" (
@REM @REM @REM @REM         echo !filepath!
@REM @REM @REM @REM     )
@REM @REM @REM @REM )

@REM @REM @REM @REM pause


@REM @REM @REM @REM @echo off
@REM @REM @REM @REM setlocal enabledelayedexpansion

@REM @REM @REM @REM set "search_dir=C:\Your\Search\Directory"
@REM @REM @REM @REM set "exclude_folder=exclude_folder"

@REM @REM @REM @REM for /r "%search_dir%" %%a in (*.py) do (
@REM @REM @REM @REM     set "filepath=%%~fa"
@REM @REM @REM @REM     set "folderpath=%%~dpa"
    
@REM @REM @REM @REM     if /i not "!folderpath:~0,-1!"=="%search_dir%\%exclude_folder%" (
@REM @REM @REM @REM         echo !filepath!
@REM @REM @REM @REM     )
@REM @REM @REM @REM )

@REM @REM @REM @REM pause



@REM @REM @REM @REM @echo off
@REM @REM @REM @REM setlocal enabledelayedexpansion

@REM @REM @REM @REM set "search_dir=C:\Your\Search\Directory"
@REM @REM @REM @REM set "exclude_folder=exclude_folder"

@REM @REM @REM @REM for /r "%search_dir%" %%a in (*.py) do (
@REM @REM @REM @REM     set "filepath=%%~fa"
@REM @REM @REM @REM     set "folderpath=%%~dpa"

@REM @REM @REM @REM     set "exclude_subfolder=0"
@REM @REM @REM @REM     if /i "!folderpath:~0,-1!"=="%search_dir%\%exclude_folder%\" set "exclude_subfolder=1"
@REM @REM @REM @REM     if "!folderpath:~0,-1!"=="%search_dir%\%exclude_folder%\" set "exclude_subfolder=0"

@REM @REM @REM @REM     if !exclude_subfolder! == 0 (
@REM @REM @REM @REM         echo !filepath!
@REM @REM @REM @REM     )
@REM @REM @REM @REM )

@REM @REM @REM @REM pause
