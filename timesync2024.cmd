SET __COMPAT_LAYER=RunAsInvoker
@echo off
cls
net stop w32time & w32tm /unregister && w32tm /register && powershell -exe bypass Restart-Service w32Time && w32tm /resync
echo.
echo.
echo please wait for exit this program.....
timeout /t 5