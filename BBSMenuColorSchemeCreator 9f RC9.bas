DIM x AS INTEGER ' x is used in my program as a variable for the background color
DIM y AS INTEGER ' y is used as a variable for the foreground color
DIM i AS INTEGER ' i is used as a variable for the length of the line of display
DIM b AS STRING * 1
' above variables are used for the reading and writing of each character of info
' in each line of the ascii screens that are read into an array.

DIM lnumber AS STRING ' used as a variable for the line number of the ascii screen
DIM file AS STRING ' used as a variable for the filename entered in the program
DIM answer AS STRING ' used as a variable for the answer to a question
DIM asciidisp AS STRING ' ascii display variable used as the ascii display path
DIM ansidisp AS STRING ' ansi display variable used as the ansi path and filename
DIM wc8disp AS STRING 'Winserver 8 variable used as the wc8 BBS display path
DIM pcbdisp AS STRING 'Pc Board display variable used as the pcb display path
DIM asciipromptmenu AS STRING
DIM syndisp AS STRING 'Syncronet display variabe used as the Syncronet display path
DIM asciimenu AS STRING 'ascii menu variable used as the ascii menu path for input
DIM ansimenu AS STRING 'ansi menu variable used as the ansi path for output
DIM wc8menu AS STRING 'Winserver 8 variable used as the wc8 menu bbs path for output
DIM pcbmenu AS STRING 'PC Board variable used as the PcB BBS menu display for output
DIM synmenu AS STRING 'Syncronet variable used as the Syncronet Menu Display for output
DIM mysmenu AS STRING 'Mystic variable
DIM mysdisp AS STRING 'Mystic variable

'above variables are all string variables that are used for storing different information that in the
'Wildcat, Winserver, Ascii, and Ansi screens that are either read in , or written out to different filenames
'in my program. The *120, or *16 etc are just string lenghths.

DIM file1 AS STRING ' file1 is the ascii input file for the displays or menus that either other people or I create
DIM file2 AS STRING ' file2 is the ansi file created by he program from the ascii file above
DIM file3 AS STRING ' file3 is the Wildcator WInserver .BBS file that is created when the user selects wc8
DIM file4 AS STRING ' file4 is the PCBoard .BBS file created when the user selects pcb as a display
DIM file5 AS STRING ' file5 is reserved for Synchronet BBS when the user selects syncronet as a display
DIM file6 AS STRING ' file6 is reserved for Mystic BBS in the user selects mystic as a display
DIM file7 AS STRING ' file7 is reserved for the prompt files that follow any menu in any BBS

'ALL of the above are actual filenames without the drive letter and path for my program.


DIM horizontalines AS STRING
DIM verticalines AS STRING
DIM foregroundcoloransi AS STRING
DIM backgroundcoloransi AS STRING
DIM foregroundcolorbbs AS STRING
DIM backgroundcolorbbs AS STRING
DIM foregroundcolorpcb AS STRING
DIM backgroundcolorpcb AS STRING
DIM foregroundcolorsyncro AS STRING
DIM backgroundcolorsyncro AS STRING
DIM foregroundcolormystic AS STRING
DIM backgroundcolormystic AS STRING

DIM code0b AS STRING ' Code Setup for Black   Background
DIM code0f AS STRING ' Code Setup for Black   Foreground
DIM code1b AS STRING ' Code Setup for Blue    Background
DIM code1f AS STRING ' Code Setup for Blue    Foreground
DIM code2b AS STRING ' Code Setup for Green   Background
DIM code2f AS STRING ' Code Setup for Green   Foreground
DIM code3b AS STRING ' Code Setup for Cyan    Background
DIM code3f AS STRING ' Code Setup for Cyan    Foreground
DIM code4b AS STRING ' Code Setup for Red     Background
DIM code4f AS STRING ' Code Setup for Red     Foreground
DIM code5b AS STRING ' Code Setup for Magenta Background
DIM code5f AS STRING ' Code Setup for Magenta Foreground
DIM code6b AS STRING ' Code Setup for Brown   Background
DIM code6f AS STRING ' Code Setup for Yellow  Foreground
DIM code7b AS STRING ' Code Setup for White   Background
DIM code7f AS STRING ' Code Setup for White   Foreground
DIM corner1 AS STRING
DIM corner2 AS STRING
DIM corner3 AS STRING
DIM corner4 AS STRING
DIM connector1 AS STRING
DIM connector2 AS STRING
DIM connector3 AS STRING
DIM connector4 AS STRING
DIM lineconnector AS STRING
DIM menuchoice AS STRING
DIM flag AS STRING
DIM verticalline AS STRING
DIM display AS STRING
_FULLSCREEN
CLS
SCREEN 12
COLOR 12, 14
LOCATE 11, 24
PRINT "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
LOCATE 12, 24
PRINT "%                 BBS Screen Creator Written By Russ Campbell                  %"
LOCATE 13, 24
PRINT "%                                                                              %"
LOCATE 14, 24
PRINT "%                  Final Version 9.04f Release Candidate RC9                   %"
LOCATE 15, 24
PRINT "%                                                                              %"
LOCATE 16, 24
PRINT "%                    Press any key to continue.............                    %"
LOCATE 17, 24
PRINT "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
DO WHILE INKEY$ = ""
LOOP

