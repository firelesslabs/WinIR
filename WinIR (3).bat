@ECHO OFF
:: This is SecEng Windows IR file
TITLE System Info
ECHO ==============================
ECHO Date / Time
ECHO ==============================
date /t
time /t
ECHO Please wait... Checking sys information
ECHO ==============================
ECHO Operating System Info
ECHO ==============================
systeminfo | findstr /c:"OS Name" 
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
:: Next Section
ECHO ==============================
ECHO NETWORK Info
ECHO ==============================
ipconfig /all
netstat -ano
netstat -an
arp -a
route print
:: Next Section
ECHO ==============================
ECHO User Accounts 
ECHO ==============================
net accounts
net user
net localgroup
net localgroup administrators
cmdkey /list
:: Next Section
ECHO ==============================
ECHO Check Processes 
ECHO ==============================
tasklist
tasklist /v
:: Next Section
ECHO ==============================
ECHO Check Services
ECHO ==============================
net start
sc query | more
tasklist /svc
ECHO ==============================
ECHO Check Tasks
ECHO ==============================
schtasks
ECHO ==============================
ECHO Check Firewall
ECHO ==============================
netsh firewall show config
netsh advfirewall show currentprofile
ECHO ==============================
ECHO Check Sessions w/ Other systems
ECHO ==============================
net use
ECHO ==============================
ECHO Check Path
ECHO ==============================
path
ECHO ==============================
ECHO Reg Export
ECHO ==============================
doskey /history
EXIT /B
