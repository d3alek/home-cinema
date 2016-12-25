@ECHO OFF

SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0

FOR /F %%i IN (%parent%\raspberry-pi-ip.txt) DO (
    SET raspberry=%%i
    GOTO :next)

:next

ECHO %me%: Sending %1 to %raspberry%

CALL %parent%\putty.exe -ssh -i %parent%\d3home_raspberry_rsa.ppk pi@%raspberry% -m %parent%\%1.sh.txt