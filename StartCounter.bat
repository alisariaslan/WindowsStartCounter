
	
@ set counterfile=startcounts.txt
@ echo Start Counter initializing....
@ if exist %counterfile% (
	@ echo %counterfile% file found.
) else (
	@ echo %counterfile% file NOT FOUND!
	@ echo 0 >> %counterfile%
	@ echo File is created.
)
@ set /p counter=<%counterfile%
@ set /a counter+=1
