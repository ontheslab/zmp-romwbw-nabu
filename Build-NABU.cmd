@echo off
setlocal

set "LOCALTOOLS=Tools"
set "TOOLS=..\..\..\Tools"

if exist "%LOCALTOOLS%\zxcc\zxcc.exe" (
	set "PATH=%LOCALTOOLS%\zxcc;%PATH%"
	set "CPMDIR80=%LOCALTOOLS%/cpm/"
) else (
	set "PATH=%TOOLS%\zxcc;%PATH%"
	set "CPMDIR80=%TOOLS%/cpm/"
)

zxcc Z80ASM -ZMO-NABU/LH || exit /b
zxcc MLOAD25 -ZMP.COM=ZMPX.COM,ZMO-NABU || exit /b

if exist ..\..\..\Binary\Apps (
	copy /Y zmp.com ..\..\..\Binary\Apps\ || exit /b
	copy /Y *.ovr ..\..\..\Binary\Apps\ || exit /b
	copy /Y zmp.cfg ..\..\..\Binary\Apps\ || exit /b
	copy /Y zmp.fon ..\..\..\Binary\Apps\ || exit /b
	copy /Y *.hlp ..\..\..\Binary\Apps\ || exit /b
	copy /Y zmp.doc ..\..\..\Binary\Apps\ || exit /b
)
