@echo off
chcp 65001 >nul
title Advanced HTTP Server

:menu
cls
echo ================================
echo       HTTP SERVER MENU
echo ================================
echo 1. Start Server (Port 8000)
echo 2. Exit
echo ================================
set /p choice="Please choose (1-2): "

if "%choice%"=="1" goto start8000
if "%choice%"=="2" exit

goto menu

:start8000
echo Starting server on port 8000...
echo Server: http://localhost:8000/
start http://localhost:8000/
python -m http.server 8000
echo Browser opened.
pause
goto menu
