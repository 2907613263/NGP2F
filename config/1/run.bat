%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@ECHO OFF&PUSHD %~DP0 &TITLE NGP2F�ں�
SETLOCAL EnableDelayedExpansion  
setlocal  
color 9B 
set "scriptDir=%~dp0"  
cd /d "%scriptDir%"   
cd ..\..  
set "grandparentPath=%cd%"  
echo The path two levels up from the script is: %grandparentPath%  
cd /d "%scriptDir%"  
echo ִ�д��ڣ��뱣�ֿ���!
echo ִ�д��ڣ��뱣�ֿ���!
echo ִ�д��ڣ��뱣�ֿ���!
echo ִ�д��ڣ��뱣�ֿ���!
echo ִ�д��ڣ��뱣�ֿ���!
timeout /t 3
cd /d "!grandparentPath!" 
start "" npc.exe -server=192.168.1.254:8024 -vkey=NG -type=tcp