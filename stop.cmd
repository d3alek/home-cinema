@ECHO OFF

SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0

ECHO Sending %me%

CALL %parent%\script\send-command.cmd %me%