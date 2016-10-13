!* -*- TECO -*- !
!* Reconstructed from a sourceless library!

!~FILENAME~:! !Package to provide more functions for editing CLU code (CLU Mode).!
CLU-MORE

!& Setup CLU-MORE Library:! !S !

    M ( M.M Make_Prefix_Character ) .Y M.C Control_\_Prefix  PrefixcharacterforCLUhackingcommands

    M.M ^R_Compile_CLU_and_Edit_Errors U:.Y (C)
    M.M ^R_Run_Tlink U:.Y (J)
    M.M ^R_Fancy_Run_Tlink U:.Y (T)
    M.M ^R_Edit_CLU_Errors U:.Y (E)
    M.M ^R_Edit_Next_CLU_Error U:.Y (N)
    M.M ^R_Edit_Next_CLU_Error U:.X (N)  !* Put this on ^X N and screw!
					    !* window narrowing!

    QControl_\_Prefix U.\

    M ( M.M Load_Library ) <PAO.BIN>EFORK !* Good freaking luck!

    :@I*/ M ( M.M &_Internal_CLU_Mode_Hook ) / [6
    0M.V TLINK_Fork
    :I* SYS:TLINK.EXE M.C Clu_TLINK_Name  *The_name_of_the_TLINK_program
    :FO..Q CLU_Mode_Hook"L
        Q6 M.C CLU_Mode_Hook'
      "#
        F[BBIND
        GCLU_Mode_Hook G6 0,.XCLU_Mode_Hook'
    

!& Internal CLU Mode Hook:! !S Set up additional keys for CLU Mode!

    M.M ^R_New_Beginning_of_Line M ( M.M Make_Local_Q-reg ) .A
    0

!^R New Beginning of Line:! ! Go to beginning of line.
If given an argument, goes to that line in the buffer. (Absolute reckoning)!

    F F"G
        BJ F - 1 L'
    "# 0L'

!Document New CLU Functions:! !C Prints documentation for the new EMACS CLU functions.

The following keys have been defined:

  C-\ C      Compiles a clu program, then runs C-\ E
  C-\ J      Runs an inferior TLINK.
  C-\ T      Fancy run TLINK - tries to reload changed binaries.
  C-\ E      After a CLU compile (M-&), displays the error file in the top
             four lines of the screen.  Moves the cursor to the first error.
  C-\ N      Advances the cursor to the next error, displaying the error at
             the top of the screen.!

    m ( m.m Describe ) Document_New_CLU_Functions 

!^R Compile CLU and Edit Errors:! !^R Run (hacked) M-&, then C-\ E
Runs a hacked version of M-& which doesn't do View File on the errors,
Then runs Edit Clu Errors.!

    m ( m.m ^R_Better_CLU_Compile )
    m ( m.m ^R_Edit_CLU_Errors )   !* Should this be :M ?!

!& Fancy Run Tlink:! !^R Fancy Run Tlink:! ! Runs an inferior TLINK.
Give the command an argument of zero to kill the inferior.!

    [0 :@I0 /_Type_`valret_("\n")'_to_return_to_EMACS
/
    F F"E Orunit'
    "E
        @FT Killing_old_Tlink
        0FS ECHO ACTIVE
        -Q TLINK_ForkF"N FZ'
        0UTLINK_Fork'
      "# !runit!
        Q Buffer_Name M ( M.M &_Find_Buffer ) [B
	Q:.B(QB + 2) [F
	QF"N
	    F[ D FILE ET F
	    FS D FN1 UF
	    FS D FN2 [1 F=1 CLU"N 0UF''

	@FT 0 0FS ECHO ACTIVE
	QTLINK_Fork"E
	    QClu_TLINK_Name [T
	    QF "E FZ T  U TLINK_Fork'
	       "# FZ T _F  U TLINK_Fork''
	  "#
	    QF "E -1,Q TLINK_Fork FZ'
	       "# -1,Q TLINK_Fork FZ load( "F" )
!''!''
	FI@V'

!& Run Tlink:! !^R Run Tlink:! ! Runs an inferior TLINK.
Give the command an argument of zero to kill the inferior.!

    [0 :@I0 /_Type_`valret_("\n")'_to_return_to_EMACS
/

    F F"E Orunit'
    "E
        @FT Killing_old_Tlink
	0FS ECHO ACTIVE
	-Q TLINK_Fork F"N FZ''
      "# !runit!
        @FT 0 0FS ECHO ACTIVE
	Q TLINK_Fork "E FZ SYS:TLINK.EXE U TLINK_Fork'
	               "# Q TLINK_Fork FZ'
	FI'

!^R Edit CLU Errors:! ! Edit the lines with errors in two window mode.
^R Edit Next CLU Error will go the next line in error.!

    M ( M.M &_Initialize_CLU_Error_Buffer ) M.V Current_Clu_Error

    Q Current_Clu_Error "E :I* NER 	No_Errors FS ERR'
    Q Current_Clu_Error F"L FS ERR' W
    0J Q Current_Clu_Error - 1 L

    :I* *Clu_Errors* M ( M.M &_Find_Buffer ) [B
    Q:.B( QB + 4 ) M.V Errors_Buffer_Buffer
    0FO..Q Window_2_Size"N
        :I* A2W 	Already_Two_Windows FS ERR'
    fs r getty"e
        :I* TTY 	You_are_on_a_printing_terminal FS ERR'
    M  MM_&_Check_Top_Level  windows 

    [ Previous_Buffer
    Q Buffer_Name M.V Window_2_Buffer
    Q Buffer_Name M.V Program_Buffer_Name
    Q:.B( QB + 4 ) M.V Other_Window_Buffer
    FS WINDOW M.V Window_2_Window
    . M.V Window_2_Pointer
    FS LINES M.V Default_Size
    FS LINES F"E
        FS HEIGHT - ( FS ECHO LINES ) - 1' M.V Total_Size
    4 M.V Window_1_Size
    :@I* /*Clu_Errors*/ M.V Window_1_Buffer
    Q Other_Window_Buffer [..O . M.V Window_1_Pointer
    . M.V Window_1_Window ]..O
    Q Window_1_Size [0
    Q Total_Size - 1 - Q0 :"G
        Q Total_Size / 2 U0 Q0 U Window_1_Size'
    1F[ NOQUIT
    Q Total_Size - 1 - Q0 M.V Window_2_Size
    FS REFRESH M.V Window_1_Refresh
    M.M &_Multi-window_Refresh FS REFRESH

    "N Q0 FS LINES W
        Q:.B(QWindow_2_BufferM(M.M&_Find_Buffer) + 4)M.VOther_Window_Buffer
        F] NOQUIT
        M(FS REFRESH) W '

    Q0 FS TOP LINE
    :FT FS WIDTH / 10 < FT---------- > 0U..H
    -1FS TYPE OUT
    0FS TOP LINE
    F] NO QUIT

    M.M ^R_Done_With_CLU_Errors U:.X (1)
    Q Window_1_Size + 1 FS Top Line
    Q Window_2_Size FS LINES
    M(FS REFRESH)
    

!& Initialize CLU Error Buffer:! !S Initializes the *Clu Errors* buffer.
Loads CLU.JUNK into the *Clu Errors* buffer, setting things up for the
 Edit Errors command.!

    Q:.B( Q Buffer_Index + 2)"E
        :I*NOF	Not_visiting_a_file FS ERR'

    FS MODIFIED"N :I* MOD 	Buffer_has_been_modified FS ERR'

    FS MS NAME [J :IJ J CLU.JUNK.0
    E? J "N :I* NCJ 	No_CLU.JUNK_file FS ERR'

    Q Buffer_Name [ Previous_Buffer
    M.M &_Return_to_Buffer [R
    :I* *Clu_Errors* M( M.M Select_Buffer )
    -1M( M.M Visit_File) J 
    @:S /Compiling_/ "E :I* BFJ 	Bad_Format_CLU.JUNK_File MR'

    .[0 [1 L 2R Q0,. X1 L
    Q Previous_Buffer M( M.M &_Find_Buffer ) [B
    F[ B BIND
    G:.B ( QB + 2 ) - S. C K
    Q:.B ( QB + 9 ) \
    HX0
    F] B BIND
    F~ 0 1 "N :I* WRF 	Wrong_file MR'

    M( M.M &_Find_Next_Clu_Error ) [4
    MR
    Q4

!& Return to Buffer:! !S "Returns" to the "Previous Buffer".
Given an argument (which should be a string), signals that error.!

    Q Previous_Buffer M( M.M Select_Buffer )
    F F"N  FS ERR'
    

!& Find Next Clu Error:! !S Looks for a number beginning a line in the current buffer.!

    <:S
       "E 0' . - Z"E 0'
	1A "D 0 ; '
	1 :FB output_failure:"N
	    0L 1:X* '
    >
    \ [0 0l Q0

!& Done With CLU Errors:! !^R Done With CLU Errors:! !S Revert to one window mode.!

    0U Errors_Buffer_Buffer
    Q Window_1_Size [0
    1M( M.M ^R_One_Window )
    M.M ^R_One_Window U:.X (1)
    .[P
    FS WINDOW J
    -Q0 - 1 L
    . FS WINDOW
    QP J
    w

!^R Edit Next CLU Error:! ! Goes to the next CLU error.
Will position the errors window to display the next error at the top of
the screen, and position the text buffer near the line on which the error
occurs.!

    [E
    Q Errors_Buffer_Buffer F"E
        :I* NEE 	Not_Editing_Errors FS ERR' [..O
    M( M.M&_Find_Next_Clu_Error ) UE
    . U Window_1_Pointer . U Window_1_Window
    ]..O

    QE "E
        :I* C FS ECHO DISPLAY
        @FT (No_more_errors) 0FS ECHO ACTIVE
	M( M.M&_Done_With_CLU_Errors )
	'

    QE F"L ( M( M.M &_Done_With_CLU_Errors) )FS ERR'

    FS TOP LINE "E M( M.M ^R_Other_Window )'
    Q Program_Buffer_Name [A
    F= Buffer_Name A "N Q Program_Buffer_Name M( M.MSelect_Buffer )'
    QE F( -1( 0J ) L) U Current_Clu_Error
    M( FS REFRESH )
    

!^R Better CLU Compile:! !^R Call the CLU compiler.
Like ^R CLU Compile in the "clu" library, but doesn't ask stupid questions.
Create a compiler if needed.  We first offer to write out each file,
unless there is a numeric arg other than 0.  Reads a command line to
pass to CLU: "&" in it is translated into the name of the visited file.
If just CR is typed, "compile &" is used, that is, it compiles the
visited file.  The command line may have several commands separated by
"#".  We always add the "stay" command.  The CLU compiler is kept from
one call to another.  Arg = 0 => just kill the compiler.!

    m( m.mSave_All_Files )

      "#  "e - q CLU_*Handle* f"l fz' w -1u CLU_*Handle* 0''

    :i* :ft CLU_command_(or_several_commands_separated_by_#)
    If_null,_will_compile_this_file.
      f[ help mac
    f f"n
        3,m( m.m &_Read_Line ) CLU_command:_ [3
    fq3"l 0u..h ''

    f f"e
        :i3 compile_&'

    f f"n fq3"e :i3 compile_&''

    q Buffer_Filenames [5
    [4 [6 :i4
    < & f 3  f( :; ) f( ,0 :  :g3 u6 :i4 4 6 5 ) + 1,fq3 :g3 u3>
    :i3 4 3 _#_stay
    :ft >>>___3___Running.....


    q CLU_Compiler [4
    q CLU_*Handle* f"l
        fz 4 _#_ 3  u CLU_*Handle*'
      "# ,0:  fz clu_#_ 3 '
    0u..h
    0
