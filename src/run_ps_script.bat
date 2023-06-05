@echo off
setlocal enabledelayedexpansion

set "PS_SCRIPT_PATH=%~1"
shift

if "%PS_SCRIPT_PATH%"=="" (
    echo No path to a PowerShell script was provided. Exiting.
    exit /b 1
)

set "ARGS="
:loop
if "%~1"=="" goto :end
set "ARGS=!ARGS! %1"
shift
goto :loop

:end

for /F "delims=" %%I in ('powershell -Command "Get-Date -Format 'yyyyMMddHHmmssfffffff'"') do set "datetime=%%I"
set "outputFileName=%TEMP%\output_%datetime%.tmp"

powershell -ExecutionPolicy Bypass -File "%PS_SCRIPT_PATH%" %ARGS% > "%outputFileName%" 2>&1

if %errorlevel% equ 0 (
    type "%outputFileName%"
    exit /b 0
) else (    
    type "%outputFileName%"
    echo PowerShell script %PS_SCRIPT_PATH% ended with an error
    exit /b 1
)

del "%outputFileName%"

endlocal