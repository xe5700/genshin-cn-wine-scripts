@echo off
@REM chcp 65001
setlocal enabledelayedexpansion

@REM set "savehostsFile=C:\hosts"
@REM set "hostsFile=C:\Windows\System32\drivers\etc\hosts"
@REM set "tempFile=%temp%\hosts.tmp"
rem  xcopy /y "%savehostsFile%" "%hostsFile%"
title �������� ԭ��
echo �������� ԭ��
call :block
echo ����dispatchcnglobal �ȴ�3���������ԭ��
ping -n 3 127.0.0.1 >nul
cd /d %~dp0
cd /d "D:\Genshin Impact Game\"
start "" "YuanShen.exe" -platform_type CLOUD_THIRD_PARTY_PC -is_cloud 1
cd /d %~dp0
echo �ȴ�10���ָ�dispatchcnglobal���硣
ping -n 10 127.0.0.1 >nul
call :unblock
echo ��ʼ֡�ʽ���
fpsunlock.exe 144
exit
rem ����dispatchcnglobal
:block
echo �ѽ���dispatchcnglobal
xcopy /Y /Q /F /R "C:\block_ip.bak" "C:\block_ip.txt" 
echo dispatchcnglobal.yuanshen.com >> C:\block_ip.txt
exit /b


rem �������dispatchcnglobal
:unblock
echo �������dispatchcnglobal
xcopy /Y /Q /F /R "C:\block_ip.bak" "C:\block_ip.txt" 
exit /b
