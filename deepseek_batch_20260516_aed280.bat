@echo off
title Claude Code + Qwen3-Coder (NVIDIA NIM)

:: ========== 填入你的 API Key ==========
set API_KEY=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
:: ======================================

echo Starting proxy (Qwen3-Coder)...
start "DeepSeek-Proxy" /MIN uv run uvicorn server:app --host 0.0.0.0 --port 8082
timeout /t 4 /nobreak >nul

echo Starting Claude Code...
set ANTHROPIC_BASE_URL=http://localhost:8082
set ANTHROPIC_AUTH_TOKEN=%API_KEY%

claude --enable-auto-mode

echo Cleaning up proxy...
taskkill /FI "WINDOWTITLE eq DeepSeek-Proxy*" /T /F >nul 2>&1
echo Done.
pause