_FULLSCREEN
COLOR 7, 0
setup:
CLS
PRINT
PRINT "BBS Menu Color Scheme Creator 9.04f Final Version RC9"
PRINT "Written by Russ Campbell Updated September 11 2020"
PRINT
PRINT "First of all design your menus in straight text no colors, etc"
PRINT "Do not put any background colors in either as the program will"
PRINT "Do that for you automatically. Use the following convention"
PRINT "that is laid out in the next display."
PRINT
PRINT "This program will then take your plain text menu and turn it into"
PRINT "a random colored display, methods will be taken to ensure that"
PRINT "the backgound and text colors do not print the same colors"
PRINT
PRINT "Take a look and see what you think, it will of course write"
PRINT "out your menus in .BBS and .ANS formats, kind of a neat feature."
PRINT
PRINT "Don't like what you get? Then run the program again and again"
PRINT "until you get what you like as a menu screen."
PRINT
PRINT "This is a complicated program, you don't have to use boxes"
PRINT "but for now that is the only shape that my program will"
PRINT "accept. I will print an example of a menu on the screen so"
PRINT "that you know exactly how to use my program with a text drawing."
PRINT ""
PRINT "Press any key to continue..."
DO WHILE INKEY$ = ""
LOOP
_FULLSCREEN
CLS
PRINT
PRINT " ^-------------------------------------------------+"
PRINT " !               Main Message Menu                 !"
PRINT " *-------------------&-----------------------------="
PRINT " !       $           !                             !"
PRINT " *-------------------#-----------------------------="
PRINT " ! [C] Check Your Mail   [S] Scan Messages         !"
PRINT " ! [E] Enter New Message [J] Join Conference       !"
PRINT " ! [F] FILE MENU         [U] Update Settings       !"
PRINT " ! [G] Goodbye           [H] Help Level            !"
PRINT " ! [Q] Quit to Main Menu [?] Command Help          !"
PRINT " ! [R] Read Messages                               !"
PRINT " ~-------------------------------------------------%"
PRINT
PRINT "Pay special attention to the symbols on each corner"
PRINT "They are all different, one for each corner, to work"
PRINT "properly with my program , they must be right. The "
PRINT "rest of the characters also must be right except for"
PRINT "whats in the menu. You can see the other characters"
PRINT "that I use lines and connectors, the program turns"
PRINT "into nice corners and borders, for double corners "
PRINT "and borders, well , you can figure that one out."
PRINT
PRINT "Press any key to continue..."
DO WHILE INKEY$ = ""
LOOP
CLS
PRINT
inputscreen:
CLEAR
CLS
PRINT "Demo files that are available are: "
PRINT
PRINT "In the Menu selector"
PRINT
PRINT "inet5 inet9 msg1 msg5 msg6 msg9  main1 main5 main6 main9 file1 file5 file6 file9 sysop8 sysop9" 'display demo files that are available
PRINT
PRINT "In the Disp selector"
PRINT
PRINT "prelog goodbye"
PRINT
PRINT "More are coming soon. Custom files are up to you to upload and then use"
PRINT
INPUT "Text Filename : [Do not put in the extender.] [Enter defaults to main5] : ", file ' ask user for filename
IF file = "a" OR file = "A" THEN GOTO inputscreen
IF file = "b" OR file = "B" THEN GOTO inputscreen
IF file = "c" OR file = "C" THEN GOTO inputscreen
IF file = "d" OR file = "D" THEN GOTO inputscreen
IF file = "e" OR file = "E" THEN GOTO inputscreen
displays:
CLS
PRINT "Output display [A] Ansi [B] Wildcat BBS  [C] PCboard BBS "
INPUT "Output Display [D] Syncronet BBS  [E] Mystic BBS : ", answer ' ask which BBS display the user wants
answer = UCASE$(answer)
IF answer = "A" THEN display = "ansi": GOTO menu
IF answer = "B" THEN display = "wc8": GOTO menu ' select display coding by what the user types in
IF answer = "C" THEN display = "pcb": GOTO menu
IF answer = "D" THEN display = "syn": GOTO menu
IF answer = "E" THEN display = "mys": GOTO menu
GOTO displays
startit:

selector:
IF pick = 1 THEN
    horizontalines = "double": verticalines$ = "double"
    corner1 = CHR$(201)
    corner2 = CHR$(187) ' corner character for new corners of new box output
    corner3 = CHR$(188)
    corner4 = CHR$(200)
    connector1 = CHR$(203)
    connector2 = CHR$(185) 'various connectors for lines in boxes
    connector3 = CHR$(202)

    connector4 = CHR$(204)
    lineconnector = CHR$(205) ' Horizontal line character for new box output
    verticalline = CHR$(186)
END IF
IF pick = 2 THEN
    horizontalines = "double": verticalines = "single"
    corner1 = CHR$(213)
    corner2 = CHR$(184) ' corner character for new corners of new box output
    corner3 = CHR$(190)
    corner4 = CHR$(212)
    connector1 = CHR$(209)
    connector2 = CHR$(181) 'various connectors for lines in boxes
    connector3 = CHR$(207)
    connector4 = CHR$(198)
    lineconnector = CHR$(205) ' Horizontal line character for new box output
    verticalline = CHR$(179)
