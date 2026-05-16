@echo off
title Claude Code + DeepSeek V4 Flash

:: ========== 填入你的 DeepSeek API Key ==========
set API_KEY=sk-652bfd94000b42e1b0ab569091f912ed
:: ==============================================

:: 清理之前残留的代理进程
echo Cleaning old proxy processes...
taskkill /FI "WINDOWTITLE eq DeepSeek-Proxy*" /T /F >nul 2>&1
timeout /t 1 /nobreak >nul

:: 进入 free-claude-code 目录
cd /d "C:\Users\华哥牛逼\free-claude-code"

echo Starting DeepSeek proxy...
start "DeepSeek-Proxy" /MIN uv run uvicorn server:app --host 0.0.0.0 --port 8082
echo Waiting for proxy to start...
timeout /t 4 /nobreak >nul

echo Starting Claude Code...
set ANTHROPIC_BASE_URL=http://localhost:8082
set ANTHROPIC_AUTH_TOKEN=%API_KEY%

claude --enable-auto-mode

echo Cleaning up proxy...
taskkill /FI "WINDOWTITLE eq DeepSeek-Proxy*" /T /F >nul 2>&1
echo Done.
pause