@echo off
color 0A
pushd "%~dp0"
:start
echo �ᡡ���ᡡ����ᡡ�������ᡡ������ᡡ�����ᡡ���ᡡ
echo ��ᡡ�ᡡ�ᡡ���ᡡ�ᡡ���������ᡡ���ᡡ�ᡡ�ᡡ������
echo �ᡡ��ᡡ�ᡡ���ᡡ�ᡡ���ᡡ������ᡡ��ᡡ�����ᡡ
echo �ᡡ���ᡡ����ᡡ�������ᡡ���ᡡ���ᡡ�ᡡ�ᡡ���ᡡ��
echo.
echo �밡���� ���� ���ռ�ġ ����
echo.  
echo ����! ������ ���� ���� �ϼ���
echo ���� �� �о��ּ���. ���� ��ġ�� �����ϴ�.
echo.
echo ó�� ��ġ (f) �ֽ����� �缳ġ �Ǵ� ��ġ (r)
echo.
set /p rpn=F or R :
if "%rpn%" == "f" goto first
if "%rpn%" == "r" goto patch
if "%rpn%" == "F" goto first
if "%rpn%" == "R" goto patch
pause
goto start
:first
echo.
echo.
echo.
echo �ڹٸ� ���� ��ġ �մϴ� �ٿ��� �� �� �� ���� ��ٸ�����. ���� �ٽ� �� â���� ���ƿ�����.
start "" https://javadl.oracle.com/webapps/download/AutoDL?BundleId=242990_a4634525489241b9a9e1aa73d9e118e6	  
pause
echo.
echo.
echo.
echo ������ġ�� �����մϴ�. �ٿ�ε带 ��ٸ����� �ٿ�ε尡 �Ϸ�Ǹ� ���� �ٽ� �� â���� ���ƿ�����
pause 
start "" https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.12.2-14.23.5.2854/forge-1.12.2-14.23.5.2854-installer.jar
echo.
echo.
echo ������ ��ġ�ϰڽ��ϴ�. ok �� �����ּ���.
pause 
java -jar C:\Users\%username%\Downloads\forge-1.12.2-14.23.5.2854-installer.jar
echo.
echo.
echo ���� ��ġ �Ϸ�!
echo.
echo ����!! ����ũ����Ʈ�� �����Ұ̴ϴ�. �÷��̸� ������ �߰� ������ �ٿ�ε� �ϼ���. �ε��� ������ ����ȭ���� �߸� �ٽ� �����ϼ���.
pause
start /d "C:\Program Files (x86)\Minecraft Launcher\" MinecraftLauncher.exe
pause

:patch
echo.
echo.
echo.
echo �밡���� ���� ������� ��ġ�� �����մϴ�
echo ������ �����մϴ�.
pause 
echo.
xcopy data\* C:\Users\%username%\AppData\Roaming\.minecraft\mods /e /h /k
cd C:\Users\%username%\AppData\Roaming.minecraft\mods\
echo ��ġ�� ����:
tree
:end
echo ����
pause