END IF
IF pick = 3 THEN
    horizontalines = "single": verticalines = "double"
    corner1 = CHR$(214)
    corner2 = CHR$(183) ' corner character for new corners of new box output
    corner3 = CHR$(189)
    corner4 = CHR$(211)
    connector1 = CHR$(210)
    connector2 = CHR$(182) 'various connectors for lines in boxes
    connector3 = CHR$(208)
    connector4 = CHR$(199)
    lineconnector = CHR$(196) ' Horizontal line character for new box output
    verticalline = CHR$(186)

END IF
IF pick = 4 THEN
    horizontalines = "single": verticalines = "single"
    corner1 = CHR$(218)
    corner2 = CHR$(191) ' corner character for new corners of new box output
    corner3 = CHR$(217)
    corner4 = CHR$(192)
    connector1 = CHR$(194)
    connector2 = CHR$(180) 'various connectors for lines in boxes
    connector3 = CHR$(193)
    connector4 = CHR$(195)
    lineconnector = CHR$(196) ' Horizontal line character for new box output
    verticalline = CHR$(179)
END IF
RETURN




'----------------------------------------------------------------------------------------------------------------------------





menu:
INPUT "[M]enu file or [D]isplay file : ", answer
answer = UCASE$(answer) ' ask the user what type of display they want, display file
menuchoice = answer ' or menu file , gives two choices
IF menuchoice = "M" OR menuchoice = "D" OR menuchoice = "" THEN GOTO fileit
GOTO menu
fileit:
IF file = "" AND menuchoice = "D" THEN ' default file for display files
    file = "goodbye"
END IF
IF file = "" AND menuchoice = "M" THEN ' default file for menu files
    file = "main5"
END IF



'-------------------------------------------------------------------------------------------------------------
' Start of actual program , continues until ended
'Start of menu selection decisions by the program
file1 = file + ".txt"
file2 = file + ".ans" ' adds file extension to each type of file
file3 = file + ".bbs"
file4 = file + ".bbs"
file5 = file + ".txt"
file6 = file + ".txt"
file7 = file + "a.txt"
asciidisp = "c:\display\bbsdispascii\" + file1

ansidisp = "c:\display\bbsdispansi\" + file2
wc8disp = "c:\display\bbsdispwildcat\" + file3
pcbdisp = "c:\display\bbsdisppcb\" + file4 ' all path, drive and filename variables
syndisp = "c:\display\bbsdispsyncro\" + file5
mysdisp = "c:\display\bbsdispmystic\" + file6
asciimenu = "c:\display\bbsmenuascii\" + file1
ansimenu = "c:\display\bbsmenuansi\" + file2 ' for various screen ouputs
wc8menu = "c:\display\bbsmenuWildcat\" + file3
pcbmenu = "c:\display\bbsmenupcb\" + file4
synmenu = "c:\display\bbsmenusyncro\" + file5
mysmenu = "C:\display\bbsmenumystic\" + file6
asciipromptmenu = "c:\display\bbsmenuascii\" + file7
IF menuchoice = "D" THEN
    contlne = 0
    GOSUB pick
    GOSUB selector
    OPEN asciidisp FOR INPUT AS #1

    IF display = "ansi" THEN
        OPEN ansidisp FOR OUTPUT AS #2
    END IF

    IF display = "wc8" THEN
        OPEN wc8disp FOR OUTPUT AS #2
    END IF

    IF display = "pcb" THEN
        OPEN pcbdisp FOR OUTPUT AS #2
    END IF
    IF display = "syn" THEN
        OPEN syndisp FOR OUTPUT AS #2
    END IF
    IF display = "mys" THEN
        OPEN mysdisp FOR OUTPUT AS #2
    END IF

END IF

IF menuchoice = "M" THEN

    contlne = 0
    GOSUB pick
    GOSUB selector
    OPEN asciimenu FOR INPUT AS #1
    OPEN asciipromptmenu FOR INPUT AS #3

    IF display = "ansi" THEN
        OPEN ansimenu FOR OUTPUT AS #2
    END IF

    IF display = "wc8" THEN
        OPEN wc8menu FOR OUTPUT AS #2
    END IF

    IF display = "pcb" THEN
        OPEN pcbmenu FOR OUTPUT AS #2
    END IF
    IF display = "syn" THEN
        OPEN synmenu FOR OUTPUT AS #2
    END IF
    IF display = "mys" THEN
        OPEN mysmenu FOR OUTPUT AS #2
    END IF
END IF ' end of menu selection decisions by the program.
IF display = "ansi" THEN
    ' Clear screen
    CLS
    ' Set background to black
    COLOR 0, 0
END IF
IF display = "wc8" THEN
    ' clear screen
    CLS
    PRINT #2, "@CLS@"
    ' set background to black
    COLOR 0, 0
END IF
IF display = "pcb" THEN
    ' clear screen
    CLS
    ' set background to black
    COLOR 0, 0
