1 PRINT "Keys:":PRINT "Left/Right=prev/next":PRINT "Up/Down=delay +/-":PRINT "r=toggle random mode": PRINT "Label format: index:delay:random": PAUSE 300
5 LET a=3+PEEK 23627+256*PEEK 23628: RANDOMIZE USR a
6 POKE 23624, 0: REM Don't flash border while loading.
7 LET max=100: LET i=1: LET p=200: LET r=0
15 PRINT AT 0,0;i;":";p/50;":";r
20 LOAD *"d";0;STR$(i) CODE
30 RANDOMIZE USR 25000
50 PAUSE p: LET k=CODE INKEY$
51 IF k<>CODE "r" THEN GO TO 54
52 IF r=1 THEN LET r=0: GO TO 54
53 IF r=0 THEN LET r=1
54 IF r=1 THEN LET i=INT(RND*max)+1: GO TO 100
55 IF k=0 THEN LET i=i+1
60 IF k=9 THEN LET i=i+1
70 IF k=8 THEN LET i=i-1
80 IF i<1 THEN LET i=max
90 IF i>max THEN LET i=1
100 IF k=11 THEN LET p=p+50
110 IF k=10 THEN LET p=p-50
120 IF p<50 THEN LET p=50
130 GO TO 15
