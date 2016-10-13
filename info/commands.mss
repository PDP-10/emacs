 @Unnumbered(Command Summary)

This summary contains brief descriptions with cross references for all
commands, grouped by topic.  Within each topic, they are in
alphabetical order.  Our version of alphabetical order places
non-control non-meta characters first, then control characters, then
meta characters, then control-meta characters.  Control-X and Meta-X
commands come last.  Not all Meta-X commands are included.

@INFO{
Each command has a footnote whose name is the same as the command
name.  Thus, you do not need to find the entry for a command to use
the footnote.  Just do F<command name><cr>.  For example,
@w[F Control-S<cr>] goes directly to the node which documents the
Control-S command.  For an extended command, the footnote name does
not include the "Meta-X".}

@Hd2(Prefix Characters)

@Begin(Description)

Altmode@ @ @ (^R Prefix Meta) @\
Altmode is a bit prefix character which turns on the Meta bit in the
next character.  Thus, Altmode F is equivalent to the single character
Meta-F, which is useful if your keyboard has no Meta key.
@Note(IName="Altmode", Node="Characters").

Control-^@ @ @ (^R Prefix Control) @\
Control-^ is a bit prefix character which turns on the Control bit in
the following character.  Thus, Control-^ < is equivalent to the
single character Control-<.  @Note(IName="Control-^", Node="Characters").

@ITS[Control-C]@Twenex[Control-Z]@ @ @ (^R Prefix Control-Meta) @\
@ITS[Control-C]@Twenex[Control-Z] is a bit prefix character which
turns on the Control bit and the Meta bit in the following character.
Thus, @ITS[Control-C]@Twenex[Control-Z] ; is equivalent to the single
character Control-Meta-;.
@Note(IName="@ITS[Control-C]@Twenex[Control-Z]", Node="Characters").

Control-Q@ @ @ (^R Quoted Insert) @\
Control-Q inserts the following character.  This is a way of inserting
control characters.  @Note(IName="Control-Q", Name="Basic Editing", Node="Basic").

Control-U@ @ @ (^R Universal Argument) @\
Control-U is a prefix for numeric arguments which works the same on
all terminals.  @Note(IName="Control-U", Node="Arguments").

Control-X @\@*
Control-X is a prefix character which begins a two-character command.
Each combination of Control-X and another character is a "Control-X
command".  Individual Control-X commands appear in this summary
according to their uses.

Meta-X@ @ @ (^R Extended Command) @\
Meta-X is a prefix character which introduces an extended command
name.  @Note(Name="Meta-X", Node="M-X").

Control-Meta-X@ @ @ (^R Instant Extended Command) @\
Control-Meta-X is another way of invoking an extended command.
Instead of putting the arguments in the same line as the command name,
the command reads the arguments itself.  @Note(IName="Control-Meta-X", Name="Meta-X",
Node="M-X").

Control-digits, Meta-digits, Control-Meta-digits @\
These all specify a numeric argument for the next command.
@Note(Node="Arguments").

Control-Minus, Meta-Minus, Control-Meta-Minus @\
These all begin a negative numeric argument for the next command.
@Note(Node="Arguments").

@End(description)

@HD2(Simple Cursor Motion)

@Begin(Description)

Control-A@ @ @ (^R Beginning of Line, built-in function) @\
Control-A moves to the beginning of the line.  @Note(IName="Control-A",
Name="Basic Editing", Node="Basic").

Control-B@ @ @ (^R Backward Character, built-in function) @\
Control-B moves backward one character.  @Note(IName="Control-B",
Name="Basic Editing", Node="Basic").

Control-E@ @ @ (^R End of Line, built-in function) @\
Control-E moves to the end of the line.  @Note(IName="Control-E",
Name="Basic Editing", Node="Basic").

Control-F@ @ @ (^R Forward Character, built-in function) @\
Control-F moves forward one character.  @Note(IName="Control-F",
Name="Basic Editing", Node="Basic").

Control-H@ @ @ (^R Backward Character, built-in function) @\
Control-H moves backward one character.  @Note(IName="Control-H",
Name="Basic Editing", Node="Basic").

Control-N@ @ @ (^R Down Real Line) @\
Control-N moves vertically straight down.  @Note(IName="Control-N",
Name="Basic Editing", Node="Basic").

Control-P@ @ @ (^R Up Real Line) @\
Control-P moves vertically straight up.  @Note(IName="Control-P",
Name="Basic Editing", Node="Basic").

Control-R@ @ @ (^R Reverse Search) @\
Control-R is like Control-S but searches backward.
@Note(IName="Control-R", Node="Search").

Control-S@ @ @ (^R Incremental Search) @\
Control-S searches for a string, terminated by Altmode.  It searches
as you type.  @Note(IName="Control-S", Node="Search").

Meta-<@ @ @ (^R Goto Beginning) @\
Meta-< moves to the beginning of the buffer.
@Note(IName="Meta-<", Name="Basic Editing", Node="Basic").

Meta->@ @ @ (^R Goto End) @\
Meta-> moves to the end of the buffer.  @Note(IName="Meta->",
Name="Basic Editing", Node="Basic").

Control-X Control-N@ @ @ (^R Set Goal Column) @\
Control-X Control-N sets a horizontal goal for the Control-N and
Control-P commands.  When there is a goal, those commands try to move
to the goal column instead of straight up or down.

@End(Description)

@HD2(Lines)

@Begin(Description)

Return@ @ @ (^R CRLF) @\@*
Return inserts a line separator, or advances onto a following blank
line.  @Note(IName="Return", Name="Basic Editing", Node="Basic").

Control-O@ @ @ (^R Open Line, built-in function) @\
Control-O inserts a line separator, but point stays before it.
@Note(IName="Control-O", Name="Basic Editing", Node="Basic").

