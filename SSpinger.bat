@echo off
mode 80, 28
title [+] %ComputerName% - SokkeSquad-Pinger [+]
chcp 65001 >nul
:sspinger
set NLM=^


set NL=^^^%NLM%%NLM%^%NLM%%NLM%
cls
echo.
echo.
echo.
echo      [35m            .▄▄ · .▄▄ ·  ▄▄▄·▪   ▐ ▄  ▄▄ • ▄▄▄ .▄▄▄  
echo      [35m            ▐█ ▀. ▐█ ▀. ▐█ ▄███ •█▌▐█▐█ ▀ ▪▀▄.▀·▀▄ █·
echo      [35m            ▄▀▀▀█▄▄▀▀▀█▄ ██▀·▐█·▐█▐▐▌▄█ ▀█▄▐▀▀▪▄▐▀▀▄ 
echo      [35m            ▐█▄▪▐█▐█▄▪▐█▐█▪·•▐█▌██▐█▌▐█▄▪▐█▐█▄▄▌▐█•█▌
echo                   ▀▀▀▀  ▀▀▀▀ .▀   ▀▀▀▀▀ █▪·▀▀▀▀  ▀▀▀ .▀  ▀ [0m
echo.
echo.
echo.
set /p ip=[95mEnter the IP you would like to ping: [0m
PING -n 3 %ip% | FIND "TTL=" >nul
:connected
cls
echo.
echo.
echo.
echo      [35m            .▄▄ · .▄▄ ·  ▄▄▄·▪   ▐ ▄  ▄▄ • ▄▄▄ .▄▄▄  
echo      [35m            ▐█ ▀. ▐█ ▀. ▐█ ▄███ •█▌▐█▐█ ▀ ▪▀▄.▀·▀▄ █·
echo      [35m            ▄▀▀▀█▄▄▀▀▀█▄ ██▀·▐█·▐█▐▐▌▄█ ▀█▄▐▀▀▪▄▐▀▀▄ 
echo      [35m            ▐█▄▪▐█▐█▄▪▐█▐█▪·•▐█▌██▐█▌▐█▄▪▐█▐█▄▄▌▐█•█▌
echo                   ▀▀▀▀  ▀▀▀▀ .▀   ▀▀▀▀▀ █▪·▀▀▀▀  ▀▀▀ .▀  ▀ [0m
echo.
echo.
echo.
IF ERRORLEVEL 1 (SET in=0b & echo [31mFailed To Connect.%NL%[95m%ip%[0m Is [31mOffline.[0m) 
IF NOT ERRORLEVEL 1 (SET in=0b & echo [92mConnected.%NL%[95m%ip%[0m Is [92mOnline.[0m)
ping -t 1 0 10 127.0.0.1 >nul
pause