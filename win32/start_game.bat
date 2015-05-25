@echo off
cd ..

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PPYTHON_PATH=<PPYTHON_PATH

rem Get the user input:
set /P ttiUsername="Pick any username. You need to use this to log in!: "
set TTI_GAMESERVER=104.155.33.156

rem Export the environment variables:
set ttiPassword=password
set TTI_PLAYCOOKIE=%ttiUsername%

echo ===============================
echo Starting Toontown Infinite...
echo ppython: %PPYTHON_PATH%
echo Username: %ttiUsername%
echo Gameserver: %TTI_GAMESERVER%
echo ===============================

%PPYTHON_PATH% -m toontown.toonbase.ClientStart
pause
