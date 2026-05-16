@echo off
title Claude Code + DeepSeek V4 Flash (Official)
chcp 65001 >nul
setlocal EnableDelayedExpansion

:: ========================================
::         配置区（仅需修改此处）
:: ========================================
set API_KEY=sk-652bfd94000b42e1b0ab569091f912ed
set PROXY_DIR=%USERPROFILE%\free-claude-code
set PROXY_PORT=8082
set PROXY_WAIT=5
:: ========================================

:: —— 前置检查 ——
if "%API_KEY%"=="" (
    echo [ERROR] API_KEY 未填写，请打开脚本填入你的 DeepSeek 官方 Key。
    pause & exit /b 1
)
if not exist "%PROXY_DIR%" (
    echo [ERROR] 找不到目录：%PROXY_DIR%
    echo 请确认 free-claude-code 已安装到正确路径。
    pause & exit /b 1
)
if not exist "%PROXY_DIR%\server.py" (
    echo [ERROR] 找不到 server.py，路径可能有误：%PROXY_DIR%
    pause & exit /b 1
)
where claude >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] 未找到 claude 命令，请确认 Claude Code 已正确安装。
    pause & exit /b 1
)

:: —— 清理残留进程 ——
echo [1/3] 清理旧代理进程...
taskkill /FI "WINDOWTITLE eq DeepSeek-Proxy*" /T /F >nul 2>&1
timeout /t 1 /nobreak >nul

:: —— 启动代理 ——
echo [2/3] 启动 DeepSeek 官方代理（端口：%PROXY_PORT%）...
cd /d "%PROXY_DIR%"
start "DeepSeek-Proxy" /MIN cmd /c "uv run uvicorn server:app --host 0.0.0.0 --port %PROXY_PORT%"

:: —— 等待代理就绪（带 curl 检测）——
where curl >nul 2>&1
if %errorlevel% equ 0 (
    echo 等待代理启动（最多 %PROXY_WAIT% 秒）...
    set /a WAITED=0
    :WAIT_LOOP_DS
    timeout /t 1 /nobreak >nul
    curl -s -o nul -w "%%{http_code}" http://localhost:%PROXY_PORT%/ | findstr /r "^[24]" >nul 2>&1
    if !errorlevel! equ 0 goto PROXY_READY_DS
    set /a WAITED+=1
    if !WAITED! lss %PROXY_WAIT% goto WAIT_LOOP_DS
    echo [WARN] 代理未在 %PROXY_WAIT% 秒内响应，仍尝试继续...
) else (
    echo 未检测到 curl，将固定等待 %PROXY_WAIT% 秒...
    timeout /t %PROXY_WAIT% /nobreak >nul
)

:PROXY_READY_DS
echo    代理已就绪。

:: —— 启动 Claude Code ——
echo [3/3] 启动 Claude Code...
echo.
set ANTHROPIC_BASE_URL=http://localhost:%PROXY_PORT%
set ANTHROPIC_AUTH_TOKEN=%API_KEY%
claude --enable-auto-mode

:: —— 退出清理 ——
echo.
echo [退出] 正在关闭代理...
taskkill /FI "WINDOWTITLE eq DeepSeek-Proxy*" /T /F >nul 2>&1
echo 已完成。
endlocal
pause