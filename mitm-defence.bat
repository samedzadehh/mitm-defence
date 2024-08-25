@echo off
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python yuklu degil.
    echo Python 3.12.5 indiriliyor ve yukleniyor...
    curl -o python-installer.exe https://www.python.org/ftp/python/3.12.5/python-3.12.5-amd64.exe
    python-installer.exe /quiet InstallAllUsers=1 PrependPath=1
    echo Python 3.12.5 yuklendi.

) else (
    echo Python yuklu.
    python --version

)

pip install pyfiglet

set username=%username%

python C:\Users\%username%\Downloads\mitm-defence.py
pause