END IF
IF display = "syn" THEN
    ' clear screen
    CLS
    ' set background to black
    COLOR 0, 0
END IF
IF display = "mys" THEN
    ' clear screen
    CLS
    ' set background to black
    COLOR 0, 0
END IF
IF display = "ansi" OR display = "syn" THEN GOSUB setcolors4
IF display = "wc8" OR display = "pcb" OR display = "mys" THEN GOSUB setcolors
DO UNTIL EOF(1)
    LINE INPUT #1, lnumber
    FOR i = 1 TO LEN(lnumber)

        b = MID$(lnumber, i, 1) ' Calculates the ascii value of every character in the line
        c$ = b
        GOSUB specialcharacters3
        GOSUB specialcharacters2
        IF display = "ansi" THEN
            GOSUB displ
            IF flag$ = "Y1" THEN
                GOSUB colorchange2
                PRINT #2, backgroundcoloransi + foregroundcoloransi + c$;
            ELSEIF flag$ = "Y2" THEN
                GOSUB colorchange2
                PRINT #2, backgroundcoloransi + foregroundcoloransi + c$;
            ELSEIF flag$ = "Y3" THEN
                GOSUB colorchange2
                PRINT #2, backgroundcoloransi + foregroundcoloransi + c$;

            ELSE
                PRINT #2, c$;

            END IF
            PRINT c$;
        END IF

        IF display = "wc8" THEN
            GOSUB displ
            IF flag$ = "Y1" THEN
                GOSUB colorchange
                PRINT #2, backgroundcolorbbs + foregroundcolorbbs + c$;
            ELSEIF flag$ = "Y2" THEN
                GOSUB colorchange
                PRINT #2, backgroundcolorbbs + foregroundcolorbbs + c$;
            ELSEIF flag$ = "Y3" THEN
                GOSUB colorchange
                PRINT #2, backgroundcolorbbs + foregroundcolorbbs + c$;
            ELSE
                PRINT #2, c$;
            END IF
            PRINT c$;
        END IF
        IF display = "pcb" THEN
            GOSUB displ
            IF flag$ = "Y1" THEN
                GOSUB colorchange
                PRINT #2, backgroundcolorpcb + foregroundcolorpcb + c$;
            ELSEIF flag$ = "Y2" THEN
                GOSUB colorchange
                PRINT #2, backgroundcolorpcb + foregroundcolorpcb + c$;
            ELSEIF flag$ = "Y3" THEN
                GOSUB colorchange
                PRINT #2, backgroundcolorpcb + foregroundcolorpcb + c$;
            ELSE
                PRINT #2, c$;
            END IF
            PRINT c$;
        END IF

        IF display = "syn" THEN
            GOSUB displ
            IF flag$ = "Y1" THEN
                GOSUB colorchange2
                PRINT #2, backgroundcolorsyncro + foregroundcolorsyncro + c$;
            ELSEIF flag$ = "Y2" THEN
                GOSUB colorchange2
                PRINT #2, backgroundcolorsyncro + foregroundcolorsyncro + c$;
            ELSEIF flag$ = "Y3" THEN
                GOSUB colorchange2
                PRINT #2, backgroundcolorsyncro + foregroundcolorsyncro + c$;
            ELSE
                PRINT #2, c$;
            END IF
            PRINT c$;
        END IF
        IF display = "mys" THEN
            GOSUB displ
            IF flag$ = "Y1" THEN
                GOSUB colorchange
                PRINT #2, backgroundcolormystic + foregroundcolormystic + c$;
            ELSEIF flag$ = "Y2" THEN
                GOSUB colorchange
                PRINT #2, backgroundcolormystic + foregroundcolormystic + c$;
            ELSEIF flag$ = "Y3" THEN
                GOSUB colorchange
                c = x
                d = y
                PRINT #2, backgroundcolormystic + foregroundcolormystic + c$;
            ELSE
                PRINT #2, c$;
            END IF
            PRINT c$;
        END IF

    NEXT i
    PRINT #2, ""
    PRINT
    IF display = "syn" OR display = "ansi" THEN GOSUB setcolors3
    IF display = "wc8" AND display = "pcb" OR display = "mys" THEN GOSUB setcolors3
LOOP

fini:
closeit:
CLOSE #1

COLOR 7, 0
IF menuchoice = "M" THEN
    DO UNTIL EOF(3)
        LINE INPUT #3, lnumber
        PRINT #2, lnumber
        PRINT lnumber
    LOOP
ELSE
END IF

CLOSE #2
CLOSE #3
COLOR 7, 0
INPUT "Create another screen ? : ", answer
answer = UCASE$(answer)
IF answer = "Y" THEN
    contlne = 0
    CLEAR
    GOTO inputscreen
