

@echo off
REM this is getting the path where the bat file is.
cd /D "%~dp0"
setlocal enabledelayedexpansion

@REM set "search_sentence=This is the old sentence."
@REM set "replace_sentence=This is the new sentence."

set search_sentence=Is_development:bool=True
set replace_sentence=Is_development:bool=False
@REM set file_path=%CD%\10_Double_Click_Me_To_Search_Replace_a_string_in_a_Py_file_example.py
@REM set temp_file=temp.py

set "file_path=%CD%\10_Double_Click_Me_To_Search_Replace_a_string_in_a_Py_file_example.py"
set "temp_file=temp.py"

(for /f "tokens=*" %%a in ('type "%file_path%"') do (
    set "line=%%a"
    set "trimmed_line=!line: =!"
    set "trimmed_search=!search_sentence: =!"
    if "!trimmed_line!"=="!trimmed_search!" (
        echo %replace_sentence%
    ) else (
        echo !line!
    )
)) > "%temp_file%"

move /y "%temp_file%" "%file_path%"














@REM @echo off
@REM setlocal enabledelayedexpansion

@REM REM this is getting the path where the bat file is.
@REM cd /D "%~dp0"
@REM set search_sentence=Is_development:bool=True
@REM set replace_sentence=Is_development:bool=False

@REM set file_path=%CD%\10_Double_Click_Me_To_Search_Replace_a_string_in_a_Py_file_example.py
@REM set temp_file=temp.py

@REM (for /f "tokens=*" %%a in ('type "%file_path%"') do (
@REM     set "line=%%a"
@REM     set "trimmed_line=!line: =!"
@REM     set "trimmed_search=!search_sentence: =!"
@REM     set "output_line="
    
@REM     :replace_loop
@REM     if "!line: %search_sentence%=!" neq "!line!" (
@REM         set "line=!line:%search_sentence%=%replace_sentence%!"
@REM         set "output_line=!output_line!!replace_sentence!"
@REM         goto replace_loop
@REM     )
    
@REM     if defined output_line (
@REM         echo !output_line!
@REM     ) else (
@REM         echo !line!
@REM     )
@REM )) > "%temp_file%"

@REM move /y "%temp_file%" "%file_path%"








@REM @echo off
@REM setlocal enabledelayedexpansion

@REM set search_sentence=Is_development:bool=True
@REM set replace_sentence=Is_development:bool=False

@REM set file_path=%CD%\10_Double_Click_Me_To_Search_Replace_a_string_in_a_Py_file_example.py
@REM set temp_file=temp.py

@REM (for /f "tokens=*" %%a in ('type "%file_path%"') do (
@REM     set "line=%%a"
@REM     set "trimmed_line=!line: =!"
@REM     set "trimmed_search=!search_sentence: =!"
@REM     if "!trimmed_line!"=="!trimmed_search!" (
@REM         echo %replace_sentence%
@REM     ) else (
@REM         echo !line!
@REM     )
@REM )) > "%temp_file%"

@REM move /y "%temp_file%" "%file_path%"





















@REM @echo off
@REM setlocal enabledelayedexpansion

@REM REM this is getting the path where the bat file is.
@REM cd /D "%~dp0"

@REM set search_sentence=Is_development:bool=True
@REM set replace_sentence=Is_development:bool=False

@REM set file_path=%CD%\10_Double_Click_Me_To_Search_Replace_a_string_in_a_Py_file_example.py
@REM set temp_file=temp.py

@REM (for /f "tokens=*" %%a in ('type "%file_path%"') do (
@REM     set "line=%%a"
@REM     if "!line!"=="%search_sentence%" (
@REM         echo %replace_sentence%
@REM     ) else (
@REM         echo !line!
@REM     )
@REM )) > "%temp_file%"

@REM move /y "%temp_file%" "%file_path%"







@REM @echo off
@REM @echo off
@REM setlocal enabledelayedexpansion
@REM REM this is getting the path where the bat file is.
@REM cd /D "%~dp0"

@REM set search_text=Is_development:bool=True
@REM set replace_text=Is_development:bool=False

@REM set path=%CD%
@REM set file_path=%CD%\10_Double_Click_Me_To_Search_Replace_a_string_in_a_Py_file_example.py
@REM set "temp_file=temp.py"

@REM (for /f "tokens=*" %%a in ('type "%file_path%"') do (
@REM     set "line=%%a"
@REM     set "line=!line:%search_text%=%replace_text%!"
@REM     echo !line!
@REM )) > "%temp_file%"

@REM move /y "%temp_file%" "%file_path%"