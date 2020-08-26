@echo off
color 0A
pushd "%~dp0"
:start
echo ■　　■　　■■　　　■■■　　　■■　　■■■　　■　
echo ■■　■　■　　■　■　　　　　■　　■　■　■　　　　
echo ■　■■　■　　■　■　　■　　■■■■　■■　　　■　
echo ■　　■　　■■　　　■■■　　■　　■　■　■　　■　　
echo.
echo 노가리방 전용 통합설치 시작
echo.  
echo 주의! 관리자 모드로 실행 하세요
echo 글을 꼭 읽어주세요. 수동 설치가 많습니다.
echo.
echo 처음 설치 (f) 최신파일 재설치 또는 패치 (r)
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
echo 자바를 먼저 설치 합니다 다운이 다 될 때 까지 기다리세요. 그후 다시 이 창으로 돌아오세요.
start "" https://javadl.oracle.com/webapps/download/AutoDL?BundleId=242990_a4634525489241b9a9e1aa73d9e118e6	  
pause
echo.
echo.
echo.
echo 포지설치를 시작합니다. 다운로드를 기다리세요 다운로드가 완료되면 그후 다시 이 창으로 돌아오세요
pause 
start "" https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.12.2-14.23.5.2854/forge-1.12.2-14.23.5.2854-installer.jar
echo.
echo.
echo 포지를 설치하겠습니다. ok 만 눌러주세요.
pause 
java -jar C:\Users\%username%\Downloads\forge-1.12.2-14.23.5.2854-installer.jar
echo.
echo.
echo 포지 설치 완료!
echo.
echo 주의!! 마인크래프트를 실행할겁니다. 플레이를 누르고 추가 파일을 다운로드 하세요. 로딩이 끝나고 메인화면이 뜨면 다시 종료하세요.
pause
start /d "C:\Program Files (x86)\Minecraft Launcher\" MinecraftLauncher.exe
pause

:patch
echo.
echo.
echo.
echo 노가리방 서버 모드파일 설치를 시작합니다
echo 파일을 복사합니다.
pause 
echo.
xcopy data\* C:\Users\%username%\AppData\Roaming\.minecraft\mods /e /h /k
cd C:\Users\%username%\AppData\Roaming.minecraft\mods\
echo 설치된 파일:
tree
:end
echo 종료
pause