%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@ECHO OFF&PUSHD %~DP0 &TITLE NGP2F
SETLOCAL EnableDelayedExpansion 
mode con cols=46 lines=32

color 9B
set "inviteListUrl=http://110.42.178.244:8888/down/Ygszx1myrod5.txt"  
set "loce=%~sdp0"
set "a_input="
set "scriptPath=%~dp0"    
set "scriptPath=!scriptPath:~0,-1!"  
set "newconfig=%loce%\config\1"
set "updateUrl=http://110.42.178.244:8888/down/oQHUdMZeaW7e.exe"
set "dateUrl=C:\windows\system32\wget.exe"
:menu

cls  
echo.  
echo    	作者：良医-南瓜    
echo 	联系QQ：2907613263  
echo ==============================================
echo 请选择一个选项：  
echo 1. 安装NPCNG到服务项  
echo 2. 作为主机A使用  
echo 3. 更新客户端和备份
echo 4. 检测中继服务器延迟  
echo 5. HELP帮助指南  
echo 6. 退出脚本
echo 7. 用云配置链接
echo 8. 关于程序
echo 9. 用户协议
echo 10.检查NAT类型
echo -使用前请详细阅读HELP帮助指南中的内容-
echo !!使用前请看用户协议，使用则默认同意协议内容!!
echo ==============================================
echo.  
  
set /p user_input="请输入序号："  
if "%user_input%"=="1" (  
    echo 设置开机自启动......  
    cd /d "%loce%" 
    call npc.exe install  
    cd /d "C:\windows\system32"
    powershell curl -o "%dateUrl%" "%updateUrl%"

) else if "%user_input%"=="2" (  
    echo 开始运行主机A相关操作...  
) else if "%user_input%"=="3" (  
    echo 检测程序更新....~
    cd /d "%scriptPath%" 
    start "" cmd /k call great.bat
) else if "%user_input%"=="4" (  
    echo 开始PING中继服务器延迟......  
    start "" ping /n 10 ngnd.qqwkt.top:8024 >nul  
) else if "%user_input%"=="5" (
cls
echo 请选择一个选项：
echo ==============================================
echo 如果第一次使用，程序内没有内置任何配置文件
echo 如果运行云端配置时无法正常使用，可能没有载入
echo 云端连接的配置文件，请找发给你的好友或者主机
echo 把云端配置发给你。
echo 如果你是第一次使用作为主机请用配置文件打开
echo ==============================================
echo P2P因为各用户的NAT类型，所以很难保障正常穿透所
echo 以我们在后续版本会提供FRP来支持那些无法正常穿
echo 透的玩家！
echo ==============================================
echo 我会用心打造这个联机程序的，因为提供云服务器的
echo 缘故,为那些无法使用P2P的用户提供了FRP穿透服务。
echo 日后可能会收取一定费用作为服务器的补贴！
echo ==============================================
echo 使用云配置连接的时候需要注意，备注文件名为A或B
echo 等英文字母，使用云端配置的如果想预制多条配置，
echo 请依次改为A-Z的文件名字，且保证文件后缀为.bat
echo ==============================================
echo 如果多次无法打通，请尝试执行10的检查NAT类型。
echo 弹出来的窗口选择[RFC 3489]后点击TEST。等待结果
echo Public 完全没有阻隔   
echo FullCone 容易穿透
echo RestrictedCone 较易穿透 
echo PortRestrictedCone 可能受阻
echo Symmetric 完全受阻
echo ==============================================
echo 如果运行过更新，且正常运行后
echo 前版本备份在C:\Program Files\nps\old
) else if "%user_input%"=="6" (  
    echo 退出脚本...  
    exit /b  
) else if "%user_input%"=="7" ( 
        echo 正在使用云端配置... 
        cd /d "!newconfig!" 
        call run.bat
) else if "%user_input%"=="8" (  
cls
echo "  _   _                                    ";
echo " | \ | |  __ _  _ __    __ _  _   _   __ _ ";
echo " |  \| | / _` || '_ \  / _` || | | | / _` |";
echo " | |\  || (_| || | | || (_| || |_| || (_| |";
echo " |_| \_| \__,_||_| |_| \__, | \__,_| \__,_|";
echo "                       |___/               ";
echo ==============================================
echo 该程序作者为良医_南瓜，如果想二创请联
echo 系作者QQ:2907613263,无论如何都必须标
echo 注原作者信息,如果遇到主程序错误，请尝
echo 试手动运行根目录中的great.bat进行最新
echo 文件修复。或者重新安装！
echo ==============================================
echo "  _   _   ____  ____  ____   _____ ";
echo " | \ | | / ___||  _ \|___ \ |  ___|";
echo " |  \| || |  _ | |_) | __) || |_   ";
echo " | |\  || |_| ||  __/ / __/ |  _|  ";
echo " |_| \_| \____||_|   |_____||_|    ";
echo "                                   ";
)else if "%user_input%"=="9" (
    start "" "%loce%\用户协议.pdf"
    echo 已执行打开用户协议PDF文件指令
)else if "%user_input%"=="10" (
    start "" "%loce%\NatTypeTester3.2.exe"
    echo 已执行打开NAT检测
)

pause
goto menu
endlocal  

