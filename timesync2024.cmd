set _Args=%*
if “%~1” NEQ “” (
set _Args=%_Args:”=%
)
fltmc 1>nul 2>nul || (
cd /d “%~dp0”
cmd /u /c echo Set UAC = CreateObject^(“Shell.Application”^) : UAC.ShellExecute “cmd.exe”, “/k cd “”%~dp0″” && “”%~dpnx0″” “”%_Args%”””, “”, “runas”, 1 > “%temp%\mitvietnam.vbs”
“%temp%\mitvietnam.vbs”
del /f /q “%temp%\mitvietnam.vbs” 1>nul 2>nul
exit
)
@shift /0
CLS
@COLOR b
@echo off
cls
net stop w32time & w32tm /unregister && w32tm /register && powershell -exe bypass Restart-Service w32Time && w32tm /resync
cls
echo.
echo.
echo please wait for exit this program.....
timeout /t 5
