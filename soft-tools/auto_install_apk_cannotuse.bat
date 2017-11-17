@ECHO off  
@REM 无限循环的标签  
:LOOP  
ECHO 请插入手机…  
adb wait-for-device  
@REM 循环安装本目录下的APK文件  
FOR %%i IN (*.apk) DO (   
    ECHO 正在安装：%%i  
    adb install "%%i"  
    )  
ECHO 安装完毕；请更换下一台手机！
PAUSE  
GOTO LOOP  
@ECHO on