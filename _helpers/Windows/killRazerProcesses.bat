@echo off

:: Check if the script is running with admin privileges
net session >nul 2>&1
if errorlevel 1 (
    echo This script requires administrative privileges.
    echo Please run the script as an administrator.
    pause
    exit /b
)

cd /d "%~dp0"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process PowerShell -ArgumentList '-ExecutionPolicy Unrestricted','-File .\killRazerScript\kill.ps1' -Verb RunAs"

START "" "C:\Program Files (x86)\Razer\Synapse3\WPFUI\Framework\Razer Synapse 3 Host\Razer Synapse 3.exe"
