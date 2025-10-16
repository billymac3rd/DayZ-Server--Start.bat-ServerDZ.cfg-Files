@echo off
set serverName=Jims DayZ server
set serverLocation="C:\Program Files (x86)\Steam\steamapps\common\DayZServer"
set BECLocation="C:\Program Files (x86)\Steam\steamapps\common\DayZServer\BEC"
set serverPort=2302
set serverConfig=serverDZ.cfg
set serverCPU=2
title %serverName% batch
cd "%serverLocation%"
echo (%time%) %serverName% started.
start "DayZ Server" /min "DayZServer_x64.exe" -config=%serverConfig% -port=%serverPort% -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck
timeout 25
cd /d "%BECLocation%"
start "" "bec.exe"
timeout 14390
taskkill /im DayZServer_x64.exe /F
taskkill /im bec.exe /F
goto start