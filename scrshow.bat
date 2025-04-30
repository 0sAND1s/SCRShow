@echo off
cls

tools\hcdisk2 format scrshow.dsk -t 2 -y : exit

for %%s in (scr\*.scr) do (
tools\hcdisk2 screen order column %%s %%~ns.col : exit
tools\zx0 %%~ns.col %%~ns.exo
tools\hcdisk2 open scrshow.dsk : put %%~ns.exo -n %%~ns -t b -s 32768 : exit
)

if "%develop%"=="0" del *.exo && del *.col

tools\sjasmplus.exe scrshow.asm --raw=scrshow.bin

tools\hcdisk2 open scrshow.dsk : put scrshow.bin -n scrshow -t b -s 25000 : basimp scrshow.bas run : exit

