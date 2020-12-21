@echo off

dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >gp_list.txt

dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>gp_list.txt

for /f %%i in ('findstr /i . gp_list.txt 2^>nul') do dism /online /add-package:"C:\Windows\servicing\Packages%%i" /norestart

del gp_list.txt

pause