ELSE
END IF
GOTO finish
finish:
CLS
PRINT "Program written by Russ Campbell"
PRINT "For more information on how I"
PRINT "wrote this program, contact me"
PRINT "on Facebook at many of the groups"
PRINT "I am in , or email me at"
PRINT "rcamp48@rogers.com"
PRINT
PRINT "Thank you for using BBS Menu Color Scheme Creator 9.04a RC9."
PRINT
END
pick:
RANDOMIZE TIMER
pick = INT(RND(1) * 4) + 1
RETURN
displ:
IF display = "ANSI" THEN
    IF x = 0 THEN code0b = CHR$(27) + CHR$(91) + CHR$(52) + CHR$(48) + CHR$(109) ' Black     Background
    IF y = 0 THEN code0f = CHR$(27) + CHR$(91) + CHR$(51) + CHR$(48) + CHR$(109) ' Black     Foreground
    IF x = 1 THEN code1b = CHR$(27) + CHR$(91) + CHR$(52) + CHR$(52) + CHR$(109) ' Blue      Background
    IF y = 1 THEN code1f = CHR$(27) + CHR$(91) + CHR$(51) + CHR$(52) + CHR$(109) ' Blue      Foreground
    IF x = 2 THEN code2b = CHR$(27) + CHR$(91) + CHR$(52) + CHR$(50) + CHR$(109) ' Green     Background
    IF y = 2 THEN code2f = CHR$(27) + CHR$(91) + CHR$(51) + CHR$(50) + CHR$(109) ' Green     Foreground
    IF x = 3 THEN code3b = CHR$(27) + CHR$(91) + CHR$(52) + CHR$(54) + CHR$(109) ' Cyan      Background
    IF y = 3 THEN code3f = CHR$(27) + CHR$(91) + CHR$(51) + CHR$(54) + CHR$(109) ' Cyan      Foreground
    IF x = 4 THEN code4b = CHR$(27) + CHR$(91) + CHR$(52) + CHR$(49) + CHR$(109) ' Red       Background
    IF y = 4 THEN code4f = CHR$(27) + CHR$(91) + CHR$(51) + CHR$(49) + CHR$(109) ' Red       Foreground
    IF x = 5 THEN code5b = CHR$(27) + CHR$(91) + CHR$(52) + CHR$(53) + CHR$(109) ' Magenta   Background
    IF y = 5 THEN code5f = CHR$(27) + CHR$(91) + CHR$(51) + CHR$(53) + CHR$(109) ' Magenta   Foreground
    IF x = 6 THEN code6b = CHR$(27) + CHR$(91) + CHR$(52) + CHR$(51) + CHR$(109) ' Brown     Background
    IF y = 6 THEN code6f = CHR$(27) + CHR$(91) + CHR$(51) + CHR$(51) + CHR$(109) ' Brown     Foreground
    IF x = 7 THEN code7b = CHR$(27) + CHR$(91) + CHR$(52) + CHR$(55) + CHR$(109) ' White     Background
    IF y = 7 THEN code7f = CHR$(27) + CHR$(91) + CHR$(51) + CHR$(55) + CHR$(109) ' White     Foreground
    IF x = 0 THEN backgroundcoloransi = code0b
    IF x = 1 THEN backgroundcoloransi = code1b
    IF x = 2 THEN backgroundcoloransi = code2b
    IF x = 3 THEN backgroundcoloransi = code3b
    IF x = 4 THEN backgroundcoloransi = code4b
    IF x = 5 THEN backgroundcoloransi = code5b
    IF x = 6 THEN backgroundcoloransi = code6b
    IF x = 7 THEN backgroundcoloransi = code7b
    IF y = 0 THEN foregroundcoloransi = code0f
    IF y = 1 THEN foregroundcoloransi = code1f
    IF y = 2 THEN foregroundcoloransi = code2f
    IF y = 3 THEN foregroundcoloransi = code3f
    IF y = 4 THEN foregroundcoloransi = code4f
    IF y = 5 THEN foregroundcoloransi = code5f
    IF y = 6 THEN foregroundcoloransi = code6f
    IF y = 7 THEN foregroundcoloransi = code7f
END IF
IF display = "wc8" THEN
    IF x = 0 THEN backgroundcolorbbs = "@0"
    IF x = 1 THEN backgroundcolorbbs = "@1"
    IF x = 2 THEN backgroundcolorbbs = "@2"
    IF x = 3 THEN backgroundcolorbbs = "@3"
    IF x = 4 THEN backgroundcolorbbs = "@4"
    IF x = 5 THEN backgroundcolorbbs = "@5"
    IF x = 6 THEN backgroundcolorbbs = "@6"
    IF x = 7 THEN backgroundcolorbbs = "@7"
    IF x = 8 THEN backgroundcolorbbs = "@8"
    IF x = 9 THEN backgroundcolorbbs = "@9"
    IF x = 10 THEN backgroundcolorbbs = "@A"
    IF x = 11 THEN backgroundcolorbbs = "@B"
    IF x = 12 THEN backgroundcolorbbs = "@C"
    IF x = 13 THEN backgroundcolorbbs = "@D"
    IF x = 14 THEN backgroundcolorbbs = "@E"
    IF x = 15 THEN backgroundcolorbbs = "@F"
    IF y = 0 THEN foregroundcolorbbs = "0@"
    IF y = 1 THEN foregroundcolorbbs = "1@"
    IF y = 2 THEN foregroundcolorbbs = "2@"
    IF y = 3 THEN foregroundcolorbbs = "3@"
    IF y = 4 THEN foregroundcolorbbs = "4@"
    IF y = 5 THEN foregroundcolorbbs = "5@"
    IF y = 6 THEN foregroundcolorbbs = "6@"
    IF y = 7 THEN foregroundcolorbbs = "7@"
    IF y = 8 THEN foregroundcolorbbs = "8@"
    IF y = 9 THEN foregroundcolorbbs = "9@"
    IF y = 10 THEN foregroundcolorbbs = "A@"
    IF y = 11 THEN foregroundcolorbbs = "B@"
    IF y = 12 THEN foregroundcolorbbs = "C@"
    IF y = 13 THEN foregroundcolorbbs = "D@"
    IF y = 14 THEN foregroundcolorbbs = "E@"
    IF y = 15 THEN foregroundcolorbbs = "F@"
