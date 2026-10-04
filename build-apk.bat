@echo off
title Knight Racers - Build Android APK
where node >nul 2>nul || (echo Install Node.js LTS first: https://nodejs.org & pause & exit /b 1)
where java >nul 2>nul || (echo Install JDK 21 and Android Studio first. See README.txt & pause & exit /b 1)
call npm install || (pause & exit /b 1)
call npm run build:apk || (echo Build failed - read the message above. & pause & exit /b 1)
echo.
echo DONE. Your APK: KnightRacers-debug.apk (in this folder)
pause
