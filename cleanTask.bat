#https://www.tutorialspoint.com/batch_script/index.htm

@echo off
REM del C:\Windows\Prefetch\*.* /Q
TITLE simple cleanTask script by Faisalfs10x [16/02/2020] echo %DATE%

@echo on 
rem # OS Version #
@echo off
whoami
systeminfo | findstr /B /C:"Host Name" /C:"OS Name" /C:"OS Version" /C:"System Type"


@echo on
:: View network connection details
@echo off
ipconfig | findstr /C:"IPv4 Address"

@echo on 
rem # Network Connections [netstat -ano] #
@echo off
netstat -ano | findstr "ESTABLISHED"

@echo OFF
START msconfig.exe

@echo OFF
REM Net stop [maliciousService]

@echo on 
rem # Checking for Existing files #
@echo OFF
::EXIST command is used to check for existence
IF EXIST C:\Windows\malware1.exe (ECHO malware1.exe found) ELSE (ECHO malware1.exe not found)
IF EXIST C:\Windows\malware2.exe (ECHO malware2.exe found) ELSE (ECHO malware2.exe not found)
IF EXIST C:\Windows\SysWOW64\malware3.exe (ECHO malware3.exe found) ELSE (ECHO malware3.exe not found)
IF EXIST C:\Windows\malware4.exe (ECHO malware4.exe  found) ELSE (ECHO malware4.exe not found)

@echo on 
rem # Find .exe in Tasklist #
@echo off
tasklist | findstr "malware1.exe" "malware2.exe" "malware3.exe" "malware4.exe"

@echo off
REM The /t child processes are closed as well, /f option forcefully terminates the process.
Taskkill /im malware1.exe /t /f
Taskkill /im malware2.exe /t /f
Taskkill /im malware3.exe /t /f
Taskkill /im malware4.exe /t /f

@echo on 
rem # Delete malware1 | malware2 | malware3 | malware4 #
@echo off
:: To delete a single file test.txt :: Remove \p to delete without confirmation
DEL /q C:\Windows\malware1.exe
DEL /q C:\Windows\malware2.exe
DEL /q C:\Windows\SysWOW64\malware3.exe
DEL /q C:\Windows\malware4.exe

@echo on 
rem # Running Services [services.msc] #
@echo off
net start

@echo off
Rem rd /s /q %temp%
Rem md %temp%
Rem rd /s /q %systemroot%\temp
Rem md %systemroot%\temp

@echo on 
rem # Firewall Settings #
@echo off
netsh firewall show state 
netsh firewall show config 

@echo off
rem # Status # 
@echo off
echo "---------------------Settle!-----------------"

PAUSE
