!*-*-TECO-*-!
!* To use this feature, give the user a profile file (uname EPRFIL or
EMACS.PROFILE) containing 640 characters, one for each standard command
character and one for each C-X subcommand character, each being either E to
enable the command character or D to disable it.  The profile file is
automatically updated if the user turns any commands on or off.
Alternatively, (Twenex only) put a file EMACS.PROFILE on EMACS: as the
default profile for all users.!

!* Edit history:
	22 Mar 82  JQJ	    Speed up EMACS.PROFILE loading by eliminating most
			erroneous-profile error checking in & Disable Commands
			and & Fast Disable One Command.
			    If no EMACS.PROFILE on users directory, try EMACS:
			for the site-wide profile.
!


!~Filename~:! !Supervises incremental learning, starting with subset of EMACS.!
NOVICE

!& Setup Novice Library:! !S Get things set for using NOVICE as a novice.
This is going to try to load a profile file.  If the user doesn't have one,
it doesn't do anything except return 0 so that an INIT file could look after
unloading the library and cleaning up.  It doesn't do the cleanup in the
general case, because someone might be trying out the library in order to
create a profile. !
 0fo..qNovice_Setup_Hookf"n [0
   m0'			    !* either use user hook!
 :m(m.m&_Load_Disable_Profile)	    !* or load users profile!

!& Kill Novice Library:! !S Take away the variables and pointers to disablers.
Leaving the pointers there will cause errors if the keys are pressed.  Might
be better to make the library unkillable though.  !
 1m(m.mEnable_All_Commands)
 1:f<
 m(m.mKill_Variable)Control-X_Working_Definitions
 m(m.mKill_Variable)Control-X_Initial_Definitions
 m(m.mKill_Variable)Standard_Working_Definitions
 m(m.mKill_Variable)Standard_Initial_Definitions
 >				!* let it be quiet if these aren't around!
 

