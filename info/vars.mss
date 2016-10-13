
@Unnumbered(Index of Variables)

An option is a variable whose value Edit Options offers for editing.
A hook variable is a variable which is normally not defined, but which
you can define if you wish for customization.  Most hook variables
require TECO programs as their values.

The default value of the variable is given in parentheses after its
name.  If no value is given, the default value is zero.  If the word
"nonexistent" appears, then the variable does not exist unless you
create it.

@Begin(Description)

Abort Resumption Message @\This is the message to be printed by C-] to
tell you how to resume the aborted command.  If this variable is zero,
there is no way to resume, so C-] asks for confirmation.
@Note(Node="Quitting").

Additional Abbrev Expanders (nonexistent) @\If this variable exists
when Word Abbrev mode is turned on, it is a string of characters which
should terminate and expand an abbrev, in addition to the punctuation
characters which normally do so.  See also WORDAB Ins Chars.

After Compilation Hook (nonexistent) @\If this variable exists and is
nonzero, then it is executed as a TECO expression by the function
Compile, after compilation itself is finished.  Exception: If the
variable Compile Command is also nonzero, it overrides this hook.
@Note(IName="After Compilation Hook", Node="Compile").

Atom Word Mode @\The minor mode Atom Word mode is on if this variable
is nonzero.  @Note(IName="Atom Word Mode", Name="Minor Modes",
Node="MinorModes").

