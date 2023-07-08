@echo off
set counterfile=startcounts.txt
echo Start Counter initializing.... 
if exist %counterfile% (
	echo %counterfile% file found. 
) else (
	echo %counterfile% file NOT FOUND!
	echo 0 > %counterfile%
	echo File is created. 
)
set /p counter=<%counterfile%
set /a counter+=1
echo %counter% > %counterfile%
echo ##########################################
echo This machine has been started total of %counter%
echo ##########################################
echo You can close this window if you want.
set /p "isresetwanted=Do you want to reset the counter? (yes/no) : "
if %isresetwanted%==yes (
	echo 0 > %counterfile%
	echo Done.
) else (
	echo Ok.
)
pause
