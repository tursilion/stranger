1 REM  * STRANGER * 
2 RANDOMIZE
10 CALL CLEAR
20 PRINT "STRANGER...BY MIKE WARD"
30 PRINT
40 DIM INV$(6)
45 GOTO 500
50 FOR A=1 TO 6
60 IF X$=INV$(A)THEN 80
70 NEXT A
80 RETURN
81 FOR A=1 TO 6
82 IF INV$(A)="" THEN 84
83 NEXT A
84 RETURN
100 A=0
110 IF (POS(A$,"YELL",1)=0)*(POS(A$,"SCREAM",1)=0)THEN 120
111 PRINT "EEEEEEEEEEEEEEEEEEEEEEEEEK!"
112 A=1
120 IF (POS(A$,"SHIT",1)=0)*(POS(A$,"FUCK",1)=0)*(POS(A$,"ASS",1)=0)*(POS(A$,"CUNT",1)=0)THEN 130
121 PRINT "!! WATCH YOUR LANGUAGE !!"
122 A=1
130 IF POS(A$,"SWEAR",1)=0 THEN 140
131 PRINT "#%#%^$^%&! *&^%^*%!"
132 A=1
140 IF POS(A$,"CRY",1)=0 THEN 150
141 PRINT "WAAAAAAAAAAAAAAAAAAAAAAH!"
142 A=1
150 IF (POS(A$,"KILL SELF",1)=0)*(POS(A$,"KILL ME",1)=0)*(POS(A$,"DIE",1)=0)THEN 160
151 PRINT "YOU SEEM A BIT CONFUSED. THEOBJECT OF THE GAME IS TO    SURVIVE. IF YOU WANT TO QUITTHEN TYPE QUIT."
152 A=1
160 IF POS(A$,"QUIT",1)=0 THEN 170
161 INPUT "ARE YOU SURE? ":A$
162 A=1
163 IF SEG$(A$,1,1)<>"Y" THEN 170
164 PRINT "ALL RIGHT. GOODBYE."
165 END
170 IF POS(A$,"HELP",1)=0 THEN 180
171 ON INT(RND*4)+1 GOTO 172,174,176,178
172 PRINT "THAT WOULD BE NICE, WOULDN'TIT?"
173 GOTO 179
174 PRINT "I'M AS CONFUSED AS YOU ARE!"
175 GOTO 179
176 PRINT "I AM NOT ALLOWED TO HELP YOU"
177 GOTO 179
178 PRINT "WHY DON'T YOU ORDER THE HINTBOOKLET FROM MIKE?"
179 A=1
180 IF A$<>"" THEN 200
181 ON INT(RND*5)+1 GOTO 182,184,186,188,190
182 PRINT "TRY TYPING SOMETHING."
183 GOTO 191
184 PRINT "MORONS, I'M SURRONDED BY    MORONS."
185 GOTO 191
186 PRINT "I CAN'T HEAR YOU."
187 GOTO 191
188 PRINT "WHAT DID YOU SAY?"
189 GOTO 191
190 PRINT "WHAT'S WRONG? CAT GOT YOUR  FINGERS?"
191 A=1
200 IF POS(A$,"RELAX",1)=0 THEN 210
201 PRINT "A BRAVE, HERCULEAN EFFORT.  IT FAILS."
202 A=1
210 IF (POS(A$,"BITE",1)=0)*(POS(A$,"HIT",1)=0)*(POS(A$,"PUNCH",1)=0)*(POS(A$,"KICK",1)=0)*(POS(A$,"KILL",1)=0)THEN 220
211 PRINT "YOU SEEM TO BE LETTING      THINGS GET TO YOU. YOU      SHOULD TRY TO RELAX A BIT."
212 A=1
220 IF SEG$(A$,1,1)<>"I" THEN 230
221 A=1
222 PRINT "YOU HAVE:"
223 FOR B=1 TO 6
224 IF INV$(B)="" THEN 226
225 PRINT INV$(B)
226 NEXT B
230 IF POS(A$,"LAUGH",1)=0 THEN 240
231 PRINT "I ASSURE YOU, THIS IS NO    LUGHING MATTER."
232 A=1
233 RETURN
240 IF SEG$(A$,1,4)<>"EXAM" THEN 260
241 X$=SEG$(A$,POS(A$," ",1)+1,20)
242 GOSUB 50
243 IF A<>7 THEN 246
244 PRINT "YOU DON'T HAVE A ";X$
245 GOTO 260
246 IF X$<>"ROPE" THEN 249
247 PRINT "THE ROPE IS LONG AND SLIGHT-LY STICKY. IT SEEMS QUITE   STRONG"
248 GOTO 256
249 IF X$<>"TAPE" THEN 252
250 PRINT "IT IS AN ORDINARY CASSETTE  TAPE."
251 GOTO 256
252 IF X$<>"PLAYER" THEN 330
253 PRINT "IT IS AN ORDINARY CASSETTE  PLAYER"
254 GOTO 256
255 PRINT "IT IS A STANDARD SIZE       BUILDING KEY. IT SAYS: LAB"
256 A=1
257 RETURN
260 IF POS(A$,"WAIT",1)=0 THEN 270
261 PRINT "TIME PASSES..."
262 A=1
263 RETURN
270 IF POS(A$,"SING",1)=0 THEN 280
271 PRINT "LA LA LALA LALA!"
272 A=1
273 RETURN
280 IF POS(A$,"DANCE",1)=0 THEN 290
281 ON INT(RND*3)+1 GOTO 282,284,286
282 PRINT "YOU DO A QUICK RUSSIAN      COSSACK."
283 GOTO 287
284 PRINT "YOU DO A MAGNIFICENT WALTZ."
285 GOTO 287
286 PRINT "YOU DO AN AMAZING POLKA."
287 A=1
288 RETURN
290 IF POS(A$,"PANIC",1)=0 THEN 300
291 PRINT "PLEASE TRY TO MAINTAIN WHAT LITTLE SANITY YOU HAVE LEFT."
292 A=1
293 RETURN
300 IF (POS(A$,"PLAY",1)=0)+(POS(A$,"TAPE",1)=0)THEN 320
301 X$="TAPE"
302 GOSUB 50
303 IF A<>7 THEN 306
304 PRINT "YOU HAVE NO TAPE."
305 GOTO 318
306 X$="PLAYER"
307 GOSUB 50
308 IF A<>7 THEN 311
309 PRINT "YOU HAVE NO PLAYER!"
310 GOTO 318
311 PRINT "YOU HEAR A MESSAGE:"
312 PRINT "  TO WHOM IT MAY CONCERN"
313 PRINT "IF YOU HAVE FOUND THIS TAPE THEN I WILL ASSUME THAT YOU HAVE SURVIVED THE HOLOCAUST."
314 PRINT "THE DEVASTATION YOU SEE WAS CAUSED BY THE GREATEST WAR  EVER SEEN, A NUCLEAR WAR."
315 PRINT "WHEN I REALIZED WHAT WOULD  HAPPEN I PUT TWO HUNDRED    PEOPLE AROUND THE WORLD INTO"
316 PRINT "DEEP SLEEP CAPSULES. TO     RELEASE THEM AND REBUILD THEWORLD YOU WILL NEED THE KEY"
317 PRINT "TO THE LAB, WHERE YOU MUST  SET ThE coRreCT pAt...      AT THIS POINT THE TAPE FADESOUT."
318 A=1
319 RETURN
320 RETURN
330 REM  CONTINUE OF EXAMINE
340 REM  ID CARD
345 IF X$="KEY" THEN 255
350 PRINT "IT IS A UNIVERSITY ID CARD  FOR GRANTING ENTRY TO THE   COMPUTER ROOM. SCRIBBLED ON"
360 PRINT "THE BACK IS THE WORD        'MELTDOWN'"
370 A=1
380 RETURN
499 REM  THE STORY BEGINNNSS     
500 PRINT :"YOU AWAKEN FROM A LONG,     RESTLESS SLEEP FULL OF      STRANGE AND TERRIFYING"
510 PRINT "DREAMS OF HEAT AND LIGHT,   THEN TERRIBLE COLD, AND     GIANT SPIDERS."
511 ROPE=0
512 COUNT=0
513 KEY=0
514 OP=0
520 PRINT :"YOU ARE IN A DRAINAGE DITCH.THERE IS SNOW EVERYWHERE.   THERE ARE ALSO SEVERAL"
530 PRINT "STRANDS OF LONG, STICKY ROPEAROUND YOU. THERE IS A ROAD GOING TO THE NORTH AND A"
540 PRINT "DRAINAGE TUNNEL GOING DOWN."
550 PRINT "EVERY OTHER DIRECTION IS    BLOCKED BY HIGH CLIFFS."
555 PRINT "THE CLIFF TO THE SOUTH HAS  A TREE ON TOP."
556 IF ROPE=0 THEN 560
557 PRINT "THERE IS A ROPE TIED TO IT."
560 COUNT=COUNT+1
561 IF COUNT=4 THEN 1000
562 IF COUNT<>3 THEN 565
563 PRINT "YOU HEAR A RUSTLING NOISE   COMING TOWARDS YOU."
565 PRINT :"WHAT DO YOU WANT TO DO?"
570 INPUT A$
580 GOSUB 100
590 IF A THEN 560
600 IF POS(A$,"LOOK",1)<>0 THEN 520
610 IF (POS(A$,"TAKE",1)=0)*(POS(A$,"GET",1)=0)-(POS(A$,"ROPE",1)=0)THEN 620
611 X$="ROPE"
612 GOSUB 50
613 IF A=7 THEN 616
614 PRINT "YOU ALREADY HAVE A ROPE!"
615 GOTO 560
616 GOSUB 81
618 INV$(A)="ROPE"
619 GOTO 560
620 IF (POS(A$,"THROW",1)=0)*(POS(A$,"TIE",1)=0)-(POS(A$,"ROPE",1)=0)-(POS(A$,"TREE",1)=0)THEN 640
621 X$="ROPE"
622 GOSUB 50
623 IF A<>7 THEN 630
624 PRINT "YOU DON'T EVEN HAVE A ROPE!"
625 GOTO 560
630 PRINT "YOU THROW THE ROPE UP AND   IT SECURELY LOOPS AROUND THETREE."
632 ROPE=1
633 INV$(A)=""
635 GOTO 560
640 IF SEG$(A$,1,1)="N" THEN 2100
650 IF SEG$(A$,1,1)="D" THEN 1100
660 IF (SEG$(A$,1,1)="U")*(ROPE=1)+(POS(A$,"CLIMB",1)<>0)*(POS(A$,"ROPE",1)<>0)*(ROPE=1)THEN 3100
665 IF (SEG$(A$,1,1)="S")*(ROPE=1)THEN 3100
670 PRINT :"YOU CAN'T ";A$
680 GOTO 560
1000 PRINT "GIANT SPIDERS COME OUT FROM NOWHERE AND GRAB YOU! YOU   DON'T STAND A CHANCE! YOU   ARE DEAD."
1010 END
1020 PRINT "YOU RUN RIGHT INTO THE HUGE SPIDER. IT PICKS YOU UP AND CARRIES YOU HOME WHERE IT'S"
1030 PRINT "YOUNG FEED ON YOUR INNARDS  FOR MONTHS."
1035 END
1040 PRINT "THE CLEVER SPIDER WAS WAIT- ING NEXT TO THE EXIT FOR YOUTO LEAVE, WASN'T THAT JUST"
1042 PRINT "SO CLEVER? WE WON'T GO INTO DETAILS OF YOUR DEMISE."
1050 END
1100 PRINT "YOU ARE IN A SMALL DRAINAGE TUNNEL WHICH GOES UNDER THE ROAD. THE FAR END IS BLOCKED"
1110 PRINT "SO THE ONLY WAY OUT IS UP."
1115 IF COUNT=10 THEN 1190
1120 IF COUNT<>11 THEN 1124
1121 PRINT "YOU HEAR THE SPIDER, WHO WASWAITING BESIDE THE EXIT,    LEAVE."
1122 COUNT=COUNT+1
1124 IF COUNT>10 THEN 1150
1125 PRINT "A GIANT SPIDER IS BLOCKING  THE EXIT."
1130 INPUT "NOW WHAT? ":A$
1132 GOSUB 100
1134 IF A THEN 1140
1136 IF SEG$(A$,1,1)="U" THEN 1020
1137 IF POS(A$,"LOOK",1)<>0 THEN 1100
1138 PRINT "YOU CAN'T ";A$;" HERE."
1140 COUNT=COUNT+1
1141 IF COUNT<10 THEN 1130
1142 PRINT "THE SPIDER, APPARENTLY TIREDOF WAITING, LEAVES THE EXIT."
1143 GOTO 1115
1150 INPUT "NOW WHAT? ":A$
1160 GOSUB 100
1165 IF A THEN 1150
1170 IF SEG$(A$,1,1)="U" THEN 520
1172 IF POS(A$,"LOOK",1)THEN 1100
1174 PRINT "YOU CAN'T ";A$;" HERE."
1176 GOTO 1150
1190 INPUT "NOW WHAT? ":A$
1191 GOSUB 100
1192 COUNT=COUNT+1
1193 IF A THEN 1120
1194 IF POS(A$,"LOOK",1)THEN 1100
1195 IF SEG$(A$,1,1)="U" THEN 1040
1196 PRINT "YOU CAN'T ";A$;" HERE."
1197 GOTO 1120
2100 IF COUNT<10 THEN 1000
2101 PRINT
2110 PRINT "THIS IS A DEAD-END. THE ONLYOPTION IS SOUTH."
2120 IF KEY THEN 2140
2130 PRINT "THERE IS A SMALL KEY HERE."
2140 INPUT "WELL...? ":A$
2141 GOSUB 100
2145 IF A THEN 2140
2150 IF POS(A$,"LOOK",1)THEN 2110
2160 IF (POS(A$,"GET",1)=0)*(POS(A$,"TAKE",1)=0)-(POS(A$,"KEY",1)=0)-(KEY=1)THEN 2170
2161 GOSUB 81
2162 INV$(A)="KEY"
2163 KEY=1
2164 GOTO 2140
2170 IF SEG$(A$,1,1)="S" THEN 520
2180 PRINT "NO COMPRENDO, SENOR"
2190 GOTO 2140
3100 IF COUNT<10 THEN 1000
3105 PRINT
3110 PRINT "YOU ARE AT THE TOP OF A HIGHCLIFF NEAR A TREE. A STICKY ROPE IS SECURLY ATTACHED TO"
3120 PRINT "THE TREE, AND GOES DOWN.    THERE IS A LARGE BUILDING TOTHE SOUTH."
3130 PRINT "WHAT WOULD YOU LIKE TO DO?"
3140 INPUT A$
3150 GOSUB 100
3160 IF A THEN 3130
3170 IF POS(A$,"LOOK",1)<>0 THEN 3110
3180 IF (SEG$(A$,1,1)="N")+(SEG$(A$,1,1)="D")THEN 520
3190 IF SEG$(A$,1,1)="S" THEN 4100
3195 PRINT "YOU CAN NOT ";A$;" HERE."
3200 GOTO 3130
4100 IF OP THEN 4110
4101 IF KEY THEN 4104
4102 PRINT "THERE IS A LOCKED BUILDING  TO THE WEST OR A TREE TO THENORTH."
4103 GOTO 4120
4104 X$="KEY"
4105 GOSUB 50
4106 INV$(A)=""
4107 PRINT "YOUR KEY FLOATS OUT OF YOUR POCKET BY ITSELF, OPENS THE DOOR AND VANISHES!"
4108 KEY=0
4109 OP=1
4110 PRINT "YOU ARE STANDING NEAR THE   ENTRANCE TO A LARGE BUILDINGWHOSE DOOR IS OPEN. THERE IS"
4111 PRINT "A TREE TO THE NORTH OR YOU  CAN ENTER TO THE WEST."
4120 PRINT "WHAT NOW?"
4130 INPUT A$
4140 GOSUB 100
4150 IF A THEN 4130
4155 IF POS(A$,"LOOK",1)<>0 THEN 4100
4160 IF SEG$(A$,1,1)="N" THEN 3100
4170 IF (SEG$(A$,1,1)="W")*(OP=1)THEN 4200
4180 PRINT "HUH?"
4190 GOTO 4130
4200 PRINT "YOU ARE IN A HALLWAY. YOU   CAN GO WEST, NORTH (INTO A  ROOM), OR EAST (BACK        OUTSIDE)"
4210 INPUT ">>>":A$
4220 GOSUB 100
4230 IF A THEN 4210
4240 IF SEG$(A$,1,1)="N" THEN 4400
4250 IF SEG$(A$,1,1)="E" THEN 4100
4260 IF SEG$(A$,1,1)="W" THEN 4600
4270 PRINT "CAN'T ";A$
4280 GOTO 4210
4400 PRINT "YOU ARE IN A SMALL ROOM.    THERE IS AN EXIT TO THE     SOUTH."
4410 X$="TAPE"
4420 GOSUB 50
4430 IF A<7 THEN 4450
4440 PRINT "THERE IS A TAPE HERE."
4450 INPUT A$
4460 GOSUB 100
4470 IF A THEN 4450
4475 IF POS(A$,"LOOK",1)<>0 THEN 4400
4480 IF SEG$(A$,1,1)="S" THEN 4200
4485 GOSUB 50
4490 IF ((POS(A$,"TAKE",1)=0)*(POS(A$,"GET",1)=0))-(POS(A$,"TAPE",1)=0)THEN 4500
4491 IF A<7 THEN 4500
4492 GOSUB 81
4493 INV$(A)="TAPE"
4494 GOTO 4450
4500 PRINT "UNABLE TO ";A$
4510 GOTO 4450
4600 PRINT "YOU ARE IN AN EAST-WEST HALLAND THERE IS A ROOM TO THE  SOUTH."
4610 INPUT "]":A$
4620 GOSUB 100
4630 IF A THEN 4610
4640 IF SEG$(A$,1,1)="S" THEN 4800
4650 IF SEG$(A$,1,1)="E" THEN 4200
4660 IF SEG$(A$,1,1)="W" THEN 5000
4670 IF POS(A$,"LOOK",1)<>0 THEN 4600
4680 PRINT "NO CAN DO."
4690 GOTO 4610
4800 PRINT "YOU ARE IN A SMALL ROOM WITHAN EXIT TO THE NORTH."
4810 X$="PLAYER"
4820 GOSUB 50
4830 IF A<7 THEN 4850
4840 PRINT "THERE IS A TAPE PLAYER HERE."
4850 INPUT "}":A$
4860 GOSUB 100
4861 IF A THEN 4850
4865 IF POS(A$,"LOOK",1)<>0 THEN 4800
4880 IF SEG$(A$,1,1)="N" THEN 4600
4881 GOSUB 50
4890 IF ((POS(A$,"GET",1)=0)*(POS(A$,"TAKE",1)=0))-(POS(A$,"PLAYER",1)=0)THEN 4900
4891 IF A<7 THEN 4900
4892 GOSUB 81
4893 INV$(A)="PLAYER"
4894 GOTO 4850
4900 PRINT "I CAN'T ";A$;" HERE"
4910 GOTO 4850
5000 PRINT "YOU ARE STILL IN A EAST-WESTHALL. THERE IS A ROOM TO THENORTH."
5010 INPUT A$
5020 IF A THEN 5010
5030 IF POS(A$,"LOOK",1)<>0 THEN 5000
5040 IF SEG$(A$,1,1)="N" THEN 5200
5050 IF SEG$(A$,1,1)="E" THEN 4600
5060 IF SEG$(A$,1,1)="W" THEN 5400
5070 PRINT "I CAN NOT."
5080 GOTO 5010
5200 PRINT "YOU ARE IN AN EMPTY ROOM    WITH AN EXIT TO THE SOUTH."
5210 X$="ID"
5220 GOSUB 50
5230 IF A<7 THEN 5250
5240 PRINT "THERE IS AN ID CARD HERE."
5250 INPUT A$
5255 GOSUB 100
5260 IF A THEN 5250
5270 IF POS(A$,"LOOK",1)<>0 THEN 5200
5280 IF SEG$(A$,1,1)="S" THEN 5000
5285 GOSUB 50
5290 IF ((POS(A$,"GET",1)=0)*(POS(A$,"TAKE",1)=0))-(POS(A$,"ID",1)=0)THEN 5300
5291 IF A<7 THEN 5300
5292 GOSUB 81
5293 INV$(A)="ID"
5294 GOTO 5250
5300 PRINT "YOU MAY NOT ";A$;"HERE."
5310 GOTO 5250
5400 PRINT "THIS IS THE END OF A HALLWAYAND THERE IS A DOOR TO THE  EAST WITH A SLOT IN IT. THE"
5410 PRINT "WORDS 'ID TERMINAL' ARE OVERTHE SLOT. THERE IS A ROOM TOTHE SOUTH WITH WEIRD SOUNDS"
5420 PRINT "COMING FROM IT OR YOU CAN GOEAST."
5430 INPUT "...?":A$
5440 GOSUB 100
5450 IF A THEN 5430
5460 IF POS(A$,"LOOK",1)<>0 THEN 5400
5470 IF SEG$(A$,1,1)="E" THEN 5000
5480 IF SEG$(A$,1,1)="S" THEN 5600
5490 IF ((POS(A$,"PUT",1)=0)*(POS(A$,"PLACE",1)=0))-(POS(A$,"ID",1)=0)THEN 5500
5491 IF POS(A$,"SLOT",1)=0 THEN 5500
5492 X$="ID"
5493 GOSUB 50
5494 IF X<7 THEN 5497
5495 PRINT "YOU HAVE NO ID."
5496 GOTO 5430
5497 GOTO 5800
5500 PRINT "NO WAY TO ";A$;" HERE."
5510 GOTO 5430
5600 PRINT "YOU STUPIDLY WALK RIGHT INTOA GIANT SPIDER'S NEST. YOU  ARE ATTACKED BY HUNDREDS OF"
5610 PRINT "BABY GIANT SPIDERS. (ALL    RIGHT, IT WASN'T YOUR FAULT.JUST REMEMBER NEXT TIME.)"
5620 END
5800 PRINT "THE CARD GETS SUCKED INTO   THE SLOT. AFTER A BRIEF     PAUSE, THE DOOR OPENS."
5810 PRINT "YOU WALK IN, AND THE CARD   COMES OUT OF ANOTHER SLOT.  YOU TAKE THE CARD."
5820 PRINT "YOU ARE IN A LARGE ROOM WITHA COMPUTER. THERE IS        NOTHING ELSE. THE SCREEN    SAYS 'ENTER DEFROST CODE:'"
5825 PRINT "THERE IS AN OPEN DOOR TO THEEAST."
5830 INPUT "-":A$
5832 GOSUB 100
5834 IF A THEN 5830
5840 IF POS(A$,"LOOK",1)<>0 THEN 5820
5850 IF SEG$(A$,1,1)<>"E" THEN 5860
5851 PRINT "YOU WALK OUT, AND THE DOOR  CLOSES BEHIND YOU."
5852 GOTO 5400
5860 IF POS(A$,"TYPE",1)=0 THEN 5900
5865 IF POS(A$,"MELTDOWN",1)=0 THEN 5890
5870 GOTO 6000
5890 PRINT "THE COMPUTER SAYS 'PASSCODE INVALID.'"
5895 GOTO 5830
5900 PRINT "YOU CAN'T DO THAT HERE."
5910 GOTO 5830
6000 PRINT ::"THE COMPUTER SAYS:          'PASSCODE ACCEPTED.'"
6010 PRINT "'DEFROSTING HAS BEGUN'"
6020 PRINT :"CONGRADULATIONS! YOU SAVED  THE WORLD!"
6030 END