Auto Directory Display @\If this is nonzero, certain file operations
automatically display the file directory.  @Note(IName="Auto Directory
Display", Name="Directories", Node="ListDir").

Auto Fill Mode @\The minor mode Auto Fill mode is on if this variable
is nonzero.  @Note(IName="Auto Fill Mode", Node="Filling").

Auto Push Point Notification @\The value of this variable is the
string printed in the echo area by some commands to notify you that
the mark has been set to the old location of point.  @Note(IName="Auto
Push Point Notification", Node="Search").

Auto Push Point Option (500)@\Searches set the mark if they move at least
this many characters.
@Note(IName="Auto Push Point Option", Node="Search").

Auto Save All Buffers @\If this is nonzero, auto save saves all
buffers that are modified, not just the selected buffer.
@Note(IName="Auto Save All Buffers", Name="Auto Save",
Node="AutoSave").

Auto Save Default @\The minor mode Auto Save mode is on by default for
newly visited files if this variable is nonzero.  @Note(IName="Auto
Save Default", Name="Auto Save", Node="AutoSave").

Auto Save Filenames (@ITS(DSK:<working directory>;_SAV00
>)@Twenex(<working directory>[SAVE]..)) @\These are the filenames used
for auto saving if the visited filenames are not used.  @ITS{If the
last two characters of the first filename are "00", as they are by
default, then they are replaced by the last two characters of the
buffer number to get the filename actually used for saving}@Twenex{If
the filename extension is null, the name of the buffer being saved is
used instead}.  @Note(IName="Auto Save Filenames", Name="Auto Save",
Node="AutoSave").

Auto Save Interval (500) @\This is the number of characters between
auto saves.  @Note(IName="Auto Save Interval", Name="Auto Save",
Node="AutoSave").

Auto Save Max (2) @\This is the maximum number of auto saves to keep.
@Note(IName="Auto Save Max", Name="Auto Save", Node="AutoSave").

Auto Save Mode @\If this is nonzero, Auto Save mode is enabled.
@Note(IName="Auto Save Mode", Name="Auto Save", Node="AutoSave").

Auto Save Visited File @\If this is nonzero, auto saving saves as the
visited filenames.  If this is zero, auto saving saves as the names
which are the value of Auto Save Filenames (q.v.).  @Note(IName="Auto
Save Visited File", Name="Auto Save", Node="AutoSave").

Autoarg Mode @\When Autoarg Mode is nonzero, numeric arguments can be
specified just by typing the digits.  @Note(IName="Autoarg Mode",
Node="Arguments").

Bottom Display Margin @\This controls the size of the region at the
bottom of the screen which the cursor is not allowed to be in.  If the
cursor would normally move there, the window is recentered instead.
The value is represented as a percentage of the screen size, and must
not be negative or more than 99.  It controls the TECO flag
FS %BOTTOM.  @Note(IName="Bottom Display Margin", Node="Display").

Buffer Creation Hook (nonexistent) @\If this variable exists and is
nonzero, its value should be a TECO program to be executed whenever a
newly created buffer is selected for the first time.
@Note(IName="Buffer Creation Hook", Node="Buffers").

Buffer Deselection Hook (nonexistent) @\If this variable exists and is
nonzero, its value should be a TECO program to be executed whenever a
buffer is about to be deselected.  The difference between this and
Buffer Selection Hook is that, while both are executed (if they exist)
when you switch buffers, this is executed before the switch, and
Buffer Selection Hook is executed after the switch.
@Note(IName="Buffer Deselection Hook", Node="Buffers").

Buffer Selection Hook (nonexistent) @\If this variable exists and is
nonzero, its value should be a TECO program to be executed whenever a
buffer is selected.  @Note(IName="Buffer Selection Hook",
Node="Buffers").

Case Replace (1) @\When Case Replace is nonzero, Replace String and
Query Replace attempt to preserve case when they replace.
@Note(IName="Case Replace", Node="Replace").

Case Search (1) @\If Case Search is nonzero, searches of all sorts allow
upper case letters and lower case letters to match each other.  It
controls the TECO flag FS BOTH CASE.  @Note(IName="Case Search", Node="Search").

Collapse in Comparison (nonexistent) @\If this variable exists and is
not zero, it should be a string of characters for M-X Compare Windows to
regard as insignificant.  @Note(IName="Collapse in Comparison",
Node="Windows").

Comment Begin @\This is the string used to start new comments.  If it
is zero, the value of Comment Start is used.
@Note(IName="Comment Begin", Node="Comments").

Comment Column @\This is the column at which comments are aligned.
@Note(IName="Comment Column", Node="Comments").

Comment End @\This is the string which is used to end comments.  It is
often empty for languages in which comments end at the end of the
line.  @Note(IName="Comment End", Node="Comments").

Comment Multi Line (nonexistent) @\If this variable exists and is
nonzero, then when Auto Fill mode breaks a comment line, it does not
insert a new comment starter on the new line.  This is for use with
languages that have explicit comment terminators, if you want single
multi-line comments instead of single-line comments on consecutive
lines.
@Note(IName="Comment Multi Line", Node="Comments").

Comment Rounding (/8+1*8) @\This is the TECO program used to decide
what column to start a comment in when the text of the line goes past
the comment column.  The argument to the program is the column at
which text ends.  @Note(IName="Comment Rounding", Node="Comments").

Comment Start @\This is the string used for recognizing existing
comments, and for starting new ones if Comment Begin is zero.  If
Comment Start is zero, semicolon is used.  @Note(IName="Comment Start",
Node="Comments").

Compile Command (nonexistent) @\If this variable exists and is
nonzero, its value should be a TECO program to be used by the M-X
Compile command to compile the file.  @Note(IName="Compile Command",
Node="Compile").

Compiler Filename (nonexistent) @\If this variable exists and is
nonzero, its value should be the name of the compiler to use,
@Twenex{a filename}@ITS{suitable for a colon command}.  By default,
the name of the major mode is used as the name of the compiler.
@Note(IName="Compiler Filename", Node="Compile").

Compiler Switches (nonexistent) @\If this variable exists and is
nonzero, its value is used as switches for compilation.
@Note(IName="Compiler Switches", Node="Compile").

Cursor Centering Point (40) @\This specifies how far from the top of the
screen point ought to appear when a new window position is chosen.
The value of the variable is the percentage of the screen size.  It
must not be negative or more than 99.  It controls the TECO flag FS
%CENTER.  @Note(IName="Cursor Centering Point", Node="Display").

Default Major Mode (Fundamental) @\This is the major mode in which new
buffers are created.  If it is the null string, new buffers are
created in the same mode as the previously selected buffer.
@Note(IName="Default Major Mode", Node="Buffers").

Digit Shift Table (nonexistent) @\If this variable exists and is
nonzero, its value should be a string containing the ten characters
which are the upper case equivalents of the digits 0 through 9 on the
keyboard being used.  Meta-' (@w[^R Upcase] Digit) uses this table, and
reads it from the user if the variable does not exist.
@Note(IName="Digit Shift Table", Name="Fixing Typos", Node="Fixit").

Directory Lister (@w[& Subset] Directory Listing) @\This is the TECO
program used for listing a directory for C-X C-D and the Auto
Directory Display option.  The default value is the definition of the
function @w[& Subset] Directory Listing.  @ITS{Another useful value is
the definition of the function @w[& Rotated] Directory Listing.}
@Note(IName="Directory Lister", Node="ListDir", Name="Directories").

Display Matching Paren (-1) @\This variable controls automatic display
of the matching open parenthesis when a close parenthesis is inserted.
@Note(IName="Display Matching Paren", Node="Matching").

Display Mode Line Inverse @\If this is nonzero, the mode line is
displayed in inverse video or otherwise highlighted, on terminals
which can support it.  This controls the TECO flag FS INVMOD.
@Note(IName="Display Mode Line Inverse", Name="Mode Line", Node="ModeLine").

Display Overprinting @\If this is nonzero, backspace characters and
stray carriage return characters in the buffer display as actual
overprinting rather than as ^H and ^M.  This variable
controls the TECO flags FS ^H PRINT and FS ^M PRINT.
@Note(IName="Display Overprinting", Node="Characters").

Echo Area Height (3) @\This is the number of lines in the echo area.
Its value should be at least one.  It controls the TECO flag FS ECHO
LINES.  @Note(IName="Echo Area Height", Node="Screen").

EMACS Version @\This variable's value is the EMACS version number.

End of Buffer Display Margin (35) @\This specifies how far up the
screen the end of the buffer is placed, if it is on screen at all,
when a new window position is chosen.  It is represented as a
percentage of the screen size, and must not be negative or more than
99.  Its value controls the TECO flag FS %END.
@Note(IName="End of Buffer Display Margin", Node="Display").

Error Messages in Echo Area @\If this is nonzero, error messages are
printed in the echo area instead of at the top of the screen.  It
controls the TECO flag FS ECHO ERRORS.
@Note(IName="Error Messages in Echo Area", Node="Lossage").

@Twenex{
EXEC Name (nonexistent) @\If this variable exists, its value, if
nonzero, is the filename of the program to be used by M-X Push to EXEC
to serve as the EXEC.  @Note(IName="EXEC Name", Node="Subforks").}

Exit Hook (nonexistent) @\If this variable exists and is nonzero, its
value is a TECO program to be executed whenever EMACS is exited,
instead of the normal action of doing an auto save.  The subroutine
@w[& Exit] EMACS is responsible for executing it.  @Note(IName="Exit
Hook", Node="Exiting").

@Twenex{
  Exit to Inferior Hook (nonexistent) @\If this variable exists
and is nonzero, its value is a TECO program to be executed whenever
EMACS is about to invoke an inferior fork that is likely to read from
the terminal.  This is done in addition to all normal actions.}

Exit to Superior Hook (nonexistent) @\If this variable exists and is
nonzero, its value is a TECO program to be executed whenever EMACS is
about to return to its superior @ITS{job}@Twenex{fork}, in addition to
all normal actions.

Fill Column (70) @\The value of Fill Column is the width used for
filling text.  It controls the TECO flag FS ADLINE.
@Note(IName="Fill Column", Node="Filling").

Fill Extra Space List (.?!) @\The characters in this string are the
ones which ought to be followed by two spaces when text is filled.
@Note(IName="Fill Extra Space List", Node="Filling").

Fill Prefix @\The value of this variable is the prefix expected on
every line of text before filling and placed at the front of every
line after filling.  It is usually empty, for filling nonindented
text.  @Note(IName="Fill Prefix", Node="Filling").

Indent Tabs Mode (-1) @\If Indent Tabs Mode is nonzero, then tab
characters are used by the indent commands.  Otherwise, only spaces
are used.  @Note(IName="Indent Tabs Mode", Name="Indenting Text",
Node="TextIndent").

<libname> Setup Hook (nonexistent) @\If this variable exists and is
nonzero, its value should be a TECO program to be executed when the
library <libname> is loaded.  The library's @w[& Setup] function is
responsible for doing this.  If the library has no @w[& Setup]
function, it will not handle a setup hook either.
@Note(Node="Libraries").

<libname> Kill Hook (nonexistent) @\Some libraries may execute the
value of this variable, if it exists and is nonzero, when the library
is being removed from core with Kill Libraries.  This is done by the
library's @w[& Kill] function; if the library has no @w[& Kill]
<libname> Library function, it will not handle a kill hook.
@Note(Node="Libraries").

Lisp <function> Indent @\This variable controls the indentation within
calls to the function <function>.  Actually, the variable used is not
always Lisp <function> Indent, but rather <language> <function>
Indent, where <language> is the value of Lisp Indent Language.
@Note(IName="Lisp <function> Indent", Node="Indenting").

Lisp Indent DEFanything (1) @\The value of this variable controls
indentation within calls to functions whose names start with "def".
Actually, the variable used is not always Lisp Indent DEFanything, but
rather <language> Indent DEFanything, where <language> is the value of
Lisp Indent Language.  @Note(IName="Lisp Indent DEFanything",
Node="Indenting").

Lisp Indent Language (Lisp) @\The value of this variable is the string
used as the language name when looking for <language> <function>
Indent variables.  @Note(IName="Lisp Indent Language",
Node="Indenting").

Lisp Indent Offset @\If nonzero, this selects an alternative default
style of indentation for Lisp.  Actually, the variable used is not
always Lisp Indent Offset, but rather <language> Indent
Offset, where <language> is the value of Lisp Indent Language.
@Note(IName="Lisp Indent Offset", Node="Indenting").

Mail Reader Library (nonexistent) @\If this variable exists and is
nonzero, it is the name of the library to be used by M-X Read Mail for
reading mail and by M-X Send Mail for sending mail.  The former calls
the function "<entry>" in the library, and the latter calls the
function "@w[& Mail] Message".  @ITS{If the variable does not exist, the
library RMAIL is used}.  @Note(IName="Mail Reader Library",
Node="Mail").

Mail Sender Library (nonexistent) @\If this variable exists and is
nonzero, it specifies the library to be used by M-X Send Mail only,
overriding Mail Reader Library.  @Note(IName="Mail Sender Library",
Node="Mail").

@Twenex{
Mail Reader Program (nonexistent) @\If this variable exists (and Mail
Reader Library does not), it is the name of the
the program to be used for reading and sending mail.
@Note(IName="Mail Reader Library", Node="Mail").}

<mode> ..D (nonexistent) @\This variable is used by the major mode
<mode> to record the syntax table for that mode.  It is created by the
first use of the mode, and if you supply your value, that value will
be accepted instead.  For example, Text mode uses Text ..D.  Not all
major modes have their own syntax tables.
@Note(Node="Syntax").

<mode> Mode Hook (nonexistent) @\If this variable exists and is
nonzero, its value is a TECO program to be executed when the
major mode <mode> is entered.  For example, Text Mode Hook is executed
when Text mode is entered.  @Note(Name="Major Modes",
Node="MajorModes").

Next Screen Context Lines (nonexistent) @\If this variable exists, its
value specifies the number of lines of overlap between one screenful
and the next, when scrolling by screens with C-V and M-V.
@Note(IName="Next Screen Context Lines", Node="Display").

Only Global Abbrevs (nonexistent) @\If this variable exists and its
value is nonzero, then Word Abbrev Mode assumes that you are not using
any mode-specific abbrevs.  @XNote(IName="Only Global Abbrevs",
Name="Customizing WORDAB", File="WORDAB", Node="Alternatives").

Overwrite Mode @\If this is nonzero, the minor mode Overwrite mode is
in effect.  It controls the TECO flag FS ^R REPLACE.
@Note(IName="Overwrite Mode", Name="Minor Modes", Node="MinorModes").

Page Delimiter (Formfeed (Control-L)) @\This is the TECO search
string used to recognize page boundaries.
@Note(IName="Page Delimiter", Node="Pages").

PAGE Flush CRLF @\If this variable exists and is nonzero, the PAGE
library expects every page to start with a blank line, which is not
considered part of the contents of the page.  @Note(IName="PAGE Flush
CRLF", Node="PAGE").

Paragraph Delimiter (.@CTL[O]@CTL[I]@CTL[O] @CTL[O]') @\This is the
TECO search string used to recognize beginnings of paragraphs.
@Note(IName="Paragraph Delimiter", Node="Sentences").

Permit Unmatched Paren (-1) @\Controls whether the bell is run if you
insert an unmatched close parenthesis.  @Note(IName="Permit Unmatched
Paren", Node="Matching").

Prefix Char List @\This variable's value is a string which lists all
the prefix characters defined, so that self-documentation facilities
can find any subcommands of prefix characters which call a given
function.  @INFONote(File="CONV", Node="Prefix", Name="Prefix
Characters").

Quote Execute Command (nonexistent) @\If this variable exists and is
zero, then M-X does not quote @ctl{]} characters which appear in the
string arguments of the command.  @Note(IName="Quote Execute Command",
Name="Extended Commands", Node="MMArcana").

Read Line Delay @\This is the amount of time, in 30'ths of a second,
which EMACS should wait after starting to read a line of input, before
it prompts and starts echoing the input.

Readable Word Abbrev Files (nonexistent) @\If this variable exists and
is nonzero, word abbrev files will be written in the format
that M-X List Word Abbrevs uses, instead of in a less readable but
faster loading format.  @XNote(IName="Readable Word Abbrev Files",
Name="Saving Abbrevs", File="WORDAB", Node="Saving").

Region Query Size (5000) @\Many commands which act on the region
require confirmation if the region contains more than this many
characters.  @Note(IName="Region Query Size", Node="Mark").

@Twenex{
Return from Inferior Hook (nonexistent) @\If this variable exists and
is nonzero, its value should be a TECO program to be executed whenever
an inferior fork returns to EMACS, except for inferior forks which
return nearly immediately.  @Note(IName="Return from Inferior Hook",
Node="Subforks").}

Return from Superior Hook (nonexistent) @\If this variable exists and
is nonzero, its value should be a TECO program to be executed whenever
EMACS is resumed after being exited.  @Note(IName="Return from
Superior Hook", Node="Exiting").

SAIL Character Mode @\If this is nonzero, characters in the buffer
with ASCII codes 0 through 37 are displayed without conversion.  Do
not try to use this feature except on terminals specially equipped to
handle it.  The variable controls the TECO flag FS SAIL.
@Note(IName="SAIL Character Mode", Name="Ideal Keyboards", Node="Ideal").

Save Word Abbrevs (nonexistent) @\If this variable exists, its value
determines which abbrevs will be saved upon exit from EMACS when
abbrevs have been modified.  Setting it to 1 causes all abbrevs to be
saved.  @XNote(IName="Save Word Abbrevs", Name="Saving Abbrevs",
File="WORDAB", Node="Saving").  Setting it to -1 causes just the
incremental abbrevs to be saved.  @XNote(IName="Save Word Abbrevs",
Name="Dumped Environments", File="WORDAB", Node="Dumping").

Search Exit Char (27) @\This is the numeric code for the 9-bit character
which should exit incremental search and not have its normal command
meaning in that case.  The default, 27, is the code for Altmode.

Search Exit Option (nonexistent) @\If this variable is 0, Control and
Meta characters without special meanings do not exit incrementatl
search; instead, they are part of the string to be searched for.  If
this variable does not exist, or is nonzero, then those characters
exit the search and then have their normal function.

Set Mode Line Hook @\This is a hook which is executed every time the
mode line is recomputed.  It can insert text in the buffer to put it
in the mode line after the minor modes.  @Note(IName="Set Mode Line
Hook", Name="Mode Line", Node="ModeLine").

SLOWLY Maximum Speed (nonexistent) @\If this variable is defined, it
is the maximum output speed for which SLOWLY, if loaded, should define
its commands.  @XNote(IName="SLOWLY Maximum Speed", Name="SLOWLY",
Node="Options", File="SLOWLY").

Space Indent Flag @\If this flag is nonzero, then Auto Fill indents
the new lines which it creates, by performing a Tab.  Most major modes
for programming languages set this nonzero.  @Note(IName="Space Indent
Flag", Node="Filling").

@Twenex{ System Output Holding @\If this is nonzero, then Twenex page
mode is not turned off by EMACS.  This means that the characters C-S
and C-Q stop and resume output to the terminal from Twenex and cannot
be used as EMACS commands in any way.  The variable controls the TECO
flag FS TT PAGE.}

Tab Stop Definitions (a string) @\The value of Tab Stop Definitions is
a string defining the tab stops to be used by the command M-I (^R Tab
to Tab Stop).  @Note(IName="Tab Stop Definitions", Name="Indenting
Text", Node="TextIndent").

Tags Find File (nonexistent) @\If this variable exists and is not
zero, TAGS uses C-X C-F to switch files.  Otherwise, TAGS uses C-X
C-V.  @XNOTE(Name="TAGS", File="TAGS", Node="Top").  Some other things
may decide to use multiple buffers if this variable is nonzero.
@Note(Node="Buffers", IName="Tags Find File").

Tags Search Verbose (nonexistent) @\If this variable exists and is
zero, Tags Search does not print out the name of each file that it
begins to search.  If the variable is nonexistent, that is equivalent
to a value of 1.  @XNote(IName="Tags Search Verbose", File="TAGS",
Name="Tags Search", Node="Search").

Temp File FN2 List (MEMO@CTL[O]XGP@CTL[O] ...) @\This is a TECO search string
which recognizes the filenames which indicate that the file is
probably temporary.  @Note(IName="Temp File FN2 List",
Name="Clean Directory", Node="CleanDir").

Top Display Margin @\This controls the size of the region at the
top of the screen which the cursor is not allowed to be in.  If the
cursor would normally move there, the window is recentered instead.
The value is represented as a percentage of the screen size, and must
not be negative or more than 99.  It controls the TECO flag
FS %TOP.  @Note(IName="Top Display Margin", Node="Display").

Underline Begin (nonexistent) @\If this variable exists, its
value should be the character or string to use to begin underlines for
the M-_ command.  @Note(IName="Underline Begin", Node="Underlining").

Underline End (nonexistent) @\If this variable exists, its
value should be the character or string to use to end underlines for
the M-_ command.  @Note(IName="Underline End", Node="Underlining").

Visit File Hook (nonexistent) @\If this variable exists and is
nonzero, its value should be a TECO program to be executed whenever a
file is visited.  @Note(IName="Visit File Hook", Node="Visiting").

Visit File Save Old (1) @\This variable controls whether visiting a
file offers to save the file previously visited in the same buffer, if
it has changes.  @Note(IName="Visit File Save Old", Node="Visiting").

WORDAB All Caps (nonexistent) @\If this variable exists and is
nonzero, expanding an all-upper-case abbrev to a multi-word expansion
will cause the words in the expansion to be all-upper-case, instead of
just having their first letters uppercased.
@XNote(IName="WORDAB All Caps", Name="Controlling Expansion",
File="WORDAB", Node="Expanding").

WORDAB Ins Chars (nonexistent) @\If this variable exists when Word
Abbrev Mode is turned on, it should be a string containing precisely
those characters which should terminate and expand an abbrev.  This
variable overrides Additional Abbrev Expanders (q.v.).
@XNote(IName="WORDAB", Name="Customizing WORDAB", File="WORDAB",
Node="Alternatives").

@End(Description)