END IF
IF display = "pcb" THEN
    IF x = 0 THEN backgroundcolorpcb$ = "@X0"
    IF x = 1 THEN backgroundcolorpcb$ = "@X1"
    IF x = 2 THEN backgroundcolorpcb$ = "@X2"
    IF x = 3 THEN backgroundcolorpcb$ = "@X3"
    IF x = 4 THEN backgroundcolorpcb$ = "@X4"
    IF x = 5 THEN backgroundcolorpcb$ = "@X5"
    IF x = 6 THEN backgroundcolorpcb$ = "@X6"
    IF x = 7 THEN backgroundcolorpcb$ = "@X7"
    IF x = 0 THEN backgroundcolorpcb$ = "@X8"
    IF x = 1 THEN backgroundcolorpcb$ = "@X9"
    IF x = 2 THEN backgroundcolorpcb$ = "@XA"
    IF x = 3 THEN backgroundcolorpcb$ = "@XB"
    IF x = 4 THEN backgroundcolorpcb$ = "@XC"
    IF x = 5 THEN backgroundcolorpcb$ = "@XD"
    IF x = 6 THEN backgroundcolorpcb$ = "@XE"
    IF x = 7 THEN backgroundcolorpcb$ = "@XF"
    IF y = 0 THEN foregroundcolorpcb$ = "0@"
    IF y = 1 THEN foregroundcolorpcb$ = "1@"
    IF y = 2 THEN foregroundcolorpcb$ = "2@"
    IF y = 3 THEN foregroundcolorpcb$ = "3@"
    IF y = 4 THEN foregroundcolorpcb$ = "4@"
    IF y = 5 THEN foregroundcolorpcb$ = "5@"
    IF y = 6 THEN foregroundcolorpcb$ = "6@"
    IF y = 7 THEN foregroundcolorpcb$ = "7@"
    IF y = 0 THEN foregroundcolorpcb$ = "8@"
    IF y = 1 THEN foregroundcolorpcb$ = "9@"
    IF y = 2 THEN foregroundcolorpcb$ = "A@"
    IF y = 3 THEN foregroundcolorpcb$ = "B@"
    IF y = 4 THEN foregroundcolorpcb$ = "C@"
    IF y = 5 THEN foregroundcolorpcb$ = "D@"
    IF y = 6 THEN foregroundcolorpcb$ = "E@"
    IF y = 7 THEN foregroundcolorpcb$ = "F@"

END IF
IF display = "syn" THEN
    IF x = 0 THEN backgroundcolorsyncro$ = CHR$(1) + "0"
    IF x = 1 THEN backgroundcolorsyncro$ = CHR$(1) + "1"
    IF x = 2 THEN backgroundcolorsyncro$ = CHR$(1) + "2"
    IF x = 3 THEN backgroundcolorsyncro$ = CHR$(1) + "3"
    IF x = 4 THEN backgroundcolorsyncro$ = CHR$(1) + "4"
    IF x = 5 THEN backgroundcolorsyncro$ = CHR$(1) + "5"
    IF x = 6 THEN backgroundcolorsyncro$ = CHR$(1) + "6"
    IF x = 7 THEN backgroundcolorsyncro$ = CHR$(1) + "7"
    IF y = 0 THEN foregroundcolorsyncro$ = "k"
    IF y = 1 THEN foregroundcolorsyncro$ = "b"
    IF y = 2 THEN foregroundcolorsyncro$ = "g"
    IF y = 3 THEN foregroundcolorsyncro$ = "c"
    IF y = 4 THEN foregroundcolorsyncro$ = "r"
    IF y = 5 THEN foregroundcolorsyncro$ = "m"
    IF y = 6 THEN foregroundcolorsyncro$ = "y"
    IF y = 7 THEN foregroundcolorsyncro$ = "w"