Meta-=@ @ @ (^R Count Lines Region) @\
Meta-= prints the number of lines between point and mark.
@Note(IName="Meta-=", Node="Mark").

Control-X Control-O@ @ @ (^R Delete Blank Lines) @\
Control-X Control-O deletes all but one of the blank lines around
point.  If the current line is not blank, all blank lines following it
are deleted.  @Note(IName="Control-X Control-O", Name="Basic Editing", Node="Basic").

Control-X Control-T@ @ @ (^R Transpose Lines) @\
Control-X Control-T transposes the contents of two lines.
@Note(IName="Control-X Control-T", Name="Fixing Typos", Node="Fixit").

@End(Description)

@HD2(Killing and Un-killing)

@Begin(Description)

Rubout@ @ @ (^R Backward Delete Character, built-in function) @\
Rubout deletes the previous character.  @Note(IName="Rubout",
Name="Basic Editing", Node="Basic").

Control-Rubout@ @ @ (^R Backward Delete Hacking Tabs, built-in function) @\
Control-Rubout deletes the previous character, but converts a tab
character into several spaces.  @Note(IName="Control-Rubout",
Node="Lisp").

Control-D@ @ @ (^R Delete Character, built-in function) @\
Control-D deletes the next character.  @Note(IName="Control-D",
Name="Basic Editing", Node="Basic").

Control-K@ @ @ (^R Kill Line) @\
Control-K kills to the end of the line, or, at the end of a line,
kills the line separator.  @Note(IName="Control-K", Node="Killing").

Control-W@ @ @ (^R Kill Region) @\
Control-W kills the region, the text between point and the mark.
@Note(IName="Control-W", Node="Killing").  @Note(Name="Region",
Node="Mark").

Control-Y@ @ @ (^R Un-kill) @\
Control-Y reinserts the last saved block of killed text.
@Note(IName="Control-Y", Node="Un-Killing").

Meta-W@ @ @ (^R Copy Region) @\
Meta-W saves the region as if it were killed without removing it from
the buffer.  @Note(IName="Meta-W", Node="Un-Killing").

Meta-Y@ @ @ (^R Un-kill Pop) @\
Meta-Y rolls the kill ring to reinsert saved killed text older than
the most recent kill.  @Note(IName="Meta-Y", Node="Un-Killing").

Control-Meta-W@ @ @ (^R Append Next Kill) @\
Control-Meta-W causes an immediately following kill command to append
its text to the last saved block of killed text.
@Note(IName="Control-Meta-W", Node="Un-Killing").

Control-X G@ @ @ (^R Get Q-reg) @\
Control-X G inserts in the buffer the contents of a q-register.
@INFO{@Note(Name-"Control-X G", Node="Copying").
}@Manual{@Note(Name="Q-registers", Node="Q-registers").}

Control-X T@ @ @ (^R Transpose Regions) @\
Control-X T transposes two arbitrary regions defined by point and the
last three marks.  @Note(IName="Control-X T", Name="Fixing Typos", Node="Fixit").

Control-X X@ @ @ (^R Put Q-reg) @\
Control-X X inserts in the buffer the contents of a q-register.
@INFO{@Note(Name-"Control-X X", Node="Copying").
}@Manual{@Note(Name="Q-registers", Node="Q-registers").}

M-X Overwrite Mode @\@*
M-X Overwrite Mode turns Overwrite mode on or off.
In Overwrite mode, printing characters overwrite existing text instead
of pushing it to the right.
@Note(Node="MinorModes", IName="Overwrite Mode", Name="Minor Modes").

@End(Description)

@HD2(Scrolling and Display Control)

@begin(Description)

Control-Alpha@ @ @ (SAIL Character Mode) @\
Control-Alpha toggles SAIL Character mode.  When this mode is on,
control characters in the buffer are displayed as themselves.
@Note(IName="Control-Alpha", Node="Screen").

Control-L@ @ @ (^R New Window) @\
Control-L clears the screen and centers point in it.  With an
argument, it can put point on a specific line of the screen.
@Note(IName="Control-L", Node="Display").

Control-V@ @ @ (^R Next Screen) @\
Control-V scrolls the text upward by a screenful or several lines.
@Note(IName="Control-V", Node="Display").

Meta-R@ @ @ (^R Move to Screen Edge) @\
Meta-R moves point to beginning of the text on a specified line of the
screen.  @Note(IName="Meta-R", Node="Display").

Meta-V@ @ @ (^R Previous Screen) @\
Meta-V scrolls downward by a screenful or several lines.
@Note(IName="Meta-V", Node="Display").

Control-Meta-R@ @ @ (^R Reposition Window) @\
Control-Meta-R tries to center on the screen the function or paragraph
you are looking at.  @Note(IName="Control-Meta-R", Node="Display").

Control-Meta-V@ @ @ (^R Scroll Other Window) @\
Control-Meta-V scrolls the other window up or down, when you are in
two window mode.  @Note(IName="Control-Meta-V", Node="Windows").

M-X View Buffer @\@*
M-X View Buffer skips through a buffer by screenfuls.
@Note(Node="Display", IName="View Buffer").

M-X View File @\@*
M-X View File lets you move through a file sequentially by screenfuls
forward and back.  @Note(Node="FilAdv", Name="View File").

@End(Description)

@HD2(The Mark and the Region)

@Begin(Description)

Control-Space@ @ @ (^R Set/Pop Mark) @\
Control-Space sets the mark or moves to the location of the mark.
@Note(IName="Control-Space", Node="Mark").

Control-<@ @ @ (^R Mark Beginning) @\
Control-< sets the mark at the beginning of the buffer.
@Note(IName="Control-<", Node="Mark").

Control->@ @ @ (^R Mark End) @\
Control-> sets the mark at the end of the buffer.
@Note(IName="Control->", Node="Mark").

