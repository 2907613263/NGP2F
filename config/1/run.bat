%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@ECHO OFF&PUSHD %~DP0 &TITLE NGP2F内核
SETLOCAL EnableDelayedExpansion  
setlocal  
color 9B 
set "scriptDir=%~dp0"  
cd /d "%scriptDir%"   
cd ..\..  
set "grandparentPath=%cd%"  
echo The path two levels up from the script is: %grandparentPath%  
cd /d "%scriptDir%"  
echo 执行窗口，请保持开启!
echo 执行窗口，请保持开启!
echo 执行窗口，请保持开启!
echo 执行窗口，请保持开启!
echo 执行窗口，请保持开启!
timeout /t 3
cd /d "!grandparentPath!" 
start "" npc.exe -server=192.168.1.254:8024 -vkey=NG -type=tcp