END IF
IF display = "mys" THEN
    IF x = 0 THEN backgroundcolormystic$ = CHR$(254) + "16"
    IF x = 1 THEN backgroundcolormystic$ = CHR$(254) + "17"
    IF x = 2 THEN backgroundcolormystic$ = CHR$(254) + "18"
    IF x = 3 THEN backgroundcolormystic$ = CHR$(254) + "19"
    IF x = 4 THEN backgroundcolormystic$ = CHR$(254) + "20"
    IF x = 5 THEN backgroundcolormystic$ = CHR$(254) + "21"
    IF x = 6 THEN backgroundcolormystic$ = CHR$(254) + "22"
    IF x = 7 THEN backgroundcolormystic$ = CHR$(254) + "23"
    IF x = 8 THEN backgroundcolormystic$ = CHR$(254) + "24"
    IF x = 9 THEN backgroundcolormystic$ = CHR$(254) + "25"
    IF x = 10 THEN backgroundcolormystic$ = CHR$(254) + "26"
    IF x = 11 THEN backgroundcolormystic$ = CHR$(254) + "27"
    IF x = 12 THEN backgroundcolormystic$ = CHR$(254) + "28"
    IF x = 13 THEN backgroundcolormystic$ = CHR$(254) + "29"
    IF x = 14 THEN backgroundcolormystic$ = CHR$(254) + "30"
    IF x = 15 THEN backgroundcolormystic$ = CHR$(254) + "31"
    IF y = 0 THEN foregroundcolormystic$ = CHR$(254) + "00"
    IF y = 1 THEN foregroundcolormystic$ = CHR$(254) + "01"
    IF y = 2 THEN foregroundcolormystic$ = CHR$(254) + "02"
    IF y = 3 THEN foregroundcolormystic$ = CHR$(254) + "03"
    IF y = 4 THEN foregroundcolormystic$ = CHR$(254) + "04"
    IF y = 5 THEN foregroundcolormystic$ = CHR$(254) + "05"
    IF y = 6 THEN foregroundcolormystic$ = CHR$(254) + "06"
    IF y = 7 THEN foregroundcolormystic$ = CHR$(254) + "07"
    IF y = 8 THEN foregroundcolormystic$ = CHR$(254) + "08"
    IF y = 9 THEN foregroundcolormystic$ = CHR$(254) + "09"
    IF y = 10 THEN foregroundcolormystic$ = CHR$(254) + "10"
    IF y = 11 THEN foregroundcolormystic$ = CHR$(254) + "11"
    IF y = 12 THEN foregroundcolormystic$ = CHR$(254) + "12"
    IF y = 13 THEN foregroundcolormystic$ = CHR$(254) + "13"
    IF y = 14 THEN foregroundcolormystic$ = CHR$(254) + "14"
    IF y = 15 THEN foregroundcolormystic$ = CHR$(254) + "15"
END IF
RETURN
specialcharacters2:

IF b = CHR$(94) THEN c$ = corner1
IF b = CHR$(43) THEN c$ = corner2
IF b = CHR$(37) THEN c$ = corner3
IF b = CHR$(126) THEN c$ = corner4
IF b = CHR$(45) THEN
    c$ = lineconnector
END IF
IF b = CHR$(38) THEN
    c$ = connector1
END IF

IF b = CHR$(61) THEN
    c$ = connector2
END IF
IF b = CHR$(35) THEN
    c$ = connector3
END IF
IF b = CHR$(42) THEN
    c$ = connector4
END IF
IF b = CHR$(33) THEN
    c$ = verticalline
END IF
RETURN
specialcharacters3:
IF b = CHR$(94) OR b = CHR$(43) OR b = CHR$(37) OR b = CHR$(126) OR b = CHR$(45) OR b = CHR$(38) OR b = CHR$(35) OR b = CHR$(42) OR b = CHR$(33) OR b = CHR$(61) THEN
    flag$ = "Y1"
ELSEIF b = CHR$(91) OR b = CHR$(93) THEN
    flag$ = "Y2"

ELSE
    flag$ = "Y3"
END IF

RETURN
colorchange:
IF flag$ = "Y1" THEN
    GOSUB pick2
    IF g1 = 15 THEN g1 = 7
    IF g1 = 14 THEN g1 = 6
    IF g1 = 13 THEN g1 = 5
    IF g1 = 12 THEN g1 = 4
    IF g1 = 11 THEN g1 = 3
    IF g1 = 10 THEN g1 = 2
    IF g1 = 9 THEN g1 = 1
    IF g1 = 8 THEN g1 = 0

    COLOR g1, t1
    x = g1
    y = t1
    c = x
    d = y
ELSEIF flag$ = "Y2" THEN

    GOSUB pick3
    IF g2 = 15 THEN g2 = 7
    IF g2 = 14 THEN g2 = 6
    IF g2 = 13 THEN g2 = 5
    IF g2 = 12 THEN g2 = 4
    IF g2 = 11 THEN g2 = 3
    IF g2 = 10 THEN g2 = 3
    IF g2 = 9 THEN g2 = 1
    IF g2 = 8 THEN g2 = 0
    COLOR g2, t2
    x = g2
    y = t2
ELSEIF flag$ = "Y3" THEN

    GOSUB pick1
    IF g = 15 THEN g = 7
    IF g = 14 THEN g = 6
    IF g = 13 THEN g = 5
    IF g = 12 THEN g = 4
    IF g = 11 THEN g = 3
    IF g = 10 THEN g = 2
    IF g = 9 THEN g = 1
    IF g = 8 THEN g = 0
    COLOR g, t
    x = g
    y = t
    c = x
    d = y
