@ECHO OFF
:: Some comments colored in cyan.
:: More comments.
IF NOT EXIST "%XMLFile%" GOTO Syntax
IF NOT "%~1"=="" IF /I NOT "%~1"=="/Backup" IF NOT DEFINED var GOTO Syntax

SCHTASKS /?  >NUL  2>&1  || GOTO Syntax
FOR /F "tokens=1*" %%T IN ('SCHTASKS /Query /FO list ^| FINDSTR /R /B /C:"TaskName: " ^| FINDSTR /R /V /C:"\\.*\\."') DO (
    REM Comments can also begin with REM.
    CALL :Backup %%~U
)
SET CurrentUser=%ComputerName%\%UserName%
IF NOT "%RunasUser%"=="" (
    IF "%~2"=="" (
        SET /P RunasPassword=Please enter the password for %RunasUser%: 
        SET Runas=/RU %RunasUser% /RP !RunasPassword!
        CLS
        GOTO Syntax
    )
    SET Runas=/RU %RunasUser% /RP %2
    echo "Commands can be case insensitive." !CurrentUser:%ComputerName%=NewName!
)
:Syntax
ECHO.
ECHO BackupScheduledTasks.bat,  Version 1.02
ECHO https://www.robvanderwoude.com/
IF "%OS%"=="Windows_NT" EXIT /B 1
