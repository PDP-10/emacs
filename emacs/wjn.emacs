!* -*- TECO -*- !
!* Reconstructed from a sourceless library!

!~Filename~:! !WJN's EMACS functions.!
WJN

!& Setup WJN Library:! !S Do these things when you load WJN.!

    0FO..Q WJN_Loaded"E
        F[ B BIND
        G Set_Mode_Line_Hook
        ZJ
        @I / 0FO..Q Caps_Lock_Mode"G I_Caps' /
        13I 10I
        @I / FS Both Case"E I_Match' /
        13I 10I
        HX Set_Mode_Line_Hook
        F] B BIND
        1 M.V WJN_Loaded'

    0FO..Q WJN_Setup_Hook [0
    FQ0 "G M0' ]0

!Black Screen Mode:! !C Set VT100 screen to white-on-black.!

     FS Image Out < FS Image Out
     FS Image Out [ FS Image Out
    ? FS Image Out 2 FS Image Out ; FS Image Out
    5 FS Image Out l FS Image Out 

!Caps Lock Mode:! !C Simulate Caps-lock key.
A positive argument turns the mode on.
A zero or negative argument turns it off.
With no argument, the mode is toggled.
The mode can also be changed by setting the variable Caps Lock Mode.!

    :@FO..Q Caps_Lock_Mode"L
        0M.C Caps_Lock_Mode !*_Insert_as_if_Caps_Lock_key_were_used!
         [0
        a - 1 [1
        M.M ^R_Self_Capitalize_and_Insert [2
        A - 1 [3
        Q0 "G 26< Q2,%1 FS ^R C MACRO >' "#
            26< %3
                Q3,%1 FS ^R C MACRO >'
        ]3]2]1]0
        1FS Mode Change '

    Q Caps_Lock_Mode - 1 "L 1' "# 0' [0

    F F"G  "G 1' "# 0' U0'

    Q0 U Caps_Lock_Mode ]0 

!^R Self Capitalize and Insert:! !^R May capitalize before inserting.
The character that invoked this is inserted.
If Caps Lock Mode is positive, it is capitalized first.!

    Q..0 - 32 U..0
    :M..0 

!^R Close and Sign Mail:! !^R Close and sign mail.!

    MM^R_Goto_End

    FS SH POS "N M( M.M ^R_CRLF )'
    I				____Happy_Hacking,
    13I 10I
    I				the_.
    .-1 [0
    FS X UNAME F6
    -S. Q0, .+1 K ]0 ZJ

!^R Close Message:! !^R Send TTY message to ITS user.!

    F To: [0
    :EW 0_HACTRN PW :EF ]0

!Funny Mode:! !C Set VT100 "funny mode".
The argument is sent to the VT100 in the Select Graphic Rendition command.
0 turns off all graphic rendition modes.
1 sets Bold (increased intensity).
4 sets Underscore.
5 sets Blink.
7 sets Negative (reverse) image ("funny mode").
With no argument, 7 is assumed.!

     FS Image Out < FS Image Out
     FS Image Out [ FS Image Out
    F F "E 7' "#  + 0' FS Image Out
    m FS Image Out
     FS Image Out [ FS Image Out
    ? FS Image Out 2 FS Image Out l FS Image Out 

!Initialize Terminal:! !C Set up EMACS for using terminal.
To be used when an EMACS is continued on a different terminal type than what
it started on.!

    FS TTY Init 

!Matching Case Search Mode:! !C Toggle or set mode for matching case search.
With no argument, toggle the mode.
A positive argument sets to search only for exact match.
A negative argument or 0 allows match independent of case.
The Mode can also be changed by setting the variable Case Search.!

    Q Case_Search "E 1' "# 0' [0
    F F "G  "G 0' "# 1' U0'
    Q0 U Case_Search ]0
    1FS Mode Change 

!^R MUDTEC Yank:! !^R Yank in message being replied to.
It is assumed that the message has been placed in WJN:WJN_RE >!

    MM Insert_File WJN:WJN_RE_>
    4 MM ^R_Indent_Rigidly 

!^R No Operation:! !^R Simply return, having done nothing.!

    

!^R Open Message:! !^R Setup for composing and sending TTY message.!

    

!^R Top of Screen:! !^R Scroll so that point is at top of screen.!

    0:F

!White Screen Mode:! !C Set VT100 screen to black-on-white.!

     FS Image Out < FS Image Out
     FS Image Out [ FS Image Out
    ? FS Image Out 5 FS Image Out h FS Image Out
     FS Image Out [ FS Image Out
    ? FS Image Out 2 FS Image Out l FS Image Out 
