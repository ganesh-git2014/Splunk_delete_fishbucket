@echo off
if exist "C:\Program Files\SplunkUniversalForwarder\.fishbucket" exit
timeout /t 5 /nobreak
md "C:\Program Files\SplunkUniversalForwarder\.fishbucket"
NET STOP SplunkForwarder
@RD /S /Q "C:\Program Files\SplunkUniversalForwarder\var\lib\splunk\fishbucket"
timeout /t 30 /nobreak
NET START SplunkForwarder
