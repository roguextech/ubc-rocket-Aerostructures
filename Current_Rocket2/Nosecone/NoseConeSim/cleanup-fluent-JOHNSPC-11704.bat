@echo off
rem This file was generated by Fluent.  To kill Fluent and all its
rem related processes, run this script.  If Fluent exits normally
rem this file will be removed automatically.

set LOCALHOST=%COMPUTERNAME%
set REMOTE_SH="C:\PROGRA~1\ANSYSS~1\v180\fluent\\ntbin\\win64\\rsh.exe "
set KILL_CMD="C:\PROGRA~1\ANSYSS~1\v180\fluent\\ntbin\\win64\\winkill.exe "

echo Killing host process...
if /i "%LOCALHOST%"=="JOHNSPC" (%KILL_CMD% 7264) else (%REMOTE_SH% JOHNSPC %KILL_CMD% 7264)
echo Killing cortex process...
if /i "%LOCALHOST%"=="JOHNSPC" (%KILL_CMD% 11704) else (%REMOTE_SH% JOHNSPC %KILL_CMD% 11704)
del /q "C:\Users\johna\OneDrive\Documents\ROCKET\Aerostructures\Aerostructures\Current_Rocket2\Nosecone\NoseConeSim\\cleanup-fluent-JOHNSPC-11704.bat"