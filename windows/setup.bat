@echo off

:: Check if running as administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo This script requires administrator privileges. Please run as Admin.
    pause
    exit /b
)

:: Import the registry file
echo Adding 'Open Folder in VS Code' to the context menu...
reg import registry\open_vscode.reg

if %errorLevel% neq 0 (
    echo Failed to import registry file.
) else (
    echo Successfully added to the context menu!
)

pause
