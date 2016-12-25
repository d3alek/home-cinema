@ECHO OFF

SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0

FOR /F %%i IN (%parent%\script\raspberry-pi-ip.txt) DO (
    SET raspberry=%%i
    GOTO :next)

:next

ECHO %me%: Sending to %raspberry%

CALL %parent%\script\pscp.exe -i %parent%\script\d3home_raspberry_rsa.ppk %parent%\one-video\* pi@%raspberry%:/home/pi/home-cinema/video