END IF
RETURN
colorchange2:
IF flag$ = "Y1" THEN
    GOSUB pick5
    IF g1 = 0 THEN t1 = 7
    IF g1 = 1 THEN t1 = 6
    IF g1 = 2 THEN t1 = 5
    IF g1 = 3 THEN t1 = 4
    IF g1 = 4 THEN t1 = 3
    IF g1 = 5 THEN t1 = 2
    IF g1 = 6 THEN t1 = 1
    IF g1 = 7 THEN t1 = 0

    COLOR g1, t1
    x = g1
    y = t1
    c = x
    d = y
ELSEIF flag$ = "Y2" THEN

    GOSUB pick6
    IF g2 = 0 THEN t2 = 7
    IF g2 = 1 THEN t2 = 6
    IF g2 = 2 THEN t2 = 5
    IF g2 = 3 THEN t2 = 4
    IF g2 = 4 THEN t2 = 3
    IF g2 = 5 THEN t2 = 2
    IF g2 = 6 THEN t2 = 1
    IF g2 = 7 THEN t2 = 0
    COLOR g2, t2
    x = g2
    y = t2
ELSEIF flag$ = "Y3" THEN

    GOSUB pick4
    IF g = 0 THEN t = 7
    IF g = 1 THEN t = 6
    IF g = 2 THEN t = 5
    IF g = 3 THEN t = 4
    IF g = 4 THEN t = 3
    IF g = 5 THEN t = 2
    IF g = 6 THEN t = 1
    IF g = 7 THEN t = 0
    COLOR g, t
    x = g
    y = t
    c = x
    d = y
END IF
RETURN

setcolors:
RANDOMIZE TIMER
g = INT(RND(1) * 7) + 1
g1 = INT(RND(1) * 7) + 1
IF g1 = g THEN GOTO setcolors
g2 = INT(RND(1) * 7) + 1
IF g2 = g1 OR g2 = g THEN GOTO setcolors
RETURN
setcolors3:
RANDOMIZE TIMER
g = INT(RND(1) * 7) + 1
RETURN
setcolors4:
RANDOMIZE TIMER
g = INT(RND(1) * 7) + 1
g1 = INT(RND(1) * 7) + 1
IF g1 = g THEN GOTO setcolors4
g2 = INT(RND(1) * 7) + 1
IF g2 = g1 OR g2 = g THEN GOTO setcolors4
RETURN
filenotfound:
CLS
CLOSE #1
PRINT
PRINT "File "; file1; " Not Found .... Please Try Again."
PRINT "Press any key to contine ......"
DO WHILE INKEY$ = ""
LOOP
GOTO inputscreen
RETURN
pick1:
IF g = 0 THEN t = 7
IF g = 1 THEN t = 6
IF g = 2 THEN t = 5
IF g = 3 THEN t = 4
IF g = 4 THEN t = 3
IF g = 5 THEN t = 2
IF g = 6 THEN t = 1
IF g = 7 THEN t = 0
IF g = 0 THEN GOTO pick1

RETURN
pick2:
IF g1 = 0 THEN t1 = 7
IF g1 = 1 THEN t1 = 6
IF g1 = 2 THEN t1 = 5
IF g1 = 3 THEN t1 = 4
IF g1 = 4 THEN t1 = 3
IF g1 = 5 THEN t1 = 2
IF g1 = 6 THEN t1 = 1
IF g1 = 7 THEN t1 = 0
IF g1 = 0 THEN GOTO pick2
RETURN
pick3:
IF g2 = 0 THEN t2 = 7
IF g2 = 1 THEN t2 = 6
IF g2 = 2 THEN t2 = 5
IF g2 = 3 THEN t2 = 4
IF g2 = 4 THEN t2 = 3
IF g2 = 5 THEN t2 = 2
IF g2 = 6 THEN t2 = 1
IF g2 = 7 THEN t2 = 0
IF g2 = 0 THEN GOTO pick3:

RETURN
pick4:
IF g = 0 THEN t = 7
IF g = 1 THEN t = 6
IF g = 2 THEN t = 5
IF g = 3 THEN t = 4
IF g = 4 THEN t = 3
IF g = 5 THEN t = 2
IF g = 6 THEN t = 1
IF g = 7 THEN t = 0
IF g = 0 THEN GOTO pick4
RETURN
pick5:
IF g1 = 0 THEN t1 = 7
IF g1 = 1 THEN t1 = 6
IF g1 = 2 THEN t1 = 5
IF g1 = 3 THEN t1 = 4
IF g1 = 4 THEN t1 = 3
IF g1 = 5 THEN t1 = 2
IF g1 = 6 THEN t1 = 1
IF g1 = 7 THEN t1 = 0
IF g1 = 0 THEN GOTO pick5
RETURN
pick6:
IF g2 = 0 THEN t2 = 7
IF g2 = 1 THEN t2 = 6
IF g2 = 2 THEN t2 = 5
IF g2 = 3 THEN t2 = 4
IF g2 = 4 THEN t2 = 3
IF g2 = 5 THEN t2 = 2
IF g2 = 6 THEN t2 = 1
IF g2 = 7 THEN t2 = 0
IF g2 = 0 THEN GOTO pick6
RETURN








