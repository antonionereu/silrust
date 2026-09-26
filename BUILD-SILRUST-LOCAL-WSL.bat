@echo off
setlocal
chcp 65001 >nul
cd /d "%~dp0"
title silrust v1.0a - Android Build

echo.
echo ============================================================
echo                 SILRUST v1.0a - ANDROID
echo ============================================================
echo.
echo Base: RustDesk 1.5.0
echo Motor/protocolo: RustDesk intacto
echo UI: silrust
echo.

powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass ^
  -File "%CD%\android\build-launcher.ps1" ^
  -ProjectRoot "%CD%"

set "RC=%ERRORLEVEL%"
echo.
if "%RC%"=="0" (
  echo ============================================================
  echo                    BUILD CONCLUIDO
  echo ============================================================
) else (
  echo ============================================================
  echo                     BUILD FALHOU
  echo ============================================================
  echo Codigo: %RC%
  echo Log: %CD%\build-silrust.log
)
echo.
echo Esta janela fica aberta.
pause
exit /b %RC%