Control-@@@ @ @ (^R Set/Pop Mark) @\
Control-@@ sets the mark or moves to the location of the mark.
@Note(IName="Control-@@", Node="Mark").

Meta-@@@ @ @ (^R Mark Word) @\
Meta-@@ puts the mark at the end of the next word.
@Note(IName="Meta-@@", Node="Words").

Meta-H@ @ @ (^R Mark Paragraph) @\
Meta-H puts point at the beginning of the paragraph and the mark at
the end.  @Note(IName="Meta-H", Node="Sentences").

Control-Meta-@@@ @ @ (^R Mark Sexp) @\
Control-Meta-@@ puts the mark at the end of the next s-expression.
@Note(IName="Control-Meta-@@", Node="Lists").

Control-Meta-H@ @ @ (^R Mark Defun) @\
Control-Meta-H puts point at the beginning of the current Defun and
the mark at the end.  @Note(IName="Control-Meta-H", Node="Defuns").

Control-X H@ @ @ (^R Mark Whole Buffer) @\
Control-X H puts point at the beginning of the buffer and the mark at
the end.  @Note(IName="Control-X H", Node="Mark").

Control-X Control-P@ @ @ (^R Mark Page) @\
Control-X Control-P puts point at the beginning of the current page
and the mark at the end.  @Note(IName="Control-X Control-P",
Node="Pages").

Control-X Control-X@ @ @ (^R Exchange Point and Mark) @\
Control-X Control-X sets point where the mark was and the mark where
point was.  @Note(IName="Control-X Control-X", Node="Mark").

@End(Description)

@HD2(Whitespace and Indentation)

@Begin(Description)

Tab@ @ @ (^R Indent According to Mode) @\
Tab either adjusts the indentation of the current line or inserts some
indentation, in a way that depends on the major mode.
@Note(IName="Tab", Name="Indenting Programs", Node="Indenting").
@Note(Name="Indenting Text", Node="TextIndent").

Linefeed@ @ @ (^R Indent New Line) @\
Linefeed is equivalent to Return followed by Tab.  It moves to a new
line and indents that line.  If done in the middle of a line, it
breaks the line and indents the new second line.
@Note(IName="Linefeed", Name="Indenting Text", Node="TextIndent").

Meta-Tab@ @ @ (^R Tab to Tab Stop) @\
Meta-Tab indents to the next EMACS-defined tab stop.
@Note(IName="Meta-Tab", Name="Indenting Text", Node="TextIndent").

Meta-M@ @ @ (^R Back to Indentation) @\
Meta-M positions the cursor on the current line after any indentation.
@Note(IName="Meta-M", Name="Indenting Text", Node="TextIndent").

