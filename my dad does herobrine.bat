@echo off
echo var WshShell = WScript.CreateObject("WScript.Shell"); > SendKeys.js
echo WshShell.SendKeys(WScript.Arguments(0)); >> SendKeys.js
set SendKeys=CScript //nologo SendKeys.js

:start

:Color Text
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
setlocal enabledelayedexpansion

:start
cls
call :colorEcho 0f "1."
call :colorEcho 0f " Porn"
call :colorEcho c0 "hub"
echo.

set choice=
set /p choice=
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto 1
goto start

:1
cls
START chrome -guest https://pornhubpremium.com/premium/login
echo new ActiveXObject("WScript.Shell").AppActivate("chrome") >nul
timeout 10 >nul
%SendKeys% "YOUR USERNAMEEEEEEEEEEeee"
%SendKeys% "{TAB}"
%SendKeys% "YOUR PASSWORDddddddddddddddddddddddddddddddddddddddddddddddddddd"
%SendKeys% "{ENTER}"
del SendKeys.js
exit

:colorEcho
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i




