:: By DeimosMH <Maciej Hejlasz> 

:: The script automatically download, install, update and configure
:: msys2, MinGW and adds PATH for C++ compiler for Windows/CMD/VS Code 

@echo off

:: Check if the script is running with admin privileges
net session >nul 2>&1
if errorlevel 1 (
    echo This script requires administrative privileges.
    echo Please run the script as an administrator.
    pause
    exit /b
)

:: Change the default path to the current folder
set "batchPath=%~dp0"
pushd %batchPath%

:: ------------ MSYS2 ------------
if not exist "C:\msys64" (
    echo :: MSYS2 : NOT installed ::

    setlocal enabledelayedexpansion

    echo ":Download latest msys2 installer:"
    for /f "delims=" %%i in ('powershell -Command "Get-Content -Raw -Path '.\install_refs\msys2_url.ps1' | PowerShell.exe -NoProfile -"') do (
        set "msys2Url=%%i"
        echo msys2 URL: %%i
    )

    :: Download the Python installer to the local folder
    powershell -Command "Invoke-WebRequest -Uri '!msys2Url!' -OutFile '.\msys2.exe'"
    endlocal

    echo ":Install msys2:"
    START /WAIT PowerShell.exe -NoLogo -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command "& '.\install_refs\msys2_autoinstaller.ps1'"

    :: Update MSYS2 packages silently
    echo ":Update msys2:"
    "C:\msys64\usr\bin\bash.exe" -lc "pacman --noconfirm -Syu"
    "C:\msys64\usr\bin\bash.exe" -lc "pacman --noconfirm -Su"
    echo MSYS2 installation complete

    echo ":Remove msys2 installer:"
    del .\msys2.exe
    del .\auto-install.js

    echo ":Shortcuts in Desktop/MSYS2:"
    set "source_folder=MSYS2"
    set "desktop_folder=%USERPROFILE%\Desktop"
    xcopy "%source_folder%" "%desktop_folder%\MSYS2" /E /I /Y
    rmdir /S /Q "%source_folder%"
) else (
    echo :: MSYS2 : installed ::

    :: Update MSYS2 packages silently
    echo ":Update msys2:"
    "C:\msys64\usr\bin\bash.exe" -lc "pacman --noconfirm -Syu"
    "C:\msys64\usr\bin\bash.exe" -lc "pacman --noconfirm -Su"
)

echo ":Install MinGW-x64:"
"C:\msys64\usr\bin\bash.exe" -lc "pacman -S --needed --noconfirm base-devel mingw-w64-x86_64-toolchain"

echo ":Add MinGW-x64 PATH:"
set "mingw64_path=C:\msys64\mingw64\bin"
setx path "%PATH%;%mingw64_path%" /M

pause
exit /b