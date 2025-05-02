@setlocal enabledelayedexpansion
@echo off
cls

tools\sjasmplus.exe scrshow.asm --raw=scrshow.bin
tools\hcdisk2 format scrshow.dsk -t 2 -y : open scrshow.dsk : basimp scrshow.bas run 0 scrshow.bin : exit

set i=1
for %%s in (scr\*.scr) do (
tools\hcdisk2 screen order column %%s %%~ns.col : exit > nul
tools\zx0 %%~ns.col %%~ns.exo > nul
tools\hcdisk2 open scrshow.dsk : put %%~ns.exo -n !i! -t b -s 32768 : exit > nul
echo !i!.%%s
set /A i=!i!+1
)

del *.exo *.col *.bin

