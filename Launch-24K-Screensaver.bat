@echo off
title Launching 24K Gold Pyramid Screensaver...
set "APP_PATH=%~dp0index.html"
set "FILE_URL=file:///%APP_PATH:\=/%"

where msedge >nul 2>nul
if %errorlevel%==0 (
  start "" msedge --kiosk "%FILE_URL%" --edge-kiosk-type=fullscreen --no-first-run
  exit /b
)

if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
  start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" --kiosk "%FILE_URL%" --edge-kiosk-type=fullscreen --no-first-run
  exit /b
)

if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" (
  start "" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" --kiosk "%FILE_URL%" --edge-kiosk-type=fullscreen --no-first-run
  exit /b
)

if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
  start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --kiosk "%FILE_URL%"
  exit /b
)

start "" "%APP_PATH%"
