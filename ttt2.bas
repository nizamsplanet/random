10 REM Tic-Tac-Toe
20 DIM b$(3,3)
30 FOR i = 1 TO 3
40   FOR j = 1 TO 3
50     b$(i,j) = " "
60   NEXT j
70 NEXT i
80 PRINT "Tic-Tac-Toe"
90 PRINT
100 PRINT " 1 | 2 | 3 "
110 PRINT "-----------"
120 PRINT " 4 | 5 | 6 "
130 PRINT "-----------"
140 PRINT " 7 | 8 | 9 "
150 PRINT
160 FOR turn = 1 TO 9
170   x = (turn - 1) MOD 2 + 1
180   PRINT "Player "; x; ", enter a number: ";
190   INPUT n
200   i = INT((n - 1) / 3) + 1
210   j = (n - 1) MOD 3 + 1
220   IF b$(i,j) <> " " THEN PRINT "Spot already taken.": GOTO 160
230   b$(i,j) = MID$("XO", x, 1)
240   PRINT
250   PRINT " "; b$(1,1); " | "; b$(1,2); " | "; b$(1,3); " "
260   PRINT "-----------"
270   PRINT " "; b$(2,1); " | "; b$(2,2); " | "; b$(2,3); " "
280   PRINT "-----------"
290   PRINT " "; b$(3,1); " | "; b$(3,2); " | "; b$(3,3); " "
300   PRINT
310   FOR i = 1 TO 3
320     IF b$(i,1) = b$(i,2) AND b$(i,2) = b$(i,3) AND b$(i,1) <> " " THEN PRINT "Player "; x; " wins!": GOTO 410
330   NEXT i
340   FOR j = 1 TO 3
350     IF b$(1,j) = b$(2,j) AND b$(2,j) = b$(3,j) AND b$(1,j) <> " " THEN PRINT "Player "; x; " wins!": GOTO 410
360   NEXT j
370   IF b$(1,1) = b$(2,2) AND b$(2,2) = b$(3,3) AND b$(1,1) <> " " THEN PRINT "Player "; x; " wins!": GOTO 330
380   IF b$(1,3) = b$(2,2) AND b$(2,2) = b$(3,1) AND b$(1,3) <> " " THEN PRINT "Player "; x; " wins!": GOTO 330
390 NEXT turn
400 PRINT "It's a tie!"
410 END