!& Load Disable Profile:! !S Disable commands according to user's profile.
This applies to the standard 9-bit character set and to the dispatch vector .X
for the C-X prefix character.
The profile is a file containing 512+128 characters, each E or D.
We disable each command whose character is a D and save the previous meaning
in order to support reinstatement of original.  Looks first for (ITS) uname
EPRFIL or (Twenex) EMACS.PROFILE on users home directory, then (Twenex) for
EMACS:EMACS.PROFILE.
Returns -1 if the profile file exists, 0 if not.  With a numarg, assumes that
it is supposed to be setting up for creating a profile file if none exists.  !
    [0[1[2
    f[b bind
    f[d file
    fs hsname fs dsname
    fs osteco"e etFOO_EPRFIL fs xuname fs d fn1'
    "# etEMACS.PROFILE'	    !* figure out file name!
    1:< er >"l			    !* Try to find the file!
      f~(0,3:g(fs error))OPN"n fs error fs err'
      1:< f[d file		    !* If not found, try EMACS;.!
	  er EMACS;
	  f]d file >"l		    !* Not found on EMACS; either, so give up.!
	f~(0,3:g(fs error))OPN"n fs error fs err'
				    !* Make sure err msg mentions specd dir,!
	fff"e'		    !* returns 0 on no arg!
	m(m.m &_Ensure_Disable_Vars)	    !* setup the data base!
	-2''			    !* all set now to make a file!
    @y				    !* File exists, read the data!
    m(m.m &_Ensure_Disable_Vars)   !* setup the data base if necessary!
    -1u0			    !* 0: loop counter!
    0u1				    !* 1: erroneous profile if nonzero, flag!
    qStandard_Working_Definitionsu2	!* 2: qvector for standard commands!
    512< %0j 1a-D"e		    !* check each key for D in profile!
       q0,q2m(m.m&_Fast_Disable_One_Command)q1u1	!* turn it off if D!
      ' >			    !* returns 0 on success, failure means!
				    !* that profile is wrong and needs update!
    qControl-X_Working_Definitionsu2  !* 2: vector for Control-X!
    128< %0j 1a-D"e		    !* for C-X prefix subcommands!
       q0-512,q2m(m.m&_Fast_Disable_One_Command)q1u1      !* turn off if D!
       ' >
    q1"n :m(m.m&_Save_Disable_Profile)'        !* save profile if necessary!
    -1'

!& Ensure Disable Vars:! !S Create the database of flags and pointers.
Standard Command Definitions is a q-vector holding the original definitions for
the keys when the library is first loaded.  Disabled Command Definitions is the
q-vector for holding the information that applies when keys have been disabled.
Element 0 of the q-vector is 0 for the standard 9-bit commands and contains the
character for C-X for the Control-X prefix commands.  Element 1
points to a q-vector containing the pointers to the functions that the keys
actually run.  Element 2 points to a q-vector containing the "backup" functions
which are 0 unless the command has been disabled.  Element 3 is a string
containing the E/D profile.  Value E means the key operates normally; D means
that it is disabled.  These structures are deliberately redundant.
Numarg means allow reinitializing the Disabled Command Definitions structure. !
!* Question: does this need FS no quit to ensure validity!
 [0[1[2
 0fo..q Standard_Initial_Definitions"e
   0m(m.m&_Make_Structure)u0	!* 0: make vector for standard stuff!
   0u2				!* 2: for actual commands!
   512<q2u:(q:0(1))(q2)	!* save actual command for each!
    %2w >
   512,E:i:0(3)		!* for profile, all enabled!
   q0m.v Standard_Initial_Definitions'	!* sock it away!
   fs^R Indirectu1         !* 1: code that C-X runs!
   q1m(m.m&_Make_Structure)u0  !* 0: vector for C-X stuff!
   0u2                          !* 2:loop control!
   128< q:.x(q2)u:(q:0(1))(q2) %2w >    !* copy the .x dispatch into actual!
   128,E:i:0(3)		!* for profile, all enabled!
   q0m.v Control-X_Initial_Definitions !*  save it!
 ff"e			!* if no arg to function, check existence!
   0fo..q Standard_Working_Definitions"n 0''	!* exists!
 qStandard_Initial_Definitions,0m(m.m&_Make_Structure)u1
				!* make vector for disable stuff by copying!
 q1m.vStandard_Working_Definitions	!* name it!
 qControl-X_Initial_Definitions,(fs^R Indirect)m(m.m&_Make_Structure)u0
 q.xu:0(1)                      !* working stuff is just .x itself!
 q0m.vControl-X_Working_Definitions'   !* ready stuff for C-X handling too!
 0

!Disable Command:! !C Disable a particular command character.
Prompts for you to type the key to be disabled.  Asks for confirmation.
Some keys cannot be disabled because doing so would prevent proper EMACS
operation.  It decides.  !
    [0[1[2
    @ftPress_key_to_disable:_	!* print prompt!
    m(m.m &_Read_Q-reg)[.1	!* ask what character to put it in!
    @ft__Go_ahead 1m(m.m&_Yes_or_No)"e 0' !* allow reneging!
    m(m.m &_Disable_Commands).1	!* go do it, cant use :m here!
    

!& Disable Commands:! !S Turn off some commands.
Takes any number of string args, each specifying a command to be turned off,
as a q-register name (such as ...W for C-M-W, or ..[ for M-).  Uses the
string returned by & Read Q-reg Name, which returns the right thing for C-X
subcommands.  These commands are disabled until the user tries to use them and
asks for them to be enabled again.  A null string argument terminates the
call.  !
 [0 [1 [2 0[3 [4[5[6
 0fo..q Standard_Working_Definitions"e  !* means that nothing is ready!
   1m(m.m &_Load_Disable_Profile)w'	    !* load or create users profile!
 qStandard_Working_Definitionsu4	!* 4: dispatcher for standard command!
 qControl-X_Working_Definitionsu6	!* 6: dispatcher for prefix commands!
 1u3				!* 3: flag for updating profile!
 < :i0 -fq0;		!* 0: Get next arg, exit if null.!
   1:f< f0 fs^R Indirectu2 >"n	!* 2: the real key code.  9-bit char!
     f0f"l :i*0_Bad_Q-register_stringfsERR'+1:g0u2
				!* 2: index for a prefix subcommand, assum C-X!
     q2,q6m(m.m&_Disable_One_Command)u5'	!* do it!
   "# q2,q4m(m.m&_Disable_One_Command)u5'	!* returns 0 on success!
   q5"n @fg @ft
5  0fsechoactive'		!* or a message to print!
   q3&q5u3			!* will be zero if something changed!
   ' >
 q3"e:m(m.m &_Save_Disable_Profile)'    !* see whether to save result!

!& Disable One Command:! !S Turn off a working command.
Takes two args, indicating where the command information is.  Precomma arg is
index into the dispatch vectors; numarg is a qvector containing pointers to the
various other qvectors involved.  Always checks to be
sure that this is a command that it makes sense to disable.  !
 [i [v [0[1[2[3 0[4 0[5
 q:v(0)u2			!* 2: type, prefix command code or 0 for 9bit!
 q2"e  qifs^R Indirectui'      !* i: real index, already real for prefix!
 :i3This_command_must_stay_enabled.    !* 3: message!
 q:(q:v(2))(qi)"n		!* the backup has to be zero before disabling!
   :i*Continuing_would_affect_backup'	!* leave with message!
 q:(q:v(1))(qi)u0		!* 0: actual pointer!
 q0"e :i*Cannot_disable_undefined_command_key'
 q0-(m.m^R_Disabled_Command)"e :i*Command_is_already_disabled'
 q0-(m.m^R_Disabled_Prefix_Command)"e :i*Command_is_already_disabled'
 q0-(0fs^R INIT)"e :i*Cannot_disable_undefined_command_key'
 q0-(Afs^R INIT)"e :i*Cannot_disable_a_self-inserting_key'
 1:f<(m.m^R_Abbrev_Expand_and_Self-Insert)u4	!* potential nonexistent names!
     (m.m^R_Abbrev_Expand_And_Call_Old_Char)u5>w
 q0-q4"e :i*Cannot_disable_a_self-inserting_key'
 q0-q5"e :i*Cannot_disable_an_abbrev_expanding_key'
 q0-(m.m^R_CRLF)"e q3'	!* return!
 1f[no quit			!* make sure this happens together!
 qi:f:v(3)D			!* change E to D in profile!
 q:(q:v(1))(qi)u:(q:v(2))(qi)	!* actual goes into backup!
 q2"e				!* 9-bit command code!
   m.m^R_Disabled_Commandu3	!* 3: disabling pointer to install!
   q3ui'		!* put disabler into standard qreg!
 "# m.m^R_Disabled_Prefix_Commandu3'	!* 3: disabling pointer of other kind!
 q3u:(q:v(1))(qi)		!* put disable into actual!
 0

!& Fast Disable One Command:! !S Turn off a working command.
Takes two args, indicating where the command information is.  Precomma arg is
index into the dispatch vectors; numarg is a qvector containing pointers to the
various other qvectors involved.  !
 [i [v [0[1[2[3
 q:v(0)u2			!* 2: type, prefix command code or 0 for 9bit!
 q2"e  qifs^R Indirectui'      !* i: real index, already real for prefix!
 q:(q:v(1))(qi)u0		!* 0: actual pointer!
 q0-(m.m^R_Disabled_Command)"e :i*Command_is_already_disabled'
 q0-(m.m^R_Disabled_Prefix_Command)"e :i*Command_is_already_disabled'
 1f[no quit			!* make sure this happens together!
 qi:f:v(3)D			!* change E to D in profile!
 q:(q:v(1))(qi)u:(q:v(2))(qi)	!* actual goes into backup!
 q2"e				!* 9-bit command code!
   m.m^R_Disabled_Commandu3	!* 3: disabling pointer to install!
   q3ui'		!* put disabler into standard qreg!
 "# m.m^R_Disabled_Prefix_Commandu3'	!* 3: disabling pointer of other kind!
 q3u:(q:v(1))(qi)		!* put disable into actual!
 0

!& Save Disable Profile:! !S Record user's profile of disabled commands.
We write the profile as 512+128 characters, each E or D
for enabled or disabled, into the file
<uname> EPRFIL or EMACS.PROFILE.!
!* Should probably take a fname as optional numarg.  !
    f[b bind			!* temp buffer!
    g:Standard_Working_Definitions(3)	!* the E/D profile!
    g:Control-X_Working_Definitions(3)        !* profile for prefix subcoms!
    f[d file
    fs hsname fs dsname
    fs osteco"e etFOO_EPRFIL fs xuname fs d fn1'
    "# etEMACS.PROFILE'
    eihpef			!* save it!
    0

!& Enable One Command:! !S Turn on a disabled command.
Takes two args, indicating where the command information is.  Precomma arg is
index into the dispatch vectors; numarg is a qvector containing pointers to the
various other qvectors involved.  Notifies if the command being requested is
not actually disabled (that is, if its backup pointer is 0) by returning 0 if
everything is OK and a string pointer otherwise.  !
 [i [v [1[2			!* i: index, v: pointers!
 q:v(0)u2			!* 2: type. prefix code or 0 for 9-bit!
 q2"e m.m^R_Disabled_Commandu1'	!* 1: standard disabler!
   "# m.m^R_Disabled_Prefix_Commandu1'	!* 1: prefix disabler!
 q:(q:v(2))(qi)"e		!* is the backup command 0?, might be ok!
   q:(q:v(1))(qi)-q2"e		!* unless actual contains the disabler!
     :i*Command_disabled_but_no_backup_available''	!* get out!
 1f[no quit			!* protect structure against inconsistency!
 qi:f:v(3)E			!* put E in profile!
 q:(q:v(2))(qi)u:(q:v(1))(qi)	!* move backup into actual!
 0u:(q:v(2))(qi)		!* move 0 into backup!
 q2"e q:(q:v(1))(qi)ui'	!* 9-bit command, move actual into qreg also!
 0				!* return 0 indicating success!

!^R Disabled Prefix Command:! !^R Function runs for a disabled prefix subcommand.
To turn a disabled key back on, press it and answer "Y" at the prompt.
The original command is q0,(q:(q:Control-X Working Definitions(2))(q0))m(m.m^R Describe)  !
 [0[3[4[9[8[7
 fs qp ptru9			!* 9: unwind spot!
 q..1u0				!* 0: the subcommand is left in ..1!
 qControl-X_Working_Definitionsu4	!* 4: definition vector!
 q:(q:4(2))(q0)u3			!* 3: actual command!
 @:i7|q3m(m.m^R_Describe)w|	!* 7: full documenter!
 @:i8|ftC-X_ q0,q3m(m.m &_^R_Briefly_Describe)|	!* 8: short documenter!
 f@:m(m.m&_Disable_Handler)	!* pass args on through!

!^R Disabled Command:! !^R This function runs when you press a disabled key.
To turn a disabled key back on, try to use it and answer "Y".
The original command q0,(q:(q:Standard_Working_Definitions(2))(q0))m(m.m^R Describe)!
				!* reserves 0,3,4,7,8,9!
 fs qp ptr[9			!* teco leaves key code in ..0 for us!
 q..0fs^r indir[0		!* 0: the code for the command typed!
 qStandard_Working_Definitionsu4	!* 4: main qvec!
 q:(q:4(2))(q0)[3
				!* 3: gets actual ptr for command!
 @:i7|q0m(m.m&_Charprint)  ft_	!* 7: full documenter!
   q0,q3m(m.m ^R_Describe)|
 @:i8|q0,q3m(m.m &_^R_Briefly_Describe)|	!* 8: short documenter!
 f@:m(m.m&_Disable_Handler)	!* run and pass args on through!

!& Disable Handler:! !S Internal function to handle general disabling stuff.
Handles prompting and showing documentation.  Is called by ^R Disabled Command
and ^R Disabled Prefix Command.  Expects some standard q-registers from caller.
 0: the index into the actual command vector
 3: the actual command pointer
 4: the structure of definitions
 7: a macro that runs the right full documenter
 8: a macro that runs the right brief documenter
 9: stack pointer for unwinding
!
 [1[2			!* 2: full prompt!
 @:i2|ft You_have_several_options,_according_to_the_next_character_you_type:
_1__Execute_the_function_just_once.__Leave_the_key_turned_off.
_Y__Execute_the_function_and_leave_the_key_turned_on_from_now_on.
_N__Do_not_execute_the_function.__Leave_the_key_turned_off.
_?__Show_a_full_description_of_what_the_function_does.
|
 fq3"l m(m.m &_Load_Bare)'
 !Startover!
 m8				!* show the brief documentation!
 ft This_key_has_been_disabled_for_you_while_you_are_learning.

 !Retype!
 m2				!* the full help message!
 !ShortPrompt!
 ft
Type_1,_Y,_N,_or_?_		!* prompt user for input!
 q2f[helpmac			!* replace help!
 @fg				!* clear typeahead!
 fi:fcu1			!* 1: get a char. Dont use m.i!
 ft1			!* echo it!
 f]helpmac			!* back to standard help!
				!* now case on 1, Y, N, or ?!
 q1-1"e 0u..h @v		!* reinstate screen then do fcn just once!
   f:@m(q3 (q9fsqpunw))'	!* runs it and returns from there!
 q1-?"e			!* show the full docn!
   :ft				!* makes it start from fs Top Line!
   m7				!* 7: run long documenter!
   o ShortPrompt'		!* try again for real instruction!
 q1-Y"e			!* Turn it on and do it once!
   q0,q4m(m.m&_Enable_One_Command)	!* restore whatever it is!
   0u..h @v			!* force showing screen!
   @ft
Command_now_turned_on.__Use_M-X_Disable_Command_to_turn_it_off_again.
   0fsechoactive		!* notify user!
   m(m.m&_Save_Disable_Profile)	!* save profile now in case QUIT in @m!
   f:@m(q3)'			!* execute it!
 q1-N"n  o ShortPrompt'	!* No valid instruction given, loop!
   @ftCommand_remains_turned_off.
  0fsechoactive		!* Last case -- user said NO!
   0u..h			!* pretend nothing on screen so repaints!

!Enable All Commands:! !C Restore the default bindings of all keys.
Restores any commands that have been disabled, sets the Disabled Command
Definitions Qvector to its initial state, and saves a bland profile file.
Inhibits saving the profile file if numarg exists.  !
 [0[1[2[3
 0u0				!* 0: loop control!
 0u3				!* 3: result accumulator!
 qStandard_Working_Definitionsu1	!* 1: standard structure!
 512<q:(q:1(2))(q0)u2		!* 2: check the backup command!
   q2"n				!* something real is there!
   q0,q1m(m.m&_Enable_One_Command)"e %3w''	!* enable it!
   %0w >			!* loop control!
 0u0                            !* 0: loop control!
 qControl-X_Working_Definitionsu1     !* 1: .x dispatch stuff!
 128< q:(q:1(2))(q0)u2          !* 2: check the backup command!
   q2"n
   q0,q1m(m.m&_Enable_One_Command)"e %3w''      !* turn it on!
   %0w >
 q3:\u3
 @ft3_commands_enabled. 0fsechoactive	!* report!

 ff"e :m(m.m&_Save_Disable_Profile)'	!* maybe save clean slate!


!Turn Off Everything:! !C Make all commands run the disabler function.
This is for maintainers who are building new environments for people.  It is
much easier to turn a few things on again than to figure out the 501 things
that need to be turned off.  This does not touch the self-inserting characters,
the undefined commands, or a few commands that are necessary in order for EMACS
to operate correctly, like ^R Quit.  !
 [0[1[6
 0u1				!* success counter!
 qStandard_Working_Definitionsu6	!* 6: access to the standard structure!
 -1u0				!* 0: setup to loop!
 512< (%0)fs^R Indirect,q6m(m.m&_Disable_One_Command)"e
     %1w' >			!* maybe turn off command!
 qControl-X_Working_Definitionsu6	!* 6: access to C-X structure!
 -1u0				!* 0: loop control!
 128< (%0),q6m(m.m&_Disable_One_Command)"e
     %1w' >
 q1:\u1
 @fg @ft
1_commands_turned_off. 0fsechoactivew	!* report!
 0

!& Make Structure:! !S Returns Q vector needed for NOVICE command fiddling.
Has a 4 element Qvector.  No arg or 0 means standard type.  Otherwise, the arg
is taken to be the prefix character.  A precomma arg means use the structure
it points to to initialize the new one.
 Element Contents
 0       "type", meaning 0 for standard kind or prefix character code
 1       Qvector containing the actual commands to run for key press
 2       Qvector containing the backup commands in case actual holds disabler
 3       String containing the E/D flags for the profile
!
 0[0[1[2 0[4
 ff&1"n u0'		!* 0: type!
 ff&2"n u4'		!* 4: vector to use in initializing new struc!
 4*5fsqvectoru1		!* 1: the vector being built!
 q4"n				!* if something to copy from!
   q1[..o			!* push buffer and select the new structure!
   g4				!* make a copy of the old one!
   ]..o'			!* pop pdl to get back buffer!
 "#				!* otherwise make from scratch!
   q0u:1(0)			!* load the type!
   q0"e 512u2'			!* 2: length for 9-bit character!
   "# 128u2'			!* 2: dispatch table length needed!
   q2*5fsqvectoru:1(1)		!* install vector for actual!
   q2*5fsqvectoru:1(2)		!* install vector for backup!
   q2,0:i:1(3)'			!* install null string of right length!
 q1				!* return qvec!
