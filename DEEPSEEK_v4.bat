@echo off
title Claude Code + DeepSeek V4 Flash

:: ========== YOUR API KEY ==========
set API_KEY=sk-652bfd94000b42e1b0ab569091f912ed
:: ==================================

set PROXY_DIR=%USERPROFILE%\free-claude-code

echo Starting DeepSeek proxy...
cd /d "%PROXY_DIR%"
if %errorlevel% neq 0 (
    echo [ERROR] Cannot find %PROXY_DIR%
    pause
    exit /b 1
)

start "DeepSeek-Proxy" /MIN uv run uvicorn server:app --host 0.0.0.0 --port 8082
echo Waiting for proxy...
timeout /t 4 /nobreak >nul

echo Starting Claude Code...
set ANTHROPIC_BASE_URL=http://localhost:8082
set ANTHROPIC_AUTH_TOKEN=%API_KEY%

claude --enable-auto-mode

echo Cleaning up...
taskkill /FI "WINDOWTITLE eq DeepSeek-Proxy*" /T /F >nul 2>&1
echo Done.
pause