Meta-\@ @ @ (^R Delete Horizontal Space) @\
Meta-\ deletes all spaces and tab characters around point.
@Note(IName="Meta-\", Name="Indenting Text", Node="TextIndent").

Meta-^@ @ @ (^R Delete Indentation) @\
Meta-^ joins two lines, replacing the indentation of the second line
with zero or one space, according to the context.
@Note(IName="Meta-^", Name="Indenting Text", Node="TextIndent").

Control-Meta-O@ @ @ (^R Split Line) @\
Control-Meta-O breaks a line, preserving the horizontal position of
the second half by indenting it to its old starting position.
@Note(IName="Control-Meta-O", Name="Indenting Text", Node="TextIndent").

Control-Meta-\@ @ @ (^R Indent Region) @\
Control-Meta-\ indents each line in the region, either by applying Tab
to each line, or by giving each the same specified amount of
indentation.  @Note(IName="Control-Meta-\", Name="Indenting Text", Node="TextIndent").

Control-X Tab@ @ @ (^R Indent Rigidly) @\
Control-X Tab shifts all the lines in the region right or left the
same number of columns.  @Note(IName="Control-X Tab",
Name="Indenting Text", Node="TextIndent").

M-X Edit Indented Text @\@*
M-X Edit Indented Text enters a recursive editing level designed for
editing text in which each line is indented.  @Note(Node="Filling",
IName="Edit Indented Text").

M-X Edit Tab Stops @\@*
M-X Edit Tab Stops lets you edit the tab stops used by ^R Tab to Tab
Stop.
@Note(Node="TextIndent", Name="Indenting Text", IName="Edit Tab Stops").

M-X Edit Tabular Text @\@*
M-X Edit Tabular Text enters a recursive editing level designed for
editing text arranged in a table.  @Note(Node="Filling",
IName="Edit Tabular Text").

M-X Indent Tabs Mode @\@*
M-X Indent Tabs Mode turns Indent Tabs mode on or off.
When Indent Tabs mode is on, the indentation commands use tab
characters for indentation whenever possible.  Otherwise they use only
spaces.
@Note(Node="MinorModes", IName="Indent Tabs Mode", Name="Minor Modes").

M-X Tabify @\@*
M-X Tabify converts spaces after point to tabs when that can be done without
changing the appearance.
@Note(Node="TextIndent", Name="Indenting Text", IName="Tabify").

M-X Untabify @\@*
M-X Untabify converts all tabs after point to spaces.
A numeric argument says how far apart the tab stops are,
which is good for converting files brought from systems with
tab stops at intervals other than 8.
@Note(Node="TextIndent", Name="Indenting Text", IName="Untabify").

@End(Description)

@HD2(Words, Sentences and Paragraphs)

@Begin(Description)

Meta-A@ @ @ (^R Backward Sentence) @\
Meta-A moves to the beginning of the sentence.  @Note(IName="Meta-A",
Node="Sentences").

Meta-B@ @ @ (^R Backward Word) @\
Meta-B moves backward one word.  @Note(IName="Meta-B", Node="Words").

Meta-D@ @ @ (^R Kill Word) @\
Meta-D kills one word forward.  @Note(IName="Meta-D", Node="Words").

Meta-E@ @ @ (^R Forward Sentence) @\
Meta-E moves to the end of the sentence.  @Note(IName="Meta-E",
Node="Sentences").

Meta-F@ @ @ (^R Forward Word) @\
Meta-F moves forward one word.  @Note(IName="Meta-F", Node="Words").

Meta-H@ @ @ (^R Mark Paragraph) @\
Meta-H puts point at the front of the current paragraph and the mark
at the end.  @Note(IName="Meta-H", Node="Sentences").

Meta-K@ @ @ (^R Kill Sentence) @\
Meta-K kills to the end of the sentence.  @Note(IName="Meta-K",
Node="Sentences").

Meta-T@ @ @ (^R Transpose Words) @\
Meta-T transposes two consecutive words.  @Note(IName="Meta-T",
Node="Words").

Meta-[@ @ @ (^R Backward Paragraph) @\
Meta-[ moves to the beginning of the paragraph.  @Note(IName="Meta-[",
Node="Sentences").

Meta-]@ @ @ (^R Forward Paragraph) @\
Meta-] moves to the end of the paragraph.  @Note(IName="Meta-]",
Node="Sentences").

Meta-Rubout@ @ @ (^R Backward Kill Word) @\
Meta-Rubout kills the previous word.  @Note(IName="Meta-Rubout",
Node="Words").

Control-X Rubout@ @ @ (^R Backward Kill Sentence) @\
Control-X Rubout kills back to the beginning of the sentence.
@Note(IName="Control-X Rubout", Node="Sentences").

M-X Atom Word Mode @\@*
M-X Atom Word Mode turns Atom Word mode on or off.
In Atom Word mode, the word commands consider an entire Lisp atom as
one word.
@Note(Node="MinorModes", IName="Atom Word Mode", Name="Minor Modes").

M-X Edit Syntax Table @\@*
M-X Edit Syntax Table allows you to edit the syntax table for word and
list delimiters.  @Note(Node="Syntax", Name="Syntax Table",
IName="Edit Syntax Table").

@End(Description)

@HD2(Filling Text)

@Begin(Description)

Meta-G@ @ @ (^R Fill Region) @\
Meta-G fills the region, treating it (usually) as one paragraph.
@Note(IName="Meta-G", Node="Filling").

Meta-Q@ @ @ (^R Fill Paragraph) @\
Meta-Q fills the current or next paragraph.  @Note(IName="Meta-Q",
Node="Filling").

Meta-S@ @ @ (^R Center Line) @\
Meta-S centers the current line.  @Note(IName="Meta-S",
Node="Filling").

Control-X .@ @ @ (^R Set Fill Prefix) @\
Control-X . specifies the fill prefix, which is used for filling
indented text.  @Note(IName="Control-X Period", Node="Filling").

Control-X F@ @ @ (^R Set Fill Column) @\
Control-X F sets the variable Fill Column which controls the margin
for filling and centering.  @Note(IName="Control-X F", Node="Filling").

M-X Auto Fill Mode @\@*
M-X Auto Fill Mode turns Auto Fill mode on or off.
In Auto Fill mode, long lines are broken between words automatically.
@Note(Node="Filling", IName="Auto Fill Mode").

@End(Description)

@HD2(Exiting, Quitting)

@Begin(Description)

Control-G @\@*
Control-G quits, interrupting a running command, or discarding any
partially typed command.  @Note(Iname="Control-G", Node="Quitting").

Control-]@ @ @ (Abort Recursive Edit) @\
Control-] aborts a recursive editing level; that is to say, exits it
without allowing the command which invoked it to finish.
@Note(IName="Control-]", Node="Quitting").

@ITS[Control-Meta-C]@Twenex[Control-Meta-Z]@ @ @ (^R Exit, built-in function) @\
@ITS[Control-Meta-C]@Twenex[Control-Meta-Z] exits from a recursive
editing level and allows the command which invoked the recursive
editing level to finish.  At top level, it exits from EMACS to its
superior @ITS(job)@Twenex(fork).
@Note(IName="@ITS[Control-Meta-C]@Twenex[Control-Meta-Z]",
Node="Exiting").

Control-X @ITS[Control-C]@Twenex[Control-Z]@ @ @ (^R Return to Superior) @\
Control-X @ITS[Control-C]@Twenex[Control-Z] returns from EMACS to its
superior @ITS[job]@Twenex[fork], even if EMACS is currently inside a
recursive editing level.  In that case, re-entering EMACS will find it
still within the recursive editing level.  @Note(IName="Control-X
@ITS[Control-C]@Twenex[Control-Z]", Node="Exiting").

M-X Compile @\@*
M-X Compile recompiles the file you are visiting, in a manner that
depends on the major mode.  @Note(Node="Compile").

@Twenex{
M-X Rerun CCL @\@*
M-X Rerun CCL exits from EMACS and repeats the most recent COMPILE-class
command in the EXEC.  @Note(Node="Programs", IName="Rerun CCL ").}

M-X Top Level @\@*
M-X Top Level returns to the top level EMACS command loop or to TECO.
@Note(Node="Quitting", IName="Top Level").

M-X Undo @\@*
M-X Undo retracts the last undoable change to the buffer.
@Note(IName="Undo", Node="Lossage").

@End(Description)

@HD2(Pages)

@Begin(Description)

Control-X L@ @ @ (^R Count Lines Page) @\
Control-X L prints the number of lines on the current page, and how
many come before point and how many come after.
@Note(IName="Control-X L", Node="Pages").

Control-X P@ @ @ (^R Narrow Bounds to Page) @\
Control-X P narrows the virtual boundaries to the current page.
@Note(IName="Control-X P", Node="Narrowing").

Control-X [@ @ @ (^R Previous Page) @\
Control-X [ moves backward to the previous page boundary.
@Note(IName="Control-X [", Node="Pages").

Control-X ]@ @ @ (^R Next Page) @\
Control-X ] moves forward to the next page boundary.
@Note(IName="Control-X ]", Node="Pages").

Control-X Control-P@ @ @ (^R Mark Page) @\
Control-X Control-P puts point at the beginning and the mark at the
end of the current page.  @Note(IName="Control-X Control-P",
Node="Pages").

M-X View Page Directory (in PAGE) @\@*
M-X View Page Directory prints a directory of the pages of the file.
@Note(Node="PAGE", IName="View Page Directory").

M-X What Page @\@*
M-X What Page prints the current page and line number in the file.
@Note(Node="Pages", IName="What Page").

@End(Description)

@HD2(Lisp)

@Begin(Description)

Meta-(@ @ @ (^R Make ()) @\
Meta-( places a pair of parentheses around the next several
s-expressions.  @Note[IName="Meta-(", Node="Lists"].

Meta-)@ @ @ (^R Move Over )) @\
Meta-) moves past the next close parenthesis and adjusts the
indentation of the following line.  @Note[IName="Meta-)",
Node="Lists"].

