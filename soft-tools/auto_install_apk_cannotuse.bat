@ECHO off  
@REM ����ѭ���ı�ǩ  
:LOOP  
ECHO ������ֻ���  
adb wait-for-device  
@REM ѭ����װ��Ŀ¼�µ�APK�ļ�  
FOR %%i IN (*.apk) DO (   
    ECHO ���ڰ�װ��%%i  
    adb install "%%i"  
    )  
ECHO ��װ��ϣ��������һ̨�ֻ���
PAUSE  
GOTO LOOP  
@ECHO on