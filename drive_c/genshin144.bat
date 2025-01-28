@echo off
@REM chcp 65001
setlocal enabledelayedexpansion

@REM set "savehostsFile=C:\hosts"
@REM set "hostsFile=C:\Windows\System32\drivers\etc\hosts"
@REM set "tempFile=%temp%\hosts.tmp"
rem  xcopy /y "%savehostsFile%" "%hostsFile%"
title 正在启动 原神
echo 正在启动 原神
call :block
echo 禁用dispatchcnglobal 等待3秒后以启动原神
ping -n 3 127.0.0.1 >nul
cd /d %~dp0
cd /d "D:\Genshin Impact Game\"
start "" "YuanShen.exe" -platform_type CLOUD_THIRD_PARTY_PC -is_cloud 1
cd /d %~dp0
echo 等待10秒后恢复dispatchcnglobal网络。
ping -n 10 127.0.0.1 >nul
call :unblock
echo 开始帧率解锁
fpsunlock.exe 144
exit
rem 禁用dispatchcnglobal
:block
echo 已禁用dispatchcnglobal
xcopy /Y /Q /F /R "C:\block_ip.bak" "C:\block_ip.txt" 
echo dispatchcnglobal.yuanshen.com >> C:\block_ip.txt
exit /b


rem 解除禁用dispatchcnglobal
:unblock
echo 解除禁用dispatchcnglobal
xcopy /Y /Q /F /R "C:\block_ip.bak" "C:\block_ip.txt" 
exit /b