Control-Meta-Tab@ @ @ (^R Indent for Lisp) @\
Control-Meta-Tab adjusts the indentation of the current line for
proper Lisp style.  @Note(IName="Control-Meta-Tab", Node="Indenting").

Control-Meta-(@ @ @ (^R Backward Up List) @\
Control-Meta-( moves backward up one level of list structure.
@Note(IName="Control-Meta-(", Node="Lists").

Control-Meta-)@ @ @ (^R Up List) @\
Control-Meta-) moves forward up one level of list structure.
@Note(IName="Control-Meta-)", Node="Lists").

Control-Meta-@@@ @ @ (^R Mark Sexp) @\
Control-Meta-@@ puts the mark at the end of the next s-expression.
@Note(IName="Control-Meta-@@", Node="Mark").

Control-Meta-A@ @ @ (^R Beginning of Defun) @\
Control-Meta-A moves to the beginning of the current Defun.
@Note(IName="Control-Meta-A", Node="Defuns").

Control-Meta-B@ @ @ (^R Backward Sexp) @\
Control-Meta-B moves backward over one s-expression.
@Note(IName="Control-Meta-B", Node="Lists").

Control-Meta-D@ @ @ (^R Down List) @\
Control-Meta-D moves forward and down a level in list structure.
@Note(IName="Control-Meta-D", Node="Lists").

Control-Meta-E@ @ @ (^R End of Defun) @\
Control-Meta-E moves to the end of the current Defun.
@Note(IName="Control-Meta-E", Node="Defuns").

Control-Meta-F@ @ @ (^R Forward Sexp) @\
Control-Meta-F moves forward over one s-expression.
@Note(IName="Control-Meta-F", Node="Lists").

Control-Meta-G@ @ @ (^R Format Code) @\
Control-Meta-G grinds the s-expression after point.
@Note(IName="Control-Meta-G", Node="Grinding").

Control-Meta-H@ @ @ (^R Mark Defun) @\
Control-Meta-H puts point before and the mark after the current or
next Defun.  @Note(IName="Control-Meta-H", Node="Defuns").

Control-Meta-K@ @ @ (^R Kill Sexp) @\
Control-Meta-K kills the following s-expression.
@Note(IName="Control-Meta-K", Node="Lists").

Control-Meta-N@ @ @ (^R Next List) @\
Control-Meta-N moves forward over one list, ignoring atoms before the
first open parenthesis.  @Note(IName="Control-Meta-N", Node="Lists").

Control-Meta-P@ @ @ (^R Previous List) @\
Control-Meta-P moves backward over one list, ignoring atoms reached
before the first close parenthesis.  @Note(IName="Control-Meta-P",
Node="Lists").

Control-Meta-Q@ @ @ (^R Indent Sexp) @\
Control-Meta-Q adjusts the indentation of each of the lines in the
following s-expression, but not the current line.
@Note(IName="Control-Meta-Q", Node="Indenting").

Control-Meta-T@ @ @ (^R Transpose Sexps) @\
Control-Meta-T transposes two consecutive s-expressions.
@Note(IName="Control-Meta-T", Node="Lists").

Control-Meta-U@ @ @ (^R Backward Up List) @\
Control-Meta-U moves backward up one level of list structure.
@Note(IName="Control-Meta-U", Node="Lists").

@End(Description)

@HD2(Files)

@Begin(Description)

Meta-.@ @ @ (^R Find Tag) @\
Meta-. moves to the definition of a specific function, switching files
if necessary.  @XNote(Name="TAGS", IName="Meta-.", File="TAGS", Node="Top").

Meta-~@ @ @ (^R Buffer Not Modified) @\
Meta-~ clears the flag which says that the buffer contains changes
that have not been saved.  @Note(IName="Meta-~", Node="Visiting").

Control-X Control-F@ @ @ (Find File) @\
Control-X Control-F visits a file in its own buffer.
@Note(IName="Control-X Control-F", Node="Buffers").

Control-X Control-Q@ @ @ (^R Set File Read Only) @\
Control-X Control-Q makes the visited fie read only, or no longer read only.
@Note(IName="Control-X Control-Q", Node="Visiting").

Control-X Control-S@ @ @ (^R Save File) @\
Control-X Control-S saves the visited file.  @Note(IName="Control-X
Control-S", Node="Visiting").

Control-X Control-V@ @ @ (^R Visit File) @\
Control-X Control-V visits a file.  @Note(IName="Control-X Control-V",
Node="Visiting").

Control-X Control-W@ @ @ (Write File) @\
Control-X Control-W saves the file, asking for names to save it under.
@Note(IName="Control-X Control-W", Node="FilAdv", Name="Advanced File Commands").

M-X Append to File @\@*
M-X Append to File appends the contents of the region to the end of a
specified file.  @Note(Node="FilAdv",  Name="Advanced File Commands", IName="Append to File").

M-X Auto Save Mode @\@*
M-X Auto Save Mode turns Auto Save mode on or off.
@Note(Node="AutoSave", Name="Auto Save", IName="Auto Save Mode").

M-X Copy File @\@*
M-X Copy File copies a file to a new name.
@Note(Node="FilAdv", Name="Advanced File Commands", IName="Copy File").

M-X Delete File @\@*
M-X Delete File deletes a file.
@Note(Node="FilAdv", Name="Advanced File Commands", IName="Delete File").

M-X Insert File @\@*
M-X Insert File inserts the contents of a file into the buffer (within
the existing text).
@Note(Node="FilAdv", Name="Advanced File Commands", IName="Insert File").

M-X Prepend to File @\@*
M-X Prepend to File appends the contents of the region to the start of
a specified file.  @Note(Node="FilAdv", Name="Advanced File Commands", IName="Prepend
to File").

M-X Rename File @\@*
M-X Rename File changes the name of a file.
@Note(Node="FilAdv", Name="Advanced File Commands", IName="Rename File").

M-X Revert File @\@*
M-X Revert File undoes changes to a file by reading in the previous
version.  @Note(Node="Revert", Name="Revert File").

M-X Save All Files @\@*
M-X Save All Files offers to write back buffers which may need it.
@Note(Node="Buffers", IName="Save All Files").

M-X Set Visited Filename @\@*
M-X Set Visited Filename changes the visited filename, without writing a file.
@Note(Node="FilAdv", Name="Advanced File Commands", IName="Set Visited Filename").

M-X Write Region @\@*
M-X Write Region writes the contents of the region into a file.
@Note(Node="FilAdv", Name="Advanced File Commands", IName="Write Region").

@End(Description)

@HD2(File Directories)

@Begin(Description)

Control-X D@ @ @ (^R DIRED) @\
Control-X D invokes the directory editor DIRED, useful for deleting
many files.  @Note(IName="Control-X D", Node="DIRED").

Control-X Control-D@ @ @ (^R Directory Display) @\
Control-X Control-D displays a subset of a directory.
@Note(IName="Control-X Control-D", Name="Directories", Node="ListDir").

M-X Clean Directory @\@*
M-X Clean Directory deletes all but the most recent versions of every
file in a directory.
@Note(Node="CleanDir", Name="Cleaning Directories", IName="Clean Directory").

@ITS{
M-X Compare Directories @\@*
M-X Compare Directories compare two directories with the same name on
different machines.  @Note(Node="DirComp", Name="Compare Directories").
}

@ITS{
M-X List Directories @\@*
M-X List Directories list the names of all disk directories.
@Note(Node="ListDir", Name="Directories", IName="List Directories").
}

M-X List Files @\@*
M-X List Files prints a very brief listing of a directory, listing
only the filenames, several files per line.
@Note(Node="ListDir", Name="Directories", IName="List Files").

M-X Reap File @\@*
M-X Reap File deletes all but the most recent versions of a file.
@Note(Node="CleanDir", Name="Cleaning Directories", IName="Reap
File").

M-X View Directory @\@*
M-X View Directory prints a file directory.
@Note(Name="Directories", Node="ListDir", IName="View Directory").

@End(Description)

@HD2(Buffers)

@Begin(Description)

Control-X Control-B@ @ @ (List Buffers) @\
Control-X Control-B prints a list of all buffers, their major modes
and the files they are visiting.
@Note(IName="Control-X Control-B", Node="Buffers").

Control-X A@ @ @ (^R Append to Buffer) @\
Control-X A adds the text of region into another buffer.
@Note(IName="Control-X A", Node="Copying").

Control-X B@ @ @ (Select Buffer) @\
Control-X B is the command for switching to another buffer.
@Note(IName="Control-X B", Node="Buffers").

Control-X K@ @ @ (Kill Buffer) @\
Control-X K kills a buffer.  @Note(IName="Control-X K",
Node="Buffers").

M-X Insert Buffer @\@*
M-X Insert Buffer inserts the contents of another buffer into the
existing text of this buffer.  @Note(Node="Buffers", IName="Insert Buffer").

M-X Kill Some Buffers @\@*
M-X Kill Some Buffers offers to kill each buffer.
@Note(Node="Buffers", IName="Kill Some Buffers").

M-X Make Space @\@*
M-X Make Space tries to free up space inside EMACS for more libraries
or buffers.
@Manual{@Note(Name="Storage Exhausted", Node="URK").
}@INFO{@Note(IName="Make Space", Node="Lossage").}

M-X Rename Buffer @\@*
M-X Rename Buffer changes the name of the current buffer.
@Note(Node="Buffers", IName="Rename Buffer").

M-X What Available Space @\@*
M-X What Available Space prints the amount of space left inside EMACS
for more libraries or buffers.
@Manual{@Note(Name="Storage Exhausted", Node="URK").
}@INFO{@Note(IName="What Available Space", Node="Lossage").}

@End(Description)

@HD2(Comments)

@Begin(Description)

Meta-Linefeed@ @ @ (^R Indent New Comment Line) @\
Meta-Linefeed moves to a new line and indents it.  If point had been
within a comment on the old line, a new comment is started on the new
line and indented under the old one.  @Note(IName="Meta-Linefeed",
Node="Comments").

Meta-;@ @ @ (^R Indent for Comment) @\
Meta-; inserts a properly indented comment at the end of the current
line, or adjusts the indentation of an existing comment.
@Note(IName="Meta-;", Node="Comments").

Meta-N@ @ @ (^R Down Comment Line) @\
Meta-N moves down a line and starts a comment.  @Note(IName="Meta-N",
Node="Comments").

Meta-P@ @ @ (^R Up Comment Line) @\
Meta-P moves up a line and starts a comment.  @Note(IName="Meta-P",
Node="Comments").

Control-Meta-;@ @ @ (^R Kill Comment) @\
Control-Meta-; kills any comment on the current line.
@Note(IName="Control-Meta-;", Node="Comments").

Control-X ;@ @ @ (^R Set Comment Column) @\
Control-X ; sets the column at which comments are indented, from an
argument, the current column, or the previous comment.
@Note(IName="@w[Control-X ;]", Node="Comments").

@End(Description)

@HD2(Case Conversion)

@Begin(Description)

Meta-C@ @ @ (^R Uppercase Initial) @\
Meta-C makes the next word lower case with a capital initial.  It
moves over the word.  @Note(IName="Meta-C", Node="Case").

Meta-L@ @ @ (^R Lowercase Word) @\
Meta-L moves over a word converting it to lower case.
@Note(IName="Meta-L", Node="Case").

Meta-U@ @ @ (^R Uppercase Word) @\
Meta-U moves over a word converting it to upper case.
@Note(IName="Meta-U", Node="Case").

Control-X Control-L@ @ @ (^R Lowercase Region) @\
Control-X Control-L converts the text of the region to lower case.
@Note(IName="Control-X Control-L", Node="Case").

Control-X Control-U@ @ @ (^R Uppercase Region) @\
Control-X Control-U converts the text of the region to upper case.
@Note(IName="Control-X Control-U", Node="Case").

@End(Description)

@HD2(Minor Corrections)

@Begin(Description)

@ITS{
Meta-#@ @ @ (^R Change Font Region) @\
Meta-# inserts a font-change command good for certain text justifiers
around a word.  @Note(IName-"Meta-#", Node="Fonts").}

Meta-$@ @ @ (^R Correct Word Spelling) @\
Meta-$ (Dollar sign, not Altmode) passes the word before point to the
@ITS{SPELL}@Twenex{ISPELL} program.  If it is not a correct spelling,
you have the option of replacing it with a corrected spelling.
@Note(IName="Meta-$", Node="Fixit", Name="Fixing Typos").

Meta-'@ @ @ (^R Upcase Digit) @\
Meta-' converts a digit before point on the same or previous line to a
punctuation character, assuming that you failed to type the shift key
and thus typed the digit by mistake.
@Note(IName="Meta-'", Node="Fixit", Name="Fixing Typos").

Meta-_@ @ @ (^R Underline Word) @\
Meta-_ inserts underlining commands good for certain text justifiers
around a word.  @Note(IName="Meta-_", Node="Underlining").

@ITS{
Control-X #@ @ @ (^R Change Font Region) @\
Control-X # inserts font change commands good for certain text
justifiers around the region.  @Note(IName-"Control-X #",
Node="Fonts").}

Control-X _@ @ @ (^R Underline Region) @\
Control-X _ inserts underlining commands good for certain text
justifiers around the region.  @Note(IName="Control-X _",
Node="Underlining").

@End(Description)

@HD2(Windows)

@Begin(Description)

Control-Meta-V@ @ @ (^R Scroll Other Window) @\
Control-Meta-V scrolls the other window up or down.
@Note(IName="Control-Meta-V", Node="Display").

Control-X 1@ @ @ (^R One Window) @\
Control-X 1 returns to one-window mode.  @Note(IName="Control-X 1",
Node="Windows").

Control-X 2@ @ @ (^R Two Windows) @\
Control-X 2 splits the screen into two windows.  @Note(IName="Control-X 2",
Node="Windows").

Control-X 3@ @ @ (^R View Two Windows) @\
Control-X 3 splits the screen into two windows but stays in window
one.  @Note(IName="Control-X 3", Node="Windows").

Control-X 4@ @ @ (^R Visit in Other Window) @\
Control-X 4 displays two windows and selects a buffer or visits a file
in the other window.  @Note(IName="Control-X 4", Node="Windows").

Control-X O@ @ @ (^R Other Window) @\
Control-X O switches from one window to the other.
@Note(IName="Control-X O", Node="Windows").

Control-X ^@ @ @ (^R Grow Window) @\
Control-X ^ changes the allocation of screen space to the two windows.
@Note(IName="Control-X ^", Node="Windows").

M-X Compare Windows @\@*
M-X Compare Windows compares the text in window one after point with
that in window two after point.  It advances point in both windows to
the first non-matching text.  @Note(IName="Compare Windows",
Node="Windows").

@End(Description)

@HD2(Narrowing)

@Begin(Description)

Control-X N@ @ @ (^R Narrow Bounds to Region) @\
Control-X N narrows the virtual boundaries to the region.
@Note(IName="Control-X N", Node="Narrowing").

Control-X P@ @ @ (^R Narrow Bounds to Page) @\
Control-X P narrows the virtual boundaries to the current page.
@Note(IName="Control-X P", Node="Pages").

Control-X W@ @ @ (^R Widen Bounds) @\
Control-X W widens the virtual boundaries back to the entire buffer.
@Note(IName="Control-X W", Node="Narrowing").

@End(Description)

@HD2(Status Information)

@Begin(Description)

Control-X =@ @ @ (What Cursor Position) @\
Control-X = prints information on the screen position and character
position of the cursor, the size of the file, and the character after
the cursor.  @Note(IName="Control-X =", Node="Filling").

Control-X L@ @ @ (^R Count Lines Page) @\
Control-X L prints the number of lines in the current page, and how
many come before or after point.  @Note(IName="Control-X L",
Node="Pages").

M-X List Loaded Libraries @\@*
M-X List Loaded Libraries lists the names of all loaded libraries.
@Note(Node="Libraries", IName="List Loaded Libraries").

M-X List Variables @\@*
M-X List Variables lists the names and values of all variables, or of
those whose names contain a specified string.  @Note(Node="Variables",
IName="List Variables").

M-X List Redefinitions @\@*
 M-X List Redefinitions describes all the ways which the major mode
and local modes of the selected buffer modify the standard EMACS.
@Note(Node="MajorModes", Name="Major Modes", IName="List
Redefinitions").

M-X What Page @\@*
M-X What Page prints the page and line number of point.
@Note(Node="Pages", IName="What Page").

@End(Description)

@HD2(Keyboard Macros)

@Begin(Description)

Control-X (@ @ @ (^R Start Kbd Macro) @\
Control-X ( begins defining a keyboard macro.  @Note[IName="Control-X
(", Node="KBDMAC"].

Control-X )@ @ @ (^R End Kbd Macro) @\
Control-X ) terminates the definition of a keyboard macro.
@Note[IName="Control-X )", Node="KBDMAC"].

Control-X E@ @ @ (^R Call Last Kbd Macro) @\
Control-X E executes the most recently defined keyboard macro.
@Note(IName="Control-X E", Node="KBDMAC").

Control-X Q@ @ @ (^R Kbd Macro Query) @\
Control-X Q in a keyboard macro can ask the user whether to continue
or allow him to do some editing before continuing with the keyboard
macro.  @Note(IName="Control-X Q", Node="KBDMAC").

M-X Name Kbd Macro @\@*
M-X Name Kbd Macro gives a permanent name to the last keyboard macro defined.
@Note(Node="KBDMAC", IName="Name Kbd Macro").

M-X View Kbd Macro @\@*
M-X View Kbd Macro prints the definition of a keyboard macro.
@Note(Node="KBDMAC", IName="View Kbd Macro").

@End(Description)

@HD2(Libraries)

@Begin(Description)

M-X Kill Libraries @\@*
M-X Kill Libraries discards one or more libraries from core.
@Note(IName="Kill Libraries", Node="Libraries").

M-X List Library @\@*
M-X List Library describes briefly all the functions in a library.
@Note(IName="List Library", Node="Libraries").

M-X Load Library @\@*
M-X Load Library loads one library, permanently.
@Note(IName="Load Library", Node="Libraries").

M-X Run Library @\@*
M-X Run Library loads a library temporarily, invokes a function in it,
and then discards the library.
@Note(IName="Run Library", Node="Libraries").

@End(Description)

@HD2(Variables)

@Begin(Description)

M-X Edit Options @\@*
M-X Edit Options lets you edit, in a recursive editing level, the
values of many variables.
@Note(IName="Edit Options", Node="Variables").

M-X Kill Local Q-register @\@*
M-X Kill Local Q-register makes a q-register or command character
definition no longer local to the selected buffer.
@INFONote(IName="Kill Local Q-register", File="CONV",
Name="Variables", Node="Vars").

M-X Kill Local Variable
M-X Kill Local Variable makes a variable
value no longer local to the selected buffer.
@INFONote(IName="Kill Local Variable", File="CONV",
Name="Variables", Node="Vars").

M-X Kill Variable @\@*
M-X Kill Variable eliminates a particular variable.
@Note(IName="Kill Variable", Node="Variables").

M-X Make Local Q-register
M-X Make Local Q-register makes a q-register or command character
definition local to the selected buffer.
@INFONote(IName="Make Local Q-register", File="CONV",
Name="Variables", Node="Vars").

M-X Make Local Variable
M-X Make Local Variable makes a variable
value local to the selected buffer.
@INFONote(IName="Make Local Variable", File="CONV",
Name="Variables", Node="Vars").

M-X Set Key @\@*
M-X Set Key connects a function to a command character.
@Note(IName="Set Key", Node="MMArcana", Name="M-X Commands").

M-X Set Variable @\@*
M-X Set Variable sets the value of a variable.
@Note(IName="Set Variable", Node="Variables").

M-X View Variable @\@*
M-X View Variable displays the value and comment of a variable.
@Note(IName="View Variable", Node="Variables").

@End(Description)

@HD2(Mail)

@Begin(Description)

Control-X M@ @ @ (Send Mail) @\
Control-X M allows you to edit and send a message using your favorite
mail-reading program.
@ITS{The default is RMAIL.}@Twenex{The default is MM.}
@Note(Node="Mail", IName="Control-X M").

Control-X R@ @ @ (Read Mail) @\
Control-X R runs your choice of mail-reading program to read and edit
your mail.  @ITS{The default is RMAIL.}@Twenex{The default
is MM.}
@Note(Node="Mail", IName="Control-X R").

@Twenex{
M-X Check Mail @\@*
M-X Check Mail tells you whether you have any new mail to be read.
@Note(Node="Mail", IName="Check Mail").}

@ITS{
M-X View Mail @\@*
M-X View Mail displays your own or another user's mail file using View
File.  @Note(Node="Mail", IName="View Mail").}

@End(Description)

@HD2(Minibuffer)

@Begin(Description)

Control-%@ @ @ (^R Replace String) @\
Control-% invokes a minibuffer containing a call to Replace String.
You fill in the arguments.  @Note(IName="Control-%", Node="Replace").

Meta-Altmode@ @ @ (^R Execute Minibuffer) @\
Meta-Altmode invokes an empty minibuffer which you can fill in with a
TECO program to be executed.  @Note(IName="Meta-Altmode",
Node="Minibuffer").

Meta-%@ @ @ (^R Query Replace) @\
Meta-% invokes a minibuffer containing a call to Query Replace.  You
fill in the arguments.  @Note(IName="Meta-%", Node="Replace").

Control-X Altmode@ @ @ (^R Re-execute Minibuffer) @\
Control-X Altmode re-executes a TECO program previously executed in
the minibuffer.  It can also re-execute an extended command.
@Note(IName="Control-X Altmode", Node="Minibuffer").

@End(Description)

@Comment[

Local Modes:
Mode:Text
Page Delimiter:@HD2		   
Paragraph Delimiter:
End:
]
