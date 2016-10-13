@make(INFO)
@Device(INFO)
@Comment{

This is the SCRIBE source from which the INFO file for EMACS and
the EMACS GUIDE are generated.

Control characters are represented as @CTL[X].

SCRIBE requires two @'s whenever one is wanted.  The SCRIBE "@:"
construct must be used when a sentence ends with a one-letter word.
"@." must be used when a sentence end appears to occur after an
abbreviation.  It is also necessary for after an @Note inside
parentheses followed by whitespace, in case the closeparen turns up at
the end of a line after a M-Q.

The SCRIBE constructs @U and @I cannot be used.  Instead, use @XXU and
@XXI for underlining and italicizing.  These do nothing in the INFO version.
Alternatively, use @XXUU and @XXII, which turn into all caps in
the INFO version.

}
@Define(Commands=Description,LeftMargin 16,Indent -8,Spread 0)
@Define(WideCommands=Description,LeftMargin 20,Indent -12,Spread 0)
@Define(DoubleWideCommands=Description,LeftMargin 24,Indent -16,Spread 0)
@Case[device,
Dover=<@Define(GrossCommands=Description,LeftMargin 16,Indent -16,Spread 3pts)>,
Else=<@Define(GrossCommands=Description,LeftMargin 16,Indent -16,Spread 1)>
]

@Case[device,
Dover=<@Define(Example1=Example,Rightmargin +0,Leftmargin +0,FaceCode F)>,
Else=<@Define(Example1=Example)>]

@Define(GroupedParagraph=Group)
@Case[draft, ITS "@case{device, Dover (@Use<auxfile='EMACS-ITS-DOVER.AUX'>),
				LPT (@Use<auxfile='EMACS-ITS-LPT.AUX'>)}",
	     Twenex "@case{device, Dover (@Use<auxfile='EMACS-TWENEX-DOVER.AUX'>),
				   LPT (@Use<auxfile='EMACS-TWENEX-LPT.AUX'>)}"]

@Case{draft, ITS <@Textform[CC="C-C",CZ="C-Z",CMC="C-M-C",TAGS=":TAGS",ITAGS=":TAGS",EVARS="EVARS"]>}
@Case{draft, Twenex <@Textform[CC="C-Z",CZ="C-C",CMC="C-M-Z",TAGS="TAGS", ITAGS="ITAGS", EVARS="EMACS.VARS"]>}

@Case{device, INFO "",
     Else {
	@Pageheading(Even,Left "@Value(Page)",Right "EMACS Manual for @Value(draft) Users")
	@Pageheading(Odd,Right "@Value(Page)",Left "@Title(Chapter)")}}

@Case{device, INFO [@textform(dfn=<"@parm(text)">)],
	      Dover [@define(dfn=i)],
	      LPT [@define(dfn=u)]}

@style(stringmax=20000)
@string(Filename="EMACS")

@Comment(
Here starts the actual text of the manual
)

@INFO{@Verbatim{
This file documents the EMACS editor.  -*-Text-*-
Don't edit this file! It is produced by SCRIBE from another file.
Be sure to run TAGS over this file after you make it with SCRIBE.
}}
@Node(Name="Top", Up="(DIR)")
@String(Next-Node-Name="")

@INFO{
The EMACS Editor

This is an INFO-ized EMACS reference manual.
}
@Menu[
* Intro::       An introduction to this documentation.
* Distrib::	How to get a copy of EMACS, or an EMACS manual.
* Glossary::    Definitions of important concepts, and cross refs.
* CommandIndex::Brief info on all commands ordered by topic,
                and cross refs.
* LibCat::      Brief info on available libraries.
* VarIndex::    Brief info on meanings of specific variables.
* Screen::      How to interpret what you see on the screen.
* Characters::  EMACS's character sets;  usage from deficient
                (ie, standard ASCII or upper case only) keyboards.
* Basic::       The most basic editing commands.

Important General Concepts
* Arguments::   Giving numeric arguments to commands.
* M-X::         Issuing long-named "extended" commands.
* Subsystems::  Commands that themselves read commands in a distinctive
                language, such as INFO and Backtrace.
* Recursive::   Recursive editing levels; situations when you are
                using ordinary EMACS commands but editing something
                special-purpose (such as a message to send).
* Exiting::     Exiting EMACS, subsystems, or recursive editing levels.
@Twenex{* Subforks::    Communicating with the operating-system:
                Running an inferior EXEC, checking for mail, etc.
}* Help::        Commands for asking EMACS about its commands.

Important Text-Changing Commands
* Mark::        The mark: how to delimit a "region" of text.
* Killing::     Killing text.
* Un-killing::  Recovering killed text.  Moving text.
* Copying::     Other ways of copying text.
* Search::      Finding or replacing occurrences of a string.
* Text::        Commands and modes for editing English.
* Fixit::       Commands especially useful for fixing typos.
* Abbrev: (WORDAB),     How to define text abbreviations to reduce
                        the number of characters you must type.

Larger Units of Text
* Files::       All about handling files.
* Buffers::     Multiple buffers; editing several files at once.
* Display::     Controlling what text is displayed.
* Windows::     Viewing two pieces of text at once.
* Narrowing::   Commands for narrowing view to part of the buffer.
* Pages::       Commands for dealing with pages in files.
* Replace::     Repetitive search and replace commands.
* TECOSearch::  TECO search strings.

Editing Programs
* MajorModes::  Text mode vs. Lisp mode vs. MIDAS mode ...
* Programs::    Commands and modes for editing programs.
* Tags: (TAGS), The Tags subsystem remembers the location of each
                "tag" or function definition in one or more files,
                and allows you to go directly to any of them.

Customization
* MinorModes::  Some useful options you can turn on and off.
* Libraries::   Loading additional libraries of commands.
* Variables::   Named variables:  what they do and how to use them.
* Syntax::      The syntax table.
* FS Flags::    FS flags: TECO's variables.
* Init::        Init files and @EVARS() files.
* Locals::      Local modes lists in files.
* KBDMAC::      Making an abbreviation for a sequence of commands.
* Minibuffer::  Executing small TECO programs interactively.

Recovery from Lossage
* Quitting::    Quitting and Aborting.
* Lossage::     What to do if EMACS is hung.
* Undo::        Undoing a command that destroyed your text.
* Journals::    Journal files save all your commands in case of crash.
* Bugs::        How and when to report a bug.

Other Available Libraries
* PICTURE::     Subsystem for editing pictures made out of characters.
* Sort::        Commands for sorting part of the buffer.
* SLOWLY: (SLOWLY),     A package of macros for people using slow
                        terminals.
* RENUM:  (RENUM),      A package of macros for renumbering sections,
                        references, equations, etc. in manuscripts.
* DOCOND: (DOCOND),     Subsystem for "assembly conditionals"
                        in documentation files.
@ITS{* RMAIL: (RMAIL),       Subsystem for editing mail.
}* Babyl: (Babyl),@ITS{        Babyl is, like RMail, an EMACS mail subsystem.
                        It differs from RMail in some respects, in
                        particular: it runs on TENEX and TWENEX.
}@Twenex{        For reading mail.
* INTER: (INTER),       Interface between EMACS and Interlisp.
}* LEDIT: (LEDIT),       Interface between EMACS and MacLisp.
* INFO: (INFO),         Subsystem for reading documentation files.
* CLU: (ECLU),          Subsystem containing CLU mode, a major mode.
* PL1: (EPL1),          Subsystem containing PL1 mode, a major mode.
* PASCAL: (EPASC),      Subsystem containing PASCAL mode, a major mode.
* TDEBUG: (TDEBUG),     EMACS macro 2 window real-time debugger.
* Internals: (CONV),    EMACS internals.  Customization.  Init files.
* TMACS: (TMACS)Top,    Assorted useful commands and subroutines.

Here are some other nodes which are really inferiors of the ones
already listed, so you can get to them in one step:

* ModeLine::    How to interpret the mode line at top level.
* MMArcana::    Hows and whys of MM commands.
* Mail::        Reading mail.
* Visiting::    How to visit a file for editing.
* ListDir::     How to list a directory.
* Revert::      How to cancel some changes you have made.
* AutoSave::    Protection from system crashes.
* CleanDir::    Deleting piled up old versions of files.
* DIRED::       Deleting files by "editing your directory".
* Filadv::      Miscellaneous file commands.
@ITS{* DirComp::     Comparing two directories.
* Compile::     M-X Compile: compile the visited file.
}* Indenting::   Indentation commands for programs.
* Matching::    Automatic display of how parens balance.
* Lisp::        Commands for Lisp code.
* Lists::       Commands for moving over lists.
* Defuns::      Commands for top level lists (defuns).
* Comments::    Commands that understand comments in code.
* Grinding::    Reformatting Lisp code.
* MIDAS::       Commands for assembler language code.
* Other Langs:: Programming languages other than Lisp and assembler.
* Words::       Commands for moving over words.
* Sentences::   Commands for sentences and paragraphs.
* TextIndent::  Commands for indenting text.
* Filling::     Commands for filling and centering text.
* Case::        Case conversion commands.
* NoLowerCase:: What to do on terminals with no lower case.
@ITS{* Fonts::       Font change commands.
}* Underlining:: Underlining commands.
* SCRIBE::      Editing SCRIBE input files.
* Dissociation::Dissociated Press.
* PAGE Lib: PAGE.       Macros for editing only one page at a time.
@Twenex{* Term Types::  How to specify the terminal type.
}* Printing::    Printing terminals.
]

@Manual[

@modify(TitleBox,Fixed 1.2inches)
@begin(TitlePage)
@begin(TitleBox)
@Center(MASSACHUSETTS INSTITUTE OF TECHNOLOGY
ARTIFICIAL INTELLIGENCE LABORATORY)
@blankspace(.4inches)
@flushleft(AI Memo @ITS{554}@Twenex{555}@>@Value(Date))
@blankspace(.5inches)
@MajorHeading(EMACS Manual for @ITS{ITS}@Twenex{TWENEX} Users)
@MajorHeading(by)
@MajorHeading(Richard M. Stallman)
@Heading(A reference manual)
@Heading(for the extensible, customizable, self-documenting)
@Heading(real-time display editor)
This manual corresponds to EMACS version 162
@end(TitleBox)
@Begin(ResearchCredit)
This report describes work done at the Artificial Intelligence Laboratory
of the Massachusetts Institute of Technology.  Support for the laboratory's
research is provided in part by the Advanced Research Projects Agency of the
Department of Defense under Office of Naval Research contract N00014-80-C-0505.
@End(ResearchCredit)
@End(TitlePage)

@PrefaceSection(Preface)
  This manual documents the use and simple customization of the
display editor EMACS with the @ITS{ITS}@Twenex{Twenex
(officially known as "TOPS-20")} operating system.  The reader is @i(not)
expected to be a programmer.  Even simple customizations do not
require programming skill, but the user who is not interested in
customizing can ignore the scattered customization hints.

  This is primarily a reference manual, but can also be used as a
primer.  However, I recommend that the newcomer first use the on-line,
learn-by-doing tutorial @Twenex{TEACH-EMACS}@ITS{TEACHEMACS, by typing
:TEACHEMACS<cr> while in HACTRN}.  With it, you learn EMACS by using
EMACS on a specially designed file which describes commands, tells you
when to try them, and then explains the results you see.  This gives a
more vivid introduction than a printed manual.

  On first reading, you need not make any attempt to memorize chapters
1 and 2, which describe the notational conventions of the manual and the
general appearance of the EMACS display screen.  It is enough to be
aware of what questions are answered in these chapters, so you can
refer back when you later become interested in the answers.  After
reading the Basic Editing chapter you should practice the commands
there.  The next few chapters describe fundamental techniques and
concepts that are referred to again and again.  It is best to
understand them thoroughly, experimenting with them if necessary.

  To find the documentation on a particular command, look in the index
if you know what the command is.  Both command characters and function
names are indexed.  If you know vaguely what the command
does, look in the command summary.  The command summary contains a line or
two about each command, and a cross reference to the section of the
manual that describes the command in more detail; related commands
are grouped together.  There is also a glossary, with a cross
reference for each term.

  Many user-contributed libraries accompany EMACS, and often then have
no documentation except their on-line self-documentation.  Browsing
through the catalogue of libraries in this manual is a good way to find
out what is available.

  This manual has in two versions, one for ITS, @Twenex{MIT's
Incompatible Timesharing System,} and one for Twenex@ITS{, DEC's
"TOPS-20" system}.  Each version comes in three forms: the published
form, the LPT form, and the INFO form.  You can order the published
form from the Publications Department of the Artificial Intelligence
lab for $3.25 per copy; be sure to specify the ITS version or the
Twenex version.  The LPT form is available on line as
@Twenex{EMACS:EMACS.GUIDE}@ITS{EMACS;EMACS GUIDE} for printing on
unsophisticated hard copy devices such as terminals and line printers.
The INFO form is for on-line perusal with the INFO program.  All three
forms are substantially the same.

For information on the underlying philosophy of EMACS and the lessons
learned from its development, write to me for a copy of AI memo 519a,
"EMACS, the Extensible, Customizable Self-Documenting
Display Editor", or send Arpanet mail to RMS@@MIT-AI.

@format{
@tabdivide(2)
@\Yours in hacking,
}
@verbatim{

					     /  2 \ 1/2
					    <  X   >
					    @! \    /
}
@begin{display,rightmargin 0}
@/Richard M. Stallman
@/Artificial Intelligence Lab
@/545 Tech Square, Rm 913
@/Cambridge, MA 02139
@/(617) 253-6765
@end{display}
]

@Comment(from now on, things are mostly version-independent)

@Node(Name="Intro", Prev="Top", Next="Distrib")

@UnNumbered[Introduction]

  You are about to read about EMACS, an advanced, self-documenting,
customizable, extensible real-time display editor.

  We say that EMACS is a display editor because normally the text
being edited is visible on the screen and is updated automatically as
you type your commands.  @Note(Node="Screen", Name="Display").

  We call it a real-time editor because the display is updated very
frequently, usually after each character or pair of characters you
type.  This minimizes the amount of information you must keep in your
head as you edit.  @Note(Node="Basic", IName="Real-time").

  We call EMACS advanced because it provides facilities that go beyond
simple insertion and deletion: filling of text; automatic indentation
of programs; viewing two files at once; and dealing in terms of
characters, words, lines, sentences, paragraphs, and pages, as well as
expressions and comments in several different programming languages.
It is much easier to type one command meaning "go to the end of the
paragraph" than to find the desired spot with repetition of simpler
commands.

  Self-documenting means that at any time you can type a special
character, the "Help" key, to find out what your options are.  You can
also use it to find out what any command does, or to find all the
commands that pertain to a topic.  @Note(Node="Help").

  Customizable means that you can change the definitions of EMACS
commands in little ways.  For example, if you use a programming
language in which comments start with <** and end with **>, you can
tell the EMACS comment manipulation commands to use those strings.
Another sort of customization is rearrangement of the command set.
For example, if you prefer the four basic cursor motion commands (up,
down, left and right) on keys in a diamond pattern on the keyboard,
you can have it.
@Manual{@Note(Node="Customization")}@INFO{@Note(Node="MinorModes",
Name="Customization")}.

  Extensible means that you can go beyond simple customization and
write entirely new commands, programs in the language TECO.  EMACS is
an "on-line extensible" system, which means that it is divided into
many functions that call each other, any of which can be redefined in
the middle of an editing session.  Any part of EMACS can be replaced
without making a separate copy of all of EMACS.  Many already written
extensions are distributed with EMACS, and some (including DIRED,
PAGE, PICTURE, SORT, TAGS, and WORDAB) are documented in this manual.
Although only a programmer can write an extension, anybody can use it
afterward.

  Extension requires programming in TECO, a rather obscure language.
If you are clever and bold, you might wish to learn how.
@InfoNote(Name="TECO", File="CONV"), for advice on learning TECO.
This manual does not even try to explain how to write TECO programs,
but it does contain some notes that are useful primarily to the
extension writer.
@INFO{
@Node(Name="Distrib", Prev="Intro", Next="Glossary")

Distribution of EMACS and EMACS Manuals

*) The manual

You are reading the INFO form of the EMACS manual.

The manual is available in two other forms as well.  The file
@ITS{EMACS;EMACS GUIDE}@Twenex{EMACS:EMACS.GUIDE} contains a form of
the manual designed to be printed on line printers.  There is also a published form, which is the most useful one.  It is available for $3.25 per copy, from

@display[
Publications Department
Artificial Intelligence Lab
545 Tech Square
Cambridge, MA 02139]

Be sure to specify that you want the @ITS{ITS}@Twenex{Twenex} version
(unless you want to specify the @ITS(Twenex)@Twenex(ITS) version
instead).

*) EMACS itself

EMACS is available for distribution for use on Twenex
("TOPS-20") systems.  To get a copy, mail a 2400 foot mag tape to me,

@display[
Richard M. Stallman
Artificial Intelligence Lab
545 Tech Square, Rm 914
Cambridge, MA 02139]

and I will eventually mail it back to you.  A self-addressed return
mailer will make it easier for me to do so.  It should leave room for
a manual as well as the tape.

EMACS is distributed on a communal basis, which means that its
maintenance is a shared responsibility.  Any improvements or
extensions that you make, you must send back to me, so that I can
redistribute them.

If you have a distribution tape, feel free to give out copies of it,
but please at the same time give out copies of the paper documentation
you received with the tape.  Also, be sure to let the person you give
the tape to know that he is joining the EMACS commune and that he
should give back his improvements.

Please do not attempt to create your own tape by dumping one off of
your local system.  Since many systems delete or move some of the
files, you are likely to give out an incomplete copy, which will be
unfair to the person you give it to.  Obtain a new distribution tape
if you don't have one.

See the file @ITS{.TECO.;EMACS LETTER}@Twenex{EMACS:EMACS.LETTER} for
more information on this subject.

@Node(Name="Glossary", Prev="Distrib", Next="CommandIndex")

@Include(GLOSS.MSS)

@Node(Name="CommandIndex", Prev="Glossary", Next="LibCat")

@Include(COMMANDS.MSS)

@Node(Name="LibCat", Prev="CommandIndex", Next="VarIndex")

@Include(LIBRARIES.MSS)

@Node(Name="VarIndex", Prev="LibCat", Next="Screen")

@Include(VARS.MSS)
}
@Node(Name="Screen", Prev="VarIndex", Next="Characters")

@Chapter[The Organization of the Screen]
@index{cursor}@index{screen}@index{Point}

  EMACS divides the screen into several areas, each of which contains
its own sorts of information.  The biggest area, of course, is the one
in which you usually see the text you are editing.  The terminal's
cursor usually appears in the middle of the text, showing the position
of @dfn[point], the location at which editing takes place.  While the
cursor appears to point @xxii[at] a character, point should be thought
of as @xxii[between] two characters; it points @xxii[before] the
character that the cursor appears on top of.  Terminals have only one
cursor, and when output is in progress it must appear where the
typing is being done.  This does not mean that point is moving.  It is
only that EMACS has no way to show you the location of point except
when the terminal is idle.

@index{error message}@index{typeout}
  The top lines of the screen are usually available for text but are
sometimes pre-empted by an @dfn[error message], which says that some
command you gave was illegal or used improperly, or by @dfn[typeout]
from a command (such as, a listing of a file directory).  Error
messages are typically one line, end with a question mark, and are
accompanied by ringing the bell.  Typeout generally has none of those
characteristics.

  The error message or typeout appears there for your information, but
it is not part of the file you are editing, and it goes away if you
type any command.  If you want to make it go away immediately but not
do anything else, you can type a Space.  (Usually a Space inserts
itself, but when there is an error message or typeout on the screen it
does nothing but get rid of that.)  The terminal's cursor always
appears at the end of the error message or typeout, but this does not
mean that point has moved.  The cursor moves back to the location of
point after the error message or typeout goes away.

@index{Error handler}
  If you type a question mark when an error message is on the screen,
you enter the EMACS error handler.  You probably don't want to do this
unless you know how to write TECO programs.  If you do it by accident,
C-] (the standard abort character) will get you out.  Enough said.

@index{echo area}@index{prompting}@index{Echo Area Height}
  A few lines at the bottom of the screen compose what is called the
@dfn[echo area].  The variable Echo Area Height controls how many
lines long it is.  @dfn[Echoing] means printing out the commands that
you type.  @INFO{For example, INFO echoes its commands in the echo
area.} EMACS commands are usually not echoed at all, but if you pause
for more than a second in the middle of a multi-character command then
all the characters typed so far are echoed.  This is intended to
@dfn[prompt] you for the rest of the command.  The rest of the command
is echoed, too, as you type it.  This behavior is designed to give
confident users optimum response, while giving hesitant users
maximum feedback.

  EMACS also uses the echo area for reading and displaying the
arguments for some commands, such as searches, and for printing
brief information in response to certain commands.

@INFO{
  The line above the echo area is known as the @dfn[mode line].  It is the
line that usually starts with "EMACS (something)".  Its purpose is to
tell what is going on in the EMACS, and to show any reasons why
commands may not be interpreted in the standard way.  The mode line
is very important, and if you are surprised by how EMACS reacts to
your commands you should look there for enlightenment.}

@Menu{
* Modeline::	Interpreting the mode line.
}
@Node(Name="ModeLine", Prev="Screen", Up="Screen")

@Section[The Mode Line]
@index{mode line}

  The line above the echo area is known as the @dfn[mode line].
It is the line that usually starts with "EMACS (something)".
Its purpose is to tell you anything that may affect the meaning of
your commands aside from the text itself.

@index{subsystem}@index{recursive editing level}@index{minibuffer}
  Some EMACS commands read and process more commands.  They are known
as @dfn[subsystems] or @dfn[recursive editing levels].  If you are
inside a subsystem or a recursive editing level, the mode line tells
you its name.  Square brackets around the mode line indicate a
recursive editing level; @Note(Name="Recursive Editing Levels",
Node="Recursive").  Parentheses indicate a @dfn[minibuffer];
@Note(Node="Minibuffer").  Neither brackets nor parentheses indicates
a subsystem; @Note(Node="Subsystems").

@index{Top level}
  Subsystems and recursive editing levels are advanced features, and
you will not initially be using them.  When you are @xxi(not) inside a
subsystem or recursive editing level, we say that you are at @dfn[top
level]; this implies that the characters you type are interpreted as
ordinary EMACS commands.  When you are at top level, the mode line
tells you what file you are editing, where you are in it, and what
editing modes are enabled which may affect the meaning of your
commands.  The top level mode line has this format:

@Example[
EMACS@ITS{ type}  (major minor)  bfr:  file (vrs) --pos-- *
]

@ITS{
@index{Editor Type}@index{LEDIT}@index{MAILT}@index{RMAIL}
  @dfn[type] is usually not there.  When it is there, it indicates
that the EMACS job you are using is not an ordinary one, in that it is
acting as the servant of some other job.  A type of "LEDIT" indicates
an EMACS serving one or more Lisps, while a type of "MAILT" indicates
an EMACS that you got by asking for an "edit escape" while composing
mail to send.  The type can also indicate a subsystem that is
running, such as RMAIL.  The type is stored internally as a string in
the variable Editor Type.  The variable is normally zero.}

@index{major modes}@index{submode}
  @dfn[major] is always the name of the @dfn[major mode] you are in.  At any
time, EMACS is in one and only one of its possible major modes.  The
major modes available include Fundamental mode (which EMACS starts out
in), Text mode, Lisp mode, PASCAL mode, and others.  @Note(Name="Major
Modes", Node="MajorModes"), for details of how the modes differ and
how to select one.  Sometimes the name of the major mode is followed
immediately with another name inside square-brackets ("[ - ]").  This
name is called the @dfn[submode].  The submode indicates that you are
"inside" of a command that causes your editing commands to be changed
temporarily, but does not change @xxii[what] text you are editing.  A
submode is a kind of recursive editing level.  @Note(Name="Submodes",
Node="Recursive").

@index{minor modes}@index{Auto Fill mode}@index{Auto Save mode}@index{Atom Word mode}
@index{word abbrev mode}@index{overwrite mode}@index{keyboard macros}
  @dfn[minor] is a list of some of the @dfn[minor modes] that are
turned on at the moment.  "Fill" means that Auto Fill mode is on.
"Save" means that Auto-saving is on.  "Save(off)" means that
Auto-saving is on by default but turned off at the moment in this
buffer.  "Atom" means that Atom Word mode is on.  "Abbrev" means that
Word Abbrev mode is on.  "Ovwrt" means that Overwrite mode is on.
@Note(Name="Minor Modes", Node="MinorModes"), for more information.
"Def" means that a keyboard macro is being defined; although this is
not exactly a minor mode, it is still useful to be reminded about.
@Note(Name="Keyboard Macros", Node="KBDMAC").  "Narrow" means that
editing is currently restricted to only a part of the buffer.
@Note(Node ="Narrowing").

@index{buffers}
  @dfn[bfr] is the name of the currently selected @dfn[buffer].  Each
buffer has its own name and holds a file being edited; this is how
EMACS can hold several files at once.  But at any time you are editing
only one of them, the @dfn[selected] buffer.  When we speak of what
some command does to "the buffer", we are talking about the currently
selected buffer.  Multiple buffers make it easy to switch around
between several files, and then it is very useful that the mode line
tells you which one you are editing at any time.  However, before you
learn how to use multiple buffers, you will always be in the buffer
called "Main", which is the only one that exists when EMACS starts up.
If the name of the buffer is the same as the first name of the file
you are visiting, then the buffer name is left out of the mode line.
@Note(Node="Buffers"), for how to use more than one buffer in one
EMACS.

@index{files}
  @dfn[file] is the name of the file that you are editing.  It is the
last file that was visited in the buffer you are in.  It is followed,
in parentheses, by the file @dfn[version number] most recently visited
or saved @ITS{provided the second filename visited is ">", so that
version numbers are allowed}.  "(R-O)" after the filename means that
the file or buffer is @dfn[read-only]; a file visited read-only will
not be saved unless you insist, while a read-only buffer does not
allow you to alter its contents at all.  @Note(Node="Visiting"), for
more information.

  The star at the end of the mode line means that there are changes in
the buffer that have not been saved in the file.  If the file has not
been changed since it was read in or saved, there is no star.

  @dfn[pos] tells you whether there is additional text above the top of
the screen, or below the bottom.  If your file is small and it is all
on the screen, --pos-- is omitted.  Otherwise, it is --TOP-- if you
are looking at the beginning of the file, --BOT-- if you are looking
at the end of the file, or --nn%-- where nn is the percentage of the
file above the top of the screen.

@index{--MORE--}@index{FLUSHED}
  Sometimes you will see --MORE-- instead of --nn%--.  This happens
when typeout from a command is too long to fit on the screen.  It means
that if you type a Space the next screenful of information will be
printed.  If you are not interested, typing anything but a Space will
cause the rest of the output to be discarded.  Typing a Rubout will
discard the output and do nothing else.  Typing any other command will
discard the rest of the output and also do the command.  When the
output is discarded, "FLUSHED" is printed after the --MORE--.

  If you are accustomed to other display editors, you may be surprised
that EMACS does not always display the page number and line number of
point in the mode line.  This is because the text is stored in a way
that makes it difficult to compute this information.  Displaying them
all the time would be too slow to be borne.  When you want to know the
page and line number of point, you must ask for the information with
the M-X What Page command.  @Note(IName="What Page", Node="Pages").
However, once you are adjusted to EMACS, you will rarely have any
reason to be concerned with page numbers or line numbers.

@index{Display Mode Line Inverse}
  If you set the variable Display Mode Line Inverse nonzero, then the
mode line is displayed in inverse video if the terminal you are
using supports it.  @Note(Node="Variables").

  The libraries MODLIN and MODE2 allow you to customize the
information that is displayed in the mode line.  MODLIN replaces the
standard EMACS mode line generation routines.  MODE2 makes a second
mode line, above the first, whose contents are under your control.
Refer to the self-documentation of these libraries;
@Note(Node="Libraries").

@Node(Name="Characters", Prev="Screen", Next="Basic")

@Chapter[Character Sets and Command Input Conventions]

  In this chapter we introduce the terminology and concepts used to
talk about EMACS commands.  EMACS is designed to be used with a kind
of keyboard with two special shift keys which can type 512 different
characters, instead of the 128 different characters which ordinary
ASCII keyboards can send.  The terminology of EMACS commands is
formulated in terms of these shift keys.  So that EMACS can be used on
ASCII terminals, we provide two-character ASCII circumlocutions for
the command characters which are not ASCII.

@Section[The 9-bit Command Character Set]

@index{control}@index{meta}@index{character set}
@index{C-}@index{M-}@index{ASCII}
  EMACS is designed ideally to be used with terminals whose keyboards
have a pair of shift keys, labeled "Control" and "Meta", either or
both of which can be combined with any character that you can type.
These shift keys produce @dfn[Control] characters and @dfn[Meta]
characters, which are the editing commands of EMACS.  We name each of
these characters by prefixing "Control-" (or "C-"), "Meta-" (or "M-")
or both to the basic character: thus, Meta-F or M-F is the character
which is F typed with the Meta key held down.  C-M-; is the Semicolon
character with both the Control and Meta keys.  Control in the EMACS
command character set is not precisely the same as Control in the
ASCII character set, but the general purpose is the same.

  There are 128 basic characters.  Multiplied by the four possibilities of the
Control and Meta keys, this makes 512 characters in the EMACS command
character set.  So it is called the 512-character set, to distinguish
it from ASCII, which has only 128 characters.  It is also called the
@dfn[9-bit] character set because 9 bits are required to express a number
from 0 to 511.  Note that the 512-character set is used only for
keyboard commands.  Characters in files being edited with EMACS are
ASCII characters.

  Sadly, most terminals do not have ideal EMACS keyboards.  In fact,
the only ideal keyboards are at MIT.  On nonideal keyboards, the Control key is somewhat
limited (it can only be combined with some characters, not with
all), and the Meta key may not exist at all.  We make it possible to
use EMACS on a nonideal terminal by providing two-character
circumlocutions, made up of ASCII characters that you can type, for the
characters that you can't type.  These circumlocutions start with a
@dfn[bit prefix] character; see below.  For example, to use the Meta-A
command, you could type Altmode A@:.  Also see the appendices
for more detailed information on what to do on your type of terminal.

  Both the EMACS 9-bit character set and ASCII have Control
characters, but the 9-bit character set has more different ones.  In
ASCII, only letters and a few punctuation marks can be made into
Control characters; in the 9-bit character set every character has a
Control version.  For example, we have Control-Space, Control-1, and
Control-=.  We also have two different characters Control-A and
Control-a!  But they always do the same thing in EMACS, so you can
ignore the distinction between them, unless you are doing
customization.  In practice, you can forget all about the distinction
between ASCII Control and EMACS Control, except to realize that EMACS
uses some "Control" characters which ASCII keyboards cannot type.

@index{Help}
  In addition to the 9-bit command character set, there is one
additional EMACS command character called Help.  It cannot be combined
with Control or Meta.  Its use is to ask for documentation, at any
time.  The Help character has its own key
on an ideal keyboard, but must be represented by something else on
other keyboards.  @ITS{The circumlocution we use is Control-_ H (two
characters)}@Twenex{The usual choice is Control-Underscore, code 337
(octal).  This implies that the command character
Control-Underscore cannot be used because it is translated to Help
instead}.  The code used internally for Help is 4110 (octal).

@index{Altmode}@index{Rubout}@index{Space}@index{<cr>}@index{Return}
  We have given some command characters special names which we always
capitalize.  "Return" or "<cr>" stands for the carriage return
character, code 015 (all character codes are in octal).  Note that C-R
means the character Control-R, never Return.  "Rubout" is the
character with code 177, labeled "Delete" on some keyboards.
"Altmode" is the character with code 033, sometimes labeled "Escape".
Other command characters with special names are Tab (code 011),
Backspace (code 010), Linefeed (code 012), Space (code 040), Excl
("!", code 041), Comma (code 054), and Period (code 056).  Control is
represented in the numeric code for a character by 200, and Meta by
400; thus, Meta-Period is code 456 in the 9-bit character set.

@section[Prefix Characters]

@index{C-X}@index{prefix characters}@Index{Altmode}@Index{C-^}
@ITS{@index[C-C]}@Twenex{@index[C-Z]}@index{Metizer}
@index{^R Prefix Meta}@index{^R Prefix Control}@index{^R Prefix Control-Meta}

  A non-ideal keyboard can only send certain Control characters, and
may completely lack the ability to send Meta characters.  To use these
commands on such keyboards, you need to use two-character
circumlocutions starting with a @dfn[bit prefix] character which turns on
the Control or Meta bit in the second character.  The Altmode
character turns on the Meta bit, so Altmode X can be used to type a
Meta-X, and Altmode Control-O can be used to type a C-M-O.  Altmode is
known as the @dfn[Metizer].  Other bit prefix characters are C-^ for
Control, and @CC[] for Control and Meta together.  Thus, C-^ < is a
way of typing a Control-<, and @CC[] < can be used to type C-M-<.
Because C-^ is awkward to type on most keyboards, we have tried to
minimize the number of commands for which you will need it.

  The bit prefix characters are simply commands which run the
functions ^R Prefix Control, ^R Prefix Meta, and ^R Prefix
Control-Meta.

  There is another prefix character, Control-X which is used as the
beginning of a large set of two-character commands known as @dfn[C-X
commands].  C-X is not a bit prefix character; C-X A is not a
circumlocution for any single character, and it must be typed as two
characters on any terminal.  You can create new prefix characters when
you customize.  @INFONote(Name="Prefix", File="CONV", Node="Prefix").

@section[Commands, Functions, and Variables]

@index{Functions}@index{Connected}@index{Customization}
  Most of the EMACS commands documented herein are members of this
9-bit character set.  Others are pairs of characters from that set.
However, EMACS doesn't really implement commands directly.  Instead,
EMACS is composed of @dfn[functions], which have long names such as @w["^R Down]
Real Line" and definitions which are programs that perform the editing
operations.  Then @dfn[commands] such as C-N are connected to
functions through the @dfn[command dispatch table].  When we say that C-N moves the cursor
down a line, we are glossing over a distinction which is unimportant
for ordinary use, but essential for customization: it is the function
@w[^R Down] Real Line which knows how to move down a line, and C-N moves
down a line @xxi[because] it is connected to that function.  We
usually ignore this subtlety to keep things simple.  To give the
extension-writer the information he needs, we state the name of the
function which really does the work in parentheses after mentioning
the command name.  For example: "C-N (@w[^R Down] Real Line) moves the
cursor down a line".  In the EMACS wall chart, the function names are
used as a form of very brief documentation for the command characters.
@Note(Name="Functions", Node="MMArcana").

@index{^R (in function names)}
  The @w["^R "] which appears at the front of the function name is simply
part of the name.  By convention, a certain class of functions have
names which start with @w["^R "].

@index{Variables}
  While we are on the subject of customization information which you
should not be frightened of, it's a good time to tell you about
@dfn[variables].  Often the description of a command will say "to
change this, set the variable Mumble Foo".  A variable is a name used
to remember a value.  EMACS contains many variables which are there so
that you can change them if you want to customize.  The variable's
value is examined by some command, and changing the value makes the
command behave differently.  Until you are interested in customizing,
you can ignore this information.  When you are ready to be interested,
read the basic information on variables, and then the information on
individual variables will make sense.  @Note(Node="Variables").

@section[Notational Conventions for ASCII Characters]

@index{ASCII}@index{control}@index{uparrow}@index{caret}@index{^}
  Control characters in files, your EMACS buffer, or TECO programs,
are ordinary ASCII characters.  The special 9-bit character set
applies only to typing EMACS commands.  ASCII contains the printing
characters, rubout, and some control characters.  Most ASCII control
characters are represented in this manual as uparrow or caret followed
by the corresponding non-control character: control-E is represented
as @CTL[E].

@index{tab}@index{backspace}@index{linefeed}
@index{return}@index{altmode}@index{space}@index{rubout}
  Some ASCII characters have special names.  These include tab (011),
backspace (010), linefeed (012), return (015), altmode (033), space
(040), and rubout (177).  To make it clear whether we are talking
about a 9-bit character or an ASCII character, we capitalize names of
9-bit characters and leave names of ASCII characters in lower case.
Note that the 9-bit characters Tab and Control-I are different, but
the ASCII characters tab and control-I are the same.

@index{CRLF}@index{Return, stray}@index{Linefeed, stray}
@index{line separator}
  Lines in files are separated by a sequence of two ASCII control
characters, carriage return followed by linefeed.  This sequence is
called @dfn[CRLF].  Normally, EMACS treats this two-character sequence
as if it were a single character, a @dfn[line separator].  A return or
a linefeed which is not part of a CRLF is called @dfn[stray].  EMACS
usually treats them as part of the text of a line and displays them as
^M and ^J.  If the variable Display Overprinting is zero, they display
as actual carriage return or linefeed.

@index{overprinting}@index{Display Overprinting}@index{Backspace}
@index{Control characters, display of}
  Most control characters when present in the EMACS buffer are
displayed with a caret; thus, ^A for ASCII @CTL[A].  Rubout is displayed as
^?, because by stretching the meaning of "control" it can be
interpreted as ASCII control-?.  A backspace is usually displayed as
^H since it is ASCII control-H, because most displays cannot do
overprinting.  If you want backspace and stray return to display as
overprinting, set the variable Display Overprinting nonzero.

@index{Altmode}@index{Dollar Sign}
  Altmode is the ASCII code 033, sometimes labeled "Escape" or "Alt".
Altmode is often represented by itself in this document (remember, it
is an ASCII character and can therefore appear in files).  It looks
like this: .  @INFO[This is also how it appears on the screen if you
insert it in your file.]  On most terminals, altmode looks just like
the dollar sign character.  If that's so on yours, you should assume
that anything you see in @INFO{this document}@manual{the on-line
documentation} which looks like a dollar sign is really an altmode
unless you are specifically told it's a dollar sign.  The dollar sign
character is not particularly important in EMACS and we will rarely
have reason to mention it.

@INFO{
  Now turn to the node that describes the keyboard you are using.

@Menu{
* Ideal::	for keyboards that have a "Meta" key.
* EditKey::	for keyboards that have an "Edit" key.
* Losers::	for keyboards that have neither "Meta" nor "Edit."

@Twenex{
  You may need to tell EMACS or the system what type of terminal you
are using before it will work properly.
* Term Types::  for information on how to do so.}

  There are special commands designed to make life tolerable on
terminals which cannot send or display lower case.
* NoLowerCase::	for how to use them.

  The SLOWLY library changes a few commands to perform less redisplay.
This is useful on slow terminals.
* SLOWLY: (SLOWLY), for more information.

  You can even use EMACS on a printing terminal or glass teletype.
* Printing::	for how.
}}
@Node(Name="Basic", Prev="Characters", Next="Arguments")

@Chapter[Basic Editing Commands]

  We now give the basics of how to enter text, make corrections, and
save the text in a file.  If this material is new to you, you might
learn it more easily by running the
@ITS{:TEACHEMACS}@Twenex{TEACH-EMACS} program.

@Section[Inserting Text]

@index{insertion}@index{point}@index{cursor}@index{printing characters}
  To insert printing characters into the text you are editing, just
type them.  When EMACS is at top level, all printing characters you
type are inserted into the text at the cursor (that is, at
@dfn[point]), and the cursor moves forward.  Any characters after the
cursor move forward too.  If the text in the buffer is FOOBAR, with
the cursor before the B, then if you type XX, you get FOOXXBAR, with
the cursor still before the B.

@index{Rubout}@index{deletion}@index{^R Backward Delete Character}
  To correct text you have just inserted, you can use Rubout.  Rubout
deletes the character @xxii[before] the cursor (not the one that the cursor
is on top of or under;  that is the character @xxii[after] the cursor).  The
cursor and all characters after it move backwards.  Therefore, if you
type a printing character and then type Rubout, they cancel out.

@index{Return}@index{CRLF}@index{^R CRLF}@index{line separator}
  To end a line and start typing a new one, type Return (Customizers,
note: this runs the function @w[^R CRLF]).  Return operates by
inserting a line separator, so if you type Return in the middle of a
line, you break the line in two.  Return really inserts two
characters, a carriage return and a linefeed (a CRLF), but almost
everything in EMACS makes them look like just one character, which you
can think of as a line-separator character.  For example, typing
Rubout when the cursor is at the beginning of a line rubs out the line
separator before the line, joining that line with the preceding line.

@index{continuation line}@index{!}
  If you add too many characters to one line, without breaking it with
a Return, the line will grow to occupy two (or more) lines on the
screen, with a "!" at the extreme right margin of all but the last of
them.  The "!" says that the following screen line is not really a
distinct line in the file, but just the @dfn[continuation] of a line too
long to fit the screen.

@index{Minibuffer}@index{Quoting}@index{Control characters, inserting}
@index{C-Q}@index{^R Quoted Insert}
  Direct insertion works for printing characters and space, but other
characters act as editing commands and do not insert themselves.  If
you need to insert a control character, Altmode, Tab or Rubout, you
must @dfn[quote] it by typing the Control-Q (@w[^R Quoted] Insert)
command first.  @Note(IName="Control", Node="Characters").  Inserting
a @ITS{@CTL[Z]}@Twenex{@CTL[C]} is harder because EMACS cannot even
receive the character; you must use the minibuffer as in Altmode
Altmode @ITS{26}@Twenex{3}i Altmode Altmode.  @Note(Node="Minibuffer").

@Section[Moving The Cursor]

  To do more than insert characters, you have to know how to move the
cursor.  Here are a few of the commands for doing that.

@index{C-A}@index{C-E}@index{C-F}@index{C-B}@index{C-N}@index{C-P}@index{C-L}@index{C-T}@index{M->}@index{M-<}
@index{^R Beginning of Line}@index{^R End of Line}@index{^R Forward Character}
@index{^R Backward Character}@index{^R Down Real Line}@index{^R Up Real Line}
@index{^R New Window}@index{^R Transpose Characters}@index{^R Goto Beginning}
@index{^R Goto End}
@Commands[

C-A@\Move to the beginning of the line.

C-E@\Move to the end of the line.

C-F@\Move forward over one character.

C-B@\Move backward over one character.

C-N@\Move down one line, vertically.  If you start in the
middle of one line, you end in the middle of the next.
From the last line of text, it creates a new line.

C-P@\Move up one line, vertically.

C-L@\Clear the screen and reprints everything.
@w[C-U C-L] reprints just the line that the cursor is on.

C-T@\Transpose two characters
(the ones before and after the cursor).

M-<@\Move to the top of your text.

M->@\Move to the end of your text.
]

@Section[Erasing Text]

@Commands[
Rubout @\Delete the character before the cursor.

C-D @\Delete the character after the cursor.

C-K @\Kill to the end of the line.
]

@Index{Rubout}@Index{C-D}@Index{C-K}
  You already know about the Rubout command which deletes the
character before the cursor.  Another command, Control-D, deletes the
character after the cursor, causing the rest of the text on the line
to shift left.  If Control-D is typed at the end of a line, that line
and the next line are joined together.

  To erase a larger amount of text, use the Control-K command, which
kills a line at a time.  If Control-K is done at the beginning or
middle of a line, it kills all the text up to the end of the line.  If
Control-K is done at the end of a line, it joins that line and the
next line.

  @Note(Node="Killing"), for more flexible ways of killing text.

@Section[Files]

@index{files}@index{C-X C-V}@index{visiting}@index{C-X C-S}
@index{^R Visit File}@index{^R Save File}
  The commands above are sufficient for creating text in the EMACS
buffer.  The more advanced EMACS commands just make things easier.
But to keep any text permanently you must put it in a @dfn[file].
Files are the objects which @ITS{ITS}@Twenex{Twenex} uses for storing
data for communication between different programs or to hold onto for a
length of time.  To tell EMACS to edit text in a file, choose a
@dfn[filename], such as FOO@Twenex{.BAR}, and type C-X C-V
FOO@Twenex{.BAR}<cr>.  This @dfn[visits] the file FOO@Twenex{.BAR}
@ITS{(actually, @w[FOO >] on your working directory)} so that its
contents appear on the screen for editing.  You can make changes, and
then @dfn[save] the file by typing C-X C-S.  This makes the changes
permanent and actually changes the file FOO@Twenex{.BAR}.  Until then,
the changes are only inside your EMACS, and the file FOO@Twenex{.BAR}
is not really changed.  If the file FOO@Twenex{.BAR} doesn't exist,
and you want to create it, visit it as if it did exist.  When you save
your text with C-X C-S the file will be created.

  Of course, there is a lot more to learn about using files.
@Note(Node="Files").

@Section[Help]

  If you forget what a command does, you can find out with the Help
character.  @Twenex[The Help character is typed as Control-_.]
@ITS[The Help character is Top-H if you have a Top key, or Control-_ H
(two characters!) otherwise.]  Type Help followed by C and the command
you want to know about.  Help can help you in other ways as well.
@Note(Node="Help").

@Section[Using Blank Lines Can Make Editing Faster]

@WideCommands[
C-O@\Insert one or more blank lines after the cursor.

C-X C-O@\Delete all but one of many consecutive blank lines.
]

@index{C-O}@index{C-X C-O}@index{blank lines}@index{^R Open Line}@index{^R Delete Blank Lines}
  It is much more efficient to
insert text at the end of a line than in the middle.  So if you want
to stick a new line before an existing one, the best way is to make a
blank line there first and then type the text into it, rather than
inserting the new text at the beginning of the existing line and finally
inserting a line separator.  Making the blank line first also makes
the meaning of the text clearer while you are typing it in.

  To make a blank line, you can type Return and then C-B.  But there
is a single character for this: C-O (Customizers: this is the built-in function
@w[^R Open] Line).  So, FOO Return is equivalent to C-O FOO.

  If you want to insert many lines, you can type many C-O's at the
beginning (or you can give C-O an argument to tell it how many blank
lines to make.  @Note(Node="Arguments"), for how).  As you then insert
lines of text, you will notice that Return behaves strangely: it "uses
up" the blank lines instead of pushing them down.

  If you don't use up all the blank lines, you can type C-X C-O (the
function @w[^R Delete] Blank Lines) to get rid of all but one.  When
point is on a blank line, C-X C-O replaces all the blank lines around
that one with a single blank line.  When point is on a nonblank line,
C-X C-O deletes any blank lines following that nonblank line.

@Node(Name="Arguments", Prev="Basic", Next="M-X")

@Chapter[Giving Numeric Arguments to EMACS Commands]
@index{numeric arguments}

  Any EMACS command can be given a @dfn[numeric argument].  Some commands
interpret the argument as a repetition count.  For example, giving an
argument of ten to the C-F command (move forward one character)
moves forward ten characters.  With these commands, no argument is
equivalent to an argument of 1.

  Some commands care only about whether there is an argument, and not
about its value; for example, the command M-Q (@w[^R Fill] Paragraph) with
no arguments fills text, but with an argument justifies the text as
well.

  Some commands use the value of the argument, but do something
peculiar when there is no argument.  For example, the C-K (@w[^R Kill]
Line) command with an argument <n> kills <n> lines and the line
separators that follow them.  But C-K with no argument is special; it
kills the text up to the next line separator, or, if point is right at
the end of the line, it kills the line separator itself.  Thus, two
C-K commands with no arguments can kill a nonblank line, just like C-K
with an argument of one.

@index{C-U}@index{^R Universal Argument}@index{C-O}@index{^R Open Line}
  The fundamental way of specifying an argument is to use the C-U
(@w[^R Universal] Argument) command followed by the digits of the
argument.  Negative arguments are allowed.  Often they tell a command
to move or act backwards.  A negative argument is entered with C-U
followed by a minus sign and the digits of the value of the argument.

  C-U followed by a character which is neither a digit nor a minus
sign has the special meaning of "multiply by four".  It multiplies the
argument for the next command by four.  Two such C-U's multiply it by
sixteen.  Thus, @w[C-U C-U C-F] moves forward sixteen characters.  This
is a good way to move forward "fast", since it moves about 1/4 of a
line on most terminals.  Other useful combinations are @w[C-U C-N],
@w[C-U C-U C-N] (move down a good fraction of a screen), @w[C-U C-U C-O]
(make "a lot" of blank lines), and @w[C-U C-K] (kill four lines).
With commands like M-Q that care whether there is an argument but not
what the value is, C-U is a good way of saying "I want an argument".

  A few commands treat a plain C-U differently from an ordinary
argument.  A few others may treat an argument of just a minus sign
differently from an argument of -1.  These unusual cases will be
described when they come up; they are always for reasons of
convenience of use.

  There are other, terminal-dependent ways of specifying arguments.
They have the same effect but may be easier to type.  @Manual(See the
appendix)@INFO(@Note(Name="Terminal-specific", Node="Characters")).
If your terminal has a numeric keypad which sends something
recognizably different from the ordinary digits, it is possible to
program EMACS to allow use of the numeric keypad for specifying
arguments.  The libraries VT52 and VT100 provide such a feature for
those two types of terminals.  @Note(Node="Libraries").

@Section[Autoarg Mode]

@index{autoarg mode}
  Users of ASCII keyboards may prefer to use Autoarg mode.  Autoarg
mode means that you don't need to type C-U to specify a numeric
argument.  Instead, you type just the digits.  Digits followed by an
ordinary inserting character are themselves inserted, but digits
followed by an Altmode or Control character serve as an argument to it
and are not inserted.  A minus sign can also be part of an argument,
but only at the beginning.  If you type a minus sign following some
digits, both the digits and the minus sign are inserted.

  To use Autoarg mode, set the variable Autoarg Mode nonzero.
@Note(Node="Variables").

  Autoargument digits echo at the bottom of the screen; the first
nondigit causes them to be inserted or uses them as an argument.  To
insert some digits and nothing else, you must follow them with a Space
and then rub it out.  C-G cancels the digits, while Rubout inserts
them all and then rubs out the last.

@Node(Name="M-X", Prev="Arguments", Next="Subsystems")

@Chapter[Extended (Meta-X) Commands and Functions]

  Not all EMACS commands are of the one or two character variety you
have seen so far.  Most commands have long names composed of English
words.  This is for two reasons: the long names are easier to remember
and more suggestive, and there are not enough two-character
combinations for every command to have one.

  The commands with long names are known as @dfn[extended commands]
because they extend the set of two-character commands.

@Section[Issuing Extended Commands]

@DoubleWideCommands[
M-X@\Begin an extended command.  Follow by command name and arguments.

C-M-X@\Begin an extended command.  Follow by the command name only;
the command will ask for any arguments.

C-X Altmode @\Re-execute recent extended command.
]

@index{extended commands}@index{M-X}@index{functions}@index{commands}
  Extended commands are also called @dfn[M-X commands], because they all
start with the character Meta-X (@w[^R Extended] Command).  The M-X is
followed by the command's long, suggestive name, actually the name of
a function to be called.  Terminate the name of the function with a
Return (unless you are supplying string arguments; see below).  For
example, Meta-X Auto Fill Mode<cr> invokes the function Auto Fill
Mode.  This function when executed turns Auto Fill mode on or off.

  We say that M-X Foo<cr> "calls the function Foo".  When documenting
the individual extended commands, we will call them @dfn[functions] to
avoid confusion between them and the one or two character @dfn[commands].
We will also use "M-X" as a title like "Mr." for functions, as in
"use M-X Foo".  The "extended command" is what you @XXi[type],
starting with M-X, and what the command @XXI[does] is call a function.
The name that goes in the command is the name of the command and is
also the name of the function, and both terms will be used.

@Index{MM Commands}@Index{^R Commands}
Note: Extended commands and functions were once called "MM commands",
but this term is obsolete.  If you see it used either in INFO
documentation of in Help documentation, please report it.  Ordinary
one or two character commands used to be known as "^R" commands;
please report any occurrences of this obsolete term also.

  There are a great many functions in EMACS for you to call.  They
will be described elsewhere in the manual, according to what they do.
Here we are concerned only with extended commands in general.

@SubSection[Typing The Command Name]

@index{Rubout}@index{C-D}@index{C-U}@index{C-G}@index{echo area}
  When you type M-X, the cursor moves down to the echo
area at the bottom of the screen.  "M-X" is printed there, and
when you type the command name it echoes there.  This is known as
@dfn[reading a line in the echo area].  You can use Rubout to cancel one
character of the command name, or C-U or C-D to cancel the entire
command name.  A C-G cancels the whole M-X, and so does a Rubout
when the command name is empty.  These editing characters apply any
time EMACS reads a line in the echo area, not just within M-X.

@index{prompting}@index{TECO}@index{Read Command Prompt}
  The string "M-X" which appears in the echo area is called a
@dfn[prompt].  The prompt always tells you what sort of argument is
required and what it is going to be used for; "M-X" means that you are
inside of the command M-X, and should type the name of a function to be
called.  You can replace the prompt "M-X" with some other string by
defining the variable Read Command Prompt.

@SubSection[Completion]

@index{command completion}@index{Altmode}@index{Space}
  You can abbreviate the name of the command, typing only the
beginning of the name, as much as is needed to identify the command
unambiguously.  You can also use completion on the function name.
This means that you type part of the command name, and EMACS visibly
fills in the rest, or as much as can be determined from the part you
have typed.

  You request completion by typing an Altmode ().  For example, if you
type @W[M-X Au], the "Au" expands to @W["Auto "] because all command
names which start with "Au" continue with @W["to "].  If you ask for
completion when there are several alternatives for the next character,
the bell rings and nothing else happens.  Altmode is also the way to
terminate the command name and begin the string arguments, but it only
does this if the command name completes in full.  In that case, an
Altmode appears after the command name in the echo area.  In practice,
these two meanings of Altmode do not conflict, because if the
command name does not complete in full, it is ambiguous and would not
be accepted.  So it would be useless to type the arguments yet.

  Space is another way to request completion, but it completes only
one word.  Successive Spaces complete one word each, until either
there are multiple possibilities or the end of the name is reached.
If the first word of a command is Edit, List, Kill, View or What, it
is sufficient to type just the first letter and complete it with a Space.
(This does not follow from the usual definition of completion, since
the single letter is ambiguous; it is a special feature added because
these words are so common).

  Typing "?" in the middle of the command name prints a list of all
the command names which begin with what you have typed so far.  You
can then go on typing the name.

@SubSection[Numeric Arguments and String Arguments]

@index{numeric arguments}
  Some functions can use numeric prefix arguments.  Simply give the
Meta-X command an argument and Meta-X will pass it along to the
function which it calls.  The argument appears before the "M-X" in
the prompt, as in "69 M-X", to remind you that the function you call
will receive a numeric argument.

@index{string arguments}
  Some functions require @dfn[string arguments] (sometimes called
@dfn[suffix arguments]).  To specify string arguments, terminate the
function name with a single Altmode, then type the arguments,
separated by Altmodes.  After the last argument, type a Return to
cause the function to be executed.  For example, the function Describe
prints the full documentation of a function (or a variable) whose name
must be given as a string argument.  An example of using it is
@example[Meta-X DescribeApropos<cr>]
which prints the full description of the function named Apropos.

@index{C-M-X}@index{^R Instant Extended Command}
@index{Instant Command Prompt}
  An alternate way of calling extended commands is with the command
C-M-X (@w[^R Instant] Extended Command).  It differs from plain M-X in
that the function itself reads any string arguments.  The function
prompts for each argument individually.  If an argument is supposed to
be a filename or a command name, completion is available.  However,
there are compensating disadvantages.  For one thing, since the
function has already been invoked, you can't rub out from the
arguments into the function name.  For another, it is not possible to
save the whole thing, function name and arguments, for you to recall
with C-X Altmode (see below).  So C-M-X saves @xxi[nothing] for C-X
Altmode.  The prompt for C-M-X is "C-M-X".  You can override it with
the variable Instant Command Prompt.

@SubSection[Repeating an Extended Command]

  The last few extended commands you have executed are saved and you
can repeat them.  We say that the extended command is saved, rather
than that the function is saved, because the whole command, including
arguments, is saved.

@index{minibuffer}@index{C-X Altmode}@index{^R Re-execute Minibuffer}
  To re-execute a saved command, use the command C-X Altmode
(@w[^R Re-execute] Minibuffer).  It retypes the last extended command and
asks for confirmation.  With an argument, it repeats an earlier
extended command: 2 means repeat the next to the last command, etc.
You can also use the minibuffer to edit a previous extended command
and re-execute it with changes (@Note(Node="Minibuffer").).

@INFO{
@Note(Name="MM",Node="MMArcana"), for more information on this and
other topics related to how extended commands work, how they are
really the foundation of everything in EMACS, and how they relate to
customization.}

@Node(Name="MMArcana", Up="M-X", Prev="M-X")

@Section[Arcane Information about M-X Commands]
@index{M-X}@index{TECO}

  You can skip this section if you are not interested in
customization, unless you want to know what is going on behind the
scenes.

@Subsection[MM]

@index{MM}
  Extended commands were once called "MM" commands, because "MM" is a
TECO expression which looks up a command name to find the associated
program, and runs that program.  Thus, the TECO expression
@example[
MM AproposWord
]
means to run the Apropos command with the argument "word".  You could
type this expression into a minibuffer and get the same results as you
would get from Meta-X AproposWord<cr>.  In fact, for the first year
or so, EMACS had no Meta-X command, and that's what people did.
@Note(Node="Minibuffer"), for information on the minibuffer.

  "MM" actually tells TECO to call the subroutine in q-register "M".
The first "M" means "call", and the second "M" says what to call.
This subroutine takes a string argument which is the name of a function
and looks it up.  Calling a function is built into TECO, but looking
up the name is not; it is implemented by the program in q-register M.
That's why "MM" is called that and not "Run" or "F@CTL[Q]".

@Subsection[Arguments in TECO Code]

@index{numeric arguments}
  Functions can use one or two @dfn[prefix arguments] or @dfn[numeric
arguments].  These are numbers (actually, TECO expressions) which go
before the "MM".  Meta-X can only give the MM command one argument.
If you want to give it two, you must type it in using the minibuffer.
When TECO code passes prefix arguments, they don't have to be numbers;
they can also be string objects, TECO buffer objects, etc.  However,
no more about that here.

@index{string arguments}
  TECO code can also pass @dfn[string arguments] or 
@dfn[suffix arguments].  When TECO code passes a string argument, it
appears, terminated by an Altmode, after the Altmode which ends the
function name.  There can be any number of string arguments.  In fact,
the function can decide at run time how many string arguments to read.
This makes it impossible to compile TECO code!

@index{Quote Execute Command}
  Since Altmode terminates a string argument, TECO has a quoting
convention to allow Altmodes to be part of a string argument.  This
convention is to use the two characters @ctl{]} Altmode to cause just
an Altmode to be part of the argument.  @ctl{]} also must be quoted,
as @ctl{]} @ctl{]}.  The M-X command hides all of this: there is no
way to quote an Altmode; every Altmode always terminates a string
argument; @ctl{]} is not special, because M-X automatically replaces
each @ctl{]} with two.  If you understand the TECO meaning of @ctl{]}
you can enable its use in M-X command arguments by setting the
variable Quote Execute Command nonzero.  Then M-X does no special
processing to @ctl{]} characters.  You can use them to quote Altmodes,
and you must also take care of quoting @ctl{]} characters themselves.

@Subsection[Commands and Functions]
@label[EMACSreconnecting]

@index{customization}@index{Connected}@index{Functions}
  Actually, @xxi[every] command in EMACS simply runs a function.  For
example, when you type the command C-N, it runs the function "@w[^R Down]
Real Line".  You could just as well do @w[C-U 1] @w[M-X ^R Down] Real Line<cr>
and get the same effect.  C-N can be thought of as a sort of
abbreviation.  We say that the command C-N has been @dfn[connected] to the
function @w[^R Down] Real Line.  The name is looked up once when the
command and function are connected, so that it does not have to be
looked up again each time the command is used.  For historical
reasons, the default argument passed to a function which is connected
to a command you typed is 1, but the default for MM and for M-X is 0.
This is why the @w[C-U 1] was necessary in the example above.  The
documentation for individual EMACS commands usually gives the name of
the function which really implements the command in parentheses after
the command itself.

@index{Set Key}
  Just as any function can be called directly with M-X, so almost any
function can be connected to a command.  You can use the function Set Key to do this.
Set Key takes the name of the function as a string argument, then
reads the character command (including metizers or other prefix
characters) directly from the terminal. 
To define C-N, you could type
@example[
M-X Set Key^R Down Real Line<cr>
]
and then type C-N.  If you use the function View File often, you could
connect it to the command C-X V (not normally defined).  You could
even connect it to the command C-M-V, replacing that command's normal
definition.  Set Key is good for redefining commands in the middle of
editing.  An init file or @EVARS() file can do it each time you run
EMACS.  @Note(Node="Init").

@Subsection[Subroutines]

@index{subroutines}@index{& (in function names)}
@index{command completion}
  EMACS is composed of a large number of functions, each with a name.
Some of these functions are connected to commands; some are there for
you to call with M-X; some are called by other functions.  The last
group are called subroutines.  They usually have names starting with
"&", as in "@w[& Read] Line", the subroutine which reads a line in the
echo area.  Although most subroutines have such names, any function
can be called as a subroutine.  Functions like @w[^R Down] Real Line have
names starting with ^R because you are not expected to call them
directly, either.  The purpose of the "&" or "^R" is to get those
function names out of the way of command completion in M-X.  M-X
allows the command name to be abbreviated if the abbreviation is
unique, and the commands that you are not interested in might have
names that would interfere and make some useful abbreviation cease to
be unique.  The funny characters at the front of the name prevent
this from happening.

@Subsection[Built-in Functions]

@index{BARE library}@index{Built-in functions}@index{TECO}
  Not all of the functions in EMACS are written in TECO.  A few of the
most frequently used single-character commands have definitions
written in machine language.  These include self-inserting characters,
Rubout, C-F, and others.  Such functions defined in machine language
as part of TECO are called @dfn[built-in] functions.  Whereas the
actual definition of an ordinary function is a string, the definition
of a built-in function is just a number, the address of a routine in
TECO.  The EMACS "definitions" of these commands exist only to give
the commands names and documentation, and live in a special library
called BARE which is loaded when necessary to make the names and
documentation available.  For example, ^R Forward Character is the
name of the function which implements the C-F command.

@Manual{
@Chapter[Moving Up And Down Levels] 

  Subsystems and recursive editing levels are two states in which
you are temporarily doing something other than editing the visited
file as usual.  For example, you might be editing a message that you
wish to send, or looking at a documentation file with INFO.
@Twenex{Running another fork under EMACS can also be thought of as a
sort of "sublevel".}}

@Node(Name="Subsystems", Prev="M-X", Next="Recursive")

@Section[Subsystems]

  A @dfn[subsystem] is an EMACS function which is an interactive program in
its own right: it reads commands in a language of its own, and
displays the results.  You enter a subsystem by typing an EMACS
command which invokes it.  Once entered, the subsystem runs until a
specific command to exit the subsystem is typed.  An example of an
EMACS subsystem is @INFO{INFO itself}@Manual{INFO, the documentation
reading program}.  Others are Backtrace and TDEBUG, used for debugging
TECO programs, and @ITS{RMAIL and} BABYL, used for reading and editing
mail files.

  The commands understood by a subsystem are usually not like EMACS
commands, because their purpose is something other than editing text.
For example, INFO commands are designed for moving around in a
tree-structured documentation file.  In EMACS, most commands are
Control or Meta characters because printing characters insert
themselves.  In most subsystems, there is no insertion of text, so
non-Control non-Meta characters can be the commands.

  While you are inside a subsystem, the mode line usually gives the
name of the subsystem (as well as other information supplied by the
subsystem, such as the filename and node name in INFO).  You can tell
that you are inside a subsystem because the mode line does not start
with "EMACS", or with an open bracket ("[") which would indicate a
recursive editing level.  @Note(Name="Mode Line", Node="ModeLine").

  Because each subsystem implements its own commands, we cannot
guarantee anything about them.  However, there are conventions for
what certain commands ought to do:
@DoubleWideCommands{
C-]@\Aborts (exits without finishing up).

Backspace@\Scrolls backward, like M-V in EMACS.

Space@\Scrolls forward, like C-V in EMACS.

Q@\Exits normally.

X@\Begins an extended command, like M-X in EMACS.

Help or ?@\Prints documentation on the subsystem's commands.
}
Not all of these necessarily exist in every subsystem, however.

@ITS{
@INFO{One important subsystem is RMAIL, used for reading mail.
@Note(Node="Mail").}

@Node(Name="Mail", Up="Subsystems", Prev="Subsystems")

@Section[Reading Mail]

@index{View Mail}@index{Read Mail}@index{RMAIL}@index{Mail}
  The easiest way to look at your new mail is to use M-X View Mail.
This displays the mail file with View File.  @Note(Node="FilAdv",
Name="View File").  To view someone else's mail, give his user
name as an argument to M-X View Mail.

@index{C-X R}@index{Mail Reader Library}
  When you want to edit your mail instead of just looking at it, use
C-X R (Read Mail).  This invokes the mail reading subsystem RMAIL.
@INFONote(File="RMAIL", Node="Top", Name="RMAIL").  If you prefer some
other mail reader, you can set the variable Mail Reader Library to the
name of the library to use.

@index{C-X M}@index{Send Mail}
@index{& Mail Message}@index{Mail Sender Library}
  You can send mail from within RMAIL as well as edit your mail.  But
if you want to send just one message, the easiest way is Control-X M
(Send Mail).  You edit the message, exit with @CMC[], and the message
is sent; or else you abort with C-].  C-X M works by invoking RMAIL or
whatever library you use to read mail at a special entry point named
@w[& Mail] Message.  The same library used for reading mail is used,
normally, but you can specify a different one by setting the variable
Mail Sender Library.

@index{TMACS}@index{Type Mailing List}
  The function Type Mailing List in the TMACS library is useful for
finding out where a mailing list forwards to.  Invoke it with
@;@example[M-X Run LibraryTMACSType Mailing List<mail address>]
and the equivalences of the mail address will be printed.  Type
Mailing List prints the immediate equivalences of the mailing list you
specify, then traces their equivalences, down to terminal addresses or
addresses on non-ITS machines.  Mailing lists on other ITS machines
can be traced; simply include the site name in the argument.  However,
no lists on DM can be traced because DM's forwarding data base is
incompatible.  @Note(Node="Libraries").

}@comment{ITS}

@Node(Name="Recursive", Prev="Subsystems", Next="Exiting")

@Section[Recursive Editing Levels]

@Index{Recursive Editing Level}@Index{Edit Options}
@Index{Mode Line}
  A @dfn[recursive editing level] is a state in which part of the
execution of one command involves doing some editing.  You may be
editing the file you are working on, or you may be editing completely
something totally different from what you were working on at top
level.  Recursive editing levels are indicated in the mode line by
square brackets ("[" and "]").

  For example, the command M-X Edit Options allows you to change the
settings of EMACS options.  During the execution of this command, you
enter a recursive editing level in which you edit a list of options
names and values using the usual EMACS editing commands.  While this
is going on, the mode line says "[Edit Options]" to inform you that
you are in a recursive editing level and why.  When you @dfn(exit) the
recursive editing level, the Edit Options command continues its work by
looking at the changes you have made in the list of options and
changing the actual option values accordingly.  Only then is the
original Edit Options command finished.

  Alternatively, you can @dfn(abort) the recursive editing level,
which gets you out of the Edit Options command and back to top level,
without allowing the command to finish.

  A recursive editing level differs from a subsystem in that the
commands are ordinary EMACS commands (though a handful may have been
changed slightly), whereas a subsystem defines its own command
language.

  The text you edit inside a recursive editing level depends on the
command which invoked the recursive editing level.  It could be a list
of options and values, or a list of tab stop settings, syntax table
settings, a message to be sent, or any text that you might wish
to compose.

@Index{Edit Picture}
  Sometimes in a recursive editing level you edit text of the file you
are visiting, just as at top level.  Why would this be?  Usually
because a few commands are temporarily changed.  For example, Edit
Picture in the PICTURE library defines commands good for editing a
picture made out of characters, then enters a recursive editing level.
When you exit, the special picture-editing commands go away.  Until
then, the brackets in the mode line serve to remind you that, although
the text you are editing is your file, all is not normal.
@Note(Node="PICTURE").

  In any case, if the mode line says "[...]" you are inside a
recursive editing level, and the way to exit (send the message,
redefine the options, get rid of the picture-editing commands, etc@.)
is with the command @CMC[] (@w[^R Exit]).
@Note(Node="Exiting").  If you change your mind about the command (you
don't want to send the message, or change your options, etc@.) then you
should use the command C-] (Abort Recursive Edit) to get out.
@Note(IName="C-]", Name="Aborting", Node="Quitting").

  Inside recursive editing levels, the help option Help R is defined
to print the full documentation of the command which invoked the
recursive editing level.  The other normal Help options are still
available for asking about commands you want to use while inside the
recursive edit.

@index{minibuffer}@index{C-G}
  When the text in the mode line is surrounded by parentheses, it
means that you are inside a @dfn[Minibuffer].  A minibuffer is a special
case of the recursive editing level.  Like any other, it can be
aborted safely with C-].  @Note(Node="Minibuffer").

@ITS{
@Node(Name="Exiting", Prev="Recursive", Next="Help")}
@Twenex{
@Node(Name="Exiting", Prev="Recursive", Next="Subforks")}

@Section[Exiting Levels; Exiting EMACS]

@WideCommands[
C-X @CC[]@\Exit from EMACS to the superior @ITS(job)@Twenex(fork).

@CMC[]@\Exit from EMACS or from a recursive editing level.

@Twenex{M-X Rerun CCL @\Exit from EMACS to EXEC and repeat the last
Compile-class command.}
]

@ITS{@index[C-M-C]}@Twenex{@index[C-M-Z]}
@ITS{@index[C-X C-C]}@Twenex{@index[C-X C-Z]}
@index{^R Exit}@index{^R Return to Superior}@index{exiting}
  The general EMACS command to exit is @CMC[] (@w[^R Exit]).  This command
is used to exit from a recursive editing level back to the top level
of EMACS, and to exit from EMACS at top level back to
@ITS[HACTRN]@Twenex[EXEC].  If your keyboard does not have a Meta
key, you must type this command by means of a bit prefix character, as
@CC[] @CC[] or as Altmode @CC[].  Note carefully the difference
between exiting a recursive editing level and aborting it: exiting
allows the command which invoked the recursive editing level to finish
its job with the text as you have edited it, whereas aborting cancels
whatever the command was going to do.  @Note(Name="Aborting",
Node="Quitting").

  We cannot say in general how to exit a subsystem, since each
subsystem defines its own command language, but the convention is to
use the character "Q".

  You can exit from EMACS back to the superior @ITS[job]@Twenex[fork],
usually @ITS[HACTRN]@Twenex[EXEC], at any time, even within a
recursive editing level, with the command C-X @CC[] (@w[^R Return] to
Superior).  If this is used while you are inside a recursive editing
level, then when EMACS is re-entered you will still be inside the
recursive editing level.

@Twenex{
@Index{Rerun CCL}
  If the superior fork really is EXEC, you can use M-X Rerun CCL to
return to EXEC and repeat the last Compile, Load, or Debug EXEC
command.  It offers to save any buffers which need saving, first.}

  Exiting EMACS does not normally save the visited file, because it is
not the case that users exit EMACS only when they are "finished
editing".  If you want the file saved, you must use C-X C-S.
Exiting does cause an auto save if Auto Save mode is in use.
@Twenex{M-X Rerun CCL does offer to save because with it you indicate
specifically your desire to use the saved file.}

@Index{& Exit EMACS}@Index{Exit Hook}@Index{Return from Superior Hook}
@index{Exit to Superior Hook}
  Exiting from EMACS runs the function @w[& Exit] EMACS.  This function
executes the value of the variable Exit Hook, if it is nonzero;
otherwise, it does auto-save if Auto Save mode is on.  @w[& Exit
EMACS] also executes the value of the variable Exit to Superior Hook,
if it is defined.  If EMACS is continued, the value of Return from
Superior Hook is executed.

@Twenex{
@Node(Name="Subforks", Prev="Exiting", Next="Help")

@Section[Running Subforks under EMACS]

  Running a subfork under EMACS is a little bit like running an EMACS
subsystem in that you give EMACS a command to start it, and give it a
command when you want to exit.

  The difference is that a subsystem is implemented as a part of
EMACS.  It can call other parts of EMACS as a subroutine, for example.
A subfork is an entirely separate program, and any program which you
could run under EXEC can also be run under EMACS.  However, subforks
cannot be integrated as well with the rest of EMACS.

  To exit from a subfork running under EMACS, type Control-C once or
twice, just as you would to return to EXEC from a subfork running
under EXEC.

@index{TECO}
  Control of subforks is done with the TECO command FZ, which can be
used for loading an arbitrary program into a subfork of EMACS.

@Index{& Exit EMACS}@Index{Return from Inferior Hook}
@index{Exit to Inferior Hook}
  EMACS commands which run a subfork that is likely to run for an
indefinite length of time call the function @w[& Exit] EMACS first, so
that an auto save is done if necessary.  They also execute the value
of Exit to Inferior Hook before running the inferior, and execute the
value of Return from Inferior Hook when the inferior returns.  Some
EMACS commands run an inferior that is expected to return almost
immediately and not read input from the terminal.  These commands do
not use @w[& Exit] EMACS or run the hooks.

@index{Push to EXEC}@index{inferiors}@index{forks}@index{Exec Name}@index{TECO}

@SubSection[Inferior EXEC]

  An alternative to exiting EMACS is pushing to another EXEC under
EMACS.  You can probably do in this EXEC whatever you would have done
after exiting, and it will not harm the EMACS.  Do M-X Push to EXEC to
get an inferior EXEC, and use the POP command to return to EMACS.
Repeated use of Push to EXEC gets the same EXEC with its subfork
unchanged.  You can actually switch randomly between EMACS and
one other program in this way, even if the EXEC on your machine does
not support multiple forks.  The variable Exec Name contains
the name of the file to run, or 0 for the ordinary EXEC.

@SubSection[Reading Mail]

  An important use of subforks is for reading mail with MM.
@Note(Node="Mail").

@SubSection[Subforks in General]

@Commands{
M-+@\Start or resume a subfork.

M-,@\Kill a subfork.
}

@index{EFORK}@index{Libraries}
  The EFORK library, which you must load explicitly with Load Library
(@Note(Node="Libraries").), contains general functions for running
several forks underneath EMACS.  EMACS users do not need to wait for
DEC to wake up and release the multi-forking EXEC; they can use
multiple forks right now.

@index{^R Invoke Inferior}@index{M-+}
  When EFORK is loaded, the command M-+ (@w[^R Invoke] Inferior) creates
or resumes a subfork.

  Creation of a subfork requires two arguments, which you must type.
The first one is the fork handle, an arbitrary name by which you will
refer to the fork later.  The second one is the name of the file to
run in the fork.  Both arguments must be terminated with <cr>.

  If the subfork terminates, you return to EMACS.  You can return to
EMACS anyway by typing C-G (the EMACS interrupt character).

  To resume a subfork, use M-+ again, and specify the same handle.
No distinction is made between upper case and lower case in the handle
name.  If you type just <cr> for the handle name, the most recently
used subfork is resumed.

  You can also create or resume an inferior EXEC with M-+.  Specify
EXEC as the handle to create a new EXEC.  Specify * as the handle to
resume an existing EXEC.  Creating a new EXEC gets rid of any existing
one.

@index{List Handles}
  M-X List Handles prints a list of the handles of all the existing
subforks.

@index{^R Kill Inferior}@index{M-,}
  To kill a subfork, use M-Comma (@w[^R Kill] Inferior), which asks you to
specify the handle of the fork to be killed.  You cannot kill the
inferior EXEC, if there is one, but asking to create a new one the
next time you use it has much the same effect.

@SubSection[Ephemerons]

@index{Execute Ephemeron}@index{Display Ephemeron}@index{Ephemerons}
  The functions Execute Ephemeron and Display Ephemeron, in EFORK, run
a program in an inferior fork and kill it as soon as it returns
(whether because it is finished, or because you type C-G).  Display
Ephemeron pauses until you type a character before redisplaying the
screen; it is for use if the program prints something you would like
to read.

@SubSection[Services Obtained from an Inferior EXEC]

  The SYSTEM library, which you must load explicitly with Load Library
(@Note(Node="Libraries").), contains functions which communicate with
Twenex by passing commands to an inferior EXEC which exists momentarily.

@index{^R System Load Average}@index{Check Output Queue}
@index{Check Batch Queue}@index{Check Users}@index{Check Log File}
@index{Enable Capabilities}@index{Disable Capabilities}
@index{SYSTAT}@index{Check Job}@index{Check Disk}@index{Check Available}

  Most of the commands in SYSTEM print some sort of system status
information.  For example, there are
@GrossCommands[
M-X ^R System Load Average @\Prints the one minute load average in the
echo area.  This function is expected to be used by connecting it to a
command character, but the SYSTEM library does not connect it.  You
must connect it yourself with Set Key or in an init or @EVARS() file.
It can, however, be called with M-X like any other function.

M-X Check Output Queue @\Prints the contents of the output queues.
This requires an argument, which should be ALL, FAST or USER.

M-X Check Batch Queue @\Prints the contents of the batch queues.
This requires an argument, which should be ALL, FAST or USER.

M-X Check Users @\Prints a list of the users on the system.

M-X SYSTAT @\Invokes SYSTAT.  You may specify the argument to be
passed to SYSTAT as an argument to this command.  No argument, when
using M-X, is equivalent to a null argument, which obtains the default
SYSTAT printout.

M-X Check Job @\Prints your job number, user name and connected directory.

M-X Enable Capabilities @\Enables your capabilities in the EXEC which
is EMACS's superior, so that they are actually available in EMACS.  If
you don't have capabilities to enable, your company has policies of
distrust and is putting artificial barriers in the way of your doing
your job.  Find another company.

M-X Disable Capabilities @\Disables your capabilities in the EXEC above EMACS.

M-X Check Log File@\Prints any changes in the log file whose name is
specified as an argument.  This command uses and sets the TECO default
filename, so you usually do not need to repeat the argument if you
repeat the command.

M-X Check Disk @\Performs I DISK on a directory which you must specify
with an argument.

M-X Check Available @\Prints a list of available devices or terminal
lines.  You must specify LINES as an argument if you want that;
otherwise, the default is to list the available devices.
]

@index{Connect to Directory}@index{Access to Directory}
  Two other commands are
@GrossCommands[
M-X Connect to Directory @\Changes your connected directory.  Supply
the directory name (including the brackets) as an argument, and the
password as a second argument if it is needed.  This command is always
available; you need not load SYSTEM.

M-X Access to Directory @\Performs an ACCESS command.
Supply arguments as you would for Connect to Directory.
]

@Node(Name="Mail", Up="Subforks", Prev="Subforks")

@Section[Reading Mail]

@index{Check Mail}@index{Read Mail}@index{Mail Reader Library}
@index{Mail Reader Program}
@index{MM (Mail reader)}@index{Mail}@index{C-X R}
To edit your mail file, use C-X R (Read Mail).  This invokes a mail
reading subsystem or subfork.  If the variable Mail Reader Library is
defined, it is the name of the subsystem to use; else if Mail Reader
Program is defined, it is the name of the program to run in a subfork;
otherwise, the program MM is used.

@index{& Mail Message}@index{C-X M}@index{Send Mail}
  You can send mail from within MM as well as edit your mail.  But if
you want to send just one message, the easiest way is Control-X M
(Send Mail).  C-X M works by invoking MM, or whatever program or
library you use to read mail, at a special entry point.  If it is a
library, the entry point is the function @w[& Mail] Message.

@index{MAICHK}
  The command M-X Check Mail tells you whether you have any new mail
to be read.  The MAICHK library, if loaded, checks automatically every
so often.

@Comment(End Twenex)
}

@ITS{
@Node(Name="Help", Prev="Exiting", Next="Mark")}
@Twenex{
@Node(Name="Help", Prev="Subforks", Next="Mark")}

@Chapter[Self-Documentation Commands]
@index{Help}@index{C-_}

  EMACS provides extensive self-documentation features which revolve
around a single character, called the Help character.  At any time
while using EMACS, you can type the Help character to ask for help.
@ITS{How to type the Help character depends on the terminal you are
using, but aside from that the same character always does the trick.
If your keyboard has a key labeled Help (above the H), type that key
(together with the Top key).  Otherwise the way you type the Help
character is actually C-_ (Control-Underscore) followed by an H (this
is two characters to type, but let's not worry about that).  Whatever
it is you have to type, to EMACS it is just the Help character.}
@Twenex{The Help character is actually typed as C-_
(Control-Underscore).}  On some terminals just figuring out how to type a
Control-Underscore is hard!  Typing Underscore and adding the Control
key is what logically ought to work, but on some terminals it does not.
Sometimes Control-Shift-O works.  On VT-100 terminals, typing Control-/ or
Control-? sends a Control-_ character.

  If you type Help while you are using a subsystem such as INFO, it
prints a list of the commands of that subsystem.

  If you type Help in the middle of a multi-character command, it
often tells you about what sort of thing you should type next.  For
example, if you type M-X and then Help, it tells you about M-X and
how to type the name of the command.  If you finish the function name
and the Altmode and then type Help, it tells you about the function
you have specified so you can know what arguments it needs.  If you
type C-X and then type Help, it tells you about the C-X commands.

  But normally, when it's time for you to start typing a new command,
Help offers you several options for asking about what commands
there are and what they do.  It prompts with "Doc (? for help):" at the
bottom of the screen, and you should type a character to say what kind
of help you want.  You could type Help or "?" at this point to find out
what options are available.  The ones you are most likely to need are
described here.

@index{Describe}
  The most basic Help options are Help C and @w[Help D].@: You can use
them to ask what a particular command does.  Help C is for character
commands; type the command you want to know about after the Help and
the "C" ("C" stands for Character).  Thus, Help C M-F or Help C
Altmode F tells you about the M-F command.  Help D is for asking about
functions (extended commands); type the name of the function and a
Return.  Thus, Help D Lisp Mode<cr> tells you about M-X Lisp Mode.
Help D can also tell you the documentation of a variable, if you give
it a variable's name instead of a function's name.  "D" stands for
"Describe", since Help D actually uses the function Describe to do the
work.

@index{Apropos}
  A more complicated sort of question to ask is, "what are the
commands for working with files?"  For this, you can type Help A,
followed by the string "file" and a Return.  It prints a list of
all the functions that have "file" anywhere in their names, including Save All
Files, @w[^R Save] File, Append to File, etc.  If some of the functions
are connected to commands, it tells you that too.  For example, it would
say that you can invoke @w[^R Save] File by typing C-X C-S.  "A" stands
for "Apropos", since Help A actually uses the function Apropos to do
the substring matching.  Help A does not list internal functions, only
those the nonprogrammer is likely to use.  If you want subroutines to
be listed as well, you must call Apropos yourself.

  Because Apropos looks only for functions whose names contain the
string which you specify, you must use ingenuity in choosing
substrings.  If you are looking for commands for killing backwards and
Help A Kill Backwards doesn't reveal any, don't give up.  Try just
Kill, or just Backwards, or just Back.  Be persistent.  Pretend you
are playing Adventure. 

Here is a set of Apropos strings that covers many classes of
EMACS commands, since there are strong conventions for naming the
standard EMACS commands.  By giving you a feel for the naming
conventions, this set should also serve to aid you in developing a
technique for picking Apropos strings.
@begin[quotation,indent 0]
character, line, word, sentence, paragraph, region, page, buffer,
screen, window, bounds, file, dir, beginning, end, case, mode,
forward, backward, next, previous, up, down, search, kill, delete, mark,
fill, indent, change.
@end[quotation]
There is also a convention for how command names start for
certain common kinds of operations: many commands
start with one of the words "Edit", "View", "Insert", "List", or
"What".

  If you are inside a recursive editing level, Help R prints out the
complete documentation of that recursive editing level.
@Note(Node="Recursive").  Help ? also tells you briefly what sort of
recursive editing level you are in, in addition to describing the
available Help options.  If you are not inside a recursive editing
level, Help R says that you are at top level.

@Index{Line noise}
  If something surprising happens, and you are not sure what commands
you typed, use Help L.@:  Help L prints the last 60 command characters
you typed in.  This is also helpful if you suffer from line noise.  If
you see commands that you don't know, you can use Help C to find out
what they do.

  If a command doesn't do what you thought you knew it should do, you
can ask to see whether it has changed recently.  Help N prints out the
file called @ITS{EMACS;EMACS NEWS}@Twenex{EMACS:EMACS.NEWS} which is
an archive of announcements of changes to EMACS.

  To find out about the other Help options, type Help Help.  That is,
when the first Help asks for an option, type Help to ask what is
available.

@index{documentation}
  Finally, you should know about the documentation files for EMACS,
which are @ITS{EMACS;EMACS GUIDE and EMACS;EMACS
CHART}@Twenex{EMACS.GUIDE and EMACS.CHART}.  EMACS@ITS{
}@Twenex{.}GUIDE is a version of the manual formatted to be printed
out on a terminal or line printer.  EMACS@ITS{ }@Twenex{.}CHART has a
brief description of all the commands, known as the wall chart,
because it is good to post on the wall near your terminal.
@Case{Device, Dover=[A copy of the wall chart is included in this
manual just before the index.]}

@Node(Name="Mark", Prev="Help", Next="Killing")

@Chapter[The Mark and the Region]
@index{mark}@index{Region}

@index{C-X C-U}@index{^R Uppercase Region}
  In general, a command which processes an arbitrary part of the
buffer must know where to start and where to stop.  In EMACS, such
commands usually operate on the text between point and @dfn[the mark].
This range of text is called @dfn[the region].  To specify a region,
you set point to one end of it and mark at the other.  It doesn't
matter which one is set first chronologically, or which one comes
earlier in the text.
Here are some commands for setting the mark:

@WideCommands[

C-@@@\Set the mark where point is.

C-Space@\The same.

C-X C-X@\Interchange mark and point.

M-@@@\Set mark after end of next word.  This command and the following
three do not move point.

C-M-@@@\Set mark after end of next Lisp s-expression.

C-<@\Set mark at beginning of buffer.

C->@\Set mark at end of buffer.

M-H@\Put region around current paragraph.

C-M-H@\Put region around current Lisp defun.

C-X H@\Put region around entire buffer.

C-X C-P@\Put region around current page.
]

  For example, if you wish to convert part of the buffer to all
upper-case, you can use the C-X C-U command, which operates on the
text in the region.  You can first go to the beginning of the text to
be capitalized, put the mark there, move to the end, and then type C-X
C-U.  Or, you can set the mark at the end of the text, move to the
beginning, and then type C-X C-U.  C-X C-U runs the function
@w[^R Uppercase] Region, whose name signifies that the region, or
everything between point and the mark, is to be capitalized.

@index{C-@@}@index{C-Space}@index{^R Set/Pop Mark}
  The most common way to set the mark is with the C-@@ command or the
C-Space command (@w[^R Set/Pop] Mark).  They set the mark where
point is.  Then you can move point away, leaving the mark
behind.

  It isn't actually possible to type C-Space on non-Meta keyboards.
Yet on many terminals the command appears to work anyway!  This is
because trying to type a Control-Space on those terminals actually
sends the character C-@@, which means the same thing as C-Space.  A
few keyboards just send a Space.  If you have one of them, you type C-@@,
or customize your EMACS.

@index{C-X C-X}@index{^R Exchange Point and Mark}
  Since terminals have only one cursor, there is no way for EMACS to
show you where the mark is located.  You have to remember.  The usual
solution to this problem is to set the mark and then use it soon,
before you forget where it is.  But you can see where the mark is with
the command C-X C-X (@w[^R Exchange] Point and Mark) which puts the
mark where point was and point where the mark was.  The extent of the
region is unchanged, but the cursor and point are now at the previous
location of the mark.

  C-X C-X is also useful when you are satisfied with the location of
point but want to move the mark; do C-X C-X to put point there
and then you can move it.  A second use of C-X C-X, if necessary,
puts the mark at the new location with point back at its original
location.

  If you insert or delete before the mark, the mark may drift through
the text.  If the buffer contains "FOO BAR" and
the mark is before the "B", then if you delete the "F" the mark will
be before the "A".  This is an unfortunate result of the simple way
the mark is implemented.  It is best not to delete or insert at places
above the mark until you are finished using it and don't care where it
drifts to.

@Section[Commands to Mark Textual Objects]

@index{M-@@}@index{C-M-@@}@index{words}@index{lists}@index{C->}@index{C-<}
@index{^R Mark Word}@index{^R Mark Sexp}@index{^R Mark Beginning}@index{^R Mark End}
  There are commands for placing the mark on the other side of a
certain object such as a word or a list, without having to move there
first.  M-@@ (@w[^R Mark] Word) puts the mark at the end of the next word,
while C-M-@@ (@w[^R Mark] Sexp) puts it at the end of the next
s-expression.  C-> (@w[^R Mark] End) puts the mark at the end of the
buffer, while C-< (@w[^R Mark] Beginning) puts it at the beginning.  These
characters allow you to save a little typing or redisplay, sometimes.

@index{paragraphs}@index{Defuns}@index{pages}@index{M-H}@index{C-M-H}@index{C-X C-P}@index{C-X H}
@index{^R Mark Paragraph}@index{^R Mark Defun}@index{^R Mark Page}@index{^R Mark Whole Buffer}
  Other commands set both point and mark, to delimit an object in the
buffer.  M-H (@w[^R Mark] Paragraph) puts point at the beginning of the
paragraph it was inside of (or before), and puts the mark at the end.
M-H does all that's necessary if you wish to indent, case-convert, or
kill a whole paragraph.  C-M-H (@w[^R Mark] Defun) similarly puts point
before and the mark after the current or next defun.  C-X C-P (@w[^R Mark]
Page) puts point before the current page (or the next or previous,
according to the argument), and mark at the end.  The mark goes after
the terminating page delimiter (to include it), while point goes after
the preceding page delimiter (to exclude it).  Finally, C-X H (@w[^R Mark]
Whole Buffer) makes the region the entire buffer by putting point at the
beginning and the mark at the end.

@Section[The Ring of Marks]

@index{C-U C-@@}@index{C-U C-Space}
  Aside from delimiting the region, the mark is also useful for
remembering a spot that you may want to go back to.  To make this
feature more useful, EMACS remembers 16 previous locations of the mark.
Most commands that set the mark push the old mark onto this stack.  To
return to a marked location, use @w[C-U C-@@] (or @w[C-U C-Space]).  This
moves point to where the mark was, and restores the mark from the
stack of former marks.  So repeated use of this command moves
point to all of the old marks on the stack, one by one.  Since the
stack is actually a ring, enough uses of @w[C-U C-@@] bring point
back to where it was originally.  Insertion and deletion can cause
the saved marks to drift, but they will still be good for this purpose
because they are unlikely to drift very far.

@index{Auto Push Point Option}@index{Auto Push Point Notification}
  Some commands whose primary purpose is to move point a great
distance take advantage of the stack of marks to give you a way to
undo the command.  The best example is M-<, which moves to the
beginning of the buffer.  It sets the mark first, so that you can use
@w[C-U C-@@] or @w[C-X C-X] to go back to where you were.  Searches
sometimes set the mark; it depends on how far they move.  Because of
this uncertainty, searches type out "^@@" if they set the mark.  The
normal situation is that searches leave the mark behind if they move
at least 500 characters, but you can change that value since it is
kept in the variable Auto Push Point Option.  By setting it to 0, you
can make all searches set the mark.  By setting it to a very large
number such as ten million, you can prevent all searches from setting
the mark.  The string to be typed out when this option does its thing
is kept in the variable Auto Push Point Notification.

@manual{
@chapter(Killing and Moving Text)

  The commonest way of moving or copying text with EMACS is to kill
it, and get it back again in one or more places.  This is very safe
because the last several pieces of killed text are all remembered, and
it is versatile, because the many commands for killing syntactic units
can also be used for moving those units.  There are also other ways of
moving text for special purposes.}

@Node(Name="Killing", Prev="Mark", Next="Un-killing")

@section(Deletion and Killing)

@index{M-D}@index{M-Rubout}@index{C-M-K}@index{C-M-Rubout}@index{C-X Rubout}@index{M-K}
@index{^R Delete Character}@index{^R Backward Delete Character}
@index{^R Kill Line}@index{^R Kill Region}@index{^R Kill Word}@index{^R Backward Kill Word}
@index{^R Kill Sexp}@index{^R Backward Kill Sexp}
@index{^R Kill Sentence}@index{^R Backward Kill Sentence}

@index{killing}@index{deletion}@index{C-D}@index{Rubout}@index{C-K}@index{C-W}@index{lines}
  Most commands which erase text from the buffer save it so that you
can get it back if you change your mind, or move or copy it to other
parts of the buffer.  These commands are known as @dfn[kill] commands.
The rest of the commands that erase text do not save it; they are
known as @dfn[delete] commands.  The delete commands include C-D and
Rubout, which delete only one character at a time, and those commands
that delete only spaces or line separators.  Commands that can destroy
significant amounts of nontrivial data generally kill.  The commands'
names and individual descriptions use the words "kill" and "delete" to
say which they do.  If you do a kill command by mistake, you can use
the Undo command to undo it (@Note(Node="Undo").).

@DoubleWideCommands[

C-D@\Delete next character.

Rubout@\Delete previous character.

M-\@\Delete spaces and tabs around point.

C-X C-O@\Delete blank lines around the current line.

M-^@\Join two lines by deleting the CRLF and any indentation.

C-K@\Kill rest of line or one or more lines.

C-W@\Kill region (from point to the mark).

M-D@\Kill word.

M-Rubout@\Kill word backwards.

C-X Rubout@\Kill back to beginning of sentence.

M-K@\Kill to end of sentence.

C-M-K@\Kill s-expression.

C-M-Rubout@\Kill s-expression backwards.
]

@Subsection[Deletion]

  The most basic delete commands are C-D and Rubout.  C-D deletes the
character after the cursor, the one the cursor is "on top of" or
"underneath".  The cursor doesn't move.  Rubout deletes the character
before the cursor, and moves the cursor back.  Line separators act
like single characters when deleted.  Actually, C-D and Rubout aren't
always delete commands; if you give an argument, they kill instead.
This prevents you from losing a great deal of text by typing a large
argument to a C-D or Rubout.

@Index{M-\}@index{^R Delete Horizontal Space}
@Index{C-X C-O}@index{^R Delete Blank Lines}
@Index{M-^}@index{^R Delete Indentation}
  The other delete commands are those which delete only formatting
characters: spaces, tabs and line separators.  M-\ (@w[^R Delete]
Horizontal Space) deletes all the spaces and tab characters before and
after point.  C-X C-O (@w[^R Delete] Blank Lines) deletes all blank lines
after the current line, and if the current line is blank deletes all
blank lines preceding the current line as well (leaving one blank
line, the current line).  M-^ (@w[^R Delete] Indentation) joins the
current line and the previous line, or the current line and the next
line if given an argument.  @Note(Name="Indentation", IName="M-^",
Node="TextIndent").

  A function @w[^R Delete] Region used to exist, but it was too
dangerous.  When you want to delete a large amount of text without
saving a copy of it (perhaps because it is very big), you can set
point and mark around the text and then type
@example[M-Altmode
MRK]
(This is a use of the minibuffer.  @Note(Node="Minibuffer").).

@Subsection[Killing by Lines]

@index{blank lines}
  The simplest kill command is the C-K command (@w[^R Kill] Line).
If given at the beginning of a line, it kills all the text on the
line, leaving it blank.  If given on a blank line, the blank line
disappears.  As a consequence, if you go to the front of a non-blank
line and type two C-K's, the line disappears completely.

  More generally, C-K kills from point up to the end of the line,
unless it is at the end of a line.  In that case it kills the line
separator following the line, thus merging the next line into the
current one.  Invisible spaces and tabs at the end of the line are
ignored when deciding which case applies, so if point appears to be at
the end of the line, you can be sure the line separator will be
killed.

@index{numeric arguments}
  If C-K is given a positive argument, it kills that many lines, and
the separators that follow them (however, text on the current line
before point is spared).  With a negative argument, it kills back to a
number of line beginnings.  An argument of -2 means kill back to the
second line beginning.  If point is at the beginning of a line, that
line beginning doesn't count, so @w[C-U - 2 C-K] with point at the front
of a line kills the two previous lines.

  C-K with an argument of zero kills all the text before point
on the current line.

@Subsection[Other Kill Commands]

@index{mark}@index{Region}
  A kill command which is very general is C-W (@w[^R Kill] Region), which
kills everything between point and the mark.  With this command, you
can kill any contiguous characters, if you first set the mark at one
end of them and go to the other end.

  Other syntactic units can be killed: words, with M-Rubout and M-D
(@Note(Node="Words").); s-expressions, with C-M-Rubout and C-M-K
(@Note(Node="Lists", Name="S-expressions").); sentences, with C-X
Rubout and M-K (@Note(Node="Sentences").).

@Node(Name="Un-Killing", Prev="Killing", Next="Copying")

@Section[Un-Killing]
@index{killing}@index{undo}@index{moving text}@index{kill ring}

  Un-killing is getting back text which was killed.  The usual way to
move or copy text is to kill it and then un-kill it one or more times.

@Commands[

C-Y@\Yank (re-insert) last killed text.

M-Y@\Replace re-inserted killed text with the
previously killed text.

M-W@\Save region as last killed text without killing.

C-M-W@\Append next kill to last batch of killed text.
]

@index{C-Y}@index{^R Un-kill}
  Killed text is pushed onto a @dfn[ring buffer] called the @dfn[kill
ring] that remembers the last 8 blocks of text that were killed.  (Why
it is called a ring buffer will be explained below).  The command C-Y
(@w[^R Un-kill]) reinserts the text of the most recent kill.  It leaves
the cursor at the end of the text, and puts the mark at the beginning.
Thus, a single C-W undoes the C-Y (M-X Undo also does so).  @w[C-U C-Y]
leaves the cursor in front of the text, and the mark after.  This is
only if the argument is specified with just a C-U, precisely.  Any
other sort of argument, including C-U and digits, has an effect
described below.

@index{mark}@index{Region}@index{M-W}@index{^R Copy Region}
  If you wish to copy a block of text, you might want to use M-W
(@w[^R Copy] Region), which copies the region into the kill ring without
removing it from the buffer.  This is approximately equivalent to C-W
followed by C-Y, except that M-W does not mark the buffer as "changed"
and does not temporarily change the screen.

  There is only one kill ring, and switching buffers or files has no
effect on it.  After visiting a new file, whatever was last killed in
the previous file is still on top of the kill ring.  This is important
for moving text between files.

@Subsection[Appending Kills]

@index{C-M-W}@index{^R Append Next Kill}
  Normally, each kill command pushes a new block onto the kill ring.
However, two or more kill commands in a row combine their text into a
single entry on the ring, so that a single C-Y command gets it all
back as it was before it was killed.  This means that you don't have
to kill all the text in one command; you can keep killing line after
line, or word after word, until you have killed it all, and you can
still get it all back at once.  (Thus we join television in
leading people to kill thoughtlessly).

  Commands that kill forward from point add onto the end of the
previous killed text.  Commands that kill backward from point add onto
the beginning.  This way, any sequence of mixed forward and backward
kill commands puts all the killed text into one entry without
rearrangement.

  If a kill command is separated from the last kill command by other
commands, it starts a new entry on the kill ring, unless you tell it
not to by saying C-M-W (@w[^R Append] Next Kill) in front of it.  The
C-M-W tells the following command, if it is a kill command, to append
the text it kills to the last killed text, instead of starting a new
entry.  With C-M-W, you can kill several separated pieces of text and
accumulate them to be yanked back in one place.

@Subsection[Un-killing Earlier Kills]

@index{M-Y}@index{^R Un-kill Pop}
  To recover killed text that is no longer the most recent kill, you
need the Meta-Y (@w[^R Un-kill] Pop) command.  The M-Y command should
be used only after a C-Y command or another M-Y.  It takes the
un-killed text inserted by the C-Y and replaces it with the text from
an earlier kill.  So, to recover the text of the next-to-the-last
kill, you first use C-Y to recover the last kill, and then use M-Y to
move back to the previous kill.

  You can think of all the last few kills as living in a ring.  After
a C-Y command, the text at the front of the ring is also present in
the buffer.  M-Y "rotates" the ring, bringing the previous string of
text to the front, and this text replaces the other text in the buffer
as well.  Enough M-Y commands can rotate any part of the ring to the
front, so you can get at any killed text as long as it is recent
enough to be still in the ring.  Eventually the ring rotates all
the way around and the most recent killed text comes to the front
(and into the buffer) again.  M-Y with a negative argument rotates the
ring backwards.  If the region doesn't match the text at the front of
the ring, M-Y is not allowed.

  In any case, when the text you are looking for is brought into the
buffer, you can stop doing M-Y's and it will stay there.  It's really
just a copy of what's at the front of the ring, so editing it does not
change what's in the ring.  And the ring, once rotated, stays rotated,
so that doing another C-Y gets another copy of what you rotated to
the front with M-Y.

  If you change your mind about un-killing, a C-W or M-X Undo gets
rid of the un-killed text at any point, after any number of M-Y's.
C-W pushes the text onto the ring again.  M-X Undo does not.

@index{numeric arguments}
  If you know how many M-Y's it would take to find the text you want,
then there is an alternative.  C-Y with an argument greater than one
restores the text the specified number of entries down on the ring.
Thus, @w[C-U 2 C-Y] gets the next to the last block of killed text.  It
differs from C-Y M-Y in that @w[C-U 2 C-Y] does not permanently rotate the
ring.

  A way of viewing the contents of the kill ring is
@example[
M-X View Q-register..K<cr>
]
You must add one to the indices listed by this command, to get the
argument to use with C-Y to yank any particular string.

@Node(Name="Copying", Prev="Un-killing", Next="Search")

@Section[Other Ways of Copying Text]

  Usually we copy or move text by killing it and un-killing it, but
there are other ways that are useful for copying one block of text in
many places, or for copying many scattered blocks of text into one
place.  In addition to those described here, see the
self-documentation of the MOVE library.

@Subsection[Accumulating Text]
@index{C-X A}@index{^R Append to Buffer}@index{Append to File}@index{Prepend to File}

  You can accumulate blocks of text from scattered locations either
into a buffer or into a file if you like.

  To append them into a buffer, use the command C-X A <buffername><cr>
(@w[^R Append] to Buffer), which inserts a copy of the region into the
specified buffer at the location of point in that buffer.  If there is
no buffer with the name you specify, one is created.  If you append
text into a buffer which has been used for editing, the copied text
goes into the middle of the text of the buffer, wherever point happens
to be in it.

  Point in that buffer is left at the end of the copied text, so
successive uses of C-X A accumulate the text in the specified buffer
in the same order as they were copied.  If C-X A is given an argument,
point in the other buffer is left before the copied text, so
successive uses of C-X A add text in reverse order.

  You can retrieve the accumulated text from that buffer with M-X Insert
Buffer<buffername><cr>.  This inserts a copy of the text in that
buffer into the selected buffer.  You can also select the other buffer
for editing.  @Note(Node="Buffers"), for background information on
buffers.

  Strictly speaking, C-X A does not always append to the text already
in the buffer.  But if it is used on a buffer which starts out empty,
it does keep appending to the end.

  Instead of accumulating text within EMACS, in a buffer, you can
append text directly into a disk file with the command M-X Append to
File<filename><cr>.  It adds the text of the region to the end of the
specified file.  M-X Prepend to File adds the text to the beginning of
the file instead.  The file is changed immediately on disk.  These
commands are normally used with files that are @xxi(not) being visited
in EMACS.  They have the advantage of working even on files too large
to fit into the EMACS address space.

@Subsection[Copying Text Many Times]
@index{C-X X}@index{C-X G}@index{^R Put Q-reg}@index{^R Get Q-reg}@index{q-registers}@index{TECO}@index{MM}
@label{EMACSqregisters}
@label{EMACSq-registers}

  When you want to insert a copy of the same piece of text frequently,
the kill ring becomes impractical, since the text moves down on the
ring as you edit, and will be in an unpredictable place on the ring
when you need it again.  For this case, you can use the commands C-X X
(@w[^R Put] Q-register) and C-X G (@w[^R Get] Q-register) to move the text.

  C-X X<q> stores a copy of the text of the region in a place called
q-register <q>.  With an argument, C-X X deletes the text as well.
<q> can be a letter or a digit.  This gives 36 places in which you
can store a piece of text.  C-X G<q> inserts in the buffer the text
from q-register <q>.  Normally it leaves point before the text and
places the mark after, but with a numeric argument it puts point after
the text and the mark before.

  The q-registers are important temporary variables in TECO
programming, but you don't have to understand them, only to know
that what you save with C-X X A is what you will get with C-X G A.

  Do not use q-registers M and R in this way, if you
are going to use the TECO commands MM and MR.

@Node(Name="Search", Prev="Copying", Next="Text")

@Chapter[Searching]

  Like other editors, EMACS has commands for searching for an
occurrence of a string.  The search command is unusual in that it
is @dfn[incremental]; it begins to search before you have finished typing
the search string.  As you type in the search string, EMACS shows you
where it would be found.  When you have typed enough characters to
identify the place you want, you can stop.  Depending on what you will
do next, you may or may not need to terminate the search explicitly
with an Altmode first.

@WideCommands[
C-S@\Search forward.

C-R@\Search backward.

C-S  C-W @\Word search, ignoring whitespace.
]

@index{searching}@index{C-S}@index{C-R}@index{^R Incremental Search}@index{^R Reverse Search}
  The command to search is C-S (@w[^R Incremental] Search).  C-S reads in
characters and positions the cursor at the first occurrence of the
characters that you have typed.  If you type C-S and then F, the
cursor moves right after the first "F".  Type an "O", and see
the cursor move to after the first "FO".  After another "O", the
cursor is after the first "FOO" after the place where you started
the search.  At the same time, the "FOO" has echoed at the bottom of
the screen.

  If you type a mistaken character, you can rub it out.  After the
FOO, typing a rubout makes the "O" disappear from the bottom of
the screen, leaving only "FO".  The cursor moves back to the "FO".
Rubbing out the "O" and "F" moves the cursor back to where you
started the search.

  When you are satisfied with the place you have reached, you can type
an Altmode, which stops searching, leaving the cursor where the
search brought it.  Also, any command not specially meaningful in searches
stops the searching and is then executed.  Thus, typing C-A would exit
the search and then move to the beginning of the line.
Altmode is necessary only if the next command you want to type is a
printing character, Rubout, Altmode, C-Q, or another search command, since
those are the characters that have special meanings inside the search.

  Sometimes you search for "FOO" and find it, but not the one you
expected to find.  There was a second FOO that you forgot about,
before the one you were looking for.  Then type another C-S and
the cursor will find the next FOO.  This can be done any number of
times.  If you overshoot, you can rub out the C-S's.

  After you exit a search, you can search for the same string again by
typing just C-S C-S: one C-S command to start the search and then
another C-S to mean "search again".

  If your string is not found at all, the echo area says "Failing
I-Search".  The cursor is after the place where EMACS found as
much of your string as it could.  Thus, if you search for FOOT, and
there is no FOOT, you might see the cursor after the FOO in FOOL.  At
this point there are several things you can do.  If your string was
mistyped, you can rub some of it out and correct it.  If you like the
place you have found, you can type Altmode or some other EMACS command
to "accept what the search offered".  Or you can type C-G, which
throws away the characters that could not be found (the "T" in "FOOT"),
leaving those that were found (the "FOO" in "FOOT").  A second C-G
at that point undoes the search entirely.

@index{quitting}@index{C-G}
  The C-G "quit" command does special things during searches; just
what, depends on the status of the search.  If the search has found
what you specified and is waiting for input, C-G cancels the entire
search.  The cursor moves back to where you started the search.  If
C-G is typed while the search is actually searching for something or
updating the display, or after search failed to find some of your
input (having searched all the way to the end of the file), then only
the characters which have not been found are discarded.  Having
discarded them, the search is now successful and waiting for more
input, so a second C-G will cancel the entire search.  Make sure you
wait for the first C-G to ding the bell before typing the second one;
if typed too soon, the second C-G may be confused with the first and
effectively lost.

  You can also type C-R at any time to start searching backwards.
If a search fails because the place you started was too late in the
file, you should do this.  Repeated C-R's keep looking for more
occurrences backwards.  A C-S starts going forwards again.  C-R's
can be rubbed out just like anything else.  If you know that you want
to search backwards, you can use C-R instead of C-S to start the
search, because C-R is also a command (@w[^R Reverse] Incremental Search)
to search backward.  Note to all customizers: all this command does is
call the current definition of @w[^R Incremental] Search with a negative
argument.

@Index{Case Search}
  All sorts of searches in EMACS normally ignore the case of the text
they are searching through; if you specify searching for FOO, then Foo
and foo are also considered a match.  If you do not want this feature,
set the variable Case Search to zero.  @Note(Node="Variables").

@index{Search Exit Option}@Index{Search Exit Char}
  Recall that Altmode exits a search without doing anything else,
while other Control and Meta characters exit the search and then have
their normal function.  The variable Search Exit Char says which
character should exit and do nothing else; its initial value is 033
octal, for Altmode.  This value is a 9-bit character, so 300 octal
means that Control-@@ is the exit character.  Any other character whose
definition indirects to the specified one also serves as an exit
character; so if you specify C-B, C-b will also exit, and if you
specify C-@@, then C-Space will also exit.  Set the variable to -1, and
there is no exit character.

  Bit prefix characters are @xxi[not] processed before the decision as
to whether and how to exit, so if you specify M-: as the exit
character, you must have a meta key on your terminal in order to type
it.  I do not know if this can be changed easily.

  Search Exit Option says what to do with other Control and Meta
characters.  0 says that they should be part of the search string.  A
nonzero value says that they should exit and then have their normal
function.  If this variable is nonzero, the Search Exit Char is
distinguished only by @xxi[not] having its normal function when it
exits.  If this is zero, the Search Exit Char is the only way to exit.

@index{String Search}@index{Character Search}
  A non-incremental search is also available.  Type Altmode (or the
Search Exit Char) right after the C-S to get it.  Do
@;@example[M-X Describe^R String Search<cr>]
for details.  Some people who prefer non-incremental searches put that
function on Meta-S, and @w[^R Character] Search (do M-X Describe for
details) on C-S.  It can do one useful thing which incremental search
cannot: search for words regardless of where the line breaks.

@Index{Word Search}
  Word search searches for a sequence of words without regard to how
the words are separated.  More precisely, you type a string of many
words, using single spaces to separate them, and the string can be
found even if there are multiple spaces or line separators between the
words.  Other punctuation such as commas or periods must match
exactly.  This is useful in conjunction with documents formatted by
text justifiers.  If you edit while looking at the printed, formatted
version, you can't tell where the line breaks are in the source file.
With word search, you can search without having to know.

  Word search is a special case of non-incremental search and is
invoked with C-S Altmode C-W.  This is followed by the search string,
which must always be terminated with an Altmode.  Searching does not
start until the final Altmode is typed.  Search Exit Char and Search
Exit Option do not apply to word search.

  You do not even have to type each word in full, in a word search.
An abbreviation is good enough.  Word search finds the first
occurrence of a sequence of words whose beginnings match the words of
the argument.

@Node(Name="Text",  Prev="Search",  Next="Fixit")

@Chapter[Commands for English Text]

@manual{EMACS enables you to manipulate words, sentences, or
paragraphs of text.  In addition, there are commands to fill text,
and convert case.  @ITS{For text-justifier input files, there are commands
that may help manipulate font change commands and underlining.}}

@index{^R Tab to Tab Stop}@index{Edit Tab Stops}@index{Text mode}@index{Tab}
@index{syntax table}@index{comments}@index{parentheses}
  Editing files of text in a human language ought to be done using
Text mode rather than Fundamental mode.  Invoke M-X Text Mode to enter
Text mode.  @Note(Node="MajorModes", Name="Major Modes").  M-X Text Mode
causes Tab to run the function @w[^R Tab] to Tab Stop, which allows you to set any tab
stops with M-X Edit Tab Stops (@note(Name="Indentation", IName="Tab
Stops", Node="Textindent").).
Features concerned with comments in programs are turned off except
when explicitly invoked.  Automatic display of
parenthesis matching is turned off, which is what most people want.
Finally, the syntax table is changed so that periods are not
considered part of a word, while apostrophes, backspaces and
underlines are.

  If you are editing input for the text justifier TEX, you might want
to use TEX mode instead of Text mode.  @INFONote(Name="TEX mode",
File="ETEX").  For editing SCRIBE input, use SCRIBE mode.
@Note(Node="SCRIBE").  Someday there may be special major modes for
other text justifiers.

@Menu{
* Words::           moving over and killing words
* Sentences::       moving over sentences and paragraphs
* TextIndent::      manipulation of indentation
* Filling::         filling or justifying text
* Case::            changing the case of text
@ITS{* Fonts::           changing the font of text (for text justifiers)
}* Underlining::     underlining (for text justifiers)
* SCRIBE::          editing SCRIBE files
* Dissociation::    Dissociated Press
}

@Node(Name="Words",  Prev="Text",  Up="Text",  Next="Sentences")

@Section[Word Commands]
@index{words}@index{Meta}

  EMACS has commands for moving over or operating on words.  By
convention, they are all Meta- characters.

@WideCommands[

M-F@\Move Forward over a word.

M-B@\Move Backward over a word.

M-D@\Kill up to the end of a word.

M-Rubout@\Kill back to the beginning of a word.

M-@@@\Mark the end of the next word.

M-T@\Transpose two words;  drag a word forward
or backward across other words.
]

  Notice how these commands form a group that parallels the character
based commands C-F, C-B, C-D, C-T and Rubout.  M-@@ is related to C-@@.

@index{motion}@index{M-F}@index{M-B}@index{^R Forward Word}@index{^R Backward Word}
  The commands Meta-F (@w[^R Forward] Word) and Meta-B (@w[^R Backward]
Word) move forward and backward over words.  They are thus analogous
to Control-F and Control-B, which move over single characters.  Like
their Control- analogues, Meta-F and Meta-B move several words if
given an argument.  Meta-F with a negative argument moves backward
like Meta-B, and Meta-B with a negative argument moves forward.
Forward motion stops right after the last letter of the word, while
backward motion stops right before the first letter.

@index{killing}@index{M-Rubout}@index{M-D}@index{^R Kill Word}@index{^R Backward Kill Word}
  It is easy to kill a word at a time.  Meta-D (@w[^R Forward] Kill Word)
kills the word after point.  To be precise, it kills everything from
point to the place Meta-F would move to.  Thus, if point is in the
middle of a word, only the part after point is killed.  If some
punctuation comes after point and before the next word, it is killed
along with the word.  If you wish to kill only the next word but not
the punctuation, simply do Meta-F to get the end, and kill the word
backwards with Meta-Rubout.  Meta-D takes arguments just like Meta-F.

  Meta-Rubout (@w[^R Backward] Kill Word) kills the word before point.
It kills everything from point back to where Meta-B would move to.  If
point is after the space in @w["FOO, BAR"], then @w["FOO, "] is
killed.  If you wish to kill just "FOO", then do
a Meta-B and a Meta-D instead of a Meta-Rubout.

@index{transposition}@index{numeric arguments}@index{M-T}@index{^R Transpose Words}
  Meta-T (@w[^R Transpose] Words) moves the cursor forward over a
word, dragging the word preceding or containing the cursor forward as
well.  A numeric argument serves as a repeat count.  Meta-T with a
negative argument undoes the effect of Meta-T with a positive
argument; it drags the word behind the cursor backward over a word.
An argument of zero, instead of doing nothing, transposes the word at
point (surrounding or adjacent to it) with the word at mark.  In any
case, the delimiter characters between the words do not move.  For
example, @w["FOO, BAR"] transposes into @w["BAR, FOO"] rather than
@w["BAR FOO,"].

@index{mark}@index{M-@@}@index{^R Mark Word}
  To operate on the next n words with an operation which applies
between point and mark, you can either set the mark at point and then
move over the words, or you can use the command Meta-@@ (@w[^R Mark] Word)
which does not move point, but sets the mark where Meta-F would move
to.  It can be given arguments just like Meta-F.

@index{Atom Word mode}
  Note that if you are in Atom Word mode and in Lisp mode, all the
word commands regard an entire Lisp atom as a single word.
@Note(Name="Minor Modes", Node="MinorModes").

@index{syntax table}
  The word commands' understanding of syntax is completely controlled
by the syntax table.  Any character can, for example, be declared to
be a word delimiter.  @Note(Node="Syntax").

@Node(Name="Sentences", Prev="Words", Up="Text", Next="TextIndent")

@Section[Sentence and Paragraph Commands]
@index{sentences}@index{paragraphs}

  The EMACS commands for manipulating sentences and paragraphs are mostly
Meta- commands, so as to resemble the word-handling commands.

@Commands{

M-A@\Move back to the beginning of the sentence.

M-E@\Move forward to the end of the sentence.

M-K@\Kill forward to the end of the sentence.

M-[@\Move back to previous paragraph beginning.

M-]@\Move forward to next paragraph end.

M-H@\Put point and mark around this paragraph
(around the following one, if between paragraphs).

C-X Rubout@\Kill back to the beginning of the sentence.
}

@SubSection[Sentences]

@index{motion}@index{M-A}@index{M-E}@index{^R Backward Sentence}@index{^R Forward Sentence}
  The commands Meta-A and Meta-E (@w[^R Backward] Sentence and
@w[^R Forward] Sentence) move to the beginning and end of the current
sentence, respectively.  They were chosen to resemble Control-A and
Control-E, which move to the beginning and end of a line.  Unlike
them, Meta-A and Meta-E if repeated or given numeric arguments move
over successive sentences.  EMACS considers a sentence to end wherever
there is a ".", "?" or "!" followed by the end of a line or two
spaces, with any number of ")"'s, "]"'s, "'"'s, or '"' 's allowed in
between.  Neither M-A nor M-E moves past the CRLF or spaces which
delimit the sentence.

@index{C-A}@index{C-E}@index{C-K}@index{killing}@index{M-K}@index{C-X Rubout}
@index{^R Kill Sentence}@index{^R Backward Kill Sentence}
  Just as C-A and C-E have a kill command, C-K, to go with them, so
M-A and M-E have a corresponding kill command M-K (@w[^R Kill] Sentence)
which kills from point to the end of the sentence.  With minus one as
an argument it kills back to the beginning of the sentence.  Larger
arguments serve as a repeat count.

  There is a special command, C-X Rubout (@w[^R Backward] Kill Sentence)
for killing back to the beginning of a sentence, because this is
useful when you change your mind in the middle of composing text.

@SubSection[Paragraphs]

@index{M-[}@index{M-]}@index{^R Backward Paragraph}@index{^R Forward Paragraph}
  Meta-[ (@w[^R Backward] Paragraph) moves to the beginning of the
current or previous paragraph, while Meta-] (@w[^R Forward] Paragraph)
moves to the end of the current or next paragraph.  Blank lines and
text justifier command lines separate paragraphs and are not part of
any paragraph.  Also, an indented line starts a new paragraph.

@index{blank lines}
  In major modes for programs (as opposed to Text mode), paragraphs
are determined only by blank lines.  This makes the paragraph commands
continue to be useful even though there are no paragraphs per se.

@index{Fill Prefix}
  When there is a fill prefix, then paragraphs are delimited by all
lines which don't start with the fill prefix.  @Note(Node="Filling").

@index{Region}@index{mark}@index{C-W}@index{C-U C-@@}@index{M-H}@index{^R Mark Paragraph}
  When you wish to operate on a paragraph, you can use the command
Meta-H (@w[^R Mark] Paragraph) to set the region around it.  This
command puts point at the beginning and mark at the end of the
paragraph point was in.  Before setting the new mark at the end, a
mark is set at the old location of point; this allows you to undo a
mistaken Meta-H with two C-U C-@@'s.  If point is between paragraphs
(in a run of blank lines, or at a boundary), the paragraph following
point is surrounded by point and mark.  Thus, for example, Meta-H C-W
kills the paragraph around or after point.

  One way to make an "invisible" paragraph boundary that does not show
if the file is printed is to put space-backspace at the front of a
line.  The space makes the line appear (to the EMACS paragraph
commands) to be indented, which usually means that it starts a
paragraph.

@index{Paragraph Delimiter}@index{TECO}@index{Page Delimiter}@index{pages}
  The variable Paragraph Delimiter should be a TECO search string
(@Note(Name="TECO search strings", Node="TECOsearch")@.) composed of
various characters or character sequences separated by @CTL[O]'s.  A
line whose beginning matches the search string is either the beginning
of a paragraph or a text justifier command line part of no paragraph.
If the line begins with period, singlequote, "-", "\" or "@@", it can
be a text justifier command line; otherwise, it can be the beginning
of a paragraph; but it cannot be either one unless Paragraph Delimiter
is set up to recognize it.  Thus, @w[".@CTL[O] "] as the Paragraph
Delimiter string means that lines starting with spaces start
paragraphs, lines starting with periods are text justifier commands,
and all other nonblank lines are nothing special.

@Node(Name="TextIndent", Prev="Sentences", Up="Text", Next="Filling")

@Section[Indentation Commands for Text]
@index{indentation}@index{formatting}

@WideCommands[

Tab@\Indents "appropriately" in a mode-dependent fashion.

M-Tab@\Inserts a tab character.

Linefeed@\Is the same as Return followed by Tab.

M-^@\Undoes a Linefeed.  Merges two lines.

M-M@\Moves to the line's first nonblank character.

M-I@\Indent to tab stop.  In Text mode, Tab does this also.

C-M-\@\Indent several lines to same column.

C-X Tab@\Shift block of lines rigidly right or left.
]

@index{Tab}@index{Linefeed}@index{^R Indent New Line}@index{M-Tab}
@index{C-Q}
  The way to request indentation is with the Tab command.  Its precise
effect depends on the major mode.  In Text mode, it indents to the
next tab stop.  You can set the tab stops with Edit Tab Stops (see
below).  If you just want to insert a tab character in the buffer, you
can use M-Tab or C-Q Tab.

@index{Edit Indented Text}
@index{Auto Fill Mode}@index{Space Indent Flag}
  For English text, usually only the first line of a paragraph should
be indented.  So, in Text mode, new lines created by Auto Fill mode
are not indented.  Text mode tells Auto Fill mode not to indent new
lines by setting the variable Space Indent Flag to zero.

  But sometimes you want to have an indented paragraph.  In such
cases, use M-X Edit Indented Text, which enters a submode in which Tab
and Auto Fill indent each line under the previous line, and only blank
lines delimit paragraphs.  Alternatively, you can specify a fill
prefix (see below).

@index{M-\}@index{M-^}@index{^R Delete Horizontal Space}@index{^R Delete Indentation}
  To undo a line-break, whether done manually or by Auto Fill, use the
Meta-^ (@w[^R Delete] Indentation) command to delete the indentation at
the front of the current line, and the line boundary as well.  They
are replaced by a single space, or by no space if before a ")" or
after a "(", or at the beginning of a line.  To delete just the
indentation of a line, go to the beginning of the line and use Meta-\
(@w[^R Delete] Horizontal Space), which deletes all spaces and tabs around
the cursor.

  To insert an indented line before the current line, do C-A, C-O, and
then Tab.
  To make an indented line after the current line, use C-E Linefeed. 

@index{M-M}@index{C-M-M}@index{^R Back to Indentation}
  To move over the indentation on a line, do Meta-M or C-M-M (@w[^R Back]
to Indentation).  These commands, given anywhere on a line,
position the cursor at the first nonblank character on the line.

@index{numeric arguments}@index{C-M-\}@index{C-X Tab}
@index{^R Indent Region}@index{^R Indent Rigidly}
  There are also commands for changing the indentation of several
lines at once.  Control-Meta-\ (@w[^R Indent] Region) gives each line
which begins in the region the "usual" indentation by invoking Tab at
the beginning of the line.  A numeric argument specifies the
indentation, and each line is shifted left or right so that it has
exactly that much.  C-X Tab (@w[^R Indent]
Rigidly) moves all of the lines in the region right by its argument
(left, for negative arguments).  The whole group of lines move rigidly
sideways, which is how the command gets its name.

@Subsection[Tab Stops]

  For typing in tables, you can use Text mode's definition of Tab,
@w[^R Tab] to Tab Stop, which may be given anywhere in a line, and indents
from there to the next tab stop.  If you are not in Text mode, this
function can be found on M-I anyway.

@index{Edit Tab Stops}@index{Tab Stop Definitions}@index{M-I}@index{^R Tab to Tab Stop}
  Set the tab stops using Edit Tab Stops, which allows you to edit
some text which defines the tab stops.  Here is what it would look
like for ordinary tab stops every eight columns.

@example[
        :       :       :       :       :       :

 123456789 123456789 123456789 123456789 123456789 1234
0        10        20        30        40        50
]

  The first line contains a colon or period at each tab stop.  Colon
indicates an ordinary tab, which fills with whitespace; a period
specifies that characters be copied from the corresponding columns of
the second line below it.  Thus, you can tab to a column automatically
inserting dashes or periods, etc.  It is your responsibility to put in
the second line the text to be copied.  In the example above there are
no periods, so the second line is not used, and is left blank.

  The third and fourth lines you see contain column numbers to help
you edit.  They are only there while you are editing the tab stops;
they are not really part of the tab settings.  The first two lines
reside in the variable Tab Stop Definitions when they are not being
edited.  If the second line is not needed, Tab Stop Definitions can be
just one line, with no CRLFs.  This makes it easier to set the
variable in a local modes list.  @Note(Node="Locals").

@index{Indent Tabs Mode}@index{minor modes}@Index{FS Flags}
  EMACS normally uses both tabs and spaces to indent lines, and
displays tab characters using eight-character tab stops.  (How the
ASCII character tab is displayed has nothing to do with the definition
of the Tab character as a command).  If you
prefer, all indentation can be made from spaces only.  To request
this, turn off Indent Tabs mode with the command M-X Indent Tabs Mode.
To display tabs with different tab stops, set the TECO flag FS TAB
WIDTH to the desired interval.  This is useful for displaying files
brought from other operating systems whose normal tab stop spacing is
not 8.  @Note(Node="FS Flags").

@Index{Tabify}@Index{Untabify}
To convert all tabs in a file to spaces, you can use M-X Untabify.
M-X Tabify performs the opposite transformation, replacing spaces with
tabs whenever possible, but only if there are at least three of them
so as not to obscure ends of sentences.  A numeric argument to Tabify
or Untabify specifies the interval between tab stops to use for
computing how to change the file.  By default, they use the same
interval being used for display.  The visual appearance of the text
should never be changed by Tabify or Untabify without a numeric
argument.

@Node(Name="Filling", Prev="TextIndent", Up="Text", Next="Case")

@Section[Text Filling]
@index{filling}

@Commands[

Space@\in Auto Fill mode, breaks lines when appropriate.

M-Q@\Fill paragraph.

M-G@\Fill region (G is for Grind, by analogy with Lisp).

M-S@\Center a line.

C-X =@\Show current cursor position.
]

@index{Auto Fill Mode}@index{Space}
  Auto Fill mode lets you type in text that is @dfn[filled] (broken
up into lines that fit in a specified width) as you go.  If you
alter existing text and thus cause it to cease to be properly filled,
EMACS can fill it again if you ask.

  Entering Auto Fill mode is done with M-X Auto Fill.  From then on,
lines are broken automatically at spaces when they get longer than the
desired width.  New lines created by Auto Fill are usually indented,
but in Text mode they are not.  To leave Auto Fill mode, execute M-X
Auto Fill again.  When Auto Fill mode is in effect, the word "Fill"
appears in the mode line.

@index{numeric arguments}
  When you finish a paragraph, you can type Space with an argument of
zero.  This doesn't insert any spaces, but it does move the last word
of the paragraph to a new line if it doesn't fit in the old line.
Return also moves the last word, but it may create another blank line.

@index{M-Q}@index{paragraphs}@index{M-G}@index{^R Fill Region}@index{^R Fill Paragraph}
  If you edit the middle of a paragraph, it may no longer be correctly
filled.  To refill a paragraph, use the command Meta-Q (@w[^R Fill]
Paragraph).  It causes the paragraph that point is inside, or the one
after point if point is between paragraphs, to be refilled.  All the
line-breaks are removed, and then new ones are inserted where
necessary.  M-Q can be undone with M-X Undo (@Note(Node="Undo").).

@index{M-H}
  If you are not happy with Meta-Q's idea of where paragraphs start
and end (the same as Meta-H's.  @note(Name="Paragraphs",
Node="Sentences").), you can use Meta-G (@w[^R Fill] Region) which
refills everything between point and mark.  Sometimes, it is ok to
fill a region of several paragraphs at once.  Meta-G recognizes a
blank line or an indented line as starting a paragraph and does not fill it
in with the preceding line.  The sequence space-backspace at the front
of a line prevents it from being filled into the preceding line
but is invisible when the file is printed.  However, the full
sophistication of the paragraph commands in recognizing paragraph
boundaries is not available.  The purpose of M-G is to allow you to
override EMACS's usual criteria for paragraph boundaries.  M-G can
be undone with M-X Undo.

@index{justification}
  Giving an argument to M-G or M-Q causes the text to be @dfn[justified]
as well as filled.  This means that extra spaces are inserted
between the words so as to make the right margin come out exactly
even.  I do not recommend doing this.  If someone else has uglified
some text by justifying it, you can unjustify it (remove the spaces)
with M-G or M-Q without an argument.

@index{M-S}@index{centering}@index{^R Center Line}
  The command Meta-S (@w[^R Center] Line) centers a line within the
current line width.  With an argument, it centers several lines
individually and moves past them.

@index{Fill Column}@index{C-X F}@index{^R Set Fill Column}
  The maximum line width for filling is in the variable Fill Column.
Both M-Q and Auto Fill make sure that no line exceeds this width.  The
easiest way to set the variable is to use the command C-X F (@w[^R Set]
Fill Column), which places the margin at the column point is on, or at
the column specified by a numeric argument.  The fill column is
initially column 70.

@index{Fill Prefix}@index{C-X .}@index{^R Set Fill Prefix}
  To fill a paragraph in which each line starts with a special marker
(which might be a few spaces, giving an indented paragraph), use the
@dfn[fill prefix] feature.  Move point to a spot right after the
special marker and give the command @w[C-X Period] (@w[^R Set] Fill Prefix).  Then,
filling the paragraph will remove the marker from each line
beforehand, and put the marker back in on each line afterward.  Auto
Fill when there is a fill prefix inserts the fill prefix at the
front of each new line.  Also, any line which does not start with the
fill prefix is considered to start a paragraph.  To turn off the
fill prefix, do C-X Period with point at the front of a line.
The fill prefix is kept in the variable Fill Prefix.

@index{C-X =}@index{echo area}@index{What Cursor Position}
  The command @w[C-X =] (What Cursor Position) can be used to find out the
column that the cursor is in, and other miscellaneous information
about point which is quick to compute.  It prints a line in the
echo area that looks like this:
@example[
X=5 Y=7 CH=101 .=3874(35% of 11014) H=<3051,4640>
@;]
In this line, the X value is the column the cursor is in (zero at
the left), the Y value is the screen line that the cursor is in (zero
at the top), the CH value is the octal value of the character after
point (101 is "A"), the "point" value is the number of characters
in the buffer before point, and the values in parentheses are the
percentage of the buffer before point and the total size of the
buffer.

@index{narrowing}@index{TECO}
  The H values are the virtual buffer boundaries, indicate which part
of the buffer is still visible when narrowing has been done.  If you
have not done narrowing, the H values are omitted.  For more
information about the virtual buffer boundaries,
@Note(Node="Narrowing").

@ITS{
@Node(Name="Case", Prev="Filling", Up="Text", Next="Fonts")}
@Twenex{
@Node(Name="Case", Prev="Filling", Up="Text", Next="Underlining")}

@Section[Case Conversion Commands]
@index{case conversion}

  EMACS has commands for converting either a single word or any
arbitrary range of text to upper case or to lower case.

@WideCommands[

M-L@\Convert following word to lower case.

M-U@\Convert following word to upper case.

M-C@\Capitalize the following word.

C-X C-L@\Convert region to lower case.

C-X C-U@\Convert region to upper case.
]

@index{M-L}@index{M-U}@index{M-C}@index{words}@index{^R Lowercase Word}@index{^R Uppercase Word}@index{^R Uppercase Initial}
  The word conversion commands are the most useful.  Meta-L
(@w[^R Lowercase] Word) converts the word after point to lower case,
moving past it.  Thus, successive Meta-L's convert successive
words.  Meta-U (@w[^R Uppercase] Word) converts to all capitals instead,
while Meta-C (@w[^R Uppercase] Initial) puts the first letter of the word
into upper case and the rest into lower case.  All these commands
convert several words at once if given an argument.  They are
especially convenient for converting a large amount of text from all
upper case to mixed case, because you can move through the text
using M-L, M-U or M-C on each word as appropriate.

@index{numeric arguments}
  When given a negative argument, the word case conversion commands
apply to the appropriate number of words before point, but do not move
point.  This is convenient when you have just typed a word in the
wrong case.  You can give the case conversion command and continue
typing.

  If a word case conversion command is given in the middle of a
word, it applies only to the part of the word which follows the
cursor, treating it as a whole word.

@index{C-X C-L}@index{C-X C-U}@index{Region}@index{confirmation}@index{undo}
@index{^R Lowercase Region}@index{^R Uppercase Region}
@index{Region Query Size}
  The other case conversion commands are C-X C-U (@w[^R Uppercase] Region)
and C-X C-L (@w[^R Lowercase] Region), which convert everything between
point and mark to the specified case.  Point and mark do not move.
These commands ask for confirmation if the region contains more than
Region Query Size characters;  they also save the original contents
of the region so you can undo them (@Note(Node="Undo").).
@ITS{

@Node(Name="Fonts", Prev="Case", Up="Text", Next="Underlining")

@Section[Font-Changing]
@index{Fonts}@index{TJ6}@Index{BOLIO}@index{R}@index{text justifiers}

  EMACS has commands to insert and move font change commands as
understood by the TJ6, R and BOLIO text justifiers.  A font change is assumed
to be of the form @CTL[F]<digit> meaning select the specified font, or @CTL[F]*
meaning select the previously selected font.

@WideCommands[

M-#@\Change previous word's font, or next word's.

C-X #@\Change font of region.
]

@index{M-#}@index{words}@index{numeric arguments}@index{^R Change Font Word}
  M-# (@w[^R Change] Font Word) is a command to change the font of a
word.  Its action is rather complicated to describe, but that is
because it tries to be as versatile and convenient as possible in
practice.

  If you type M-# with an argument, the previous word is put into the
font specified by the argument.  Point is not changed.  This means
that, if you want to insert a word and put it in a specific font, you
can type the word, then use M-# to change its font, and then go on
inserting.  The font is changed by putting a @CTL[F]<digit> before the word
and a @CTL[F]* after.

  If you type M-# with no argument, it takes the last font change
(either a @CTL[F]<digit> or @CTL[F]*, whichever is later) and moves it one word
forward.  What this implies is that you can change the font of several
consecutive words incrementally by moving after the first word,
issuing M-# with an argument to set that word's font, and then typing
M-# to extend the font change past more words.  Each M-# advances past
one more word.

  M-# with a negative argument is the opposite of M-# with no
argument;  it moves the last font change @xxii[back] one word.  If you type
too many M-#'s, you can undo them this way.  If you move one font
change past another, one or both are eliminated, so as to do the right
thing.  As a result, M-Minus M-# will undo a M-# with an argument.
Try it!

@index{C-X #}@index{Region}@index{^R Change Font Region}
  You can also change the font of a whole region by putting point and
the mark around it and issuing C-X # (@w[^R Change] Font Region), with
the font number as argument.  C-X # with a negative argument removes
all font changes inside or adjacent to the region.}
@Comment{End ITS}

@ITS{
@Node(Name="Underlining", Prev="Fonts", Up="Text", Next="SCRIBE")}
@Twenex{
@Node(Name="Underlining", Prev="Case", Up="Text", Next="SCRIBE")}

@Section[Underlining]
@index{underlining}@index{text justifiers}@index{R}

  EMACS has two commands for manipulating text-justifier underlining
command characters.  These commands do not produce any sort of
overprinting in the text file itself;  they insert or move command
characters which direct text justifiers to produce underlining.  By
default, commands for the text justifier R are used.

@WideCommands[

M-_@\Underline previous word or next word.

C-X _@\Underline region.
]

@index{M-_}@index{words}@index{^R Underline Word}
  M-_ is somewhat like M-# in that it either creates an underline
around the previous word or extends it past the next word.  However,
where a font change requires that you specify a font number, an
underline is just an underline and has no parameter for you to
specify.  Also, it is assumed that the text justifier's commands for
starting and ending underlines are distinguishable, whereas you can't
tell from a font change whether it is "starting" something or "ending"
something.  M-_ differs slightly from M-# as a result.

@index{numeric arguments}
  M-_ with no argument creates an underline around the previous word
if there is none.  If there is an underline there, it is extended one
word forward.  Thus, you can insert an underlined word by typing the
word and then a M-_.  Or you can underline several existing words by
moving past the first of them, and typing one M-_ for each word.

@comment{Do we still get "itforward" here?}
  M-_ given in the vicinity of an underline-begin moves @xxii[it]
forward.  Thus, it should be thought of as applying to any boundary,
where underlining either starts or stops, and moving it forward.  If a
begin underlining is moved past an end, or vice versa, they both
disappear.

  Giving M-_ an argument merely tells it to apply to several words at
once instead of one.  M-_ with a positive argument of n underlines the
next n words, either creating an underlined area or extending an
existing one.  With a negative argument, that many previous words are
underlined.  Thus, M-_ can do more things with underlines than M-# can
do with font changes, because of the facts that you don't need to use
the argument to say which font, and you can tell a beginning from an
end.

@index{C-X _}@index{Region}@index{^R Underline Region}
  For larger scale operations, you can use C-X _ to place underlines
from point to mark, or C-X _ with a negative argument to remove all
underlining between point and mark.

@index{Underline Begin}@index{Underline End}
  By default, @CTL[B] is used to begin an underline and @CTL[E] is used to end
one.  The variables Underline Begin and Underline End may be created
and set to strings to use instead.  For a single character you can use
the numeric ASCII code for it.

@Node(Name="SCRIBE", Prev="Underlining", Up="Text", Next="Dissociation")

@Section[SCRIBE Mode]

@index{SCRIBE}@index{Environments}
  SCRIBE mode provides many special editing commands for manipulating
the commands for the text justifier SCRIBE.  Instances of SCRIBE commands are
referred to in EMACS as @dfn[environments], though strictly speaking
it is the command name which is the environment, and not all commands either.

@begin(widecommands)
C-M-N@\Move forward over SCRIBE environment.

C-M-P@\Move backward over SCRIBE environment.

C-M-U@\Move up to beginning of containing SCRIBE environment.

C-M-D@\Move forward and down inside next SCRIBE environment.

C-M-E@\Move up to end of containing SCRIBE environment.

C-M-H@\Put point and mark around containing SCRIBE environment.

C-M-G@\Change name of containing SCRIBE environment.

C-M-Q@\Change form of containing SCRIBE environment.
@end(widecommands)

@index{C-M-F}@index{C-M-B}@index{C-M-K}@index{C-M-Rubout}
@index{C-M-N}@index{C-M-P}@index{C-M-U}@index{C-M-E}@index{C-M-D}@index{C-M-H}
@index{^R Forward Environment}@index{^R Backward Environment}
@index{^R Backward Up Environment}@index{^R Down Environment}
@index{^R End of Environment}@index{^R Mark Environment}
  In SCRIBE mode the standard expression motion and killing commands
C-M-F, C-M-B, C-M-K and C-M-Rubout operate on units of balanced SCRIBE
delimiters.  Additional commands specific to SCRIBE mode move around
the structure of SCRIBE environments.  C-M-N (@w[^R Forward] Environment)
moves forward over an entire SCRIBE expression (@@, environment name and
arguments), C-M-P (@w[^R Backward] Environment) moves back, C-M-U
(@w[^R Backward] Up Environment) moves up, and C-M-D (@w[^R Down]
Environment) moves down.  C-M-E (@w[^R End] of Environment) moves up
to the end of the containing SCRIBE environment.  C-M-H (@w[^R Mark]
Environment) puts point and mark around the containing SCRIBE environment.

  Speaking of balanced delimiters, SCRIBE mode does not work properly
when the characters ' and ` are used as delimiters for arguments.
This is because the parser expects each character to be either a
parenthesis (which matches a different character) or a string quote
(which matches itself), not both.  @Note(Node="Syntax", Name="Syntax
Table").  SCRIBE mode simply does not treat these characters as
possible delimiters, and it is best not to use them.  It is just as
well, since if SCRIBE mode actually tried to handle these delimiters
it would be confused by apostrophes in the text.

@index{C-M-G}@index{^R Change Environment Name}
  Other commands transform SCRIBE environments.  C-M-G (@w[^R Change]
Environment Name) changes the name of
the SCRIBE environment that point is inside.  For example, if point is
somewhere inside an @@I[...] environment, C-M-G could be used to change
the @@I to an @@U.  C-M-G reads the new environment name from the terminal
and replaces the old environment name with it.

@index{C-M-Q}@index{^R Change Form}
  C-M-Q (@w[^R Change] Form) changes the containing SCRIBE environment
between the brief form such as @@Example[...] and the longer form
@@Begin(Example)...@@End(Example).  If the environment has the brief form,
it is changed to the longer form, and vice versa.

@index{Paragraphs}@index{@@Begin}@index{@@End}
@index{M-[}@index{^R Backward SCRIBE Paragraph}
  In SCRIBE mode, paragraphs are redefined to understand SCRIBE
commands in a way that is usually right.  Any line that consists
entirely of one SCRIBE command is considered a paragraph-separating
line, just like a blank line.  This does the right thing for @@Begin
and @@End, and for many other cases.  So is any line that starts with
an @@; or @@' command.  The @@; and @@' commands are supposed to be
no-ops at the beginning of a line, and can therefore be used to mark
lines that you think should separate paragraphs.  Which one works, and
when, depends on the version of SCRIBE.  Eventually, @@; will always
work.

  Aside from the above cases, SCRIBE commands are considered part of
the text, so an @@I command which happens to end up at the front of a
line will not separate paragraphs.  SCRIBE mode accomplishes this by
redefining M-[ and the function @w[^R Backward] Paragraph to be the
function @w[^R Backward] SCRIBE Paragraph.  Lines starting with page
delimiters are paragraph delimiters as usual, and lines starting with
space or tab start paragraphs as usual.

  The comment commands know that comments in SCRIBE files start with
"@@Comment{" and end with "}".  @Note(Node="Comments").

  You can use the M-X Compile command to invoke SCRIBE.
@Note(Node="Compile").  It operates on the file currently visited.
You can use a string argument to specify switches.  After SCRIBE is
finished, @ITS{you must type P to resume EMACS.  Then,} if there were
any errors, EMACS splits the screen and displays the errors in the
bottom window.  The command M-X Next Scribe Error moves to the point in
the file at which the next error occurred.  @ITS{Currently the only
ITS machine on which SCRIBE is installed is MC.}

  The functions listed in this section live in the library SCRIBE,
which is loaded automatically if you enter SCRIBE mode.

@Node(Name="Dissociation", Prev="SCRIBE", Up="Text")

@Section[Dissociated Press]

@index{Dissociated Press}
  M-X Dissociated Press is a command for scrambling a file of text
either word by word or character by character.  Starting from a
bufferfull of straight English, it produces extremely amusing output.
Dissociated Press prints its output on the terminal.  It does not
change the contents of the buffer.

  Dissociated Press operates by jumping at random from one point in
the buffer to another.  In order to produce plausible output rather
than gibberish, it insists on a certain amount of overlap between the
end of one run of consecutive words or characters and the start of the
next.  That is, if it has just printed out "president" and then
decides to jump to a different point in the file, it might spot the
"ent" in "pentagon" and continue from there, producing "presidentagon".
Long sample texts produce the best results.

  A negative argument to M-X Dissociated Press tells it to operate
character by character, and specifies the number of overlap
characters.  A positive argument tells it to operate word by word and
specifies the number of overlap words.  In this mode, whole words are
treated as the elements to be permuted, rather than characters.  No
argument is equivalent to an argument of two.
For your againformation, the output is only printed on the terminal.
The file you start with is not changed.

@index{Markov Chain}@index{Ignoriginal}@index{Techniquitous}
  Dissociated Press produces nearly the same results as a Markov
chain based on a frequency table constructed from the sample text.  It
is, however, an independent, ignoriginal invention.  Dissociated Press
techniquitously copies several consecutive characters from the sample
between random choices, whereas a Markov chain would choose randomly
for each word or character.  This makes for more plausible sounding
results.

@index{Outragedy}@index{Buggestion}
  It is a mustatement that too much use of Dissociated Press can be a
developediment to your real work.  Sometimes to the point of
outragedy.  And keep dissociwords out of your documentation, if you
want it to be well userenced and properbose.  Have fun.  Your
buggestions are welcome.

@Node(Name="Fixit",  Prev="Text",  Next="Files")

@Chapter[Commands for Fixing Typos]
@index{typos}

  In this section we describe the commands that are especially
useful for the times when you catch a mistake in your text just after
you have made it, or change your mind while composing text on line.

@DoubleWideCommands[

Rubout@\Delete last character.

M-Rubout@\Kill last word.

C-X Rubout@\Kill to beginning of sentence.

C-T@\Transpose two characters.

C-X C-T@\Transpose two lines.

C-X T@\Transpose two arbitrary regions.

M-Minus M-L@\Convert last word to lower case.

M-Minus M-U@\Convert last word to all upper case.

M-Minus M-C@\Convert last word to lower case with
capital initial.

M-'@\Fix up omitted shift key on digit.

M-$@\(Meta-Dollar Sign) Check and correct spelling of word.

Correct Spelling@\Check and correct spelling of entire buffer.
]

@Section[Killing Your Mistakes]

@index{Rubout}@index{deletion}@index{^R Backward Delete Character}
  The Rubout command is the most important correction command.  When
used among printing (self-inserting) characters, it can be thought of
as canceling the last character typed.

@index{M-Rubout}@index{C-X Rubout}@index{words}@index{sentences}@index{killing}
@index{^R Backward Kill Word}@index{^R Backward Kill Sentence}
  When your mistake is longer than a couple of characters, it might be
more convenient to use M-Rubout or C-X Rubout.  M-Rubout kills back to
the start of the last word, and C-X Rubout kills back to the start of
the last sentence.  C-X Rubout is particularly useful when you are
thinking of what to write as you type it, in case you change your mind
about phrasing.   M-Rubout and C-X Rubout save the killed text for C-Y
and M-Y to retrieve (@Note(Node="Un-killing").).

  M-Rubout is often useful even when you have typed only a few
characters wrong, if you know you are confused in your typing and
aren't sure exactly what you typed.  At such a time, you cannot
correct with Rubout except by looking at the screen to see what you
did.  It requires less thought to kill the whole word and start over
again, especially if the system is heavily loaded.

@Section[Transposition]

@index{transposition}@index{C-T}@index{^R Transpose Characters}
  The common error of transposing two characters can be fixed, when
they are adjacent, with the C-T command.  Normally, C-T transposes the
two characters on either side of the cursor.  When given at the end of
a line, rather than transposing the last character of the line with
the line separator, which would be useless, C-T transposes the last
two characters on the line.  So, if you catch your transposition error
right away, you can fix it with just a C-T.  If you don't catch it so
fast, you must move the cursor back to between the two transposed
characters.  If you transposed a space with the last character of the
word before it, the word motion commands are a good way of getting
there.  Otherwise, a reverse search (C-R) is often the best way.
@Note(Node="Search").

@index{C-X C-T}@index{^R Transpose Lines}
  To transpose two lines, use the C-X C-T command (@w[^R Transpose]
Lines).  M-T transposes words and C-M-T transposes s-expressions.

@Index{C-X T}@index{^R Transpose Regions}
  A more general transpose command is C-X T (@w[^R Transpose] Regions).
This transposes two arbitrary blocks of text, which need not even
be next to each other.  To use it, set the mark at one end of one block,
then at the other end of the block; then go to the other block and set
the mark at one end, and put point at the other.  In other words,
point and the last three marks should be at the four locations which
are the ends of the two blocks.  It does not matter which of the four
locations point is at, or which order the others were marked.  C-X T
transposes the two blocks of text thus identified, and relocates point
and the three marks without changing their order.

@Section[Case Conversion]

@index{^R Lowercase Word}@index{^R Uppercase Word}@index{^R Uppercase Initial}
@index{M-- M-L}@index{M-- M-U}@index{M-- M-C}@index{case conversion}@index{words}
  A very common error is to type words in the wrong case.  Because of
this, the word case-conversion commands M-L, M-U and M-C have a
special feature when used with a negative argument: they do not move
the cursor.  As soon as you see you have mistyped the last word, you
can simply case-convert it and go on typing.  @Note(Node="Case").

@index{M-'}@index{typos}@index{^R Upcase Digit}
@index{Digit Shift Table}
  Another common error is to type a special character and miss the
shift key, producing a digit instead.  There is a special command for
fixing this: M-' (@w[^R Upcase] Digit), which fixes the last digit
before point in this way (but only if that digit appears on the
current line or the previous line.  Otherwise, to minimize random
effects of accidental use, M-' does nothing).  Once again, the cursor
does not move, so you can use M-' when you notice the error and
immediately continue typing.  Because M-' needs to know the
arrangement of your keyboard, the first time you use it you must
supply the information by typing the row of digits 1, 2, ... , 9, 0
but @xxii[holding down the shift key].  This tells M-' the
correspondence between digits and special characters, which is
remembered for the duration of the EMACS in the variable Digit Shift
Table.  This command is called M-' because its main use is to replace
"7" with a single-quote.

@Section[Checking and Correcting Spelling]
@index{Correct Spelling}

When you write a paper, you should correct its spelling at some point
close to finishing it (and maybe earlier as well).  To correct the
entire buffer, do M-X Correct Spelling.  This invokes the
@ITS{SPELL}@TWENEX{ISPELL} spelling corrector program, which will ask
you what to do with each misspelled word.  Refer to its documentation.  
When it finished, you will be back in EMACS.

@index{M-$}@index{^R Correct Word Spelling}@index{Spell Program}
@Twenex{@index{Ispell}}
  To check the spelling of the word before point, and optionally
correct it as well, use the command M-$ (@w[^R Correct] Word
Spelling).  This is a Dollar sign, not an Altmode!  This command sends
the word to the @ITS{SPELL}@Twenex{ISPELL} program for correction.

  If @ITS{SPELL}@Twenex{ISPELL} recognizes
the word as a correctly spelled one (although not necessarily the one
you meant!) you will see "Found it" or "Found it because of" followed
by the word without its suffix.  If the program cannot at all
recognize the word, it will print "Couldn't find it."

  If @ITS{SPELL}@Twenex{ISPELL} recognizes the word as a misspelling, it
displays on the screen the other words which are possibilities for the
correct spelling, and gives each one a number.  Then, you can type one
of the following things:

@index{Space}@index{%}

@begin[WideCommands]
0 to 9@\Replace misspelled word with that spelling (preserving case,
just like Replace String and Query Replace, unless Case Replace is
zero).

Space@\Exit and make no changes.

@index{Query Replace}
%@\Read a digit as above and Query Replace (M-%) the incorrect
spelling with the correct one from the beginning of the buffer.
@end[widecommands]

No other responses are allowed.

The cursor need not be immediately after the word you want to correct;
it can be in the middle, or following any word-separator characters
after the end of the word.  Note that the major mode you are using
affects which characters are word-separators.  @Note(Node="Syntax",
Name="Syntax Table").

The first time you use an EMACS spelling correction command, it
creates @ITS{a SPELL job}@Twenex{an ISPELL fork} for you.  From then
on it uses the same @ITS{SPELL job}@Twenex{ISPELL fork}.  It's ok to
kill the @ITS{job}@Twenex{fork} if you don't think you'll be using M-$
again during that session.  But if you do leave the
@ITS{job}@Twenex{fork} around checking words will much quicker.
Giving M-$ a negative argument (as in M-- M-$) kills the @ITS{SPELL
job}@Twenex{ISPELL fork}.  @Its{Of course, you can kill it from DDT
also.}

If you are a regular user of the @ITS{SPELL}@Twenex{ISPELL} program,
you might have a dictionary file of words which you use but which are
foreign to @ITS{SPELL}@Twenex{ISPELL}.  If there are words in this
file which you might want to use M-$ to correct, you can specify that
you want this dictionary to be loaded into the spell job which EMACS
uses.  To do this, set the variable Spell Initialization to the string
of @ITS{SPELL}@Twenex{ISPELL} program commands you want to use.  For loading a dictionary,
this string would be a @w["Load "] followed by the dictionary filename.
Other initialization commands for @ITS{SPELL}@Twenex{ISPELL} can
appear there also.  The commands must be separated by
@ITS{altmodes}@Twenex{commas}.

You can also pass arbitrary commands to the @ITS{SPELL}@Twenex{ISPELL}
job with command M-X Command to Spell.

@ITS{
Because of the way the handling of other jobs from EMACS is implemented
on ITS, it is not possible to use M-$ in an EMACS whose superior is
not DDT.  This typically applies to EMACS jobs running under LISP
(LISPT) and under :MAIL (MAILT).}

@Node(Name="Files", Prev="Fixit", Next="Buffers")

@Chapter[File Handling]

  The basic unit of stored data is the file.  Each program, each
paper, lives usually in its own file.  To edit a program or paper, the
editor must be told the name of the file that contains it.  This is
called @dfn[visiting] the file.  To make your changes to the file
permanent on disk, you must @dfn[save] the file.  EMACS also has
facilities for deleting files conveniently, and for listing your
file directory.  Special text in a file can specify the modes to
be used when editing the file.

@Menu{

* Visiting::    How to select a file for editing
* Revert::      How to cancel some changes you have made
* AutoSave::    Protection from crashes
* CleanDir::    Deleting old versions to clean up
* DIRED::       Selectively deleting files (Directory Editor)
* Filadv::      Advanced file commands
@ITS{* DirComp::     Directory comparison
}}

@Node(Name="Visiting", Prev="Files", Up="Files", Next="Revert")

@Section[Visiting Files]

@WideCommands{
C-X C-V@\Visit a file.

C-X C-Q@\Change regular visiting to read only, or vice versa.

C-X C-S@\Save the visited file.

Meta-~@\Tell EMACS to forget that the buffer has been changed.
}

@index{files}@index{visiting}@index{saving}
  @dfn[Visiting] a file means copying its contents into EMACS where
you can edit them.  EMACS remembers the name of the file you visited.
Unless you use the multiple buffer or window features of EMACS, you
can only be visiting one file at a time.  The name of the file you are
visiting in the currently selected buffer is visible in the mode line
when you are at top level, followed by its version number @ITS{if it
has one} in parentheses.

  The changes you make with EMACS are made in a copy inside EMACS.
The file itself is not changed.  The changed text is not permanent
until you @dfn[save] it in a file.  The first time you change the
text, a star appears at the end of the mode line; this indicates that
the text contains fresh changes which will be lost unless you save
them.

@index{C-X C-V}@index{C-G}@index{C-U}@index{Return}@index{^R Visit File}
  To visit a file, use the command C-X C-V (@w[^R Visit] File).  Follow
the command with the name of the file you wish to visit, terminated by
a Return.  If you can see a filename in the mode line, then that name
is the default, and any component of the filename which you don't
specify is taken from it.  If EMACS thinks you can't see the
defaults, they are included in the prompt.  You can abort the command by typing
C-G, or edit the filename with @ITS{Rubout or C-U}@Twenex{the
standard Twenex editing and recognition commands (Rubout, C-W, C-U,
C-F and Altmode)}.  If you do type
a Return to finish the command, the new file's text appears on the
screen, and its name and version appear in the mode line.

@index{C-X C-S}@index{^R Save File}
  When you wish to save the file and make your changes permanent, type
C-X C-S (@w[^R Save] File).  After the save is finished, C-X C-S prints
"Written: <filenames>" in the echo area at the bottom of the screen.
If there are no changes
to save (no star at the end of the mode line), the file is not saved;
it would be redundant to save a duplicate of the previous version.

  Because a system crash can cause you to lose everything you have
done since the last save, we provide Auto Save mode, which saves the
files you are visiting at regular intervals automatically.
@Note(Name="Auto Save", Node="AutoSave").  Alternatively, you can use
journal files.  @Note(Node="Journals").

@Index{Create File}
  What if you want to create a file?  Just visit it.  EMACS prints
@w["(New File)"] but aside from that behaves as if you had visited an
existing empty file.  If you make any changes and save them, the file
is created.  If you visit a nonexistent file unintentionally (because
you typed the wrong file name), go ahead and visit the file you meant.
If you don't save the unwanted file, it is not created.

@ITS{
@index{Set Visited Filename}
  If you visit a file which is a link, EMACS prints
@w["(Link to <filenames>)"] to inform you of this.  When you read a
file which is a link, you get the contents of the target file, but if
you save under the name of the link, you replace the link and the
target does not change.  If you would prefer to alter the target file,
use Set Visited Filename to change the visited name to the target
file's name.  @Note(Node="Filadv", IName="Set Visited Filename",
Name="Advanced File Commands").}

@Twenex{
@index{Strip SOS Line Numbers}@Index{SOS}@Index{Line Numbers}
  If there are still people using EDIT or SOS on your machine, you may
have to visit files with line numbers in them.  The function Strip SOS
Line Numbers removes all line numbers from the current buffer.  It
also removes all null (@CTL[@@]) characters.  An explicit argument
inhibits removal of nulls unless the file actually has line numbers.}

@index{Visit File Save Old}
  If you alter one file and then visit another in the same buffer,
EMACS offers to save the old one.  If you answer Y, the old file is
saved; if you answer N, all the changes you have made to it since the
last save are lost.  You should not type ahead after a file visiting
command, because your type-ahead might answer an unexpected question
in a way that you would regret.  The variable Visit File Save Old
controls this offer; normally, it is one, which means that the offer
is made.  If it is minus one, then the old file is always saved when
you visit a new one in the same buffer; no question is asked.  If it
is zero, the old file is @xxi(never) saved.

@index{C-X C-Q}@Index{^R Set File Read-Only}@Index{Read-Only Visiting}
  A nonzero argument to C-X C-V specifies @dfn[read-only] visiting.
This means that EMACS prevents you from modifying the file unless you
insist.  You should use this when you visit a file that you do no want
to change, just to avoid changing it accidentally.  If you give C-X
C-V a positive argument, then the file is read-only.  This means you
can change the text in the buffer, but EMACS requires extra
confirmation if you ask to save the file, and never offers to save
it.  If you give C-X C-V a negative argument, then the buffer itself
is read-only; commands to change the text are not allowed.  If the
visited file is visited read-only, in either fashion, then the
characters "(R-O)" appear in the mode line after the filename.
The command C-X C-Q (@w[^R Set] File Read-Only) is used to switch between
read-only and normal visiting.  Its numeric argument means the same
thing as the argument to C-X C-V: zero means changes are allowed,
positive makes the file read-only, and negative makes the text itself
read-only.

@index{^R Buffer Not Modified}@index{M-~}
  Sometimes you will change a buffer by accident.  Even if you undo
the change by hand, EMACS still knows that "the buffer has been
changed".  You can tell EMACS to believe that there have been no
changes with the Meta-~ (@w[^R Buffer] Not Modified) command.  This
command simply clears the "modified" flag which says that the buffer
contains changes which need to be saved.  Even if the buffer really
@xxi(is) changed EMACS will still act as if it were not.  If we take
"~" to mean "not", then Meta-~ is "not" metafied.

@index{confirmation}
  If EMACS is about to do an unrequested save, and discovers that the
text is now a lot shorter than it used to be, it tells you so and asks
for confirmation (Y or N).  If you aren't sure what to answer (because
you are surprised that it has shrunk), type C-G to abort everything,
and take a look around.

@Index{SRCCOM}@Index{File dates}
  If EMACS is about to save a file and sees that the date of the
latest version on disk does not match what EMACS last read or wrote,
EMACS notifies you of this fact, and asks what to do, because this
probably means that something is wrong.  For example, someone else may
have been editing the same file.  If this is so, there is a good
chance that your work or his work will be lost if you don't take the
proper steps.  You should first find out exactly what is going on.
The C-X C-D command to list the directory will help.  If you determine
that someone else has modified the file, save your file under
different names (or at least making a new version) and then SRCCOM the
two files to merge the two sets of changes.  Also get in touch with
the other person so that he doesn't continue editing.

@Node(Name="Revert", Prev="Visiting", Up="Files", Next="AutoSave")

@Section[How to Undo Drastic Changes to a File]
@index{Undo}@index{Revert File}@index{files}@index{Drastic Changes}

@index{numeric arguments}
  If you have made extensive changes to a file and then change your
mind about them, you can get rid of them by reading in the previous
version of the file.  To do this, use M-X Revert File.  If you have
been using Auto Save mode, it reads in the last version of the visited
file or the last auto save file, whichever is more recent.

  In Auto Save mode, saving under special Auto Save
filenames, then you can ask to revert to the last "real" save,
ignoring subsequent auto saves, with C-U M-X Revert File.  If you are
using the style of auto saving which saves under the real filenames,
this is not possible.

  M-X Revert File does not change point, so that if the file was only
edited slightly, you will be at approximately the same piece of text
after the Revert as before.  If you have made drastic changes, the
same value of point in the old file may address a totally different
piece of text.

@index{confirmation}
  Because M-X Revert File can be a disaster if done by mistake, it
asks for confirmation (Y or N) before doing its work.  A pre-comma
argument can be used to inhibit the request for confirmation when you
call the function Revert File from a TECO program, as in 1,M(M.M
Revert File).

@Node(Name="AutoSave",  Prev="Revert",  Up="Files",  Next="ListDir")

@Section[Auto Save Mode: Protection Against Disasters]
@index{files}@index{visiting}@index{saving}@index{Auto Save mode}
@index{Disasters}@index{Undo}@index{Crashes}

  In Auto Save mode, EMACS saves your file from time to time (based on
counting your commands) without being asked.  Your file is also saved
if you stop typing for more than a few minutes when there are changes
in the buffer.  This prevents you from losing more than a limited
amount of work in a disaster.  (Another method of protection is the
journal file.  @Note(Node="Journals").).

@index{Auto Save Default}
  You can turn auto saving on or off in an individual buffer with M-X
Auto Save.  In addition, you can have auto saving by default in all
buffers by setting the option Auto Save Default.  The frequency of
saving, and the number of saved versions to keep, can both be
specified.

@index{numeric arguments}
  Each time you visit a file, no matter how, auto saving is turned on
for that file if Auto Save Default is nonzero.  Once you have visited
a file, you can turn auto saving on or off with M-X Auto Save.  Like
other minor mode commands, M-X Auto Save turns the mode on with a
positive argument, off with a zero or negative argument; with no
argument, it toggles.  If you start typing a new file into a buffer
without visiting anything, Auto Save mode is initially off, but
you can turn it on with M-X Auto Save.

  When an auto save happens, @w["(Auto Save)"] is printed in the echo
area (On a printing terminal, the bell is rung instead).  An error
in the process of auto saving prints @w["(Auto Save Error!)"].

  Let us suppose that it is time for an automatic save to be done:
where should the file be saved?

  Two workable methods have been developed:  save the file under the
names you have visited, or save it under some special "auto save file
name".  Each solution has its good and bad points.  The first one is
excellent some of the time, but intolerable the rest of the time.  The
second is usually acceptable.  Auto saving under the visited file's
actual names means that you need do nothing special to gobble the auto
save file when you need it;  and it means that there is no need to
worry about interference between two users sharing a directory, as
long as they aren't editing the same file at once.  However, this
method can sometimes have problems:
@begin(quotation,indent 0)

@ITS{
If you visit a file on a device other than DSK, auto saves can't
go there, because it would probably be slow.
}

If the file is visited read-only, then auto saves should certainly not
go under the names that are visited.

If @ITS{your file does not have a numeric version number, or} you have
visited a fixed version, auto saves can't go under that name,
because they would clobber the original file.

If you haven't visited a file, there aren't any names to use.

@end(quotation)
@index{Auto Save Filenames}@index{Auto Save Visited File}
  If none of those cases apply then it is possible to store auto saves
under the visited name.  This is done, provided that you enable it by
setting the variable Auto Save Visited File to a nonzero value.
Otherwise, or if one of the cases listed above applies, then the
filename used for auto saves is taken from the variable Auto Save
Filenames, modified slightly so that different buffers save under
different names.  @ITS{If the last two characters of the FN1 are "00",
then they are replaced by the last two digits (or the only digit) of
the buffer number, the number which appears at the beginning of each
line printed by C-X C-B}@Twenex{The buffer's name is used as the
extension of the auto save file, if Auto Save Filenames contains a
null extension}.  Auto Save Filenames is usually set up by the default
init file to @ITS{DSK:<working directory>;@w[_SAV00 >]}@Twenex{<your
directory>[SAVE]..}.

@index{C-X C-S}
  When you want to save your file "for real", use C-X C-S, as always.
C-U C-X C-S is a way to request an "auto" save explicitly.  When you
are auto saving under the visited filenames, there is not much
difference between an auto save and a "real" save, except that an auto
save will eventually be deleted automatically by EMACS a few auto
saves later, while a "real" save will be left around forever (at
least, Auto Save won't delete it).

@index{C-X C-W}@index{Revert File}@index{Write File}
  When it is time to recover from a system crash by reloading the auto
save file, if auto saving was using the visited file names you have
nothing special to do.  If auto saving was using special auto save
filenames, read in the last auto save file and then use C-X
C-W (Write File) to write it out in its real location.  If you want to
go back to an auto save file to throw away changes that you don't like, you
can use M-X Revert File, which knows how to find the most recent save,
permanent or not, under whatever filenames.  @Note(Node="Revert").

  For your protection, if a file has shrunk by more than 30% since the
last save, auto saving does not save.  Instead it prints a message
that the file has shrunk.  You can save explicitly if you wish; after
that, auto saving will resume.

@index{Auto Save Max}
  Although auto saving generates large numbers of files, it does not
clog directories, because it cleans up after itself.  Only the last
Auto Save Max auto save files are kept; as further saves are done, old
auto saves are deleted@Twenex{ (and expunged)}.  However, only files
made by auto saving (or by explicitly requested auto-saves with C-U
C-X C-S) are deleted in this way.  If Auto Save Max is 1, then
repeated auto saves rewrite the same version of the file; the version
number is only incremented after a real save.  (It will write a new
version if it is unable to rewrite the old one).

  The variable Auto Save Max is initially 2.  Changing the value may
not take effect in a given buffer until you turn auto saving off and
on in that buffer.

@index{Auto Save Interval}
  The number of characters of input between auto saves is controlled
by the variable Auto Save Interval.  It is initially 500.  Changing
this takes effect immediately.

@Index{Auto Save All Buffers}
  If you use the multiple-buffer features of EMACS
(@Note(Node="Buffers").) then you may want to have auto saving for all
buffers, not just the one that is selected at the moment.  To get
this, set the variable Auto Save All Buffers nonzero.

@Node(Name="ListDir", Prev="AutoSave", Up="Files", Next="CleanDir")

@Section[Listing a File Directory]

@index{file directory}@index{List Files}@index{C-X C-D}@index{View Directory}
@index{numeric arguments}@index{string arguments}@index{^R Directory Display}
  To look at a part of a file directory, use the C-X C-D command
(@w[^R Directory] Display).  With no argument, it shows
you @Twenex{all the versions of} the file you are visiting@ITS{, and
related files with the same first name}.  @w[C-U C-X C-D] reads a
filename from the terminal and shows you the files related to that
filename.  @twenex{The filename may contain wild cards.}

  To see the whole directory in a brief format, use the function List
Files, which takes the directory name as a string argument.  The
function View Directory prints a verbose listing of a whole directory.
@Twenex{These two commands take a filename as argument, which can
include wild cards.}

@index{Auto Directory Display}@index{Directory Lister}
  The variable Auto Directory Display can be set to make many file
operations display the directory automatically.  The variable is
normally 0; making it positive causes write operations such as Write
File to display the directory, and making it negative causes read
operations such as Insert File or visiting to display it as well.  The
display is done using the default directory listing function which is
kept in the variable Directory Lister.  Normally this is the function
@w[& Subset] Directory that displays only the files related to the
current default file.  @ITS{An alternative type of directory listing
can be obtained by setting Directory Lister to the function @w[& Rotated]
Directory Listing.  After this function display the particular file
you are interested in, it offers to display the rest.  If you say
"yes" (with a Space), it displays through the end of the directory,
and around to the beginning of the directory, stopping where it
originally started.  @Note(Node="Init").}

@ITS{
@Index{List Directories}
The function List Directories prints an alphabetized list of all the
file directories on the system.}

@Node(Name="CleanDir",  Prev="ListDir",  Up="Files",  Next="DIRED")

@Section[Cleaning a File Directory]
@index{file deletion}@index{directory}

  The normal course of editing constantly creates new versions of
files.  If you don't eventually delete the old versions, the directory
will fill up and further editing will be impossible.  EMACS has
commands that make it easy to delete the old versions.

@index{DIRED}
  For complete flexibility to delete precisely the files you want to
delete, you can use the DIRED package.  @Note(Node="DIRED"), for more
details.

  M-X Reap File and M-X Clean Directory are more convenient ways to do the
usual thing: keep only the two (or other number) most recent versions.

@index{Reap File}@index{Temp File FN2 List}@index{TECO search strings}
  M-X Reap File<file><cr> counts the number of versions of <file>.
If there are more than two, you are told the names of the recent ones
(to be kept) and the names of the older ones (to be deleted), and
asked whether to do the deletion (answer Y or N).

  Reap File makes a special offer to delete individual files whose
@ITS{FN2}@Twenex{extension} indicates that they are likely to be
temporary.  The list of temporary names is contained in a 
TECO search string in the variable Temp File FN2 List.
@Note(Name="TECO search strings", Node="TECOsearch").

  If you give M-X Reap File a null filename argument, or no argument,
then it applies to the file you are visiting.

@index{Clean Directory}@index{File Versions Kept}
  M-X Clean Directory<dirname>@ITS{;} <cr> cleans a whole directory
of old versions.  Each file in the directory is processed a la M-X
Reap File.  M-X Clean Directory with a null argument, or no argument, cleans
the directory containing the file you are visiting.

  M-X Reap File and M-X Clean Directory can be given a numeric argument
which specifies how many versions to keep.  For example, @w[C-U 4] M-X
Reap File would keep the four most recent versions.  The default when
there is no argument is the value of the variable File Versions Kept,
which is initially 2.

@Twenex{
@index{Expunge Directory}@index{Connect to Directory}
  To expunge the files deleted by Reap File or Clean Directory, use
M-X Expunge Directory, which expunges the connected directory.  If you
wish to expunge some other directory, connect to it first with
@example[
M-X Connect to Directory<directory><password><cr>
]
You don't have to specify the password if you can connect without one.
}

@Node(Name="DIRED",  Prev="CleanDir",  Up="Files",  Next="Filadv")

@Section[DIRED, the Directory Editor Subsystem]
@index{DIRED}@index{file deletion}

  DIRED makes it easy to delete many of the files in a single
directory at once.  It presents a copy of a listing of the directory,
which you can move around in, marking files for deletion.  When you
are satisfied, you can tell DIRED to go ahead and delete the marked
files.

@ITS{@index[C-M-C]}@Twenex{@index[C-M-Z]}
@index{recursive editing level}@index{C-]}
  Invoke DIRED with M-X DIRED to edit the current default directory,
or M-X DIRED<dir>@ITS{;}<cr> to edit directory <dir>.  You are then
given a listing of the directory which you can move around in with
all the normal EMACS motion commands.  Some EMACS commands are made
illegal and others do special things, but it's still a recursive
editing level which you can exit normally with @CMC[] and abort with
C-].

@SubSection[Basic DIRED Commands]

  You can mark a file for deletion by moving to the line describing the
file and typing D, C-D, K, or C-K.  The deletion mark is
visible as a D at the beginning of the line.  Point is moved to the
beginning of the next line, so that several D's delete several
files.  Alternatively, if you give D an argument it marks that
many consecutive files.  Given a negative argument, it marks the
preceding file (or several files) and puts point at the first (in the
buffer) line marked.  Most of the DIRED commands (D, U,@ITS{ !, $, P, S, C,}
E, Space) repeat this way with numeric arguments.

  If you wish to remove a deletion mark, use the U (for Undelete)
command, which is invoked like D: it removes the deletion mark
from the current line (or next few lines, if given an argument).  The
Rubout command removes the deletion mark from the previous line,
moving up to that line.  Thus, a Rubout after a D precisely cancels
the D.

  For extra convenience, Space is made a command similar to C-N.
Moving down a line is done so often in DIRED that it deserves to be
easy to type.  Rubout is often useful simply for moving up.

  If you are not sure whether you want to delete a file, you can
examine it by typing E.  This enters a recursive editing mode on the
file, which you can exit with @CMC[].  The file is not really visited
at that time, and you are not allowed to change it.  When you exit the
recursive editing level, you return to DIRED.  The V command is like E
but uses View File to look at the file.

@index{confirmation}
  When you have marked the files you wish to mark, you can exit DIRED
with @CMC[].  If any files were marked for deletion, DIRED lists them
in a concise format, several per line.  @ITS{A file with "!"
appearing next to it in this list has not been saved on tape and will
be gone forever if deleted.  A file with ">" in front of it is the
most recent version of a sequence and you should be wary of deleting
it.}  Then DIRED asks for confirmation of the list.  You can type "YES"
(Just "Y" won't do) to go ahead and delete them, "N" to return to
editing the directory so you can change the marks, or "X" to give up
and delete nothing.  No Return character is needed.  No other inputs
are accepted at this point.

@SubSection[Other DIRED Commands]

@ITS{  The "!" command moves down (or up, with an argument of -1) to the
next undumped file (one with a "!" before its date). 
}
  N finds the next "hog": the next file which has at least three
versions (or, more than File Versions Kept).

@ITS{  T when given on a line describing a link marks for deletion the
file which the link points to.  This file need not be in the directory
you are editing to be deleted in this way. 

  1 copies the file you are pointing at to the primary pack.  2 copies
it to SECOND:.  3 copies it to THIRD:.  4 copies it to FOURTH:.

  $ complements the don't-reap attribute of the file; this is
displayed as a dollar sign to the left of the file date.

  M moves the file to any other directory or device.  You must say
where to move it.

@Index{SRCCOM}
  C runs SRCCOM to compare the file version you are pointing at with
the latest version of the same file.  You must confirm the SRCCOM
command with a Return before it is executed; you can add extra SRCCOM
switches before the Return.  When you return to EMACS, the cursor
moves down a line to the next file.
}
@Twenex{  C calls up SRCCOM as an inferior with the current file in
its command line.  When you return to EMACS, the cursor moves down a 
line to the next file.

  S sorts the files into a different order.  It reads another
character to say which order: F for filename (the default), S for
size, R for read date, or W for write date.

  R does the same sorting as S, but uses the reverse order (small
files, older files or end of alphabet first).
}

  H helps you clean up.  It marks "old" versions of the current file,
and versions with "temporary" second file names, for deletion.  You
can then use the D and U commands to add and remove marks before
deleting the files.  The variables File Versions Kept and Temp File
FN2 List control which files H picks for deletion.  With an argument
(C-U H), it does the whole directory instead of just the current file.

  ? displays a list of the DIRED commands.

@SubSection[Invoking DIRED]

@index{C-X D}@index{directory}@index{^R DIRED}
  There are some other ways to invoke DIRED.  The command C-X D
(@w[^R Dired]) puts you in DIRED on the directory containing the file you
are currently editing.  With a numeric argument of 1 (@w[C-U 1] C-X D),
only the current file is displayed instead of the whole directory.  In
combination with the H command this can be useful for cleaning up
excess versions of a file after a heavy editing session.  With a
numeric argument of 4 (C-U C-X D), it asks you for the directory name.
Type a directory name @ITS{followed by a semicolon, }and/or a file
name.  If you explicitly specify a file name only versions of that
file are displayed, otherwise the whole directory is displayed.

@SubSection[Editing the DIRED Buffer Yourself]

@index{Delete Non-Matching Lines}
  It is unwise to try to edit the text of the directory listing
yourself, without using the special DIRED commands, unless you know
what you are doing, since you can confuse DIRED that way.  To make it
less likely that you will do so accidentally, the self-inserting
characters are all made illegal inside DIRED.  However, deleting whole
lines at a time is certainly safe.  This does not delete the files
described by those lines; instead, it makes DIRED forget that they are
there and thus makes sure they will @xxii[not] be deleted.  Thus, M-X
Delete Non-Matching LinesFOO<cr> is useful if you wish to delete only
files with a FOO in their names.  @Note(Name="Replacement",
IName="Keep Lines", Node="Replace").

@index{minibuffer}
  For more complicated things, you can use the minibuffer.  When you
call the minibuffer from within DIRED, you get a perfectly normal one.
The special DIRED commands are not present while you are editing in
the minibuffer.  To mark a file for deletion, replace the space at the
beginning of its line with a "D".  To remove a mark, replace the "D"
with a space.

@ITS{
@Node(Name="Filadv",  Prev="DIRED",  Up="Files", Next="DirComp")}
@Twenex{
@Node(Name="Filadv",  Prev="DIRED",  Up="Files")}

@Section[Miscellaneous File Operations]
@index{insertion}@index{files}@index{Insert File}@index{Write File}@index{Append to File}@index{Prepend to File}

  EMACS has extended commands for performing many other operations on
files.  @Twenex{Invoking these commands with C-M-X instead of M-X
allows you to use filename completion on the filename arguments these
commands require.}

@index{View File}
  M-X View File<file><cr> allows you to scan or read a file by
sequential screenfuls without visiting the file.  It enters a
subsystem in which you type a Space to see the next screenful or a
Backspace to see the previous screenful.  Typing anything else exits
the command.  View File does not visit the file; it does not alter the
contents of any buffer.  The advantage of View File is that the whole
file does not need to be loaded before you can begin reading it.  The
inability to do anything but page forward or backward is a
consequence.

  M-X Write File<file><cr> writes the contents of the buffer into
the file <file>, and then visits that file.  It can be thought of as a
way of "changing the name" of the file you are visiting.  Unlike C-X
C-S, Write File saves even if the buffer has not been changed.  C-X
C-W is another way of getting at this command.

  M-X Insert File<file><cr> inserts the contents of <file> into the
buffer at point, leaving point unchanged before the contents and mark
after them.  The current defaults are used for <file>, and are updated.

@index{mark}@index{Region}
  M-X Write Region<file><cr> writes the region (the text between
point and mark) to the specified file.  It does not set the visited
filenames.  The buffer is not changed.

  M-X Append to File<file><cr> appends the region to <file>.  The text
is added to the end of <file>.

  M-X Prepend to File<file><cr> adds the text to the beginning of
<file> instead of the end.

@index{Set Visited Filename}@index{Delete File}@index{Copy File}@index{Rename File}
  M-X Set Visited Filename<file><cr> changes the name of the file
being visited without reading or writing the data in the buffer.  M-X
Write File is approximately equivalent to this command followed by a
C-X C-S.

  M-X Delete File<file><cr> deletes the file.  @ITS{If you did not
get a chance to see the default filenames before typing the filename
to delete, then Delete File asks for confirmation before deleting the
file.}

  M-X Copy File<old file><new file><cr> copies the file.

  M-X Rename File<old name><new name><cr> renames the file.

@index{TECO}@index{TECO default filenames}
  The default filenames for all of these operations are @dfn[TECO
default filenames].  Most of these operations also leave the TECO
default names set to the file they operated on.  The TECO default is
@xxii[not always] the same as the file you are visiting.  When you
visit a file, they start out the same; the commands mentioned above
change the TECO default, but do not change the visited filenames.
Each buffer has its own TECO default filenames.

@index{Visit File}
  The operation of visiting a file is available as a function
under the name M-X Visit File<file><cr>.  In this form, it uses
the TECO default as its defaults, though it still sets both the TECO
default and the visited filenames.

@ITS{
@Node(Name="DirComp",  Prev="Filadv",  Up="Files")

@Section[The Directory Comparison Subsystem]
@index{directory}@index{Compare Directories}

  The function Compare Directories makes it easy to compare two
directories to see which files are present in both and which are
present only in one.  It compares a directory on the local machine
with the directory of the same name on another machine.

  Do M-X Compare Directories<machine>:<dir spec> <switch>, where
<machine> is AI, ML, MC or DM, and is not the machine you are on, <dir
spec> is an optional directory name and semicolon, and the optional
switch is a slash followed by S, D or L.

  After a while of crunching, you will be placed in a recursive
editing level on a listing of both directories.  The reason for the
recursive editing level is simply to make it easy for you to view the
comparison; unlike DIRED, Compare Directories does not have any
commands for moving or deleting the files.  To exit, do @CMC[].

  Here is a sample of part of a directory comparison:

@begin[example1,leftmargin +2]
AI   RMS    #1=72 #2=78 #3=71 #4=77 #5=87 - 
MC   RMS    #0=231 #1=254 #13=2844 
AI MC     .DDT.  (INIT)    1   11/18/76 01:08   10/21/76 05:06
AI MC L   .DDT_  (INIT) STAN.K ML EXIT 
   MC L   .TECO. (INIT) .TECO. .TECO. (INIT) 
AI        AR2    1        16   2/6/77   17:51
AI        AR3    1        13   2/17/77  21:37
AI    L   ATS    ORDER  .INFO. @@ ORDER
   MC     FTPU   4         9                   !3/4/77   16:46
   MC     FTPU   5         9                   !3/4/77   16:49
AI MC     MATCH  1        15  !3/4/77   15:39  !3/4/77   15:39
@end[example1]

  It begins with one line for each of the two directories.  These lines
say which two directories they are, and how much disk space is
available on each of the machines.

  Then there comes the list of files, one line for each distinct pair
of filenames that appears.  At the beginning of the line appear the
names of the machines on which the file exists.  At the end of the
line come the creation dates (or names pointed at, for links) of the
file for the machines it is on.  Note that all the dates/link names
for the first machine line up, and so do all those for the second
machine. 

  The switches allow you to view only some of the files.  The /S
switch shows only files present on both machines.  /D shows only those
not present on both machines.  /L shows only files which are the most
recent (largest-numbered) of a sequence.  Only one switch is allowed.
}
@Node(Name="Buffers", Prev="Files", Next="Display")

@Chapter[Using Multiple Buffers]

@index{buffers}
  When we speak of "the buffer", which contains the text you are
editing, we have given the impression that there is only one.  In fact,
there may be many of them, each with its own body of text.  At any
time only one buffer can be @dfn[selected] and available for editing,
but it isn't hard to switch to a different one.  Each buffer
individually remembers which file it is visiting, what modes are in
effect, and whether there are any changes that need saving.

@WideCommands{
C-X B@\Select or create a buffer.

C-X C-F@\Visit a file in its own buffer.

C-X C-B@\List the existing buffers.

C-X K@\Kill a buffer.
}

@index{mode line}
  Each buffer in EMACS has a single name, which normally doesn't
change.  A buffer's name can be any length.  The name of the currently
selected buffer, and the name of the file visited in it, are visible
in the mode line when you are at top level.  A newly started EMACS has
only one buffer, named "Main".

@index{local variables}
  As well as the visited file and the major mode, a buffer can, if
ordered to, remember many other things @dfn[locally], which means,
independently of all other buffers.  @Note(Node="Variables").

@Section[Creating and Selecting Buffers]

@index{C-X B}@index{Select Buffer}@index{Default Major Mode}
@index{Major Modes}
  To create a new buffer, you need only think of a name for it (say,
"FOO") and then do C-X B FOO<cr>, which is the command C-X B (Select
Buffer) followed by the name.  This makes a new, empty buffer and
selects it for editing.  The new buffer is not visiting any
file, so if you try to save it you will be asked for the filenames to
use.  Each buffer has its own major mode; the new buffer's major mode
is taken from the value of the variable Default Major Mode, or from
the major mode of the previously selected buffer if the value of
Default Major Mode is the null string.  Normally the Default Major
Mode is Fundamental mode.

  To return to buffer FOO later after having switched to another, the
same command C-X B FOO<cr> is used, since C-X B can tell whether a
buffer named FOO exists already or not.  It does not matter whether
you use upper case or lower case in typing the name of a buffer.  C-X
B Main<cr> reselects the buffer Main that EMACS started out with.
Just C-X B<cr> reselects the previous buffer.  Repeated C-X B<cr>'s
alternate between the last two buffers selected.

@index{C-X C-F}@index{visiting}@index{Find File}
  You can also read a file into its own newly created buffer, all with
one command: C-X C-F (Find File), followed by the filename.  The first
name of the file becomes the buffer name.  C-F stands for "Find",
because if the specified file already resides in a buffer in your
EMACS, that buffer is reselected.  So you need not remember
whether you have brought the file in already or not.  A buffer created
by C-X C-F can be reselected later with C-X B or C-X C-F, whichever
you find more convenient.  Nonexistent files can be created with C-X
C-F just as they can be with C-X C-V.  A nonzero argument to C-X C-F
makes the file or buffer read-only; it is like the argument to C-X
C-V.  @Note(Node="Visiting").

@index{TAGS Find File}@index{Visiting}@index{TAGS}
  Sometimes EMACS needs to visit a file as part of some other
operation.  By default, it visits the file in whatever buffer was
selected.  If you like to use C-X C-F and multiple buffers,
you can tell EMACS to use multiple buffers for implicit visiting by
setting the variable TAGS Find File to a nonzero value.  This causes
automatic visiting to be done by means of C-X C-F instead of C-X C-V.
Automatic visiting is done by the TAGS package (@XNote(File="TAGS",
Node="Top", Name="TAGS")@.) or by invoking EMACS with a filename
@;@example[@ITS{:EMACS <filename>}@Twenex{@@EMACS <filename>}<cr>]

  If the buffer with the same name that C-X C-F wants to use already
exists but with the wrong contents (often a different file with a
similar name), then you are asked what to do.  You can type Return
meaning go ahead and reuse that buffer for this new file, or you can type
another buffer name to use instead.  If C-X C-F does
find the file already in a buffer, then it checks to see whether the
version on disk is the same as the last version read or written from
that buffer, for safety.  If they are different, you are warned that
someone else may be editing the file, and left with the version which
was already in the EMACS.  To get the new version from disk instead,
use M-X Revert File.

@Section[Using Existing Buffers]

@index{C-X C-B}@index{List Buffers}
  To get a list of all the buffers that exist, do C-X C-B (List
Buffers).  Each buffer's name, major mode, and visited filenames are
printed.  A star at the beginning of a line indicates a buffer
which contains changes that have not been saved.  The number that
appears before a buffer's name in a C-X C-B listing is that buffer's
@dfn[buffer number].  You can select a buffer by giving its number as a
numeric argument to C-X B, which then does not need to read a string
from the terminal.

@index{Save All Files}@index{C-X C-S}@index{^R Save File}
  If several buffers have stars, you should save some of them with
M-X Save All Files.  This finds all the buffers that need
saving and asks about each one individually.  Saving the buffers this
way is much easier and more efficient than selecting each one and
typing C-X C-S.

  A quick way of glancing at another buffer, faster than selecting it,
is to use M-X View Buffer<buffername><cr>.  This displays the
contents of the other buffer and lets you move forward and back a
screen at a time with Space and Backspace.  @Note(IName="View Buffer",
Node="Display").

@index{Rename Buffer}
  M-X Rename Buffer<new name><cr> changes the name of the currently
selected buffer.  If <new name> is the null string, the first filename
of the visited file is used as the new name of the buffer.

  The commands C-X A (@w[^R Append] to Buffer) and M-X Insert Buffer can
be used to copy text from one buffer to another.  @Note(Node="Copying").

@Section[Killing Buffers]

@index{Kill Buffer}@index{Kill Some Buffers}@index{C-X K}
@index{recursive editing level}@index{URK}
  After you use an EMACS for a while, it may fill up with buffers which
you no longer need.  Eventually you can reach a point where trying to
create any more results in an "URK" error.  So whenever it is
convenient you should do M-X Kill Some Buffers, which asks about each
buffer individually.  You can say Y or N to kill it or not.  Or you
can say Control-R to take a look at it first.  This does not actually
select the buffer, as the mode line shows, but gives you a recursive
editing level in which you can move around and look at things.  When
you have seen enough to make up your mind, exit the recursive editing
level with a @CMC[] and you will be asked the question again.  If you
say to kill a buffer that needs saving, you will be asked whether it
should be saved.  @Manual{@Note(Node="URK", Name="Storage
Exhausted").}  @INFO{@Note(Node="Lossage", IName="URK Error")}.

  You can kill the buffer FOO by doing C-X K FOO<cr>.  You can kill
the selected buffer, a common thing to do if you use C-X C-F, by doing
C-X K<cr>.  If you kill the selected buffer, in any way, EMACS asks
you which buffer to select instead.  Saying just <cr> at that point
tells EMACS to choose one reasonably.  C-X K runs the function Kill
Buffer.

@Node(Name="Display", Prev="Buffers", Next="Windows")

@Chapter[Controlling the Display]
@index{scrolling}@index{screen}

  Since only part of a large file fits on the screen, EMACS tries to
show the part that is likely to be interesting.  The display control
commands allow you to ask to see a different part of the file.

@Commands[

C-L@\Clear and redisplay screen,
putting point at a specified vertical position.

C-V@\Scroll forwards (a screen or a few lines).

M-V@\Scroll backwards.

M-R@\Move point to the text at a given vertical position.

C-M-R@\Shift the function point is in onto the screen.
]

  The terminal screen is rarely large enough to display all of your
file.  If the whole buffer doesn't fit on the screen, EMACS shows a
contiguous portion of it, containing point.  It continues to
show approximately the same portion until point moves outside of
it; then EMACS chooses a new portion centered around the new
point.  This is EMACS's guess as to what you are most interested in
seeing.  But if the guess is wrong, you can use the display control
commands to see a different portion.  The finite area of screen
through which you can see part of the buffer is called @dfn[the window],
and the choice of where in the buffer to start displaying is also
called @dfn[the window].

@index{Cursor Centering Point}@index{End of Buffer Display
Margin}@index{FS Flags}
  First we describe how EMACS chooses a new window position on its
own.  The goal is usually to place point 35 percent of the way down
the screen.  This is controlled by the variable Cursor Centering
Point, whose value is the percent of the screen down from the top.
However, if the end of the buffer is on the screen, EMACS tries to
leave at most 35 percent of the screen blank beneath it, so that the
screen is not wasted.  This percentage is controlled by the variable
End of Buffer Display Margin.  These variables work by controlling FS
flags, and their values must never be negative or greater than 99.

@index{Top Display Margin}@index{Bottom Display Margin}
  Normally EMACS only chooses a new window position if you move point off
the screen.  However, you can ask for a new window position to be
computed whenever point gets too close to the top of the screen by
setting the variable Top Display Margin to the percentage of the
screen in which point must not appear.  Bottom Display Margin does the
same thing for a region near the bottom.

@index{C-L}@index{minibuffer}@index{TECO}@index{clear screen}@index{^R New Window}
@index{Cursor Centering Point}
  The basic display control command is C-L (@w[^R New] Window).  In
its simplest form, with no argument, it clears the screen and tells
EMACS to choose a new window position, centering point 35 percent of
the way from the top as usual.

@index{numeric arguments}
  C-L with a positive argument chooses a new window so as to put point
that many lines from the top.  An argument of zero puts point on the
very top line.  Point does not move with respect to the text;
rather, the text and point move rigidly on the screen.  C-L with a
negative argument puts point that many lines from the bottom of the
window.  For example, @w[C-U -1] C-L puts point on the bottom line, and
@w[C-U -5] C-L puts it five lines from the bottom.  C-L with an argument
does not clear the screen, so that it can move the text on the screen
instead of printing it again if the terminal allows that.

  @w[C-U C-L] is different from C-L with any other sort of argument.  It
causes just the line containing point to be redisplayed.

@index{C-V}@index{M-V}
@index{^R Next Screen}@index{^R Previous Screen}@index{Scrolling}
  The @dfn[scrolling] commands C-V and M-V let you move the whole
display up or down a few lines.  C-V (@w[^R Next] Screen) with an
argument shows you that many more lines at the bottom of the screen,
moving the text and point up together as C-L might.  C-V with a
negative argument shows you more lines at the top of the screen, as
does Meta-V (@w[^R Previous] Screen) with a positive argument.

@index{Next Screen Context Lines}
  To read the buffer a screenful at a time, use the C-V command with
no argument.  It takes the last two lines at the bottom of the screen
and puts them at the top, followed by nearly a whole screenful of
lines not visible before.  Point is put at the top of the screen.
Thus, each C-V shows the "next screenful", except for two lines of
overlap to provide continuity.  The variable Next Screen Context
Lines, if defined, controls how many lines from the bottom of the
screen move to the top; the default if the variable is not defined is
2.  To move backward, use M-V without an argument, which moves a whole
screenful backwards (again with overlap).

@index{View Buffer}
  Scanning by screenfuls through the buffer for some distance is most
conveniently done with the M-X View Buffer command.  This command
enters a simple subsystem in which Space moves a screenful forward and
Backspace moves a screenful backward.  The Return character exits,
leaving point centered in whatever part of the buffer was visible.
Any other character exits and returns point to its former location,
and is then executed as a command (unless it is a Rubout; Rubout exits
but is not executed).  View Buffer can be used to view another buffer
by giving the buffer's name as a string argument.  In this case,
exiting with Return moves point permanently in the other buffer, but
does not select it.  @Note(Node="Buffers").

@index{View File}
  With the M-X View File command, you can scan by screenfuls through a
file which you have not visited.  @Note(Name="Advanced File Commands",
IName="View File", Node="FilAdv").

@index{C-M-R}@index{^R Reposition Window}
  To scroll the buffer so that the current function or paragraph is
positioned conveniently on the screen, use the C-M-R command
(@w[^R Reposition] Window).  This command tries to get as much as
possible of the current function or paragraph onto the screen,
preferring the beginning to the end, but not moving point off the
screen.  A "function" in Lisp mode is a defun; otherwise it is defined
to be a set of consecutive unindented lines, or a set of consecutive
indented lines.

@index{M-R}@index{^R Move to Screen Edge}
  C-L in all its forms changes the position of point on the screen,
carrying the text with it.  Another command moves point the same way
but leaves the text fixed.  It is called Meta-R (@w[^R Move] to Screen
Edge).  With no argument, it puts point at the beginning of the line
at the center of the screen.  An argument is used to specify the line
to put it on, counting from the top if the argument is positive, or
from the bottom if it is negative.  Thus, Meta-R with an argument of 0
puts point on the top line of the screen.  Meta-R never causes
any text to move on the screen; it causes point to move with respect
to the screen and the text.

@Node(Name="Windows", Prev="Display", Next="Narrowing")

@Chapter[Two Window Mode]

  EMACS allows you to split the screen into two @dfn[windows] and use
them to display parts of two files, or two parts of the same file.

@WideCommands[

C-X 2@\Start showing two windows.

C-X 3@\Show two windows but stay "in" the top one.

C-X 1@\Show only one window again.

C-X O@\Switch to the Other window

C-X 4@\Find buffer, file or tag in other window.

C-X ^@\Make this window bigger.

C-M-V@\Scroll the other window.

]

@index{windows}@index{two window mode}
  In @dfn[two window] mode, the text display portion of the screen is
divided into two parts called @dfn[windows], which display different
pieces of text.  The two windows can display two different files, or
two parts of the same file.  Only one of the windows is selected; that
is the window which the cursor is in.  Editing normally takes place in
that window alone.  To edit in the other window, you would give a
special command to move the cursor to the other window, and then edit
there.  Since there is only one mode line, it applies to the window
you are in at the moment.

@index{W2}@index{C-X 2}@index{^R Two Windows}
  The command C-X 2 (@w[^R Two] Windows) enters two-window mode.  A line
of dashes appears across the middle of the screen, dividing the text
display area into two halves.  Window one, containing the same text as
previously occupied the whole screen, fills the top half, while window
two fills the bottom half.  The cursor moves to window two.  If this
is your first entry to two-window mode, window two contains a new
buffer named W2.  Otherwise, it contains the same text it held the
last time you looked at it.

@index{C-X 1}@index{^R One Window}
  To return to viewing only one window, use the command @w[C-X 1]
(@w[^R One] Window).  Window one expands to fill the whole screen, and
window two disappears until the next @w[C-X 2].@: @w[C-U C-X 1] gets
rid of window one and makes window two use the whole screen.  Neither
of these depends on which window the cursor is in when the command is
given.

@index{C-X O}@index{^R Other Window}
  While you are in two window mode you can use C-X O (@w[^R Other] Window)
to switch between the windows.  After doing C-X 2, the cursor is in
window two.  Doing C-X O moves the cursor back to window one, to
exactly where it was before the @w[C-X 2].@:  The difference between this
and doing C-X 1 is that C-X O leaves window two visible on the screen.
A second C-X O moves the cursor back into window two, to where
it was before the first @w[C-X O].@:  And so on...

@index{scrolling}@index{numeric arguments}@index{C-M-V}@index{^R Scroll Other Window}
  Often you will be editing one window while using the other just for
reference.  Then, the command C-M-V (@w[^R Scroll] Other Window) is very
useful.  It scrolls the other window without switching to it and
switching back.  It scrolls the same way C-V does:  with no argument, a
whole screen up;  with an argument, that many lines up (or down, for a
negative argument).  With just a minus sign (no digits) as an
argument, C-M-V scrolls a whole screenful backwards (what M-V does).

@index{C-X 3}@index{^R View Two Windows}
  The C-X 3 (@w[^R View] Two Windows) command is like C-X 2 but leaves the
cursor in window one.  That is, it makes window two appear at the
bottom of the screen but leaves the cursor where it was.  C-X 2 is
equivalent to C-X 3 @w[C-X O].@:  C-X 3 is equivalent to C-X 2 C-X O, but
C-X 3 is much faster.

@index{Compare Windows}@index{Collapse in Comparison}
  M-X Compare Windows compares the text in the
two windows.  Starting from the existing values of point in
each window, it advances point in both windows to the first mismatch.  The
variable Collapse in Comparison, if it exists, should be a string
containing all the "insignificant" characters; any string of
insignificant characters matches any other string of those characters.
If the variable does not exist, the insignificant characters are
return, linefeed, space and tab.

  If you quit with C-G in the middle of Compare Windows, point is advanced in
both windows as far as the matching has proceeded.  As a result,
calling Compare Windows again resumes the comparison.

@index{C-X ^}@index{^R Grow Window}
  Normally, the screen is divided evenly between the two windows.
You can also redistribute screen space between the windows with the @w[C-X ^]
(@w[^R Grow] Window) command.  It makes the currently selected window get
one line bigger, or as many lines as is specified with a numeric argument.  With a
negative argument, it makes the selected window smaller.  The allocation
of space to the windows is remembered while you are in one window mode
and the same allocation is used when you return to two window mode.
The allocation changes only when you give a @w[C-X ^] command.

  After leaving two-window mode, you can still use C-X O, but its
meaning is different.  Window two does not appear, but
whatever was being shown in it appears, in window one (the whole
screen).  Whatever buffer used to be in window one is stuck,
invisibly, into window two.  Another C-X O reverses the effect of
the first.  For example, if window one shows buffer B and window two
shows buffer W2 (the usual case), and only window one is visible, then
after a C-X O window one shows buffer W2 and window two shows
buffer B.

@Section[Multiple Windows and Multiple Buffers]

@index{buffers}
  Buffers can be selected independently in each window.  The C-X B
command selects a new buffer in whichever window the cursor is in.
The other window's buffer does not change.  Window two's buffer is
remembered while you are in one window mode, and when you return to
two window mode that same buffer reappears in window two.
@Note(Node="Buffers").

@index{numeric arguments}
  You can view one buffer in both windows.  Give C-X 2 an argument as
in C-U C-X 2 to go into two window mode, with both windows showing the
buffer which used to be in window one alone.  Although the same buffer
appears in both windows, they have different values of point, so you
can move around in window two while window one continues to show the
same text.  Then, having found in window two the place you wish to
refer to, you can go back to window one with C-X O to make your
changes.  Finally you can do C-X 1 to make window two leave the
screen.  If you are already in two window mode, C-U C-X O switches
windows carrying the buffer from the old window to the new one so that
both windows show that buffer.

  If you have the same buffer in both windows, you must
beware of trying to visit a different file in one of the windows
with C-X C-V, because if you bring a new file into this buffer, it
will replace the old file in @xxii[both] windows.  To view different
files in the two windows again, you must switch buffers in one of the
windows first (with C-X B or C-X C-F, perhaps).

@index{C-X 4}@index{visiting}@index{files}@index{tags}
@index{^R Visit in Other Window}
  A convenient "combination" command for viewing something
in the other window is C-X 4 (@w[^R Visit] in Other Window).  With this
command you can ask to see any specified buffer, file or tag in the
other window.  Follow the C-X 4 with either B and a buffer name, F or
C-F and a file name, or T or "." and a tag name (@XNote(Name="TAGS",
File="TAGS", Node="Top").).  This switches to
the other window and finds there what you specified.  If you were
previously in one-window mode, two-window mode is entered.
C-X 4 B is similar to to C-X 2 C-X B.@:  C-X 4 F is similar to C-X 2 C-X
C-F.@:  C-X 4 T is similar to C-X 2 M-Period.  The difference is one of
efficiency, and also that C-X 4 works equally well if you are already
using two windows.

@Node(Name="Narrowing", Prev="Windows", Next="Pages")

@Chapter[Narrowing]
@index{narrowing}

  @dfn[Narrowing] means focusing in on some portion of the buffer, making
the rest temporarily invisible and inaccessible.

@WideCommands[

C-X N@\Narrow down to between point and mark.

C-X P@\Narrow down to the page point is in.

C-X W@\Widen to view the entire buffer.
]

  When you have narrowed down to a part of the buffer, that part
appears to be all there is.  You can't see the rest, you can't move
into it (motion commands won't go outside the visible part), you can't
change it in any way.  However, it is not gone, and if you save the
file all the invisible text will be saved.  In addition to sometimes
making it easier to concentrate on a single subroutine or paragraph by
eliminating clutter, narrowing can be used to restrict the range of
operation of a replace command.  The word "Narrow" appears in the mode
line whenever narrowing is in effect.

@index{C-X N}@index{Region}@index{^R Narrow Bounds to Region}
  The primary narrowing command is C-X N (@w[^R Narrow] Bounds to
Region).  It sets the @dfn[virtual buffer boundaries] at point and the
mark, so that only what was between them remains visible.  Point and
mark do not change.

@index{C-X W}@index{^R Widen Bounds}
  The way to undo narrowing is to widen with C-X W (@w[^R Widen]
Bounds).  This makes all text in the buffer accessible again.

@index{C-X P}@index{^R Narrow Bounds to Page}
  Another way to narrow is to narrow to just one page, with C-X P
(@w[^R Narrow] Bounds to Page).  @Note(Node="Pages").

  You can get information on what part of the buffer you are narrowed
down to using the @w[C-X =] command.  @Note(Name="Filling", IName="@w[C-X =]",
Node="Filling").

  The virtual buffer boundaries are a powerful TECO
mechanism used internally in EMACS in many ways.  While only the
commands described here set them so as you can see, many others set them
temporarily using the TECO commands @w[FS VB] and @w[FS VZ], but restore
them before they are finished.

@Node(Name="Pages", Prev="Narrowing", Next="Replace")

@Chapter[Commands for Manipulating Pages]

@Index{Pages}@Index{formfeed}@index{C-M-L}@index{insertion}@index{C-Q}
  Files are often thought of as divided into @dfn[pages] by the ASCII
character formfeed (@CTL[L]).  For example, if a file is printed on a
line printer, each page of the file, in this sense, will start on a
new page of paper.  Most editors make the division of a file into
pages extremely important.  For example, they may be unable to show
more than one page of the file at any time.  EMACS treats a formfeed
character just like any other character.  It can be inserted with C-Q
C-L (or, C-M-L), and deleted with Rubout.  Thus, you are free to
paginate your file, or not.  However, since pages are often meaningful
divisions of the file, commands are provided to move over them and
operate on them.

@WideCommands{

C-M-L@\Insert formfeed.

C-X C-P@\Put point and mark around this page
(or another page).

C-X [@\Move point to previous page boundary.

C-X ]@\Move point to next page boundary.

C-X P@\Narrow down to just this (or next) page.

C-X L@\Count the lines in this page.

M-X What Page@\Print current page and line number.
}

@index{C-X [}@index{C-X ]}@index{motion}@index{^R Next Page}@index{^R Previous Page}
  The @w{C-X [} (@w[^R Previous] Page) command moves point to the previous
page delimiter (actually, to right after it).  If point starts out
right after a page delimiter, it skips that one and stops at the
previous one.  A numeric argument serves as a repeat count.  The @w{C-X ]}
(@w[^R Next] Page) command moves forward past the next page delimiter.

@index{What Page}@index{echo area}
  The command M-X What Page prints the page and line number of the
cursor in the echo area.  There is a separate command to print this
information because it is likely to be slow and should not slow down
anything else.  The design of TECO is such that it is not possible to
know the absolute number of the page you are in, except by scanning
through the whole file counting pages.

@index{C-X C-P}@index{mark}@index{Region}@index{C-W}@index{^R Mark Page}
  The C-X C-P command (@w[^R Mark] Page) puts point at the beginning
of the current page and the mark at the end.  The page delimiter at
the end is included (the mark follows it).  The page delimiter at the
front is excluded (point follows it).  This command can be followed by
a C-W to kill a page which is to be moved elsewhere.  If it is
inserted after a page delimiter, at a place where C-X ] or C-X [ would
take you, then the page will be properly delimited before and after
once again.

  A numeric argument to C-X C-P is used to specify which page to go
to, relative to the current one.  Zero means the current page.  One
means the next page, and -1 means the previous one.

@index{C-X P}@index{narrowing}@index{C-X W}
@index{^R Narrow Bounds to Page}@index{^R Widen Bounds}
  The command C-X P (@w[^R Narrow] Bounds to Page) narrows down to just one
page.  Everything before and after becomes temporarily invisible and
inaccessible (@Note(Node="Narrowing").).  Use C-X W (@w[^R Widen] Bounds) to undo this.
Both page terminators, the preceding one and the following one, are
excluded from the visible region.  Like C-X C-P, the C-X P command
normally selects the current page, but allows you to specify which
page explicitly relative to the current one with a numeric argument.
However, when you are already narrowed down to one page, C-X P with no
argument moves you to the next page (otherwise, it would be a useless
no-op).  So several C-X P's in a row get first the current page and
then successive pages.

  If you prefer to see only one page of the file at a time as a
general rule, use the PAGE library.  @Note(Node="PAGE").

@index{Page Delimiter}
  Just what delimits pages is controlled by the variable Page
Delimiter, which should contain a TECO search string (@Note(Name="TECO
search strings", Node="TECOsearch")@.) which matches all page
separators.  Normally, it is a string containing just @CTL[L].  For an
INFO file, it might usefully be changed to
@CTL[_]@CTL[L]@CTL[O]@CTL[_], which means that either a @CTL[_]@CTL[L]
or just a @CTL[_] (either of the two strings that separate INFO nodes)
should be a page separator.  Then each node counts as a page.  In any
case, page separators are recognized as such only at the beginning of
a line.  The paragraph commands consider each page boundary a
paragraph boundary as well.

@index{C-X L}@index{^R Count Lines Page}
  The C-X L command (@w[^R Count] Lines Page) is good for deciding where
to break a page in two.  It prints in the echo area the total
number of lines in the current page, and then divides it up into those
preceding the current line and those following, as in
@example[
Page has 96 lines (72+25)
]
Notice that the sum is off by one; this is correct if point is not at
the front of a line.

@Node(Name="PAGE", Prev="Pages", Up="Pages")

@Section[Editing Only One Page at a Time]
@index{pages}@index{libraries}@index{PAGE}@index{mode line}

  The PAGE library allows you to edit only within a single page at a
time, with special commands to move between pages, and split and join
pages.  It contrives to show the number of the page you are looking at
in the mode line.  You can also ask to see a @dfn[directory] of the
pages in the file, or to insert it into the file.  This is an
extension of and replacement for the facility provided by the C-X P
command in standard EMACS.  It is an optional library because we do
not think it is necessarily an improvement.

  The commands in the PAGE library supplant and redefine commands in
standard EMACS.  Therefore, you cannot use them unless you give the
command M-X Load LibraryPAGE<cr> explicitly.  @Note(Node="Libraries").

@WideCommands(

C-X ]@\Move to next page.

C-X [@\Move to previous page.

C-X C-P@\Move to page by absolute number.

C-X P@\Split this page at point.

C-X J@\Join this page to the next or previous one.

C-X W@\See the whole file again.
)

@index{C-X C-P}@index{^R Goto Page}
  The most fundamental thing to do with PAGE is to go to a specific
page.  This can be done by giving the page number as an argument to
C-X C-P (@w[^R Goto] Page).  If you give a number too big, the last page
in the file is selected.

  For convenience, C-X C-P with no argument when you are looking at
the whole file selects the page containing point.  When you are
looking at only one page, C-X C-P with no argument goes to the next
page and with a negative argument goes to the previous page.

@index{C-X [}@index{C-X ]}@index{^R Goto Previous Page}@index{^R Goto Next Page}
  However, the main commands for moving forward or backward by pages
are @w{C-X [} and @w{C-X ]} (@w[^R Goto] Previous Page and @w[^R Goto] Next Page).
These take a numeric argument (either sign) and move that many pages.

@index{C-X W}@index{^R PAGE Widen Bounds}
  To go back to viewing the whole file instead of just
one page, you can use the C-X W (@w[^R PAGE] Widen Bounds) command.  These are
the same characters that you would use in standard EMACS, but they run
a different function that knows to remove the page number from the
mode line.

@index{searching}@index{C-S}@index{C-R}@index{^R Incremental Search}@index{^R Reverse Search}
  The C-S (@w[^R Incremental] Search) and C-R (@w[^R Reverse] Search)
commands are redefined to widen bounds first and narrow them again
afterwards.  So you can search through the whole file, but afterward
see only the page in which the search ended.  In fact, PAGE goes
through some trouble to work with whatever search functions you prefer
to use, and find them wherever you put them.

@index{C-X P}@index{C-X J}@index{split pages}@index{join pages}
@index{^R Insert Pagemark}@index{^R Join Next Page}
  To split an existing page, you could insert a @CTL[L], but unless
you do this while viewing the whole file, PAGE might get confused.
The clean way is to use C-X P (@w[^R Insert] Pagemark) which inserts
the page mark, and narrows down to the second of the two pages formed
from the old page.  The clean way to get rid of a page mark is to use
C-X J (@w[^R Join] Next Page).  It gets rid of the page mark after the
current page; or, with a negative argument, gets rid of the page mark
before this page.

@index{PAGE Flush CRLF}
  A page mark is defined as <CRLF>@CTL[L].  If you set the variable
PAGE Flush CRLF to 1, a page mark is <CRLF>@CTL[L]<CRLF>, which has
the effect of making the CRLF at the beginning of each page invisible.
This may be desirable for EMACS library source files.  You can also
specify some other string in place of @CTL[L] by setting the variable
Page Delimiter.  If Page Delimiter specifies multiple alternatives,
separated by @CTL[O], PAGE always inserts the first of them, but
recognizes them all.

@index{comments}@index{View Page Directory}@index{Insert Page Directory}
  To see a list of all the pages in the file, each one represented by
its first nonempty line, use M-X View Page Directory.  It prints out
the first non-blank line on each page, preceded by its page number.
M-X Insert Page Directory inserts the same directory into the buffer
at point.  If you give it an argument, it tries to make the whole
thing into a comment by putting the Comment Start string at the front
of each line and the Comment End string at the end.

  If the variable Page Setup Hook exists, PAGE will execute its value
as the function for placing PAGE's functions on keys.  This is done
instead of the normal assignments to C-X [, C-X ], C-X C-P, C-X P, and
C-X J.

@Node(Name="Replace", Prev="Pages", Next="TECOsearch")

@Chapter[Replacement Commands]
@index{searching}@index{replacement}@index{Replace String}
@index{case conversion}

  Global search-and-replace operations are not needed as often in EMACS
as they are in other editors, but they are available.  In
addition to the simple Replace operation which is like that found in
most editors, there is a Query Replace operation which asks you, for
each occurrence of the pattern, whether to replace it.

  To replace every instance of FOO after point with BAR, you can do
@example[
M-X ReplaceFOOBAR<cr>
]
Replacement occurs only after point, so if you want to cover the
whole buffer you must go to the beginning first.  Replacement
continues to the end of the buffer, but you can restrict it by
narrowing.  @Note(Node="Narrowing").
@index{Narrowing}

@index{Case Replace}@index{Case Search}
  Unless the variable Case Replace is zero, Replace tries to
preserve case; give both FOO and BAR in lower case, and if a
particular FOO is found with a capital initial or all capitalized, the
BAR which replaces it will be given the same case pattern.  Thus,
@;@example[M-X Replacefoobar<cr>]
would replace "foo" with "bar", "Foo" with "Bar" and "FOO" with "BAR".
If Case Replace is zero, the replacement string is inserted with the
case you used when you typed it.  If Case Search is zero, the
string to be replaced is found only when it has the same case as what
you typed.

@index{numeric arguments}
  If you give Replace (or Query Replace) an argument, then it replaces
only occurrences of FOO delimited by break characters (or an end of
the buffer).  So you can replace only FOO the word, and not FOO when
it is part of FOOBAR.

@index{TECO search strings}
  The string FOO to be replaced is actually a TECO search string, a
type of pattern, in which the characters @CTL[B], @CTL[N], @CTL[O],
@CTL[Q], @CTL[S], @CTL[X], and @CTL{]} are special.  @Note(Node="TECOSearch",
Name="TECO search strings").

@Section[Query Replace]

@index{Query Replace}
  If you want to change only some of the occurrences of FOO, not all,
then you cannot use an ordinary Replace.  Instead, use M-X Query
ReplaceFOOBAR<cr>.  This displays each occurrence of FOO and waits
for you to say whether to replace it with a BAR.  The things you can
type when you are shown an occurrence of FOO are:

@index{Space}@index{Rubout}@index{Comma}@index{Altmode}@index{.}@index{!}@index{^}@index{C-R}@index{C-W}

@WideCommands{
Space@\to replace the FOO (preserving case, just like
plain Replace, unless Case Replace is zero).

Rubout@\to skip to the next FOO without replacing this one.

Comma  @\to replace this FOO and display the result.
You are then asked for another input character,
except that since the replacement has already been
made, Rubout and Space are equivalent.

Altmode@\to exit without doing any more replacements.

Period @\to replace this FOO and then exit.

!@\to replace all remaining FOO's without asking.

^@\to go back to the previous FOO (or, where it was),
in case you have made a mistake.  This works by
jumping to the mark (Query Replace sets the mark each
time it finds a FOO).

C-R@\to enter a recursive editing level, in case the FOO
needs to be edited rather than just replaced with a
BAR.  When you are done, exit the recursive editing
level with @CMC[] and the next FOO will be displayed.

C-W@\to delete the FOO, and then start editing the buffer.
When you are finished editing whatever is to replace
the FOO, exit the recursive editing level with @CMC[] and the next FOO
will be displayed.
}
If you type any other character, the Query Replace is exited, and
the character executed as a command.  To restart the
Query Replace, use C-X Altmode which is a command to re-execute the
previous minibuffer command or extended command.  @Note(Node="M-X",
IName="C-X Altmode").
@index{C-X Altmode}@index{^R Re-execute Minibuffer}

@SubSection[Running Query Replace with the Minibuffer]

@index{minibuffer}@index{C-]}@index{Altmode}@index{M-%}@index{^R Query Replace}
  Meta-% gives you a minibuffer pre-initialized with "MM Query
Replace".  @Note(Node="Minibuffer").  This is the easiest way to
invoke Query Replace.  It also allows you to get Returns and Altmodes
into the arguments.

  With the minibuffer, Query Replace can be given a precomma argument,
which says that the second string argument is actually a TECO program
to be executed to perform the replacement, rather than simply a string
to replace with.

  When you invoke Query Replace from the minibuffer, the character @CTL{]}
becomes special (because it is special in TECO programs).  In order to
get a @CTL{]} into the search string or the replacement string, you must
use two of them.  You can also use a @CTL{]} to quote an Altmode.  In the
minibuffer, Return has no syntactic significance, so there is no need
for a way to quote it.  However, in order to insert any control
characters into the arguments, you need to quote them again with
C-Q.  So, to get @CTL{Q} @CTL{X} into the search string so as to search for a
@CTL{X}, you have to type C-Q C-Q C-Q C-X.

@Section[Other Search-and-loop Functions]

  Here are some other functions related to replacement.  Their
arguments are TECO search strings (@Note(Name="TECO search strings",
Node="TECOsearch").).  They all operate from point to the end of
the buffer (or where narrowing stops them).

@index{List Matching Lines}@index{Count Matching Lines}
@index{Delete Non-Matching Lines}@index{Delete Matching Lines}
@index{deletion}@index{replacement}

@GrossCommands[

M-X List Matching LinesFOO<cr>@\
prints each line containing FOO.  With an argument,
it prints that many lines before and after each
occurrence.


M-X Count OccurrencesFOO<cr>@\
prints the number of occurrences of FOO after point.


M-X Delete Non-Matching LinesFOO<cr>@\
kills all lines after point that don't contain FOO.


M-X Delete Matching LinesFOO<cr>@\
kills all lines after point that contain FOO.
]

@Node(Name="TECOsearch", Prev="Replace", Next="MajorModes")

@Section[TECO Search Strings]

@index{TECO}@index{C-X}@index{C-B}@index{C-N}@index{C-O}@index{C-Q}
@index{TECO search strings}
  The first string argument to Replace and Query Replace is actually a
TECO search string.  This means that the characters @CTL{X}, @CTL{B},
@CTL{N}, @CTL{S}, @CTL{O}, and @CTL{Q} have special meanings.

  @CTL{X} matches any character.  @CTL{B} matches any "delimiter"
character (anything which the word commands consider not part of a
word, according to the syntax table.  @Note(Node="Syntax").).  @CTL{N}
negates what follows, so that @CTL{N} A matches anything but A, and
@CTL{N} @CTL{B} matches any non-delimiter.  @CTL{S} is followed by a
parameter character, and matches anything whose Lisp syntax equals the
parameter.  So @CTL{S}( matches any character given the syntax of an
open-parenthesis.  @CTL{N}@CTL{S}A matches any character which is not
part of symbol names.

  @CTL{O} means "or", so that XYXY @CTL{O} ZZZ
matches @xxii[either] XYXY or ZZZ.  @CTL{O} can be used more than once
in a pattern.  @CTL{Q} quotes the following character, in case you
want to search for one of the special control characters.  However,
you can't quote an Altmode or a Return in this way because its
specialness is at an earlier stage of processing.

  Some variables are supposed to have TECO search strings as their
values.  For example, Page Delimiter is supposed to be a search string
to match anything which should start a page.  This is so that you can
use @CTL{O} to match several alternatives.  In the values of such
variables, @CTL{B}, @CTL{N}, @CTL{O}, @CTL{Q}, @CTL{S}, @CTL{X} and @CTL{]} are
special, but Altmode is not.  @CTL{B} through @CTL{X} are quoted with
a @CTL{Q}, and @CTL{]} is quoted with another @CTL{]}.

  The function Apropos (or, Help A) and all similar functions actually
take TECO search strings as arguments, so you can search for more than
one substring at a time.  This is useful because doing Apropos on
word@CTL[O]para is not really slower than searching for just "word" or
just "para".

@manual{
@Node(name="Programs")@comment(just make @chapter define the right tag)
@Chapter(Editing Programs)

  Special features for editing programs include automatic
indentation, comment alignment, parenthesis matching, and the ability
to move over and kill balanced expressions.  Many of these features
are parameterized so that they can work for any programming language.

  For each language there is a special @dfn[major mode] which customizes
EMACS slightly to be better suited to editing programs written in that
language.  These modes sometimes offer special facilities as well.

@Note(Node="Words").	Moving over words is useful for editing
			programs as well as text.

@Note(Name="Paragraphs", Node="Sentences").
			Most programming language major modes define
			paragraphs to be separated only by blank lines
			and page boundaries.  This makes the paragraph
			commands useful for editing programs.

@XNote(Name="Tags", File="TAGS", Node="Top").
			The TAGS package can remember all the labels
			or functions in a multi-file program
			and find any one of them quickly.
}

@Node(Name="MajorModes", Prev="TECOSearch", Next="Programs")

@Section[Major Modes]
@index{major modes}@index{Tab}@index{Rubout}@index{Linefeed}
@index{comments}@index{^R Indent New Line}

  EMACS has many different @dfn[major modes], each of which customizes
EMACS for editing text of a particular sort.  The major modes are
mutually exclusive, and one major mode is current at any time.  When
at top level, EMACS always says in the mode line which major mode you
are in.

  When EMACS starts up, it is in what is called @dfn[Fundamental
mode], which means that the character commands are defined so as to be
convenient in general.  More precisely, in Fundamental mode every
EMACS option is set in its default state.  For editing any specific
type of text, such as Lisp code or English text, you should switch to
the appropriate major mode.  This tells EMACS to
change the meanings of a few commands to become more specifically
adapted to the language being edited.  Most commands remain unchanged; the
ones which usually change are Tab, Rubout, and Linefeed.  In addition,
the commands which handle comments use the mode to determine how
comments are to be delimited.

@index{mode line}
  Selecting a new major mode is done with an M-X command.  Each major
mode is the name of the function to select that mode.  Thus, you can
enter Lisp mode by executing M-X Lisp (short for M-X Lisp Mode).
@Twenex{
  Often EMACS enters the correct major mode for a file simply
based on the file's extension, and you do not have to worry about
selecting a mode.
}
  You can specify which major mode should be used for editing a
certain file by putting -*-<mode name>-*- somewhere in the first
nonblank line of the file.  For example, this file has
@INFO{-*-Text-*-}@Manual{-*-SCRIBE-*-}.  In a program, this string is
surrounded by appropriate other characters to hide it from the
compiler in a comment.

  Many major modes redefine the syntactical properties of characters
appearing in the buffer.  @Note(Node="Syntax").

  Most programming language major modes specify that only blank lines
separate paragraphs.  This is so that the paragraph commands
remain useful.  They also cause Auto Fill mode to use the definition
of Tab to indent the new lines it creates.  This is because most lines
in a program are usually indented.

@Index{List Redefinitions}
  To find out what a particular major mode redefines, use the command
M-X List Redefinitions while that mode is in effect.  This command
describes all the local variables and commands of the selected buffer,
in a form designed to be easy to understand.

@Menu{
  Here are pointers to descriptions of the several major modes.

* Text::                Text mode is for editing English text.
* Lisp::                Lisp mode is for Lisp.
* Muddle: Lisp,         Muddle is like Lisp.
* MIDAS::               MIDAS mode is good for assembler code.
* PL1: (EPL1),          PL1 mode is the archetype from which modes
                        for many block structured languages are
                        defined.
* FORTRAN: (EFORTRAN),  FORTRAN mode.
* SCRIBE::              SCRIBE mode.
* TEX: (ETEX),          TEX mode.  TEX is a text justifier.
* CLU: (ECLU),          CLU mode.
* PASCAL: (EPASC),      PASCAL, BCPL and BLISS also have modes.
@Twenex{* FAIL: MIDAS,          Fail and Macro-10 are also defined.
* MACRO-10: MIDAS,
}* Other: Other Langs,  Other modes without documentation.
}
@manual{
  Major modes are available for the languages LISP, MUDDLE, MIDAS,
PALX, IBM370 (assembler), @Twenex{FAIL, MACRO-10, BASIC20, BCPL,
BLISS,} CLU, @Twenex{COBOL,} FORTRAN, MACSYMA, PASCAL, @Twenex{PCL,}
PL1, SAIL, and TECO.

  There is also Text mode, designed for editing English text, and TEX
and SCRIBE modes, for editing input to those text justifier programs.
@Note(Node="Text").}

@INFO{
@Node(Name="Programs",  Prev="MajorModes",  Next="MinorModes")

@Section[Commands for Editing Programs]

  Special features for editing programs include automatic
indentation, comment alignment, parenthesis matching, and the ability
to move over and kill balanced expressions.  Many of these features
are parameterized so that they can work for any programming language.
For each language there is usually a separate major mode
which sets all parameters in the way which is best for that language.
These modes sometimes offer special facilities individually as well.

@Menu{
* Compile::             M-X Compile for compiling your program.
* Indenting::           Automatic indentation of code.
* Matching::            Automatic display of matching parentheses.
* Comments::            Inserting, deleting, aligning comments.
* Lisp::                Lisp mode.
* Lists::               Moving over and killing Lisp objects.
* Defuns::              Moving over and marking Lisp functions.
* Grinding::            Grinding Lisp code.
* MIDAS::               Editing assembler-language code.
* Other Langs::         Modes for other languages.
}

@Note(Node="Words").	Moving over words is useful for editing
			programs as well as text.

@Note(Name="Paragraphs", Node="Sentences").
			Most programming language major modes define
			paragraphs to be separated only by blank lines
			and page boundaries.  This makes the paragraph
			commands useful for editing programs.

@XNote(Name="Tags", File="TAGS", Node="Top").
			The TAGS package can remember all the labels
			or functions in a multi-file program
			and find any one of them quickly.
}@Comment{INFO}

@Node(Name="Compile", Prev="Programs", Up="Programs", Next="Indenting")

@Section[Compiling Your Program]

@index{Compile}@index{Major modes}
  The command M-X Compile<cr> is used to compile the visited file.  It
knows how to compile it based on the major mode; for example, in TECO
mode, it invokes the generator for EMACS libraries.  Usually it
assumes that the major mode name is the name of the compiler or
assembler to use.

The first thing M-X Compile does is offer to save each buffer.  This
is because it is likely that other buffers contain parts of the same
program you are about to compile.

Then M-X Compile invokes the appropriate compiler and passes it the
name of the visited file as the source file.  If you give a string
argument to M-X Compile, that is passed to the compiler also.  This
can be used to specify switches or the name of an output file.

@index{Compiler Filename}@index{Compiler Switches}
  The major mode or the file's local modes list can specify a
different compiler by setting the variable Compiler Filename locally.
They can specify switches to be used by setting the variable Compiler
Switches (the default is to use no switches except those specified by
the user in the string argument to M-X Compile).  @Twenex{If Compiler
Filename is set to a positive number, the EXECUTE command is used in
an inferior EXEC to compile the program.}

@ITS{After compilation, you must type P to resume EMACS.}
When EMACS starts up again, it executes the value of the variable
After Compilation Hook, if that is nonzero.  This can be used for such
tasks as reading the compiler's file of error messages into EMACS.

@Index{Compile Command}@Index{TECO}
  The major mode or the file's local modes list can completely
override the normal processing of M-X Compile by giving a nonzero
local value to the variable Compile Command.  This should be a TECO
expression which takes complete responsibility for the compilation.
It can find the filename to use in q-register 1.  It @xxii[must] use
@CTL[\] to exit.  All the other hooks described above are ignored.
This is often used when several input files must be compiled together
in order to compile any of them.  See the file @ITS{@w[AI:EMACS1;CCL >]}
@Twenex{EMACS:CCL.EMACS} for an example of doing this for an EMACS
library.

@Twenex{
@index{Rerun CCL}@index{EXEC}
  You can also use EXEC to compile the program.  If EMACS's superior
fork is EXEC, then M-X Rerun CCL returns to EXEC and re-executes the
most recent Compile-class command.  @Note(Node="Exiting").}

@Node(Name="Indenting", Prev="Compile", Up="Programs", Next="Matching")

@Section[Indentation Commands for Code]

@WideCommands[
Tab@\Indents current line.

Linefeed@\Equivalent to Return followed by Tab.

M-^@\Joins two lines, leaving one space between if appropriate.

M-\@\Deletes all spaces and tabs around point.

M-M@\Moves to the first nonblank character on the line.
]

@index{Tab}@index{indentation}@index{Lisp}@index{MIDAS}@index{TECO}
  Most programming languages have some indentation convention.  For
Lisp code, lines are indented according to their nesting in
parentheses.  For assembler code, almost all lines start with a single
tab, but some have one or more spaces as well.  Indenting TECO code is
an art rather than a science, but it is often useful to indent a line
under the previous one.

  Whatever the language, to indent a line, use the Tab command.  Each
major mode defines this command to perform the sort of indentation
appropriate for the particular language.  In Lisp mode, Tab aligns the
line according to its depth in parentheses.  No matter where in the
line you are when you type Tab, it aligns the line as a whole.  In
MIDAS mode, Tab inserts a tab, that being the standard indentation for
assembly code.  In TECO mode, Tab realigns the current line to match a
previous line.  PL1 mode (@INFONote(Name="PL1", File="EPL1")@.)  knows
in great detail about the keywords of the language so as to indent
lines according to the nesting structure.

@index{Linefeed}@index{^R Indent New Line}
  The command Linefeed (@w[^R Indent] New Line) does a Return and then
does a Tab on the next line.  Thus, Linefeed at the end of the line
makes a following blank line and supplies it with the usual amount of
indentation.  Linefeed in the middle of a line breaks the line and
supplies the usual indentation in front of the new line.

@index{M-^}@index{C-M-^}@index{^R Delete Indentation}@index{M-\}@index{^R Delete Horizontal Space}
  The inverse of Linefeed is Meta-^ or C-M-^ (@w[^R Delete] Indentation).
This command deletes the indentation at the front of the current line,
and the line separator as well.  They are replaced by a single space,
or by no space if before a ")" or after a "(", or at the beginning of
a line.  To delete just the indentation of a line, go to the beginning
of the line and use Meta-\ (@w[^R Delete] Horizontal Space), which deletes
all spaces and tabs around the cursor.

@index{C-A}@index{C-O}@index{C-E}@index{M-M}@index{C-M-M}
  To insert an indented line before the current one, do C-A, C-O, and
then Tab.
  To make an indented line after the current one, use C-E Linefeed. 

  To move over the indentation on a line, use Meta-M or C-M-M
(@w[^R Back] to Indentation).  These commands move the cursor forward
or back to the first nonblank character on the line.

@Node(Name="Matching", Prev="Indenting", Up="Programs", Next="Comments")

@Section[Automatic Display Of Matching Parentheses]
@index{matching}@index{parentheses}

  The EMACS parenthesis-matching feature is designed to show
automatically how parentheses balance in text as it is typed in.  When
this feature is enabled, after a close parenthesis or other close
bracket character is inserted the cursor automatically moves for an
instant to the open which balances the newly inserted character.  The
cursor stays at the open parenthesis for a second before returning
home, unless you type another command before the second is up.

  It is worth emphasizing that the location of point, the place where
your type-in will be inserted, is not affected by the parenthesis
matching feature.  It stays after the close parenthesis, where it
ought to be.  Only the cursor on the screen moves away and back.  You
can type ahead freely as if the parenthesis display feature did not
exist.  In fact, if you type fast enough, you won't see the cursor
move.  You must pause after typing a close parenthesis to let the
cursor move to the open parenthesis.

@index{Display Matching Paren}@index{Permit Unmatched Paren}
  The variable Display Matching Paren controls parenthesis display.
If it is zero, the feature is disabled.  If the variable is nonzero,
then its absolute value is the number of seconds for the cursor to
stay at the open parenthesis before coming back to its real location.
The sign of the variable is also significant: if it is negative, then
the open parenthesis is shown only if it is already on the screen.
If the variable is positive, then EMACS will actually shift text on
the screen to show the open parenthesis.  The default
setting of the variable is -1.

  An additional parameter is whether EMACS should warn you by ringing
the bell if you type an unmatched close parenthesis.  The default is
to warn you if you are editing a language in which parentheses are
paramount, such as Lisp, but not to do so for languages in which
parentheses are not so crucial.  This is controlled by the variable
Permit Unmatched Paren.  When it is 1, you are never warned (they are
always "permitted").  When it is 0, you are warned, regardless of
major mode.  When it is -1, you are warned only in Lisp mode and
similar modes (this is the default).  Note that these modes
distinguish themselves by setting the variable locally to 0 if it was
-1.  Unmatched parens are @XXI[always] "permitted" in that EMACS will
never refuse to insert them.

@index{Text mode}@index{Text Mode Hook}@index{syntax table}@index{TECO}
  While this feature was intended primarily for Lisp, it can be used
just as well for any other language, and it is not dependent on what
major mode you are in.  It is expected that you wouldn't want
it in Text mode, so Text mode sets the variable Display Matching Paren
locally to zero.  If you do want the feature in Text mode, you can
create a Text Mode Hook variable which sets the variable back to -1.
@InfoNote(Name="Hooks", File="CONV", Node="Hooks"), for more info on Text Mode Hook.
The way to control which characters trigger this feature is with the
syntax table.  Any character whose Lisp syntax is ")" causes the
matching character with syntax "(" to be shown.  Most major modes
automatically set up the syntax table (@Note(Node="Syntax").).

  The syntax table also controls what is done with the case of
"mismatched" parens, as in @W{"[ )"}.  The third slot in a close
parenthesis character's syntax table entry should be the proper
matching open parenthesis character, if you want this feature turned
on.  If that slot contains a space instead, then any open parenthesis
character is considered a legitimate match.  If a close parenthesis is
mismatched, it is inserted as always, but it rings the bell.

@index{FS Flags}
  The implementation of this feature uses the TECO flag FS @w[^R PAREN].
@Note(Node="FS Flags").

@Node(Name="Comments", Prev="Matching", Up="Programs", Next="Lisp")

@Section[Manipulating Comments]
@index{comments}@index{C-;}@index{M-;}@index{indentation}@index{^R Indent for Comment}

  The comment commands insert, kill and align comments.  There are
also commands for moving through existing code and inserting comments.

@WideCommands[

M-;@\Insert or align comment.

C-;@\The same.

C-M-;@\Kill comment.

Return@\Move past comment terminator and onto new line.

C-X ;@\Set comment column.

M-N@\Move to Next line and insert comment.

M-P@\Move to Previous line and insert comment.

M-J@\Continue a comment on a new line.

M-Linefeed@\The same.
]

  The command that creates a comment is Meta-; or Control-;
(@w[^R Indent] for Comment).  If there is no comment already on the
line, a new comment is created, aligned at a specific column called
the @dfn[comment column].  The comment is created by inserting
whatever string EMACS thinks should start comments in the current
major mode.  Point is left after the comment-starting string.  If the
text of the line goes past the comment column, then the indentation is
done to a suitable boundary (usually, a multiple of 8).

  Meta-; can also be used to align an existing comment.  If a line
already contains the string that starts comments, then M-; just moves
point after it and re-indents it to the right column.  Exception:
comments starting in column 0 are not moved.

  Even when an existing comment is properly aligned, M-; is still
useful for moving directly to the start of the comment.

  Some languages require an explicit comment terminator, which is not
simply the end of the line.  Although the language may then allow
comments in the middle of the line, the EMACS comment commands assume
that a comment is the last thing on the line.  When there is a comment
terminator, M-; inserts the terminator as well as the starter, and
leaves point between them, so that you are ready to insert the text of
the comment.  When you are done, the Return command given immediately
before the comment terminator acts as if it were at the end of the
line already: it moves down to or creates a following blank line.  It
does not break the existing line before the comment terminator as you
would expect.

@index{C-M-;}@index{^R Kill Comment}
  C-M-; (@w[^R Kill] Comment) kills the comment on the current line, if
there is one.  The indentation before the start of the comment is
killed as well.  If there does not appear to be a comment in the line,
nothing is done.  To reinsert the comment on another line, move to
the end of that line, do C-Y, and then do M-; to realign it.

@SubSection[Multiple Lines of Comments]

@index{numeric arguments}
  If you wish to align a large number of comments, you can give
Meta-; an argument and it indents what comments exist on
that many lines, creating none.  Point is left after the last
line processed (unlike the no-argument case).

@index{M-N}@index{M-P}@index{^R Down Comment Line}@index{^R Up Comment Line}
  When adding comments to a long stretch of existing code, the
commands M-N (@w[^R Down] Comment Line) and M-P (@w[^R Up] Comment Line) may
be useful.  They are like C-N and C-P except that they do a C-;
automatically on each line as you move to it, and delete any empty
comment from the line as you leave it.  Thus, you can use M-N to move
down through the code, putting text into the comments when you want
to, and allowing the comments that you don't fill in to be removed
because they remained empty.

@index{M-J}@index{M-Linefeed}@index{blank lines}@index{Auto Fill mode}
@index{^R Indent New Comment Line}
  If you are typing a comment and find that you wish to continue it on
another line, you can use the command Meta-J or Meta-Linefeed
(@w[^R Indent] New Comment Line), which terminates the comment you are typing,
creates or gobbles a new blank line, and begins a new comment indented
under the old one.  When Auto Fill mode is on, going past the fill
column while typing a comment causes the comment to be continued in
just this fashion.  Note that if the next line is not blank, a blank
line is created, and the continuation goes on that line.  By
comparison, M-N would create a continuation comment on the next
existing line of code.

@SubSection[Double and Triple Semicolons in Lisp]

  In Lisp code there are conventions for comments which start with
more than one semicolon.  Comments which start with two semicolons are
indented as if they were lines of code, instead of at the comment
column.  Comments which start with three semicolons are supposed to
start at the left margin.  EMACS understands these conventions by
indenting a double-semicolon comment using Tab, and by not changing
the indentation of a triple-semicolon comment at all.  (Actually, this
rule applies whenever the comment starter is a single character and is
duplicated).  Note that the @Twenex{ATSIGN}@ITS{:@@} program considers
a four-semicolon comment a subtitle in Lisp code.

@SubSection[Options Controlling Comments]

@index{Comment Column}@index{C-X ;}@index{^R Set Comment Column}
  The comment column is stored in the variable Comment Column.  You
can set it to a number explicitly.  Alternatively, the command @w[C-X ;]
(@w[^R Set] Comment Column) sets the comment column to the column point is
at.  C-U @w[C-X ;] sets the comment column to match the last comment before
point in the buffer, and then does a Meta-; to align the current
line's comment under the previous one.

@index{major modes}
  Many major modes supply default local values for the comment column.
In addition, @w[C-X ;] automatically makes the variable Comment Column
local.  Otherwise, if you change the variable itself, it changes
globally (for all buffers) unless it has been made local in the
selected one.  @Note(Node="Locals").

@index{Comment Start}@index{Comment Begin}
  The string recognized as the start of a comment is stored in the
variable Comment Start, while the string used to start a new
comment is kept in Comment Begin (if that is zero, Comment Start is
used for new comments).  This makes it possible for you to have any
";" recognized as starting a comment but have new comments begin with
@w[";; ** "].

@index{Comment End}
  The string used to end a comment is kept in the variable Comment
End.  In many languages no comment end is needed as the comment
extends to the end of the line.  Then, this variable is a null string.

  If Comment Multi Line is nonzero, then Meta-Linefeed within a
comment does not close the old comment and start a new comment on the
new line.  Instead it allows the original comment to extend through
the new line.  This is legitimate if the language has explicit comment
terminators.  Then it's a matter of taste.

@Node(Name="Lisp", Prev="Comments", Up="Programs", Next="Lists")

@Section[Lisp Mode and Muddle Mode]

  Lisp's simple syntax makes it much easier for an editor to
understand; as a result, EMACS can do more for Lisp, and with less
work, than for any other language.

@index{^R Indent for Lisp}@index{Tab}@index{Lisp mode}
  Lisp programs should be edited in Lisp mode.  In this mode, Tab is
defined to indent the current line according to the conventions of
Lisp programming style.  It does not matter where in the line Tab is
used; the effect on the line is the same.  The function which does the
work is called @w[^R Indent] for Lisp.  Linefeed, as usual, does a Return
and a Tab, so it moves to the next line and indents it.

@index{Rubout}@index{C-Rubout}@index{^R Backward Delete Character}
@index{^R Backward Delete Hacking Tabs}
  As in most modes where indentation is likely to vary from line to
line, Rubout is redefined to treat a tab as if it were the equivalent
number of space (@w[^R Backward] Delete Hacking Tabs).  This makes it
possible to rub out indentation one position at a time without
worrying whether it is made up of spaces or tabs.  Control-Rubout does
the ordinary type of rubbing out which rubs out a whole tab at once.

@index{Paragraphs}@index{syntax table}@index{comments}@index{Auto Fill}@index{blank lines}
  Paragraphs are defined to start only with blank lines so that the
paragraph commands can be useful.  Auto Fill indents the new lines
which it creates.  Comments start with ";".  If Atom Word mode is in
effect, them in Lisp mode the word-motion commands regard each Lisp
atom as one word.

@TWENEX{
@Index{Interlisp Mode}
  Lisp mode is exactly right only for the MacLisp dialect of Lisp.
For Interlisp, there is Interlisp mode, which is only slightly
different.  Mainly, it has a different syntax table which enables all
the Lisp commands to work as documented on Interlisp code.  The only
noteworthy difference is that comments begin with "(*" and end with
")".}

@Index{LEDIT}@Index{INTER}
  The LEDIT library allows EMACS and Lisp to communicate, telling Lisp
the new definitions of functions which you edit in EMACS.
@INFONote(Name="LEDIT", File="LEDIT").  @Twenex{For Interlisp, use the
INTER library.  @INFONote(Name="INTER", File="INTER").}

@index{Muddle mode}
  The language Muddle is a variant form of Lisp which shares the
concept of using parentheses (of various sorts) as the main
syntactical construct.  It can be edited using Muddle mode, which is
almost the same as Lisp mode and provides the same features,
differing only in the syntax table used.

@Node(Name="Lists", Prev="Lisp", Up="Programs", Next="Defuns")

@SubSection[Moving Over and Killing Lists and S-expressions]
@index{Lists}@index{s-expressions}

@DoubleWideCommands[

C-M-F@\Move Forward over s-expression.

C-M-B@\Move Backward.

C-M-K@\Kill s-expression forward.

C-M-Rubout@\Kill s-expression backward.

C-M-U@\Move Up and backward in list structure.

C-M-(@\The same.

C-M-)@\Move up and forward in list structure.

C-M-D@\Move Down and forward in list structure.

C-M-N@\Move forward over a list.

C-M-P@\Move backward over a list.

C-M-T@\Transpose s-expressions.

C-M-@@@\Put mark after s-expression.

M-(@\Put parentheses around next s-expression(s).

M-)@\Move past next close parenthesis and re-indent.
]

@index{Control-Meta}
  By convention, EMACS commands that deal with balanced parentheses
are usually Control-Meta- characters.  They tend to be analogous in
function to their Control- and Meta- equivalents.  These commands are
usually thought of as pertaining to Lisp, but can be useful with any
language in which some sort of parentheses exist (including English).

@index{motion}@index{C-M-F}@index{C-M-B}@index{^R Forward Sexp}@index{^R Backward Sexp}
  To move forward over an s-expression, use C-M-F (@w[^R Forward] Sexp).
If the first significant character after point is an "(", C-M-F
moves past the matching ")".  If the first character is a ")", C-M-F
just moves past it.  If the character begins an atom, C-M-F moves to
the end of the atom.  C-M-F with an argument
repeats that operation the specified number of times; with a negative
argument, it moves backward instead.

  The command C-M-B (@w[^R Backward] Sexp) moves backward over an
s-expression;  it is like C-M-F with the argument negated.  If there
are "'"-like characters in front of the s-expression moved over, they
are moved over as well.  Thus, with point after @w[" 'FOO "], C-M-B
leaves point before the "'", not before the "F".

@index{comments}
  These two commands (and most of the commands in this section) do not
know how to deal with the presence of comments. 
Although that would be easy to fix for forward motion, for backward
motion the syntax of Lisp makes it nearly impossible.  Comments by
themselves can be dealt with, but handling both comments and strings
is impossible with local backward parsing.  In a line
@;@example[((FOO ; " BAR]
are the open parentheses inside a string?  So C-M-B cannot handle
comments, and C-M-F does not either for simplicity's sake. 

@index{C-M-N}@index{C-M-P}@index{^R Forward List}@index{^R Backward List}
  For this reason, two other commands which move over lists instead of
s-expressions are often useful.  They are C-M-N (@w[^R Forward] List) and
C-M-P (@w[^R Backward] List).  They act like C-M-F and C-M-B except
that they don't stop on atoms; after moving over an atom, they move
over the next expression, stopping after moving over a list.  With
this command, you can avoid stopping after all of the words in a
comment. 

@index{killing}@index{C-M-Rubout}@index{C-M-K}@index{^R Backward Kill Sexp}@index{^R Kill Sexp}
  Killing an s-expression at a time can be done with C-M-K and
C-M-Rubout (@w[^R Forward] Kill Sexp and @w[^R Backward] Kill Sexp).  C-M-K
kills the characters that C-M-F would move over, and C-M-Rubout kills
what C-M-B would move over. 

@index{C-M-U}@index{C-M-(}@index{C-M-)}@index{C-M-D}@index{^R Backward Up List}
@index{^R Forward Up List}@index{^R Down List}
  C-M-F and C-M-B stay at the same level in parentheses, when that's
possible.  To move @xxii[up] one (or n) levels, use C-M-( or C-M-)
(@w[^R Backward] Up List and @w[^R Forward] Up List).  C-M-( moves backward
up past one containing "(".  C-M-) moves forward up past one
containing ")".  Given a positive argument, these commands move up the
specified number of levels of parentheses.  C-M-U is another name for
C-M-(, which is easier to type, especially on non-Meta keyboards.  If
you use that name, it is useful to know that a negative argument makes
the command move up forwards, like C-M-). 

  To move @xxii[down] in list structure, use C-M-D (@w[^R Down] List).  It is
nearly the same as searching for a "(". 

@index{transposition}@index{C-M-T}@index{^R Transpose Sexps}
  A somewhat random-sounding command which is nevertheless easy to use
is C-M-T (@w[^R Transpose] Sexps), which drags the previous
s-expression across the next one.  An argument
serves as a repeat count, and a negative argument drags backwards
(thus canceling out the effect of C-M-T with a positive argument).  An argument
of zero, rather than doing nothing, transposes the s-expressions at the
point and the mark. 

@index{mark}@index{C-M-@@}@index{^R Mark Sexp}
  To make the region be the next s-expression in the buffer, use or
C-M-@@ (@w[^R Mark] Sexp) which sets mark at the same place that C-M-F
would move to.  C-M-@@ takes arguments like C-M-F.  In particular, a
negative argument is useful for putting the mark at the beginning of
the previous s-expression. 

@Index{M-(}@Index{M-)}@index{^R Insert ()}@index{^R Move Over )}
  The commands M-(@ (@w["^R Insert ()"]) and M-)@ ("@w[^R Move] @w[Over )]") are
designed for a style of editing which keeps parentheses balanced at
all times.  M-( inserts a pair of parentheses, either together as in
"()", or, if given an argument, around the next several s-expressions,
and leaves point after the open parenthesis.  Instead of typing
"(FOO)", you can type M-( FOO, which has the same effect except for
leaving the cursor before the close parenthesis.  Then you type M-),
which moves past the close parenthesis, deleting any indentation
preceding it (in this example there is none), and indenting with
Linefeed after it. 

@index{Find Pat}@index{^R Extract Sublist}@index{LSPUTL}
  The library LSPUTL contains two other list commands.  Find Pat
searches for lists which contain several strings.  ^R Extract Sublist
replaces a list with one of its sublists.  @Note(Node="Libraries"). 

  <level>M-X Find Pat<mainstring><string1><string2> searches for a
list which contains <mainstring> at a depth of <level> lists down, and
contains <string1> and <string2> at any level.  There can be any
number of such additional strings to search for; there can be none of them. 

  ^R Extract Sublist is meant to be connected to a character.  Given
an argument of <level>, it replaces the list <level> levels up from
point with its sublist which starts after point. 

@index{XLISP}@index{Lowercase Lisp Buffer}@index{Uppercase Lisp Buffer}
@index{Lowercase Lisp Region}@index{Uppercase Lisp Region}
  The library XLISP contains a functions for making various
transformations on Lisp code:

  Lowercase Lisp Buffer changes all the Lisp code in the buffer to
lower case, without changing comments, strings, or slashified
characters.  Uppercase Lisp Buffer performs the inverse
transformation.  Lowercase Lisp Region and Uppercase Lisp Region are
similar but act only between point and mark.

  Change / to \ takes Lisp code written with "/" as the
character-quote character and transforms it to use the new
character-quote character, "\".  The meaning of the transformed code
in the new syntax is the same as that of the old code in the old
syntax.

  XLISP contains several other commands which transform old constructs
into new ones.  They behave like Query Replace in that they display
each occurrence of the old construct and ask you whether to change it
to the new one.  A Space means yes, a Rubout means no.  Here is a list
of these commands, and what each one transforms.

@Grosscommands{
Modernize FUNCTION References@\(FUNCTION ...) into #'...

Modernize QUOTE References@\(QUOTE ...) into '...

Modernize LAMBDA References@\'(LAMBDA ...) into #'(LAMBDA ...)

Modernize MAP References@\(MAPxxx '... ...) into (MAPxxx #'... ...)

Modernize NIL Occurrences@\NIL into ()

Modernize LAMBDA Combinations@\((LAMBDA (X) Y) ARG) into (LET ((X ARG)) Y)

Modernize Strings@\'|...| into "..."
}

facility for replacing obsolete or
old-fashioned Maclisp constructs with equivalent modern ones.

@index{syntax table}
  The list commands' understanding of syntax is completely controlled
by the syntax table.  Any character can, for example, be declared to
act like an open parenthesis.  @Note(Node="Syntax").

@Node(Name="Defuns", Prev="Lists", Up="Programs", Next="Grinding")

@SubSection[Commands for Manipulating Defuns]
@index{Defuns}

@DoubleWideCommands(

C-M-[, C-M-A@\Move to beginning of defun.

C-M-], C-M-E@\Move to end of defun.

C-M-H@\Put region around wHole defun.
)

@index{C-M-A}@index{C-M-E}@index{C-M-H}@index{mark}@index{Region}@index{motion}@index{C-M-[}@index{C-M-]}
@index{^R Beginning of Defun}@index{^R End of Defun}@index{^R Mark Defun}
  In EMACS, an expression at the top level in the buffer is called a
@dfn[defun], regardless of what function is actually called by the
expression, because such expressions usually call defun.

  In the remotest past, EMACS found defuns by moving upward a level of
parentheses until there were no more levels to go up.  This required
scanning all the way back to the beginning of the file.  To speed up
the operation, EMACS now assumes that any "(" (or any character with
"(" as its Lisp syntax) in column 0 is the start of a defun.
This heuristic is nearly always right and avoids the costly scan.

  The commands to move to the beginning and end of the current defun
are C-M-[ (@w[^R Beginning] of Defun) and C-M-] (@w[^R End] of Defun).
Alternate names for these two commands are C-M-A for C-M-[ and C-M-E
for C-M-].  The alternate names are easier to type on many non-Meta
keyboards.

  If you wish to operate on the current defun, use C-M-H (@w[^R Mark]
Defun) which puts point at the beginning and mark at the end of the
current or next defun.

@Node(Name="Grinding", Prev="Defuns", Up="Programs", Next="MIDAS")

@Section[Lisp Grinding]
@index{indentation}@index{formatting}@index{grinding}@index{Tab}@index{C-M-Tab}

  The best way to keep Lisp code properly indented ("ground") is to
use EMACS to re-indent it when it is changed.  EMACS has commands to
indent properly either a single line, a specified number of lines, or
all of the lines inside a single s-expression.

@WideCommands[

Tab@\In Lisp mode, re-indents line according to parenthesis depth.

Linefeed@\Equivalent to Return followed by Tab.

M-^@\Join two lines, leaving one space between them if appropriate.

C-M-Q@\Re-indent all the lines within one list.

C-M-G@\Grind a list, moving code between lines.
]

@index{^R Indent for Lisp}@index{C-M-Tab}
  The basic indentation function is @w[^R Indent] for Lisp, which gives
the current line the correct indentation as determined from the
previous lines' indentation and parenthesis structure.  This function
is normally found on C-M-Tab, but when in Lisp mode it is placed on
Tab as well (Use Meta-Tab or C-Q Tab to insert a tab).  If executed at the
beginning of a line, it leaves point after the indentation; when given
inside the text on the line, it leaves point fixed with respect to the
characters around it.

@index{Linefeed}@index{^R Indent New Line}
  When entering a large amount of new code, use
Linefeed (@w[^R Indent] New Line), which is equivalent to a Return followed by a
Tab.  In Lisp mode, a Linefeed creates or moves down onto a blank
line, and then gives it the appropriate indentation.

@index{C-M-^}@index{M-^}@index{^R Delete Indentation}
  To join two lines together, use the Meta-^ or Control-Meta-^ command
(@w[^R Delete] Indentation), which is approximately the opposite of
Linefeed.  It deletes any spaces and tabs at the front of the current
line, and then deletes the line separator before the line.  A single
space is then inserted, if EMACS thinks that one is needed there.
Spaces are not needed before a close parenthesis, or after an open parenthesis.

  If you are dissatisfied about where Tab indents the second
and later lines of an s-expression, you can override it.  If you alter
the indentation of one of the lines yourself, then Tab will indent
successive lines of the same list to be underneath it.  This is the
right thing for functions which Tab indents unaesthetically.

@index{numeric arguments}
  When you wish to re-indent code which has been altered or moved to a
different level in the list structure, you have several commands
available.  You can re-indent a specific number of lines by giving the
ordinary indent command (Tab, in Lisp mode) an argument.  This
indents as many lines as you say and moves to the line following them. 
Thus, if you underestimate, you can repeat the process later.

@index{C-M-Q}@index{^R Indent Sexp}
  You can re-indent the contents of a single s-expression by
positioning point before the beginning of it and typing Control-Meta-Q
(@w[^R Indent] Sexp).  The line the s-expression starts on is not
re-indented;  thus, only the relative indentation with in the
s-expression, and not its position, is changed.  To correct the
position as well, type a Tab before the C-M-Q.

@index{C-M-\}@index{Region}@index{^R Indent Region}
  Another way to specify the range to be re-indented is with point and
mark.  The command C-M-\ (@w[^R Indent] Region) applies Tab to every line
whose first character is between point and mark.  In Lisp mode, this
does a Lisp indent.

@index{C-M-G}@index{Macsyma}@index{^R Format Code}
  A more powerful grind command which can move text between lines is
C-M-G (@w[^R Format] Code).  You might or might not like it.  It knows in
different ways about Lisp code and Macsyma code.

@Subsection[Customizing Lisp Indentation]
@index{Customization}

  The indentation pattern for a Lisp expression can depend on the
function called by the expression.  For each Lisp function, you can
choose among several predefined patterns of indentation, or define an
arbitrary one with a TECO program.

  The standard pattern of indentation is as follows: the second line
of the expression is indented under the first argument, if that is on
the same line as the beginning of the expression; otherwise, the
second line is indented one space more than the entire expression.
Each following line is indented under the previous line whose nesting
depth is the same.

@Index{Lisp Indent DEFAnything}@index{Lisp Special Indent Offset}
  Another indentation pattern is used for functions whose names start
with "def".  The second line of the expression is
indented two spaces more than the entire expression.  The variable
Lisp Special Indent Offset (default 2) controls the increment in
depth.  Each following line indents under the previous one.  Again,
lines starting at lower depths do not count.  Setting the variable
Lisp Indent DEFAnything to zero turns this feature off.  Then the
standard pattern applies to def- functions by default.

@index{Lisp FOO Indent}@index{Lisp PROG Indent}
  The indentation pattern for expressions that call the function FOO
is controlled specifically by the variable Lisp FOO Indent.  If this
variable does not exist, the standard pattern or the def- pattern is
used.  If the variable does exist, its value should be one of these:

@begin(Description,LeftMargin 16,Indent -12,spread .3)
-3@\selects the standard or def- indentation pattern, as if the
variable did not exist.

-2@\selects the standard indentation pattern.  The def- pattern is not
used, even if the function name starts with "def".

-1@\selects the def- indentation pattern, independent of the function
name and the setting of Lisp Indent DEFAnything.

0 or more@\selects special form with body indentation.  The value of
the variable is the number of special arguments that precede the body;
thus, LET and LAMBDA have one distinguished argument before the body
(the list of bound variables), PROGN has none, and DO has two.  The
distinguished expressions at the beginning are indented using the
standard pattern, but the first expression of the body, if it should
occur at the beginning of a line, is indented two spaces deeper than
the entire expression.  Following lines indent each under the previous
one as usual.  The variable Lisp Special Indent Offset (default 2)
controls the increment in depth.

a string@\should be a TECO expression which implements an indentation
pattern.  Initially, Lisp PROG Indent is defined as a string (the
definition of & Standard Lisp PROG Indent) which detects tags and
indents them specially.
@end(Description)

@index{Lisp Indent Offset}
The variable Lisp Indent Offset, if nonzero, selects a different
indentation pattern as the standard one.  It indents the second line
of each expression that many spaces deeper than the enclosing
expression.

@index{Lisp Indentation Hook}
Implementing and selecting among the above indentation patterns is the
responsibility of the definition of the variable Lisp Indentation Hook.
This variable must exist and its value must be a TECO program.  By
default its value is the definition of & Standard Lisp Indentation
Hook.

@index{TECO}
Whatever its value, the hook is called with two arguments, which are
the position in the buffer of the most recent unclosed "(" and
the buffer position of the beginning of the line to be indented.
The buffer position of the cursor at the time the tab was typed
is stored as an offset from Z in qZ, so Z-qZ is that buffer position.
The hook should @xxi[not] modify the buffer.  If it returns 0 or no value,
the caller will use the horizontal cursor position of point
as the column to indent to.  Hence, to indent
under the "O" in PROG, it is sufficient to jump to that character in
the buffer and return.  Alternatively, the hook can simply return the
desired indentation column number as a value.

The hook should return a nonzero precomma value if following lines of
the same expression should be indented individually.  If it does not
return a nonzero precomma value, the caller may remember the
indentation of this line and indent following lines the same way.

If Lisp FOO Indent has a TECO expression as its value, the same
interface conventions apply to it.

@index{Lisp Indent Language}
Different Lisp-like languages can select an entirely different set of
indentation patterns by changing the value of the variable Lisp Indent
Language.  Normally the value of this variable is the string "Lisp".
All the variables listed above with names beginning with "Lisp"
actually should have names beginning with the Lisp Indent Language.
Thus, if Lisp Indent Language is changed to "Muddle", then the
indentation commands will look for variables Muddle Indent Offset,
Muddle Indentation Hook, Muddle PROG Indent, etc.

@Node(Name="MIDAS", Prev="Grinding", Up="Programs", Next="Other Langs")

@Section[Editing Assembly-Language Programs]
@index{MIDAS}@index{Macro-10}@index{FAIL}@index{MIDAS mode}

  MIDAS mode is designed for editing programs written in the MIDAS
assembler.  Major modes for other assemblers, such as PALX,
@Twenex{MACRO, and FAIL,} also exist but differ only in the syntax
table and in the name of the major mode hook that they will invoke.
(There is also IBM370 mode, for 370 assembler, which is completely
different.  Refer to the self-documentation of the IBM370 library for
information on it).

In MIDAS mode, comments start with ";", and "<" and ">" have the
syntax of parentheses.  In addition, there are five special commands
which understand the syntax of instructions and labels.  These
commands are:

@index{C-M-N}@index{C-M-P}@index{C-M-A}@index{C-M-E}@index{C-M-D}@index{M-]}@index{M-[}
@index{^R Go to Next Label}@index{^R Go to Previous Label}
@index{^R Go to AC Field}@index{^R Go to Address Field}
@index{^R Kill Terminated Word}@index{^R Forward Paragraph}@index{^R Backward Paragraph}
@index{labels}@index{accumulator}@index{address}@index{paragraphs}
@WideCommands{

C-M-N@\Go to Next label.

C-M-P@\Go to Previous label.

C-M-A@\Go to Accumulator field of instruction.

C-M-E@\Go to Effective Address field.

C-M-D@\Kill next word and its Delimiting character.
}

Two other commands with slightly different uses are

@WideCommands{
M-[@\Move up to previous blank line.

M-]@\Move down to next blank line.
}

@index{comments}
  Any line which is not indented and is not just a comment is taken to
contain a label.  The label is everything up to the first whitespace
(or the end of the line).  C-M-N (@w[^R Go] to Next Label) and C-M-P
(@w[^R Go] to Previous Label) both position the cursor right at the end of a
label; C-M-N moves forward or down and C-M-P moves backward or up.  At
the beginning of a line containing a label, C-M-N moves past it.  Past
the label on the same line, C-M-P moves back to the end of it.  If you
kill a couple of indented lines and want to insert them right after a
label, these commands put you at just the right place.

  C-M-A (@w[^R Go] to AC Field) and C-M-E (@w[^R Go] to Address Field) move to
the beginning of the accumulator (AC) or effective address fields of a
PDP-10 instruction.  They always stay on the same line, moving
either forward or backward as appropriate.  If the instruction
contains no AC field, C-M-A positions to the start of the address
field.  If the instruction is just an opcode with no AC field or
address field, a space is inserted after the opcode and the
cursor left after the space.  In PDP-11 programs, C-M-A moves to the
first operand and C-M-E moves to the second operand.

  Once you've gone to the beginning of the AC field you can often use
C-M-D (@w[^R Kill] Terminated Word) to kill the AC name and the comma
which terminates it.  You can also use it at the beginning of a line,
to kill a label and its colon, or after a line's indentation to kill
the opcode and the following space.  This is very convenient for
moving a label from one line to another.  In general, C-M-D is
equivalent to M-D C-D, except that all the characters are saved on the
kill ring, together.  C-D, a "deletion" command, doesn't save on the
kill ring if not given an argument.

@index{Paragraph Delimiter}
  The M-[ and M-] commands are not, strictly speaking, redefined by
MIDAS mode.  They go up or down to a paragraph boundary, as usual.
However, in MIDAS mode the criterion for a paragraph boundary is
changed by setting the variable Paragraph Delimiter
(@Note(Name="Paragraphs", Node="Sentences")@.) so that only blank
lines (and pages) delimit paragraphs.  So, M-[ moves up to the
previous blank line and M-] moves to the next one.

@Node(Name="Other Langs", Prev="MIDAS", Up="Programs")

@Section[Major Modes for Other Languages]

@index{C-M-G}@index{Macsyma mode}
  MACSYMA mode redefines the syntax of words and s-expressions in an
attempt to make it easier to move over MACSYMA syntactic units.  In
addition, the C-M-G "grind" command is told to grind text as MACSYMA
instead of as Lisp.  Also, the syntax of MACSYMA comments is
understood.

@index{M-'}@index{M-"}@index{TECO mode}@index{^R Indent Nested}@index{PURIFY library}
@index{^R Forward TECO Conditional}@index{^R Backward TECO Conditional}
@index{FS Flags}
  TECO mode is good for editing EMACS library source files.  It connects
Tab to @w[^R Indent] Nested (see its self-documentation).  Comments start
with @W["!* "] and end with "!".  In addition, the PURIFY library, which
contains many things useful for processing library sources (including
the commands to compile them), is loaded.  M-' and M-" are connected to
functions @w[^R Forward] TECO Conditional and @w[^R Backward] TECO Conditional
which move forward and backward over balanced TECO conditionals.
In TECO mode on a terminal with a Meta key, it may be useful to set
the TECO flag FS CTLMTA which causes Control-Meta commands to
insert Control characters.  @Note(Node="FS Flags").

  CLU mode is for editing CLU code.  It is similar to LISP mode,
but it treats the statement nesting tokens like the appropriate
sorts of parentheses.  It is in the library called
CLU.  @InfoNote(Name="CLU", File="ECLU").

  PL1 mode is for editing PL1 code, and causes Tab to indent an
amount based on the previous statement type.  The body of the
implementation of PL1 mode is in the library PL1, which is loaded
automatically when necessary.  @InfoNote(Name="PL1", File="EPL1").

  PASCAL mode is similar to PL1 mode, for PASCAL.  It is in the
library called PASCAL.  @InfoNote(Name="PASCAL", File="EPASC").

  FORTRAN mode is implemented by the FORTRAN library.
@INFONote(Name="FORTRAN", File="EFORTRAN").

  There are major modes for many other languages, but documentation
for them except that in the libraries themselves.  Any volunteers to
write some?  Meanwhile, you can look at the documentation in the
libraries.  @Note(Node="Libraries").

@Manual{@Include(tags.mss)@String(Filename="EMACS")}

@Manual{
@label[EMACSCustomization]
@Chapter[Simple Customization]

  In this chapter we describe the many simple ways of customizing
EMACS without knowing how to write TECO programs.

  One form of customization, reconnection of commands to functions,
was discussed above in the explanation of how M-X commands work.
@Note(Node="reconnecting", Name="Reconnecting Commands").}

@Node(Name="MinorModes", Prev="Programs", Next="Libraries")

@Section[Minor Modes]
@index{minor modes}

@index{numeric arguments}@index{mode line}@index{toggling}
  Minor modes are options which you can use or not.  For example, Auto
Fill mode is a minor mode in which Spaces break lines between words as
you type.  All the minor modes are independent of each other and of
the selected major mode.  Most minor modes say in the mode line when
they are on; for example, "Fill" in the mode line means that Auto Fill
mode is on.

  Each minor mode is the name of the function that can be used to turn
it on or off.  With no argument, the function turns the mode on if it
was off and off if it was on.  This is known as @dfn[toggling].  A
positive argument always turns the mode on, and an explicit zero
argument or a negative argument always turns it off.  All the minor
mode functions are suitable for connecting to single or double
character commands if you want to enter and exit a minor mode
frequently.

@index{Auto Fill mode}@index{C-X F}@index{Fill Column}@index{^R Set Fill Column}
  Auto Fill mode allows you to type text endlessly without worrying
about the width of your screen.  Line separators are be inserted where
needed to prevent lines from becoming too long.
@Note(Node="Filling").

@index{Auto Save mode}@index{Auto Save Default}
  Auto Save mode protects you against system crashes by periodically
saving the file you are visiting.  Whenever you visit a file, auto
saving is enabled if Auto Save Default is nonzero; in addition,
M-X Auto Save allows you to turn auto saving on or off in a given
buffer at any time.  @Note(Node="AutoSave", Name="Auto Save").

@index{Atom Word mode}@index{Lisp}
  Atom Word mode causes the word-moving commands, in Lisp mode, to
move over Lisp atoms instead of words.  Some people like this, and
others don't.  In any case, the s-expression motion commands can be
used to move over atoms.  If you like to use segmented atom names like
FOOBAR-READ-IN-NEXT-INPUT-SOURCE-TO-READ, then you might prefer not to
use Atom Word mode, so that you can use M-F to move over just part of
the atom, or C-M-F to move over the whole atom.

@index{Overwrite mode}@index{Rubout}
  Overwrite mode causes ordinary printing characters to replace
existing text instead of shoving it over.  It is good for editing
pictures.  For example, if the point is in front of the B in FOOBAR,
then in Overwrite mode typing a G changes it to FOOGAR, instead
of making it FOOGBAR as usual.  Also, Rubout is changed to turn the
previous character into a space instead of deleting it.

@index{SAIL Character Mode}
  SAIL Character mode causes ASCII control characters in text to
display as themselves, with no conversion.  This assumes that the
terminal uses codes 200 and above for cursor motion and erasure, and
can display all the ASCII control characters as graphic characters.
The command Control- runs this command.  Control- is a character
which can generally only be typed on terminals which can display the
ASCII control characters in the appropriate fashion.

@index{Word Abbrev mode}
  Word Abbrev mode allows you to define abbreviations that
automatically expand as you type them.  For example, "wam" might
expand to "word abbrev mode".  The abbreviations may depend
on the major (e.g. Lisp, Text, ..@.) mode you are currently in.  To
use this, you must load the WORDAB library.  @XNote(Name="Wordab",
File="WORDAB", Node="Top").

@index{Indent Tabs mode}
  Indent Tabs mode controls whether indentation commands use tabs and
spaces or just spaces to indent with.  Usually they use both, but you
might want to use only spaces in a file to be processed by a program
or system which doesn't ignore tabs, or for a file to be shipped to a
system like Multics on which tab stops are not every 8 characters.

  Most minor modes are actually controlled by variables.  The mode is
on if the variable is nonzero.  Setting the minor mode with a command
works by changing the variable.  This means that you can turn the modes on
or off with Edit Options, or make their values local to a buffer.
@Note(Node="Variables").

@index{local modes lists}@index{Auto Fill mode}
@ITS{@index{EVARS}}@Twenex{@Index{EMACS.VARS}}
  You could also put a minor mode in the local modes list of a file,
but that is usually bad practice.  This is because usually the
preference for a minor mode is usually a matter of individual style
rather than a property of the file per se.  To make this
more concrete, it is a property of a file that it be filled to a
certain column, but use of Auto Fill mode to accomplish that is a
matter of taste.  So it would be good practice for the file to specify
the value of Fill Column, but bad practice for the file to specify the
value of Auto Fill Mode.

  If you find yourself constantly tempted to turn on Auto Fill mode in
local modes lists, what you probably really want is to have Auto Fill
mode on whenever you are in Text mode.  This can be accomplished with
the following code in an @EVARS() file:
@Example[
Text Mode Hook: 1M.LAuto Fill Mode
]
Suffice it to explain that this is TECO code to be executed whenever
Text mode is entered, which makes the variable Auto Fill Mode local to
the buffer with local value 1.

@Node(Name="Libraries", Prev="MinorModes", Next="Variables")

@Section[Libraries of Commands]
@index{libraries}

  All EMACS functions, including the ones described in this document,
reside in libraries.  A function is not accessible unless the library
that contains it is loaded.  Every EMACS starts out with
@ITS{one}@Twenex{two} @ITS{library}@Twenex{libraries} loaded: the
EMACS library@Twenex{, and the TWENEX library}.
@ITS{This contains}@Twenex{These contain} all of the functions described in
this document, except those explicitly stated to be elsewhere.  Other
libraries are provided with EMACS, and can be loaded automatically or
on request to make their functions available.  @Note(Name="Catalogue",
Node="LibCat"), for a list of them.

@index{loading}@index{Load Library}
  To load a library, say M-X Load Library<libname><cr>.
The library is found, either on your own directory or whichever
one you specify, or on the EMACS directory, and loaded in.  All the
functions in the library are then available for use.  Whenever you use
M-X, the function name you specify is looked up in each of the
libraries which you have loaded, more recently loaded libraries first.
The first definition found is the one that is used.

  For example, if you load the PICTURE library, you can then use
M-X Edit Picture to run the Edit Picture function which exists in that
library.

  In addition to making functions accessible to M-X, the library may
connect some of them to command characters.  This is done by the
library's & Setup function (@INFONote(File="CONV", Node="Lib").).
If you give Load Library an argument, the setup is not done.

@index{Run Library}
  You can also load a library temporarily, just long enough to use one
of the functions in it.  This avoids taking up space permanently with
the library.  Do this with the function Run Library, as in M-X
Run<libname><function name><cr>.  The library <libname> is
loaded in, and <function name> executed.  Then the library is
removed from the EMACS job.  You can load it in again later.

@index{List Loaded Libraries}@index{List Library}
  M-X List Loaded Libraries types the names and brief descriptions of
all the libraries loaded, last loaded first.  The last one listed is
always the EMACS library.

  You can get a brief description of all the functions in a library
with M-X List Library<libname><cr>, whether the library is loaded or
not.  This is a good way to begin to find out what is in a library
that has no INFO documentation.  Continue by loading the library and
using Help D to inquire further about whichever functions looked
interesting.

@Index{Kill Libraries}
  The function Kill Libraries can be used to discard libraries loaded
with Load Library.  (Libraries used with Run Library are
discarded automatically).  However, of all the libraries presently
loaded, only the most recently loaded one can be discarded.  Kill
Libraries offers to kill each loaded library, most recently loaded
first.  It keeps killing libraries until you say to keep one library.
Then it returns, because the remaining libraries cannot be deleted if
that library is kept.

@index{autoloading}@index{TECO}@index{DIRED}@index{TAGS}
  Libraries are loaded automatically in the course of executing
certain functions.  You will not normally notice this.  For example,
the TAGS library is automatically loaded in whenever you use M-@.
or Visit Tag Table for the first time.  This process is known
as @dfn[autoloading].  It is used to make the functions in the TAGS
library available without the user's having to know to load the
library himself, while not taking up space in EMACSes of people who
aren't using them.  It works by simply calling Load Library on the
library known to be needed.  Another kind of autoloading loads a
library temporarily, the way Run Library does.  This is done when you
use the DIRED function, for example, since the DIRED library is not
needed after the DIRED function returns.  (This does not use Run
Library; it uses M.A, which is what Run Library uses).

  You can make your own libraries, which you and other people can then
use, if you know how to write TECO code.  @InfoNote(Name="Making
Libraries", File="CONV", Node="Lib"), for more details.

@Node(Name="Variables", Prev="Libraries", Next="Syntax")

@Section[Variables]
@index{variables}@index{options}@index{Fill Column}@index{Edit Options}

  A variable is a name which is associated with a value, either a
number or a string.  EMACS uses many variables internally, and has
others whose purpose is to be set by the user for customization.
(They may also be set automatically by major modes.)  One example of
such a variable is the Fill Column variable, which specifies the
position of the right margin (in characters from the left margin) to
be used by the fill and justify commands.

@ITS{@index[C-M-C]}@Twenex{@index[C-M-Z]}
@index{C-]}@index{^R Exit}@index{Abort Recursive Edit}
  The easiest way for the beginner to set a named variable is to use
the function Edit Options.  This shows you a list of selected
variables which you are likely to want to change, together with their
values, and lets you edit them with the normal editing commands in a
recursive editing level.  Don't make any changes in the names, though!
Just change the values.  Digits with maybe a minus sign stand for
a numeric value of the variable, while string values are enclosed in
doublequotes.  Each option is followed by a comment which says what
the option is for.  Type the Help character for more information on
the format used.

  When you are finished, exit Edit Options using @CMC[] and the
changes will take effect.  If you decide not to make the changes, C-]
gets out without redefining the options.  @Note(Name="Recursive
Editing Levels", Node="Recursive").

  If you give Edit Options a string argument, it shows you only the
options whose names include the string.  For example, M-X Edit
OptionsFill<cr> shows only the options that have "Fill" in their
names.  This is much more convenient, if you know what you plan to do.

@index{Set Variable}@index{numeric arguments}@index{string arguments}
  However, Edit Options can be used only to set a variable which
already exists, and is marked as an option.  Some commands refer
to variables which do not exist in the initial environment.  Such
commands always use a default value if the variable does not exist.
In these cases you must create the variable yourself if you wish to
use it to alter the behavior of the command.  Use M-X Set
Variable for this.  You can set the variable to a numeric value by
doing
@example[
C-U <number> M-X Set Variable<varname><cr>
]
or to a string by doing
@example[
M-X Set Variable<varname><string><cr>
]

  In fact, you can use Set Variable to set any variable, whether it
exists already or not.  For existing variables, it does not matter
whether you use upper case or lower case letters, and you are allowed
to abbreviate the name as long as the abbreviation is unique.  If the
variable might not exist yet, you must type the name in full.  While
either upper case or lower case will still work, you are encouraged to
capitalize each word of the name for aesthetic reasons since EMACS
stores the name as you give it.

  To examine the value of a single variable, do
@example[M-X View Variable<varname><cr>]

@index{List Variables}@index{Describe}
  To print a complete list of all variables, do M-X List Variables.
List Variables with a string argument shows only the variables whose
names or values contain that string (like the function Apropos).  M-X
Describe can be given a variable's name instead of a function's name;
it prints the variable's value and its documentation, if it has any.

  If you want to set a variable a particular way each time you use
EMACS, you can use an init file or an @EVARS() file.  This is one of
the main ways of customizing EMACS for yourself.  An init file is a
file of TECO code to be executed when you start EMACS up.  They are
very general, but writing one is a black art.  You might be able to
get an expert to do it for you, or modify a copy of someone else's.
@InfoNote(Name="Init", File="CONV", Node="Init"), for details.  An
@EVARS() file is a much simpler thing which you can do yourself.
@ITS{@Note(Name="EVARS files",
Node="Init").}@Twenex{@Note(Name="EMACS.VARS files", Node="Init").}

@index{TECO}
  You can also set a variable with the TECO command
@example[<value> M.V <varname>]
or
@example[:I*<string> M.V <varname>]
This is useful in init files.

@Index{local variables}@index{M.L}@index{List Redefinitions}
  Any variable can be made local to
a specific buffer with the TECO command M.L<variable name>.  Thus, if
you want the comment column to be column 50 in one buffer, whereas you
usually like 40, then in the one buffer do M.LComment Column using
the minibuffer.  Then, you can do 50UComment Column in that buffer
and other buffers will not be affected.  This is how local modes lists
in files work.  M-X List Redefinitions describes the local variables
of the selected buffer in a verbose fashion.

  Most local variables are killed if you change major modes.  Their
global values come back.  They are therefore called @dfn[mode locals].
There are also @dfn[permanent] locals which are not killed by changing
modes; use 2,M.L to create one.  Permanent locals are used by things
like Auto Save mode to keep internal information about the buffer,
whereas mode locals are used for customizations intended only for one
buffer.  @InfoNote(Name="Variables", File="CONV", Node="Variables"),
for information on how local variables work, and additional related
features.

@index{local variables}
  Local values of variables can be specified by the file being edited.  For
example, if a certain file ought to have a 50 column width, it can
specify a value of 50 for the variable Fill Column.  Then Fill Column
will have the value 50 whenever this file is edited, @xxi[by anyone].
Editing other files is not affected.  @Note(Node="Locals"), for
how to do this.

@Node(Name="Syntax", Prev="Variables", Next="FS Flags")

@Section[The Syntax Table]
@index{syntax table}

  All the EMACS commands which parse words or balance parentheses are
controlled by the @dfn[syntax table].  Each ASCII character has a word
syntax and a Lisp syntax.  By changing the word syntax, you can
control whether a character is considered a word delimiter or part of
a word.  By changing the Lisp syntax, you can control which characters
are parentheses, which ones are parts of symbols, which ones are
prefix operators, and which ones are just ignored when parsing
s-expressions.

  The syntax table is actually a string which is 128*5 characters
long.  Each group of 5 consecutive characters of the syntax table
describe one ASCII character's syntax; but only the first three of
each group are used.  To edit the syntax table, use M-X Edit Syntax
Table.  But before we describe this command, let's talk about the
syntax of the syntax table itself.

@index{words}
  The first character in each group of five sets the word syntax.
This can be either "A" or a space.  "A" signifies an alphabetic
character, whereas a space signifies a separator character.

@index{lists}@index{s-expressions}
  The second character in each group is the Lisp syntax.  It has many
possible values:

@commands[

A@\an alphabetic character

Space@\a whitespace or nonsignificant character

(@\an open parenthesis

)@\a close parenthesis

;@\a comment starter

@CTL[M]@\a comment ender

|@\a string quote

/@\a character quote

'@\a prefix character
]

  When a character has the syntax of an open parenthesis, that means
that the character is taken to be the beginning of a parenthesized
grouping when expressions are being parsed.  Thus, any number of
different expression-starting characters can be handled.

  The syntax of "prefix character" means that the character becomes
part of whatever object follows it, whether symbol or list, and can
also be in the middle of a symbol, but does not constitute anything by
itself if surrounded by whitespace.

  A character quote character causes itself and the next character to
be treated as alphabetic.

  A string quote is one which matches in pairs.  All characters inside
a pair of string quotes are treated as alphabetic except for the
character quote, which retains its significance, and can be used to
force a string quote or character quote into a string.

@index{comments}@index{Comment Start}@index{Comment Begin}
@index{Comment End}
  A comment starter is taken to start a comment, which ends at the
next comment ender, suppressing the normal syntax of all characters
between.  Only the indentation commands give special treatment to
these two syntax codes; all other commands consider them the same as
Space (nonsignificant character).  The commands specifically for
comments use the variables Comment Start, Comment Begin, and Comment
End to detect comments.  This is so that the comment delimiters can be
multi-character strings.

@index{Parentheses}@index{Matching}
  The third character in each group controls automatic parenthesis
matching display.  It is defined only for characters which have the
Lisp syntax of close parentheses, and for them it should contain the
appropriate matching open parenthesis character (or a space).  If you
insert a close parenthesis character which is matched by the wrong
kind of open parenthesis character, it rings the bell.  If the third
syntax table character of a close parenthesis is a space, any open
parenthesis is allowed to match it.

  The fourth and fifth characters in each group should always be
spaces, for now.  They are not used.  The reason they exist is so that
word-wise indexing can be used on the PDP-10 to access the syntax of a
character given in an accumulator.

@index{Edit Syntax Table}@index{Altmode}@index{C-]}@index{recursive editing level}
  Edit Syntax Table displays the syntax table broken up into labeled
five-character groups.  You can see easily what the syntax of any
character is.  You are not editing the table immediately, however.
Instead, you are asked for the character whose syntax you wish to
edit.  After typing it, you are positioned at that character's
five-character group.  Overwrite mode is on, so you can simply type
the desired syntax entries, which replace the old ones.  You can also
do arbitrary editing, but be careful not to change the position of
anything in the buffer.  When you exit the recursive editing level,
you are asked for another character to position to.  An Altmode at
this point exits and makes the changes.  A C-] at any time aborts the
operation.

@index{major modes}
  Many major modes alter the syntax table.  Each such major mode creates
its own syntax table once and reselects the same string whenever the
mode is selected, in any buffer.  Thus, all buffers in Text mode at
any time use the same syntax table.  This is important because if you
ever change the syntax table of one buffer that is in Text mode, you
change them all.  It is possible to give one buffer a local copy
with a TECO program:
@Example[
MM Make Local Q-Register..DW  :G..DU..D
]
The syntax tables belonging to the major modes are not preinitialized
in EMACS; they are created when the major mode is invoked for the
first time, by copying the default one and making specific changes.
Thus, any other changes you have made in the default (Fundamental
mode) syntax table at the beginning propagate into all modes'
syntax tables unless those modes specifically override them.

  After a major mode has created its own syntax table, that table is
stored in the variable <modename> ..D.  This makes a different
variable for each major mode, since the mode name is part of the
variable name.  Further use of the major mode gets the syntax table
from that variable.  If you create the variable yourself before the
first use of the major mode, the value you put there will be used.

@index{& Alter ..D}@index{TECO}
  TECO programs and init files can most easily change the syntax table
with the function @w[& Alter] ..D (look at its documentation).  The syntax
table is kept in the q-register named ..D, which explains that name.

@Node(Name="FS Flags", Prev="Syntax", Next="Init")

@Section[FS Flags]

@Index{FS Flags}
  FS flags are variables defined and implemented by TECO below the
level of EMACS.  Some of them are options which control the behavior
of parts of TECO such as the display processor.  Some of them control
the execution of TECO programs; you are not likely to want to change
these.  Others simply report information from inside TECO.  The list
of FS flags is fixed when TECO is assembled and each one exists for a
specific purpose.

  FS flags are used mostly by the TECO programmer, but some of them
are of interest to the EMACS user doing minor customization.  For
example, FS ECHO LINES is the number of lines in the echo area.  By
setting this flag you can make the echo area bigger or smaller.  Many
FS flags useful for customization are controlled by EMACS variables;
instead of setting the FS flag, you can set the EMACS variable like
any other.  Setting the variable automatically sets the FS flag as
well.  Here is a list of such variables which control flags:
@begin(format,LeftMargin 4)
@tabdivide(2)

Auto Save Interval@\FS ^R MDLY
Bottom Display Margin@\FS %BOTTOM
Case Search@\FS BOTHCASE
Cursor Centering Point@\FS %CENTER
Display Mode Line Inverse@\FS INVMOD
Display Overprinting@\FS ^H PRINT and FS ^M PRINT
Echo Area Height@\FS ECHO LINES
End of Buffer Display Margin@\FS %END
Error Messages in Echo Area@\FS ECHO ERRORS
Fill Column@\FS ADLINE
Overwrite Mode@\FS ^R REPLACE
SAIL Character Mode@\FS SAIL
@Twenex{System Output Holding@\FS TT PAGE
}Top Display Margin@\FS %TOP

@end(format)
Setting one of these variables causes the flag to be set, but not vice versa.
To avoid confusion, always set these flags using the associated
variables, never directly, unless you are changing them temporarily
during one command and the user will not have the opportunity to
notice the confusion.

  To get the value of an FS flag, use the TECO command FS followed by
the name of the flag, terminated by an Altmode.  Spaces in the name of
the flag are completely ignored, and case does not matter.  Thus, FS
Tab Width= executed in the minibuffer prints the number of columns between tab stops used for display of tab characters.  @Note(Node="Minibuffer").
This works only for flags with numeric values.
The easiest way to examine a flag's value with EMACS commands is
@Example[
C-M-X View Variable<cr> (FS Tab Width)<cr>
]
This works for both numeric and string values.

  To set the flag, give the FS command a numeric argument (which must
be a string pointer, if the intended value is a string).  For example,
in the minibuffer or an init file, do
@Example[
10FS Tab Width
]
Be warned that FS always returns a value, so put a CRLF after it to
discard the value if necessary.

  It is possible to make an FS flag's value local to a buffer.
@INFONote(File="CONV", Node="Vars", Name="Locals").

  The documentation of individual FS flags can be found through
Help T.@:  Help T FS Echo Lines<cr> prints the description of FS
ECHO LINES.  Spaces are not significant in Help T either.  A list of
just the names of all FS flags is printed by the function List TECO FS
Flags, found in the library PURIFY.

@Node(Name="Init", Prev="FS Flags", Next="Locals")

@Section[Init Files and @EVARS() Files]
@index{init files}@index{customization}
@ITS{@index{EVARS}}@Twenex{@Index{EMACS.VARS}}

  EMACS is designed to be customizable; each user can rearrange things
to suit his taste.  Simple customizations are primarily of two types:
moving functions from one character to another, and setting variables
which functions refer to so as to direct their actions.  Beyond this,
extensions can involve redefining existing functions, or writing
entirely new functions and creating sharable libraries of them.

@index{TECO}
  The most general way to customize is to write an init file, a TECO
program which is executed whenever you start EMACS.  The init file is
found by looking for a particular filename, @ITS{<home
directory>;<user name> EMACS}@Twenex{<your directory>EMACS.INIT}.
This method is general because the program can do anything.  It can
ask you questions and do things, rather than just setting up commands
for later.  However, TECO code is arcane, and only a few people learn
how to write it.  If you need an init file and don't feel up to
learning to write TECO code, ask a local expert to do it for you.
@InfoNote(Name="Init", File="CONV"), for more about init files.

@Index{Home Directory}@Index{User Name}
  However, simple customizations can be done in a simple way with an
@EVARS() file.  Such a file serves the same sort of purpose as an init
file, but instead of TECO code, it contains just a list of variables
and values.  Each line of the @EVARS() file names one variable or one
command character and says how to redefine it.  Empty lines, and lines
starting with spaces or tabs, are ignored.  They can be used as comments.
Your @EVARS() file is found by its filename, as an init file is, but
it should be called @ITS{<home directory>;<user name> EVARS instead of EMACS.}
@Twenex{EMACS.VARS instead of EMACS.INIT.} You can have both an init
file and an @EVARS() file if you want, as long as your init file calls
the default init file, since that is what processes the @EVARS() file.

@index{variables}
  To set a variable, include in the @EVARS() file a line containing
the name of the variable, a colon, and the value.  A numeric value is
represented by the number.  A string value is enclosed in double
quotes.  To include a double quote or a @ctl{]} character in the value
of the string, precede it with a @ctl{]} to quote it.  You can also
simply give the string value, with no quotes, as long as it is not
ambiguous (does not consist of digits or start with a double quote);
however, in this case, any spaces following the colon become part of
the value of the variable.  They are not ignored.  Examples:
@example[
Comment Column: 70
Comment Start: ";"
MM Foo:FTFOO
]
The last line defines a variable named MM Foo, which has the effect of
defining a function named Foo with the specified value as its definition.

@index{redefining commands}
  To redefine a command character is a little more complicated.
Instead of the name of a variable, give a @CTL[R] (control-R) followed by
the character.  Since the general Control and Meta character cannot be
part of a file, all Control and Meta characters are represented in  a
funny way:  after the @CTL[R] put the residue of the character after
removing the Control and Meta, and before the @CTL[R] put periods, one for
Control, two for Meta, and three for Control-Meta.  Thus, C-D is
represented by ".@CTL[R]D" and C-M-; is represented by "...@CTL[R];".  Lower
case characters such as C-a are usually defined as "execute the
definition of the upper case equivalent".  Therefore, by redefining
the C-A command you also change C-a; but if you redefine C-a, by
saying ".@CTL[R]a" instead of ".@CTL[R]A", you will not change C-A.  So be
careful about case.

  Instead of the value of a variable, for command character
redefinition you must give a TECO expression that returns the desired
definition.  This is to make it easy to use any function whose name
you know, because M.MFOO is an expression that returns the definition
of the function FOO.  @XXI[Do not enclose the TECO expression in quotes.]  Example:
@example[
.@CTL[R]K: M.M^R Kill Line
]
would give C-K the definition that it normally has.  Remember that
in names of functions the "^R" is actually a "^" and an R, not a
control-R.  The space before the M.M is part of the expression, but it
is ignored when the expression is executed.

  Some non-printing characters are a little tricky to redefine.  For
example, you must know that Return, Linefeed, Tab, Backspace and
Altmode are not the same in TECO's command character set as C-M, C-J,
C-I, C-H and C-[, even though in ASCII they are synonymous.  By saying
.@CTL[R]J you will redefine C-J; by saying @CTL[R] followed by a Linefeed (which
you must insert in the @EVARS() file by typing C-Q Linefeed) you can
redefine Linefeed.  Normally, C-J is defined as "execute the
definition of Linefeed", so you are better off redefining Linefeed.

@index{C-X}@index{prefix characters}
  You can also redefine a subcommand of a prefix character such as
C-X.  For this, you have to know where the character's dispatch table
is stored.  For C-X, the location of the dispatch is called ".X"; you
won't have any other prefix characters unless you define them yourself.
@InfoNote(Name="Defining prefixes", File="CONV", Node="Prefix").
Knowing the location, you specify the subcommand by writing
:location(@CTL[^]character).  This looks silly, but it is a TECO expression
with the right meaning.  For example, redefining C-X C-S, the location
is ".X" and the character is @CTL[S], so we say
@example[
:.X(@CTL[^]@CTL[S]): M.M^R Save File
]
This gives C-X C-S the definition that it normally has.  The
subcommand character (@CTL[S] in this case) can represent itself in the
@EVARS() file with no need for dots, because subcommand characters are
just ASCII, with no Meta allowed.

  You can include arbitrary TECO code in an @EVARS() file by writing a
definition for "*".  The definition is executed as a TECO expression
but the value is ignored.  Thus, to load the library FOO, do
@example[
*: MM Load LibraryFOO
]
Once the library is loaded, you can connect the functions in it to
commands as described above.

  Please refrain from giving newcomers to EMACS a copy of your own
init file before they understand what it does.  Everyone prefers his
own customizations, and there is always a tendency to proselytize, but
by the same token your protege's tastes may be different from yours.
If you offer him your customizations at the time when he is ready to
understand what difference they make and decide for himself what he
prefers, then you will help him get what @xxi[he] wants.  Tell him
about each individual change you made, and let him judge them one by
one.  There is no reason for him to choose all or nothing.

@Subsection[@EVARS() File Examples]

  Here are some examples of how to do various useful things in an
@EVARS() file.

  This causes new buffers to be created in Lisp mode:
@Example[Default Major Mode: "LISP"]

  This causes new buffers to have Auto Fill mode turned on:
@Example[Buffer Creation Hook: "1M.L Auto Fill Mode"]

  This causes all Text mode buffers to have Auto Fill mode turned on:
@Example[Text Mode Hook: "1M.L Auto Fill Mode"]

  This causes C-M-G to be undefined by copying the definition of
C-| (which is undefined):
@Example[...@CTL[R]G: Q.@CTL[R]|]

  This redefines C-S to be a single character search command, and M-S
to be a non-incremental string search:
@Example[.@CTL[R]S: M.M ^R Character Search
..@CTL[R]S: M.M ^R String Search]

  This redefines C-X V to run View File:
@Example[:.X(@CTL[^]V): M.M View File]

  This makes M-M a prefix character and defines M-M W to mark a word
and M-M P to mark a paragraph.  It stores the dispatch vector for the
prefix character in the variable M-M Dispatch.
@begin(example,rightmargin -20)
..@CTL[R]M: MM Make Prefix CharacterM-M Dispatch
Temp: "M-M  M-M Dispatch
"
   Append the line in Temp to Prefix Char List.
*: QPrefix Char List[1 QTemp[2 :iPrefix Char List@CTL{]}1@CTL{]}2
:M-M Dispatch(@CTL[^]W): M.M ^R Mark Word
:M-M Dispatch(@CTL[^]P): M.M ^R Mark Paragraph
@end(example)

  This loads the library LUNAR and defines C-Q to run a useful
function found in that library:
@Example[
*: MM Load LibraryLUNAR
.@CTL[R]Q: M.M ^R Various Quantities]

  This causes Auto Save mode to save under the visited filenames:
@Example[Auto Save Visited File: 1]

  This causes TAGS to bring new files into separate buffers:
@Example[TAGS Find File: 1]

  This prevents the default init file from printing the message "EMACS
version nnn.  Type ... for Help".
@Example[Inhibit Help Message: 1]

  This redefines the list syntax of "%" to be ";" for "comment
starter", and that of ";" to be "A" for "alphabetic":
@Example[*: 1mm& Alter ..D%;;A]

@SubSection[Init File Examples]

  Here are the ways to do exactly the same things in an init file.
Don't put more than one of these TECO expressions on a line, or the
first may leave behind a value which will affect the operation of the
second!

  This causes new buffers to be created in Lisp mode:
@Example[:IDefault Major ModeLISP]

  This causes new buffers to have Auto Fill mode turned on:
@Example{:I* 1M.L Auto Fill Mode@CTL{]}  M.VBuffer Creation Hook}
It is different because the variable does not already exist.
Note the @CTL{]} used for getting the Altmode into the value.

  This causes all Text mode buffers to have Auto Fill mode turned on:
@Example{:I* 1M.L Auto Fill Mode@CTL{]}  M.VText Mode Hook}

  This causes C-M-G to be undefined by copying the definition of
C-| (which is undefined):
@Example[Q.@CTL[R]| U...@CTL[R]G]

  This redefines C-S to be a single character search command, and M-S
to be a non-incremental string search:
@Example[M.M ^R Character Search U.@CTL[R]S
M.M ^R String Search U..@CTL[R]S]

  This redefines C-X V to run View File:
@Example[M.M View File U:.X(@CTL[^]V)]

  This makes M-M a prefix character and defines M-M W to mark a word
and M-M P to mark a paragraph.  It stores the dispatch vector for the
prefix character in the variable M-M Dispatch.
@begin(example)
MM Make Prefix Character.YU..@CTL[R]M
QPrefix Char List[1
:iPrefix Char List@CTL{]}1M-M  @CTL{]}M-M Dispatch@CTL{]}
 ]1
M.M ^R Mark Word U:M-M Dispatch(@CTL[^]W)
M.M ^R Mark Paragraph U:M-M Dispatch(@CTL[^]P)
@end(example)

  This loads the library LUNAR and defines C-Q to run a useful
function found in that library:
@Example[MM Load LibraryLUNAR
M.M ^R Various Quantities U.@CTL[R]Q]

  This causes Auto Save mode to save under the visited filenames:
@Example[1UAuto Save Visited File]
Compare this and the next example with the first two, in which string
values are used.

  This causes TAGS to bring new files into separate buffers:
@Example[1M.VTAGS Find File]

  This prevents the default init file from printing the message "EMACS
version nnn.  Type ... for Help".
@Example[1M.VInhibit Help Message]

  This redefines the list syntax of "%" to be ";" for "comment
starter", and that of ";" to be "A" for "alphabetic":
@Example[1mm& Alter ..D%;;A]

@Node(Name="Locals",  Prev="Init",  Next="KBDMAC")

@Section[Local Variables in Files]
@index{local variables}@index{files}@index{major modes}@index{Auto Fill mode}
@index{redefining commands}@index{customization}@index{buffers}

  By specifying @dfn[local modes] in a file you can cause certain
major or minor modes to be set, or certain character commands to be
defined, whenever you are visiting it.  For example, EMACS can select
Lisp mode for that file, set up a
special Comment Column, or put a special command on the character
C-M-Comma.  Local modes can specify the major mode, and the values of
any set of named variables and command characters.  Local modes apply
only while the buffer containing the file is selected; they do not
extend to other files loaded into other buffers.

  The simplest kind of local mode specification sets only the major
mode.  You put the mode's name in between a pair of "-*-"'s, anywhere
on the first nonblank line of the file.  For example, the first line
of this file contains @info{-*-Text-*-}@manual{-*-Scribe-*-}, implying
that this file should be edited in @info{Text}@manual{Scribe} mode.
@Twenex{The -*- can appear on the first nonblank line after the edit
history, if somebody insists on putting in an edit history.}

@Twenex{
  Often, EMACS is able to determine the best major mode for a file by
looking at the file's extension.  If this works, you don't need to
worry about specifying the major mode.  If the extension of the file
does not inform EMACS correctly, then you need an explicit local modes
specification.  The functions which implement this are called &
<extension> Mode, in the TWENEX library.
}

@ITS{@index{EVARS}}@Twenex{@Index{EMACS.VARS}}
@index{C-X}@index{prefix characters}
  To specify more that just the major mode, you must use a @dfn[local
modes list], which goes in the @xxii[last] page of the file (it is
best to put it on a separate page).  The local modes list starts with
a line containing the string "Local Modes:", and ends with a line
containing the string "End:".  In between come the variable names and
values, just as in an @EVARS() file.  @ITS{@Note(Name="EVARS files",
Node="Init").}  @Twenex{@Note(Name="EMACS.VARS files", Node="Init").}

  The line which starts the local modes list does not have to say just
"Local Modes:".  If there is other text before "Local Modes:", that
text is called the @dfn[prefix], and if there is other text after,
that is called the @dfn[suffix].  If these are present, each entry in
the local modes list should have the prefix before it and the suffix
after it.  This includes the "End:" line.  The prefix and suffix are
included to disguise the local modes list as a comment so that the
compiler or text formatter will not be perplexed by it.  If you do not
need to disguise the local modes list as a comment in this way, do not
bother with a prefix or a suffix.

  Aside from the "Local Modes:" and the "End:", and the prefix and
suffix if any, a local modes list looks like an @EVARS() file.  However,
comments lines are not allowed, and you cannot redefine C-X
subcommands due to fundamental limitations of the data structure used
to remember local variables.  Sorry.

  The major mode can be set by specifying a value for the variable
"Mode" (don't try setting the major mode this way except in a local
modes list!).  It should be the first thing in the local modes list,
if it appears at all.  A function M-X Foo can be defined locally by
putting in a local setting for a variable named "MM Foo".
@Note(Node="MMArcana", Name="Functions").

@index{Comment Column}@index{Comment Start}
@Need(10Lines)

  Here is an example of a local modes list:
@example[
;;; Local Modes: ***
;;; Mode:Mumble ***
;;; Comment Column:0 ***
;;; Comment Start: ";;; "  ***
;;; Comment End:"***" ***
;;; ..@CTL[R]/: m.m^R My Funny Meta-Slash ***
;;; End: ***
]

Note that the prefix is @w[";;; "] and the suffix is @w[" ***]".  Note also
that comments in the file begin with @w[";;; "] and end with "***".
Presumably the file contains code in the language Mumble, in which
comments must start and end that way.  The prefix and suffix are used
in the local modes list to make the list appear as comments when the
file is read by the Mumble compiler.

The last page of the file must be no more than 10000 characters long
or the local modes list will not be recognized.  This is because EMACS
finds the local modes list by scanning back only 10000 characters from
the end of the file for the last formfeed, and then looking forward
for the "Local Modes:" string.  This accomplishes these goals: a stray
"Local Modes:" not in the last page is not noticed; and visiting a
long file that is all one page and has no local mode list need not
take the time to search the whole file.

@Node(Name="KBDMAC", Prev="Locals", Next="Minibuffer")

@Section[Keyboard Macros]

@WideCommands[
C-X (@\Start defining a keyboard macro.

C-X )@\End the definition of a keyboard macro.

C-X E@\Execute the most recent keyboard macro.

C-U C-X (@\Re-execute last keyboard macro and append to its definition.

C-X Q@\Ask for confirmation when the keyboard macro is executed.

C-U C-X Q@\Allow the user to edit for a while, each time the keyboard
macro is executed.

M-X Name Kbd Macro@\Make the most recent keyboard macro into the
permanent definition of a command.

M-X Write Kbd Macro@\Save a keyboard macro in a file.
]

@index{keyboard macros}
  A @dfn[keyboard macro] is a command defined by the user to abbreviate a
sequence of other commands.  If you discover that you are about to
type C-N C-D forty times, you can define a keyboard macro to do C-N
C-D and call it with a repeat count of forty.

@index{TECO}
  Keyboard macros differ from ordinary EMACS commands, in that they
are written in the EMACS command language rather than in TECO.  This
makes it easier for the novice to write them, and makes them more
convenient as temporary hacks.  However, the EMACS command language is
not powerful enough as a programming language to be useful for writing
anything intelligent or general.  For such things, TECO must be used.

  EMACS functions were formerly known as macros (which is part of the
explanation of the name EMACS), because they were macros within the
context of TECO as an editor.  We decided to change the terminology
because, when thinking of EMACS, we consider TECO a programming
language rather than an editor.  The only "macros" in EMACS now are
keyboard macros.

  You define a keyboard macro while executing the commands which are
the definition.  Put differently, as you are defining a keyboard
macro, the definition is being executed for the first time.  This way,
you can see what the effects of your commands are, so that you don't
have to figure them out in your head.  When you are finished, the
keyboard macro is defined and also has been, in effect, executed once.
You can then do the whole thing over again by invoking the macro.

@SubSection[Basic Use]

@index{C-X (}@index{C-X )}@index{C-X E}@index{^R Start Kbd Macro}@index{^R End Kbd Macro}
@index{^R Execute Kbd Macro}
  To start defining a keyboard macro, type the @w[C-X (] command
(@w[^R Start] Kbd Macro).  From then on, your commands continue to be
executed, but also become part of the definition of the macro.  "Def"
appears in the mode line to remind you of what is going on.  When you
are finished, the @w[C-X )] command (@w[^R End] Kbd Macro) terminates
the definition (without becoming part of it!).

  The macro thus defined can be invoked again with the C-X E command
(@w[^R Execute] Kbd Macro), which may be given a repeat count as a
numeric argument to execute the macro many times.  @w[C-X )] can also
be given a repeat count as an argument, in which case it repeats the
macro that many times right after defining it, but defining the macro
counts as the first repetition (since it is executed as you define
it).  So, giving @w[C-X )] an argument of 2 executes the macro
immediately one additional time.  An argument of zero to @w[C-X E] or
@w[C-X )] means repeat the macro indefinitely (until it gets an
error).

  If you want to perform an operation on each line, then either you
should start by positioning point on the line above the first one to
be processed and then begin the macro definition with a C-N, or you
should start on the proper line and end with a C-N.  Either way,
repeating the macro will operate on successive lines.

  After you have terminated the definition of a keyboard macro, you
can add to the end of its definition by typing C-U @w[C-X (].  This is
equivalent to plain @w[C-X (] followed by retyping the whole
definition so far.  As a consequence it re-executes the macro as
previously defined.

@index{Name Kbd Macro}
  If you wish to save a keyboard macro for longer than until you
define the next one, you must give it a name.  If you do M-X Name Kbd
MacroFOO<cr>, the last keyboard macro defined (the one which C-X E
would invoke) is turned into a function and given the name FOO.  M-X
FOO will from then on invoke that particular macro.  Name Kbd Macro
also reads a character from the keyboard and redefines that character
command to invoke the macro.  You can use a bit prefix character in
specifying the command; you can also type a C-X command to be
redefined.  When you have finished typing the command characters, Name
Kbd Macro asks you whether it should go ahead and redefine the
character.

@index{Write Kbd Macro}
  To save a keyboard macro permanently, do M-X Write Kbd Macro.
Supply the function name of the keyboard macro as a string argument,
or else it will ask you to type the character which invokes the
keyboard macro.  The keyboard macro is saved as a library which, when
loaded, automatically redefines the keyboard macro.  The filename is
read from the terminal.  Its second name should be :EJ, like other
libraries; that is the default.

@index{View Kbd Macro}
  To examine the definition of a keyboard macro, use the function View
Kbd Macro.  Either supply the name of the function which runs the
macro, as a string argument, or type the command which invokes the
macro when View Kbd Macro asks for it.

@SubSection[Executing Macros with Variations]

@index{C-X Q}@index{^R Kbd Macro Query}
  If you want to be allowed to do arbitrary editing at a certain point
each time around the macro (different each time, and not remembered as
part of the macro), you can use the C-U C-X Q command (@w[^R Kbd] Macro
Query).  When you are defining the macro, this lets you do some
editing, which does @xxii[not] become part of the macro.  When you are done,
exit with @CMC[] to return to defining the macro.  When
you execute the macro, at that same point, you will again be allowed
to do some editing.  When you exit this time with @CMC[], the execution
of the macro will resume.  If you abort the recursive editing level
with C-], you will abort the macro definition or execution.

@index{Query Replace}@index{Space}@index{Rubout}@index{C-L}@index{C-R}@index{Altmode}
  You can get the effect of Query Replace, where the macro asks you
each time around whether to make a change, by using the command C-X Q
with no argument in your keyboard macro.  When you are defining
the macro, the C-X Q does nothing, but when the macro is invoked the
C-X Q reads a character from the terminal to decide whether to
continue.  The special answers are Space, Rubout, Altmode, C-L, C-R.
A Space means to continue.  A Rubout means to skip the
remainder of this repetition of the macro, starting again from the
beginning in the next repetition.  An Altmode ends all repetitions of
the macro, but only the innermost macro (in case it was called from
another macro).  C-L clears the screen and asks you again for a
character to say what to do.  C-R enters a recursive editing level;
when you exit, you are asked again (if you type a Space, the macro
will continue from wherever you left things when you exited the C-R).
Anything else exits all levels of keyboard macros and is reread as a
command.

@Node(Name="Minibuffer", Prev="KBDMAC", Next="Quitting")

@Chapter[The Minibuffer]

  The @dfn[minibuffer] is a facility by means of which EMACS commands can
read input from the terminal, allowing you to use EMACS commands to
edit the input while you are typing it.  Usually it is used to read a
TECO program to be executed.

@WideCommands[
M-Altmode@\Invokes an empty minibuffer.

M-%@\Invokes a minibuffer initialized with a Query Replace.

C-X Altmode@\Re-execute a recent minibuffer command.

C-X ^@\Add more lines to the minibuffer.

C-\@\Meta-prefix for use in the minibuffer.

@CC[] C-Y@\Rotate ring of recent minibuffer commands.
]

@index{minibuffer}
  The primary use of the minibuffer is for editing and executing
simple TECO programs such as
@Example[
MM Query ReplaceFOO
BAR

]
(which could not be done with M-X Query Replace because when M-X is
used Return terminates the arguments).

@index{mode line}
  You can always tell when you are in a minibuffer, because the mode
line contains something in parentheses, such as "(Minibuffer)" or
"(Query Replace)".  There is also a line of dashes across the
screen a few lines from the top.  Strictly speaking, the minibuffer is
actually the region of screen above the line of dashes, for that is
where you edit the input that the minibuffer is asking you for.
Editing has been limited to a few lines so that most of the screen can
continue to show the file you are visiting.

@index{M-Altmode}@index{^R Execute Minibuffer}
  If you want to type in a TECO command, use the minibuffer with the
command Meta-Altmode, (@w[^R Execute] Minibuffer).  An empty minibuffer
will appear, into which you should type the TECO command string.  Exit
with Altmode Altmode, and remember that neither of the two Altmodes
is inserted into your TECO command although the first one may
appear to be.  When the TECO command is executed, "the buffer" will be
the text you were editing before you invoked the minibuffer.

@index{M-%}@index{Query Replace}@index{^R Query Replace}
  Often, a minibuffer starts out with some text in it.  This means
that you are supposed to add to that text, or, sometimes, to delete
some of it so as to choose among several alternatives.  For example,
Meta-% (@w[^R Query] Replace) provides you with a minibuffer initially
containing the string "MM Query Replace".  The cursor comes at the
end.  You are then supposed to add in the arguments to the Query
Replace.

@index{Altmode}
  In a minibuffer, you can edit your input until you are satisfied
with it.  Then you tell EMACS you are finished by typing two Altmodes.
An Altmode not followed by another Altmode is simply inserted in the
buffer.  This is because it is common to want to put Altmodes into the
minibuffer, which usually contains a string of TECO commands.  For
example, in Meta-% (@w[^R Query] Replace) each argument must be ended by
an Altmode.  However, when you type two Altmodes in a row, neither one
remains in the buffer.  The two Altmodes do nothing to the text in the
minibuffer, they just exit.

@index{C-\}@index{metizer}
  Since Altmode is self-inserting, typing Meta characters can be a
problem.  You can do it by using C-\ instead of Altmode as the
Meta-prefix.  If you type a Control-Meta character on your keyboard,
the corresponding ASCII control character is inserted in the
minibuffer.  This is because the Lisp commands are rarely useful when
editing TECO code, but insertion of control characters is frequent.
If you really want to use a Control-Meta EMACS command, you must use
@CC[] to type it.  You cannot use C-\ C-A to type C-M-A, because C-\
(unlike Altmode) ignores the Control bit of the following character,
so you must use @CC[] C-A.  The motivation for this quirk of C-\ is
that C-\ C-B (to obtain M-B) is easier to type than C-\ B, especially
if it is typed several times in a row.

@index{C-G}@ITS{@index[C-C]}@Twenex{@index[C-Z]}
  You can cancel your input in a minibuffer and start all over again
by typing C-G.  That kills all the text in the minibuffer.  A C-G
typed when the minibuffer is already empty exits from the
minibuffer.  Usually, this aborts whatever command was using the
minibuffer, so it will return without doing anything more.  For
example, if you type two C-G's at Meta-%'s minibuffer, you will return
to top level and no Query Replace will be done.  Typing a single C-G at
a preinitialized minibuffer to empty the buffer is not very useful,
since you would have to retype all the initial text.

@index{C-X Altmode}@index{confirmation}@index{^R Re-execute Minibuffer}
  The last five distinct minibuffer commands or M-X commands you have
issued are remembered in a ring buffer in q-register .M.  The C-X
Altmode command (@w[^R Re]-execute Minibuffer) re-executes the last
command in the ring.  With an argument <n>, it re-executes the <n>'th
previous command.  The command is printed out (only the first 40
characters or so) and you are asked to confirm with "Y" or "N".

@ITS{@index[C-C C-Y]}@Twenex{@index[C-Z C-Y]}
@index{numeric arguments}
  You can also get your previous minibuffer and M-X commands back into
the minibuffer to be edited and re-executed with changes.  Giving
M-Altmode an argument, as in C-U M-Altmode, causes the minibuffer to
be loaded up with the last command in the ring, as if you had
typed it in again from scratch.  You can then edit it, execute it by
typing two Altmodes, or cancel it with C-G.  To get an earlier command
string instead of the most recent one, use the command @CC[] C-Y once
you are in the minibuffer.  This command "rotates" the ring of
saved commands much as M-Y rotates the ring of killed text.  Each @CC[]
C-Y reveals an earlier command string, until the ring has rotated
all the way around and the most recent one reappears.  @CC[] C-Y is
actually a way of saying C-M-Y, but in the minibuffer that's the only
way to type it, since Altmode inserts itself and Control-Meta
characters insert control characters.

  If you exit from Meta-Altmode with a C-G, nothing is executed and the
previous minibuffered command string is still remembered as the last
one.

@index{C-X ^}@index{^R Grow Window}
  While in a minibuffer, if you decide you want the minibuffer to use
more lines on the screen, you can use @w[C-X ^] (@w[^R Grow] Window) to get
more.  It gets one more line, or as many lines as its argument says.

@Manual{
@Chapter[Correcting Mistakes and EMACS Problems]

If you type an EMACS command you did not intend, the results are often
mysterious.  This chapter tells what you can do to cancel your mistake
or recover from a mysterious situation.  EMACS bugs and system crashes
are also considered.}

@Node(Name="Quitting", Prev="Minibuffer", Next="Lossage")

@Section[Quitting and Aborting]

@Commands{
C-G@\Quit.  Cancel running or partially typed command.

C-]@\Abort recursive editing level and cancel the command which
invoked it.

M-X Top Level@\Abort all recursive editing levels and subsystems which
are currently executing.
}

  There are three ways of cancelling commands which are not finished
executing: @dfn[quitting] with C-G, and @dfn[aborting] with C-] or M-X Top
Level.  Quitting is cancelling a partially typed command or one which
is already running.  Aborting is cancelling a command which has
entered a recursive editing level or subsystem.

@index{quitting}@index{C-G}
  Quitting with C-G is used for getting rid of a partially typed command,
or a numeric argument that you don't want.  It also stops a running
command in the middle in a relatively safe way, so you can use it if
you accidentally give a command which takes a long time.  In
particular, it is safe to quit out of killing; either your text will
@xxii[all] still be there, or it will @xxii[all] be in the kill ring
(or maybe both).  Quitting an incremental search does special things
documented under searching; in general, it may take two successive
C-G's to get out of a search.  C-G can interrupt EMACS at any time, so
it is not an ordinary command.

@index{recursive editing level}@Index{Aborting}@Index{Abort Recursive Edit}@Index{C-]}
  Aborting with C-] (Abort Recursive Edit) is used to get out of a
recursive editing level and cancel the command which invoked it.
Quitting with C-G cannot be used for this, because it is used to
cancel a partially typed command @xxi[within] the recursive editing level.
Both operations are useful.  For example, if you are editing a message
to be sent, C-G can be used to cancel the commands you use to edit the
message, and C-] cancels sending the message.  C-] either tells you
how to resume the aborted command or queries for confirmation before
aborting.

@index{Top Level}
  When you are in a position to use M-X, you can use M-X Top Level.
This is equivalent to "enough" C-] commands to get you out of all the
levels of subsystems and recursive edits that you are in.  C-] gets
you out one level at a time, but M-X Top Level goes out all levels at
once.  Both C-] and M-X Top Level are like all other commands, and
unlike C-G, in that they are effective only when EMACS is listening.

@Node(Name="Lossage", Prev="Quitting", Next="Undo")

@Section[Dealing with Common Forms of EMACS Lossage]

  This section describes various conditions which can cause EMACS not to
work, or cause it to display strange things, and how you can correct them.

@SubSection[Error Message]

  When EMACS prints an error message, it occupies the top line of the
screen, ends with a "?", and is accompanied by the ringing of the
bell.  Space causes the error message to disappear and be replaced by
the first line of text again.  Any other command is executed normally
as if there had been no error message (the error message disappears
during the redisplay after the command).  However, "?" enters the
error handler, which can be used to inspect the function call stack.
Most users will not be interested in doing this.  Type Help inside the
error handler to get its documentation, or C-] to exit it.

@index{Error Messages in Echo Area}
  If you prefer to have echo messages printed in the echo area, set
the variable Error Messages in Echo Area nonzero.

@SubSection[Subsystems and Recursive Editing Levels]

  Subsystems and recursive editing levels are important and useful
features of EMACS, but they can seem like malfunctions to the user who
does not understand them.

  If the mode line starts with a bracket "[" or a parenthesis "(", or
does not start with the word "EMACS", then you have entered a
subsystem (@Note(Node="Subsystems")@.) or a recursive editing level
(@Note(Node="Recursive", Name="Recursive Editing Levels").).

  In such a situation, first try typing C-].  This will get out of any
recursive editing level and most subsystems.  The usual mode line and
text display will reappear.  If C-] does not seem to have worked, type
the Help character.  Instead of printing "Doc (Type ? for Help)" in
the echo area, it will print a list of the subsystem's commands.  One
of these should be a command to exit or abort.

  If the above techniques fail, try restarting (see
@INFO(below)@Manual(section @ref(restarting))).

@SubSection[Garbage on the Screen]

  If the data on the screen looks wrong, it could be due to line noise
on input or output, a bug in the terminal, a bug in EMACS redisplay,
or a bug in an EMACS command.  To find out whether there is really
anything wrong with your text, the first thing to do is type C-L.
This is a command to clear the screen and redisplay it.  Often this
will display the text you expected.  Think of it as getting an
opinion from another doctor.

@SubSection[Garbage Displayed Persistently]

@index{terminal type}
@Twenex{@Index[Set Terminal Type]}
@ITS{@index[TCTYP]}
  If EMACS persistently displays garbage on the screen, or if it
outputs the right things but scattered around all the wrong places on
the screen, it may be that EMACS has the wrong idea of your terminal
type.  The first thing to do in this case is to exit from EMACS and
restart it.  Each time EMACS is restarted it asks the system what
terminal type you are using.  Whenever you detach and move to a
terminal of a different type you should restart EMACS as a matter of
course.  If you stopped EMACS with the exit command, or by
interrupting it when it was awaiting a command, then this is sure to
be safe.

  The system itself may not know what type of terminal you have.  You
should try telling the system with the @ITS{:TCTYP
command.}@Twenex{TERMINAL TYPE command in EXEC.  If your terminal is
compatible with one of the standard types but has a different size
screen, you must tell the system the size with the TERMINAL LENGTH and
TERMINAL WIDTH commands, because EMACS uses whatever size the system
says it knows.  Alternatively, you can use Set Terminal Type.
@Note(Node="Term Types", Name="Terminal Types"), for more information.}

@SubSection[URK Error (Address Space Exhausted)]
@label[EMACSURK]

@Index{Make Space}@INDEX{URK}@Index{Kill Ring}@Index{Undo}
@Index{Kill Libraries}@Index{Kill Some Buffers}
  If attempting to visit a file or load a library causes an "URK"
error, it means you have filled up the address space; there is no room
inside EMACS for any more files or libraries.  In this situation EMACS
will try to run the function Make Space for you.  If EMACS is unable
to do it for you, you may still be able to do M-X Make Space yourself.
This command compacts the data inside EMACS
to free up some space.  It also offers to discard data that may be
occupying a lot of space, such as the kill ring
(@Note(Node="Killing").), the undo memory (@Note(Node="Undo").), and
buffers created by @ITS(RMAIL,) TAGS and INFO.  Another way of freeing
space is to kill buffers with M-X Kill Some Buffers
(@Note(Node="Buffers")@.) or unload libraries with M-X Kill Libraries
(@Note(Node="Libraries").).

@index{What Available Space}
  Use the command M-X What Available Space to find out how close you
are to running out of space.  It tells you how many K of space you
have available for additional files or libraries.

@index{SPLIT}@index{Split File}@index{Unsplit File}
  Visiting a file causes an URK error if the file does not fit in the
available virtual memory space, together with the other buffers and
the libraries loaded.  A big enough file causes an URK error all by
itself.  For editing such large files, use the command Split File (in
the SPLIT library) to break it into subfiles.  These will be fairly
large files still, but not too large to edit.  After editing one or
more of the subfiles, use the command Unsplit File (also in SPLIT) to
put them back together again.

@Twenex{
  M-X Split File takes the name of the file to split as an argument.
The file is split into subfiles with the same first name as the
original file, but with extensions "1", "2", etc., for as many
subfiles as are needed depending on the size of the original file.
These numeric extensions should not be confused with version numbers;
a subfile FOO.1 would be created with version 1, and after editing you
might get up to FOO.1.3.  This has nothing to do with the third
subfile, FOO.3, which would have its own version number (perhaps
FOO.3.2).

  M-X Unsplit File takes the name of the file to merge into as an
argument.  It finds the subfiles the same way Split File makes them,
by taking successive numbers as extensions.  When a nonexistent
extension is reached, Unsplit File assumes that means it has already
processed all the subfiles and that it is finished.}

@SubSection[All Type-in Echoes and Nothing Else Happens]

@index{TECO}@Index{Top Level}
  If you find that EMACS is not responding to your commands except for
echoing them all at the bottom of the screen, including the Return
character, and that Rubout causes erased characters to be retyped
instead of erased, then you have managed to exit from EMACS back to
TECO.  Often this follows an "Error in error handler" message which
indicates that a condition arose in which the error handler could not
function.  You can get back into EMACS by typing :M..L, or by
restarting (see below).  If you ever @xxi[want] to exit back to TECO,
you can do M-X Top Level with an argument greater than zero.  Before
using :M..L, get rid of any other characters you have typed by
mistake by typing a C-G.

@SubSection[EMACS Hung and Not Responding]
@label(restarting)

@Index{Restarting}
  Sometimes EMACS gets hung and C-G does not work.  The more drastic
procedure of restarting EMACS may work at such times.  C-G can fail to
work because it only takes effect between the TECO commands which make up an
EMACS program, never in the middle of one (only a few TECO commands
allow quitting at any time), so as to prevent TECO's internal data
structures from becoming inconsistent.  If EMACS is hung inside a TECO
command, C-G is not noticed, but restarting can still be tried.

  To restart EMACS, type @ITS{CALL or C-Z} @Twenex{Control-C twice} to
stop EMACS, then @ITS{G}@Twenex{START} to restart it.  While
restarting TECO in this way is usually safe (especially at times when
TECO is doing I/O), there are certain times at which it will cause the
TECO data structures to be inconsistent, so do not try it unless other
measures have failed.

  Your ultimate safeguard against a wedged EMACS is to save your work
frequently.

@Node(Name="Undo", Prev="Lossage", Next="Journals")

@Section[Undoing Changes to the Buffer]
@index{Undo}@index{killing}

  If you mistakenly issue commands that make a great change to the
buffer, you can often undo the change without having to know precisely
how it came about.  This is done by using M-X Undo.  Type M-X
Undo<cr> and the change is undone.  It does not matter if you
have moved the cursor since you made the change; it is undone
where it was originally done.

  The first thing Undo does is tell you what kind of change it plans
to undo (kill, fill, undo, case-convert, etc).  Then it asks whether
to go ahead.  If you say "Y", the change is actually undone.

@index{deletion}
  Not all changes to the buffer can be undone: deletion (as opposed to
killing) can't be, and changes in indentation can't be, nor can many
forms of insertion (but they aren't as important since they don't
destroy information).  Also, a Replace String or Query Replace can't
be undone, which is a shame.  The reason is that actually they make many
small changes, and Undo only knows how to remember one contiguous
change.  Perhaps someday I will be able to fix this.

  As a result, when you say Undo, it may undo something other
than the latest change if the latest change was not undoable.
This might seem to pile one disaster on another, but it doesn't,
because you can @xxii[always] Undo the Undo if it didn't help.
But you can avoid even having to do that, if you look at what type of
change Undo says it will undo.

  If you want to undo a considerable amount of editing, not just the
last change, the Undo command can't help you, but M-X Revert File
(@Note(Node="Revert")@.) might be able to.  If you have been writing a
journal file (@Note(Node="Journals").), you can replay the journal
after deleting the part that you don't want.

@Node(Name="Journals", Prev="Undo", Next="Bugs")

@Section[Journal Files]

  A journal file is a record of all the commands you type during an
editing session.  If you lose editing because of a system crash, an
EMACS bug, or a mistake on your part, and you have made a journal
file, you can replay the journal or part of it to recover what you
lost.  Journal files offer an alternative to auto saving, using less
time and disk space if there is no crash, but requiring more time when
you recover from a crash.  @Note(Node="AutoSave", Name="Auto Save").

@SubSection[Writing Journal Files]

@Index{Journal files}@index{Start Journal File}

  In order to make a journal file, you must load the JOURNAL library
and then execute M-X Start Journal File<filename><cr>.  Immediately,
most of the current status of EMACS is recorded in the journal file, and
all subsequent commands are recorded as they are typed.  This happens
invisibly and silently.  The journal file is made fully up to date on
the disk after every 50th character, so the last 50 characters of type
in is the most you can lose.

@Index{Home Directory}
  The default filenames for the journal file are @ITS[<home
directory>;<user name> JRNL]@Twenex[EMACS.JOURNAL].  There is rarely a
reason to use any other name, because you only need one journal file
unless you are running two EMACSes at the same time.

@SubSection[Replaying Journal Files]

@Index{Replay Journal File}
  To replay the journal file, get a fresh EMACS, load JOURNAL, and do
M-X Replay Journal File<filename><cr>.  The filename can usually be
omitted since normally you will have used the defaults when creating
the journal.

@Index{C-G}@Index{Quit}
  After a delay while the files, buffers and libraries are loaded as
they were when the journal file was written, EMACS will begin
replaying the commands in the journal before your very eyes.  Unlike
keyboard macros, which execute invisibly until they are finished,
journal files display as they are executed.  This allows you to see
how far the replay has gone.  You can stop the process at any time by
typing C-G.  Aside from that, you should not type anything on the
keyboard while the replay is going on.

  If the need for a replay is the result of a system crash or EMACS
crash, then you probably want to replay the whole file.  This is what
happens naturally.  If you are replaying because you made a great
mistake, you probably want to stop the replay before the mistake.
This is when it becomes useful to type C-G to stop the
replay.  Alternatively, you can edit the journal file, and delete
everything from the point of the mistake to the end, before you replay
it.

  Once the replay is complete, save all your files immediately.  Don't
tempt fate!

@Index{Recursive editing level}
  If you quit with C-G in the middle of a command while writing a
journal file, there is no way to record in the journal file how much
of the command has already been completed.  So, when the journal is
replayed, EMACS has to ask you to fill in for it.  The command which
was interrupted will be replayed to completion; then, you are given a
recursive editing level in which to restore the file to the desired
state.  This happens only if the C-G originally interrupted an
executing command.  C-G typed to discard an argument or partial
command while EMACS is waiting for input can be and is replayed
correctly without asking you for help.

@SubSection[Journal File Format]

  To edit a journal file, you must know the format.  It is designed to
be mostly transparent.

  The primary problem which the journal file format has to solve is
how to represent 9-bit command characters in a file which can contain
only 7-bit ASCII characters.  (We could have filled the journal file
with 9-bit characters, but then you would not be able to print it out
or edit it).  The solution we have used is to represent each command
by two characters in the file.

@Index{Control}@Index{Meta}
  So, a Control character is represented by a caret ("^") followed by
the basic character, as in "^E" for Control-E.  This was chosen to
be mnemonically significant.  A Meta character is represented by "+"
followed by the basic character, so that Meta-[ is represented by
"+[".  A Control-Meta character is represented by "*" followed by the
basic character, as in "*X" for C-M-X.

  A command which is not Control or Meta is represented as a space
followed by the command itself, except that Return is represented by a
CRLF rather than a space and a carriage return.  This prevents the
journal file from being one huge line, and makes insertion of text
very recognizable: the text inserted appears in the journal file
alternating with spaces.

@Index{Help}
  The Help character, which is not covered by the scheme as described
so far, is represented by "??".

  An asynchronous quit, which is a problem for replaying, is
represented by a single character, a @CTL[G], while a synchronous quit,
which can be replayed reliably, is represented by ":@CTL[G]".  EMACS
considers a quit synchronous, and uses ":@CTL[G]" to record it, if EMACS
was waiting for terminal input when the C-G was typed.

  Your commands themselves are not the only information in the journal
file.  EMACS records other information which is necessary in replaying
the journal properly.  The colon character ":" indicates a block of such
information.  Usually the extent of the block is easily recognizable
because its contents do not resemble the representations of commands
described above.  A large block of information starting with a colon
appears at the beginning of every journal file.

  Colons are also used to record the precise effects of certain
commands such as C-V whose actions depend on how the text was
displayed on the screen.  Since the effects of such commands are not
completely determined by the text, replaying the command could produce
different results, especially if done on a terminal with a different
screen size.  The extra information recorded in the journal makes it
possible to replay these commands with fidelity.

  A semicolon in the journal file begins a comment, placed there for
the benefit of a human looking at the journal.  The comment ends at
the beginning of the following line.

@SubSection[Warnings]

  Proper replaying of a journal file requires that all the surrounding
circumstances be unchanged.

  In particular, replaying begins by visiting all the files that were
visited when the writing of the journal file began; not the latest
versions of these files, but the versions which were the latest at the
earlier time.  If those versions, which may no longer be the latest,
have been deleted, then replaying is impossible.

  If your init file has been changed, the commands when replayed may
not do what they did before.

  These are the only things that can interfere with replaying, as long
as you start writing the journal file immediately after starting
EMACS.  But as an editing session becomes longer and files are saved,
the journal file contains increasing amounts of waste in the form of
commands whose effects are already safe in the newer versions of the
edited files.  Replaying the journal will replay all these commands
wastefully to generate files identical to those already saved, before
coming to the last part of the session which provides the reason for
replaying.  Therefore it becomes very desirable to start a new journal
file.  However, many more precautions must be taken to insure proper
replaying of a journal file which is started after EMACS has been used
for a while.  These precautions are described here.  If you cannot
follow them, you must make a journal checkpoint (see below).

  If any buffer contains text which is not saved in a file at the time
the journal file is started, it is impossible to replay the journal
correctly.  This problem cannot possibly be overcome.  To avoid it,
M-X Start Journal File offers to save all buffers before actually
starting the journal.

  Another problem comes from the kill ring and the other ways in
which EMACS remembers information from previous commands.  If any such
information which originated before starting the journal file is used
after starting it, the journal file cannot be replayed.  For example,
suppose you fill a paragraph, start a journal file, and then do M-X
Undo?  When the journal is replayed, it will start by doing M-X Undo,
but it won't know what to undo.  It is up to you not to do anything
that would cause such a problem.  It should not be hard.  It would be
possible to eliminate this problem by clearing out all such data
structures when a journal file is started, if users would prefer that.

  A more difficult problem comes from customization.  If you change an
option or redefine a command, then start a journal file, the journal
file will have no record of the change.  It will not replay correctly
unless you remember to make the same change beforehand.
Customizations made in an init file do not cause a problem because the
init file has also been run when the journal file is replayed.
Customizations made directly by the user while the journal file is
being written are also no problem because replaying will make the same
changes at the right times.  However, a customization made while a
journal file is being written @xxi[will] be a problem if a new journal
file is started.

@SubSection[Journal Checkpoints]

  The only cure for the problems of starting a journal in mid-session
is to record the complete state of EMACS at the time the journal
is begun.  This is not done normally because it is slow; however, you
can do this if you wish by giving M-X Start Journal
File a numeric argument.  This writes the complete state of
EMACS into the file @ITS[<home directory>;TS ESAVE]@Twenex[ESAVE.EXE].
To replay the journal, run ESAVE, the saved checkpoint, instead of
EMACS; then load JOURNAL and do M-X Replay Journal File as described
above.  Be sure to delete the checkpoint if you are finished with it,
since it tends to be large.  Delete them also when you log out; it may
be possible to have a command file which deletes them automatically
when you log out.  Checkpoint files more than a day old may
be deleted by others without notice; but don't leave it up to them.

@Node(Name="Bugs", Prev="Journals", Next="PICTURE")

@Section[Reporting Bugs]

@index{Bugs}
  Sometimes you will encounter a bug in EMACS.  To get it fixed, you
must report it.  It is your duty to do so; but you must know when to
do so and how if it is to be constructive.

@Subsection[When Is There a Bug]

  If EMACS executes an illegal instruction, or dies with an operating
system error message that indicates a problem in the program (as
opposed to "disk full"), then it is certainly a bug.

  If EMACS updates the display in a way that does not correspond to
what is in the buffer, then it is certainly a bug.  If a command seems
to do the wrong thing but the problem is gone if you type C-L, then it
is a case of incorrect display updating.

  Taking forever to complete a command can be a bug, but you must make
certain that it was really EMACS's fault.  Some commands simply take a
long time.  Quit or restart EMACS and type Help L to see whether the
keyboard or line noise garbled the input; if the input was such that
you @xxii[know] it should have been processed quickly, report a bug.
If you don't know, try to find someone who does know.

  If a command you are familiar with causes an EMACS error message in
a case where its usual definition ought to be reasonable, it is
probably a bug.

  If a command does the wrong thing, that is a bug.  But be sure you
know for certain what it ought to have done.  If you aren't
familiar with the command, or don't know for certain how the command
is supposed to work, then it might actually be working right.  Rather
than jumping to conclusions, show the problem to someone who knows for
certain.

  Finally, a command's intended definition may not be best for editing
with.  This is a very important sort of problem, but it is also a
matter of judgement.  Also, it is easy to come to such a conclusion
out of ignorance of some of the existing features.  It is probably
best not to complain about such a problem until you have checked the
documentation in the usual ways (INFO and Help), feel confident that
you understand it, and know for certain that what you want is not
available.  If you feel confused about the documentation instead, then
you don't have grounds for an opinion about whether the command's
definition is optimal.  Make sure you read it through and check the
index or the menus for all references to subjects you don't fully
understand.  If you have done this diligently and are still confused,
or if you finally understand but think you could have said it better,
then you have a constructive complaint to make @xxi(about the
documentation).  It is just as important to report documentation bugs
as program bugs.

@Subsection[How to Report a Bug]

  When you decide that there is a bug, it is important to report it
and to report it in a way which is useful.  What is most useful is an
exact description of what commands you type, starting with a fresh
EMACS just loaded, until the problem happens.  Send the bug report to
BUG-EMACS@@MIT-AI@ITS{.}@Twenex{ if you are on the Arpanet, or to the
author (see the preface for the address).}

  The most important principle in reporting a bug is to report @xxii[facts],
not hypotheses or conditions.  It is always easier to report the
facts, but people seem to prefer to strain to think up explanations
and report them instead.  If the explanations are based on guesses
about how EMACS is implemented, they will be useless; we will
have to try to figure out what the facts must have been to lead to
such speculations.  Sometimes this is impossible.  But in any case, it
is unnecessary work for us.

  For example, suppose that you type C-X C-V
@Twenex{<GLORP>BAZ.UGH}@ITS{GLORP;BAZ UGH}<cr>, visiting a file which
(you know) happens to be rather large, and EMACS prints out "I
feel pretty today".  The best way to report the bug is with a
sentence like the preceding one, because it gives all the facts
and nothing but the facts.

  Do not assume that the problem is due to the size of the file and
say "When I visit a large file, EMACS prints out 'I feel pretty
today'".  This is what we mean by "guessing explanations".  The
problem is just as likely to be due to the fact that there is a "Z" in
the filename.  If this is so, then when we got your report, we would
try out the problem with some "big file", probably with no "Z" in its
name, and not find anything wrong.  There is no way in the world that
we could guess that we should try visiting a file with a "Z" in its
name.

  Alternatively, the problem might be due to the fact that the file
starts with exactly 25 spaces.  For this reason, you should make sure
that you don't change the file until we have looked at it.  Suppose
the problem only occurs when you have typed the C-X C-A command
previously?  This is why we ask you to give the exact sequence of
characters you typed since loading the EMACS.

  You should not even say "visit the file ..." instead of "C-X C-V"
unless you @xxi[know] that it makes no difference which visiting
command is used.  Similarly, rather than saying "if I have three
characters on the line", say "after I type <cr> A B C <cr> C-P", if
that is the way you entered the text.  A journal file containing the
commands you typed to reproduce the bug is a very good form of report.

  If you are not in Fundamental mode when the problem occurs, you
should say what mode you are in.

@index{FS Flags}@index{minibuffer}
  Be sure to say what version of EMACS and TECO are running.  If you
don't know, type Meta-Altmode QEMACS Version= FS Version=  and
EMACS will print them out.  (This is a use of the minibuffer.
@Note(Node="Minibuffer").)

  If the bug occurred in a customized EMACS, or with several optional
libraries loaded, it is helpful to try to reproduce the bug in a more
standard EMACS with fewer libraries loaded.  It is best if you can
make the problem happen in a completely standard EMACS with no
optional libraries.  If the problem does @xxii[not] occur in a
standard EMACS, it is very important to report that fact, because
otherwise we will try to debug it in a standard EMACS, not find the
problem, and give up.  If the problem does depend on an init file,
then you should make sure it is not a bug in the init file by
complaining to the person who wrote the file, first.  He should check
over his code, and verify the definitions of the TECO commands he is
using by looking in @ITS{@w[INFO;TECORD >]}@Twenex{INFO:TECORD.INFO}.
Then if he verifies that the bug is in EMACS he should report it.  We
cannot be responsible for maintaining users' init files; we might not
even be able to tell what they are supposed to do.

  If you can tell us a way to cause the problem without reading in any
files, please do so.  This makes it much easier to debug.  If you
do need files, make sure you arrange for us to see their exact
contents.  For example, it can often matter whether there are spaces
at the ends of lines, or a line separator after the last line in the
buffer (nothing ought to care whether the last line is terminated, but
tell that to the bugs).  @Twenex{If you are reporting the bug from a
non-Arpanet site, keep the files small, since we may have to
@xxii[type them in], unless you send them on mag tape.}

  If EMACS gets an operating system error message, such as for an
illegal instruction, then you can probably recover by restarting it.
But before doing so, you should make a dump file.  If you restart or
continue the EMACS before making the dump, the trail will be covered
and it will probably be too late to find out what happened.
@Twenex{Use the SAVE command to do this; however, this does not record
the contents of the accumulators.  To do that, use the EXEC commands
EXAMINE 0, EXAMINE 1, etc., through EXAMINE 17.  Include the numbers
printed by these commands as part of your bug report.}@ITS{Use the DDT
command
@;@example[
:PDUMP CRASH;EMACS <yourname>
@;]
(or use any other suitable filename) to do this.  Your bug report
should contain the filename you used for the dump, and the error
message printed when the EMACS stopped, as well as the events leading
up to the bug.  The first number in the error message is the PC, which
is not recorded by :PDUMP, so it must be copied precisely.  Also type
.JPC/ and include DDT's response in your report.}

  A dump is also useful if EMACS gets into a wedged state in which
commands that usually work do strange things.

@manual{@include(wordab.mss)@String(Filename="EMACS")}

@Node(Name="PICTURE", Prev="Bugs", Next="Sort")

@Chapter[The PICTURE Subsystem, an Editor for Text Pictures]
@index{pictures}@index{Edit Picture}

  If you want to create a picture made out of text characters (for
example, a picture of the division of a register into fields, as a
comment in a program), the PICTURE package can make it easier.

@index{libraries}
  Do M-X Load LibPICTURE<cr>, and then M-X Edit Picture is available.
Do M-X Edit Picture with point and mark surrounding the picture to be
edited.  Edit Picture enters a recursive editing level (which you exit
with @CMC[], as usual) in which certain commands are redefined to
make picture editing more convenient.

  While you are inside Edit Picture, all the lines of the picture are
padded out to the margin with spaces.  This makes two-dimensional
motion very convenient; C-B and C-F move horizontally, and C-N and C-P
move vertically without the inaccuracy of a ragged right margin.  When
you exit from Edit Picture, spaces at the ends of lines are removed.
Nothing stops you from moving outside the bounds of the picture, but
if you make any changes there slightly random things may happen.

  Edit Picture makes alteration of the picture convenient by
redefining the way printing characters and Rubout work.  Printing
characters are defined to replace (overwrite) rather than inserting
themselves.  Rubout is defined to undo a printing character:  it
replaces the previous character with a space, and moves back to it.

  Return is defined to move to the beginning of the next line.  This
makes it usable for moving to the next apparently blank (but actually
filled with nothing but spaces) line, just as you use Return
normally with lines that are really empty.  C-O creates new blank
lines after point, but they are created full of spaces.

  Tab is redefined to indent (by moving over spaces, not inserting
them) to under the first non-space on the previous line.  Linefeed is
as usual equivalent to Return followed by Tab.

@index{Up Picture Movement}@index{Down Picture Movement}
@index{Left Picture Movement}@index{Right Picture Movement}
  Four movement-control commands exist to aid in drawing vertical or
horizontal lines: If you give the command M-X Up Picture Movement,
each character you type thereafter will cause the cursor to move up
instead of to the right.  Thus if you want to draw a line of dashes up
to some point, you can give the command Up Picture Movement, type
enough dashes to make the line, and then give the command Right
Picture Movement to put things back to normal.  Similarly, there are
functions to cause downward and leftward movement: Down Picture
Movement and Left Picture Movement.  These commands remain in effect
only until you exit the Edit Picture function, (One final note: you
can use these cursor movement commands outside of Edit Picture too,
even when not in Overwrite mode.  You have to be somewhat careful
though.)

  Possible future extensions include alteration of the kill and
un-kill commands to replace instead of deleting and inserting, and to
handle rectangles if two corners are specified using point and the
mark.

  The DRAW library is a user-contributed library containing other
commands useful for editing pictures.

@Node(Name="Sort", Prev="PICTURE")

@Chapter[Sorting Functions]
@index{sorting}@index{Region}@index{pages}@index{paragraphs}@index{lines}
@index{Sort Lines}@index{Sort Paragraphs}@index{Sort Pages}

  The SORT library contains functions called Sort Lines, Sort
Paragraphs and Sort Pages, to sort the region alphabetically
line by line, paragraph by paragraph or page by page.  For example,
Sort Lines rearranges the lines in the region so that they are
in alphabetical order.

   Paragraphs are defined in the same way as for the paragraph-motion
functions (@Note(Name="Paragraphs", Node="Sentences")@.) and pages are defined
as for the page motion commands (@Note(Node="Pages").).  All
of these functions can be undone by the Undo command (@Note(Node="Undo").).
A numeric argument tells them to sort into reverse alphabetical order.

@index{Make Page Permutation Table}@index{Permute Pages From Table}
@index{*Permuted File* (buffer)}@index{*Permutation Table* (buffer)}
  You can rearrange pages to any way you like using the functions Make
Page Permutation Table and Permute Pages From Table.  Make Page
Permutation Table starts you editing a table containing the first line
of each page.  This table is kept in a buffer named
*Permutation Table*.  You specify the new ordering for the pages by
rearranging the first lines into the desired order.  You can also omit
or duplicate pages by omitting or duplicating the lines.

@index{Insert Buffer}
  When you are finished rearranging the lines, use Permute Pages From
Table to rearrange the entire original file the same way.  Reselect
the original buffer first.  The permuted version is constructed in a
buffer named *Permuted File*.  The original buffer is not changed.
You can use Insert Buffer to copy the data into the original buffer.

@manual{
@Appendix(Particular Types of Terminals)
}
@Node(Name="Ideal", Up="Characters", Prev="Characters")

@AppendixSection[Ideal Keyboards]
@index{meta}@index{SAIL characters}
@ITS{@INDEX[Escape key]}

  An ideal EMACS keyboard can be recognized because it has a Control
key and a Meta key on each side, with another key labeled Top above
them.

  On an ideal keyboard, to type any character in the 9-bit character
set, hold down Control or Meta as appropriate while typing the key for
the rest of the character.  To type C-M-K, type K while holding down
Control and Meta.

@ITS{
  You will notice that there is a key labeled "Escape" and a key
labeled "Alt".  The Altmode character is the one labeled "Alt".
"Escape" has other functions entirely; it is handled by ITS and
has nothing to do with EMACS.  While we are talking about keys handled
by ITS, on Meta keyboards the way to interrupt a program is
CALL, rather than Control-Z, and entering communicate mode uses the
BACK-NEXT key rather than Control-_.  CALL @xxi[echoes] as @CTL[Z], but
if you type C-Z it is just an ordinary character which happens to be
an EMACS command to return to the superior.  Similarly, BACK-NEXT
echoes as @CTL[_] but if you type @CTL[_] it is just an EMACS command which
happens not to be defined.
  
@index{SAIL Character Mode}
  The key labeled "Top" is an extra shift key.  It is used to produce
the peculiar "SAIL" graphics characters which appear on the same keys
as the letters.  The "Shift" key gets you upper-case letters, but
"Top" gets you the SAIL characters.  As EMACS commands, these
characters are normally self-inserting, like all printing characters.
But once inserted, SAIL characters are really the same as ASCII
control characters, and since characters in files are just 7 bits
there is no way to tell them apart.  EMACS can display them either as
ASCII control characters, using an uparrow or caret to indicate them,
or it can display them as SAIL characters, whichever you like.  The
command Control-Alpha (SAIL Character Mode) toggles the choice.  Alpha
is a SAIL character and you can only type it on a terminal with a Top
key, but only those terminals can display the SAIL characters anyway.
SAIL characters are displayed if the variable SAIL Character Mode is
nonzero.

  One other thing you can do with the Top key is type the Help
character, which is Top-H on these keyboards.  BACK-NEXT H also
works, though.

  For inserting an Altmode, on an ideal keyboard you can type
C-M-Altmode.  C-Altmode is a synonym for C-M-C (@w[^R Exit]).
}

  The "bit prefix" characters that you must use on other terminals are
also available on terminals with Meta keys, in case you find them more
convenient or get into habits on those other terminals.
@INFO{*Note Bit Prefix: Characters.}

  To type numeric arguments on these keyboards, type the digits or
minus sign while holding down either Control or Meta.

@Node(Name="EditKey", Up="Characters", Prev="Characters")

@AppendixSection[Keyboards with an "Edit" key]
@index{Edit key}@index{meta}

  Keyboards with Edit keys probably belong to Datamedia or Teleray
terminals.  The Edit and Control keys are a pair of shift keys.  Use
the Control key to type Control characters and the Edit key to type
Meta characters.  Thus, the 9-bit EMACS character C-M-Q is typed
by striking the "Q" key while holding down "Edit" and "Control".

  While the Edit key is a true independent bit which can be combined
with anything else you can type, the Control key really means "ASCII
control".  Thus, the only Control characters you can type are those
which exist in ASCII.  This includes C-A@Twenex{, C-B, C-D}
through C-@ITS{Y}@Twenex{Z}, C-], C-@@, C-\,
and C-^.  @CZ[] @ITS{and C-_} can be typed on the terminal but
@ITS{they are}@Twenex{it is} intercepted by the operating system and
therefore unavailable as EMACS command@ITS(s).  C-[ is not available
because its spot in ASCII is pre-empted by Altmode.
The corresponding Control-Meta commands are also hard to type.  If
you can't type C-; directly, then you also can't type C-M-; directly.  

  Though you can't type C-; directly, you can use the bit prefix
character C-^ and type C-^ ;.  Similarly, while you can't type C-M-;,
you can use the Control-Meta prefix @CC[] and type @CC[] ;.  Because
C-^ is itself awkward, we have designed the EMACS command set so that
the hard-to-type Control (non-Meta) characters are rarely needed.

@ITS{
  In order to type the Help character you must actually type two
characters, C-_ and H.@:  C-_ is an escape character for ITS itself, and
C-_ followed by H causes ITS to give the Help character as input to
EMACS.
}

@index{numeric arguments}
  To type numeric arguments, it is best to type the digits or minus sign
while holding down the Edit key.

@ITS{
@Node(Name="Losers",  Up="Characters",  Prev="Characters")}
@Twenex{@Node(Name="Losers",  Up="Characters",  Prev="Characters", Next="Term Types")}

@AppendixSection[ASCII Keyboards]
@index{Meta}@index{Edit key}@index{bit prefix characters}@index{metizer}

  An ASCII keyboard allows you to type in one keystroke only the
command characters with equivalents in ASCII.  No Meta characters are
possible, and not all Control characters are possible either.  The
Control characters which you can type directly are C-A@Twenex{, C-B,
C-D} through C-@ITS{Y}@Twenex{Z}, C-], C-@@, C-\, and C-^.  @CZ[]@ITS{
and C-_} can be typed on the terminal but @ITS{they are}@Twenex{it is}
intercepted by the operating system and therefore unavailable as EMACS
command@ITS(s).  C-[ is not available because its spot in ASCII is
pre-empted by Altmode.


  Those characters which you can't type directly can be typed as two
character sequences using the bit prefix characters Altmode, @CC[]
and C-^.  Altmode turns on the Meta bit of
the character that follows it.  Thus, M-A can be typed as Altmode A,
and C-M-A as Altmode C-A.  Altmode can be used to get almost all of
the characters that can't be typed directly.  @CC[] can be used to type
any Control-Meta character, including a few that Altmode can't be used
for because the corresponding non-Meta character isn't on the
keyboard.  Thus, while you can't type C-M-; as Altmode Control-;,
since there is no Control-; in ASCII, you can type C-M-;
as @CC[] ;.  The Control (non-Meta) characters which can't be typed
directly require the use of C-^, as in C-^ < to get the effect of C-<.
Because C-^ by itself is hard to type, the EMACS command set is arranged
so that most of these non-ASCII Control characters are not very
important.  Usually they have synonyms which are easier to type.  In fact, in this
manual only the easier-to-type forms are usually mentioned.

@ITS{
  In order to type the Help character you must actually type two
characters, C-_ and H.@:  C-_ is an escape character for ITS itself, and
C-_ followed by H causes ITS to give the Help character as input to
EMACS.
}

@index{numeric arguments}@index{autoarg mode}@index{init file}

  On ASCII keyboards, you can type a numeric argument by typing an
Altmode followed by the minus sign and/or digits.  Then comes
the command for which the argument is intended.  For example, type
Altmode 5 C-N to move down five lines.  If the command is a Meta
command, it must have an Altmode of its own, as in Altmode 5 Altmode F
to move forward five words.

  Note to customizers: this effect requires redefining the Meta-digit
commands, since the Altmode and the first digit amount to a Meta-digit
character.  The new definition is @w[^R Autoarg], and the redefinition is
done by the default init file.

  If you use numeric arguments very often, and you dislike having to
start one with an Altmode, you might enjoy using Autoarg mode, in
which you can specify a numeric argument by just typing the digits.
@Note(Node="Arguments"), for details.

@Twenex{
@Node(Name="Term Types", Up="Characters", Prev="Losers")

@AppendixSection[Specifying Terminal Type]

  To make the EMACS display work properly, you must specify somehow
what sort of terminal you are using, because each brand of display terminal
requires different control codes.  The best way to do this is to tell
EXEC, if your terminal is a type that EXEC knows about.  Otherwise,
you must tell EMACS itself.

@Index{EXEC}@Index{Terminal Type}
  To tell EXEC your terminal type, use the TERMINAL TYPE command.
Type "?" after that command to see the alternatives.  Then type the
alternative which is right, if one of them is.  Your terminal may not
actually be one of those types, but may still be compatible with one.
If it is compatible in command codes but its screen width or height is
not the same, you must specify them with the TERMINAL HEIGHT and
TERMINAL WIDTH commands.

@Index{Set Terminal Type}@index{TRMTYP}
  If EXEC does not know a terminal compatible with yours, you must
tell EMACS yourself.  Use the M-X Set Terminal Type command, with a
string argument which is an EMACS terminal type name.  Do
@example[
M-X List LibraryTRMTYP
@;]
to see a list of the EMACS terminal type names and their meanings.
Even though you set the terminal type explicitly, the screen width and
height are still obtained from the system, so you must use the EXEC
commands TERMINAL HEIGHT and TERMINAL WIDTH to specify them, even
though you cannot tell EXEC the terminal type.

  Restarting EMACS as an emergency abort does not forget the settings
you have established with Set Terminal Type, because if the system
reports the same information as before, and EMACS knows that you
overrode the system before, it continues to obey your Set Terminal
Type rather than the system's terminal type.

@AppendixSubSec[More Advanced Terminal Options]
@Index{FS Flags}

  If your terminal is not precisely compatible with what you
specified, you may need to turn off the use of some terminal features
that don't work right.  This is done by setting several FS flags.
@Note(Node="FS Flags").

  The flag FS I&D CHAR controls the use of the insert and delete
character operations.  They are used if it is nonzero.  The flag FS
I&D Line controls use of insert and delete line operations.  They are
used if the flag is positive.  If the flag is negative, then
region-scrolling operations are used instead.  These flags are set
automatically according to the terminal type specified, and reflect
what is expected to work on that type of terminal.  You need to change
them only if your terminal does not really handle what it is supposed
to.

  FS TTYFCI controls whether EMACS thinks you have a Meta key.  It
should be negative for terminals which have ideal keyboards, and
positive for terminals with a Meta key which encode it as the 200 bit
in an 8-bit character.  Frequently terminals of the same model differ
in whether they have a Meta key.

  You can specify the terminal type code number explicitly by giving
an argument to FS TTY INIT.  This is how Set Terminal Type works.
You can specify the terminal width explicitly by setting FS WIDTH.

@AppendixSubSec[Padding and Flow Control]

  EMACS normally turns off page mode, and causes the system to treat
the input characters @ctl[S] and @ctl[Q] as ordinary input instead of
stopping and starting output.  This is so that they can be used as
commands.  Then EMACS pads output so as to try to prevent the terminal
from ever generating @ctl[S] and @ctl[Q] for flow control.  If this
does not work, you need to fiddle around until it does.

  FS PAD CHR specifies the character used to do padding.  0 and 127
are useful characters to try.  If it is negative, actual time delays
are used instead of padding characters.  Otherwise compatible
terminals often require different padding.  FS OSPEED tells EMACS
what the speed of the line is, and controls the @xxi[amount] of
padding used.  By setting it to a value larger than the truth you can
increase the amount of padding used.  The original value is obtained
from the system, but sometimes the system fails to know the correct
value.

@index{C-S}@index{C-Q}@Index{FS Flags}
  If you cannot manage to make padding work well enough to avoid
terminal-generated @ctl[S] and @ctl[Q] characters, then you may need
to re-enable their use for flow control.  Do this by setting FS TTY
PAGE nonzero.  You will have to do without the C-S and C-Q commands,
though.
}
@Node(Name="NoLowerCase", Up="Characters")

@AppendixSection[Upper-case-only Terminals]
@index{case conversion}

  On terminals lacking the ability to display or enter lower case
characters, a special input and output case-flagging convention has
been defined for editing files which contain lower case characters.

  The customary escape convention is that a slash prefixes any upper
case letter;  all unprefixed letters are lower case (but see below for the
"lower case punctuation characters").  This convention is chosen
because lower case is usually more frequent in files containing any
lower case at all.  Upper case letters are displayed with a slash
("/") in front.  Typing a slash followed by a letter is a good way to
insert an upper case letter.  Typing a letter without a slash
inserts a lower case letter.  For the most part, the buffer will appear
as if the slashes had simply been inserted (type /A and it inserts
an upper case A, which displays as /A), but cursor-motion commands
will reveal that the slash and the A are really just one character.
Another way to insert an upper-case letter is to quote it with C-Q.

  Note that this escape convention applies only to display of the
buffer and insertion in the buffer.  It does not apply to arguments
of commands (it is hardly ever useful for them, since case is
ignored in command names and most commands' arguments).  Case
conversion is performed when you type commands into the minibuffer,
but not when the commands are actually executed.

  The ASCII character set includes several punctuation characters
whose codes fall in the lower case range and which cannot be typed or
displayed on terminals that cannot handle lower case letters.  These
are the curly braces ("{" and "}"), the vertical bar ("|"), the tilde
("~"), and the accent grave ("`").  Their upper case equivalents are,
respectively, the square brackets ("[" and "]"), the backslash ("\"),
the caret ("^"), and the atsign ("@@").  For these punctuation
characters, EMACS uses the opposite convention of that used for
letters: the ordinary, upper case punctuations display as and are
entered as themselves, while the lower case forms are prefixed by
slashes.  This is because the "lower case" punctuations are much less
frequently used.  So, to insert an accent grave, type "/@@".

  When the slash escape convention is in effect, a slash is displayed
and entered as two slashes.

  This slash-escape convention is not normally in effect.  To turn it
on, the TECO command -1$ (minus one dollar sign, not Altmode!) must
be executed.  The easiest way to do this is to use the minibuffer:
Altmode Altmode -1$ Altmode Altmode.  To turn off the escape
convention (for editing a file of all upper case), the command is 0$
(zero dollar sign), or Altmode Altmode 0$ Altmode Altmode.  If you use
such a bad terminal frequently, you can define yourself an EMACS
extension, a command to turn slash-escape on and off.

@index{FS Flags}@index{TECO}
  The lower case editing feature is actually more flexible than
described here.  Refer to the TECO commands F$ @INFO[(dollar
sign)]@Case{Device, LPT [(dollar sign)]} and FS CASE, using M-X
TECDOC, for full details.  @Note(Node="FS Flags").

@INFO{* Note Case: Case, for commands to change the case of text already in
the buffer.
}
@Manual{@Include(SLOWLY.MSS)@String(Filename="EMACS")}

@Node(Name="Printing", Up="Characters")

@Appendix[Use of EMACS from Printing Terminals]
@index{printing terminal}

  While EMACS was designed to be used from a display terminal, you can
use it effectively from a printing terminal.  You cannot, however,
learn EMACS using one.

  All EMACS commands have the same editing effect from a
printing terminal as they do from a display.  All that is different is
how they try to show what they have done.  EMACS attempts to make the
same commands that you would use on a display terminal act like an
interactive line-editor.  It does not do as good a job as editors
designed originally for that purpose, but it succeeds well enough to
keep you informed of what your commands are accomplishing, provided
you know what they are supposed to do and know how they would look on
a display.

  The usual buffer display convention for EMACS on a printing terminal
is that the part of the current line before the cursor is printed out,
with the cursor following (at the right position in the line).  What
follows the cursor on the line is not immediately visible, but
normally you will have a printout of the original contents of the line
a little ways back up the paper.  For example, if the current line
contains the word "FOOBAR", and the cursor is after the "FOO", just
"FOO" would appear on the paper, with the cursor following it.  Typing
the C-F command to move over the "B" would cause "B" to be printed, so
that you would now see "FOOB" with the cursor following it.  All
forward-motion commands that move reasonably short distances print out
what they move over.

  Backward motion is handled in a complicated way.  As you move back,
the terminal backspaces to the correct place.  When you stop moving
back and do something else, a linefeed is printed first thing so that
the printing done to reflect subsequent commands does not overwrite
the text you moved back over and become garbled by it.  The Rubout
command acts like backward motion, but also prints a slash
over the character rubbed out.  Other backwards deletion commands act
like backward motion; they do not print slashes (it would be an
improvement if they did).

@index{C-L}@index{^R New Window}
  One command is different on a printing terminal: C-L, which normally
means "clear the screen and redisplay".  With no argument, it retypes
the entire current line.  An argument tells it to retype the specified
number of lines around the current line.

  On printing terminals, C-S (^R Incremental Search) does not print
out the context automatically.  To see what you have found at any
stage, type C-L.  This types out the current line but does not exit the
search.  All the normal facilities of incremental searching are
available for finding something else if you had not found the right
place initially.

  Unfortunately, EMACS cannot perfectly attain its goal of making the
text printed on the current line reflect the current line in the
buffer, and keeping the horizontal position of the cursor correct.
One reason is that it is necessary for complicated commands to echo,
but echoing them screws up the "display".  The only solution is to
type a C-L whenever you have trouble following things in your mind.
The need to keep a mental model of the text being edited is, of
course, the fundamental defect of all printing terminal editors.

  Note:  it is possible to make a specific command print on a printing
terminal in whatever way is desired, if that is worth while.  For
example, Linefeed knows explicitly how to display itself, since the
general TECO redisplay mechanism isn't able to handle it.  Suggestions
for how individual commands can display themselves are welcome, as
long as they are algorithmic rather than simply of the form "please do
the right thing".

@Manual{

@Unnumbered[Distribution of EMACS]

EMACS is available for distribution for use on Tenex and Twenex
systems.  To get it, mail me a 2400 foot mag tape with a
self-addressed return mailing envelope.  It should hold both the tape
and a manual.

EMACS does not cost anything; instead, you are joining the EMACS
software-sharing commune.  The conditions of membership are that you
must send back any improvements you make to EMACS, including any
libraries you write, and that you must not redistribute the system
except exactly as you got it, complete.  (You can also distribute your
customizations, @xxi{separately}.)

Please do not attempt to get a copy of EMACS, for yourself or any one
else, by dumping it off of your local system.  It is almost certain to
be incomplete or inconsistent.  It is pathetic to hear from sites that
received incomplete copies lacking the sources, asking me years later
whether sources are available.  (All sources are distributed, and
should be on line at every site so that users can read them and
copy code from them).  If you wish to give away a copy of
EMACS, copy a distribution tape from MIT, or mail me a tape and get a
new one.

EMACS does not run on Bottoms-10; conversion would be painful
but possible.  Nor does it run on any computers except the PDP-10.
However, there are several other implementations of EMACS for other
systems.  There are also several ersatz EMACSes, which are editors
that superficially resemble EMACS but lack the extensibility which is
the essential feature of EMACS.  Here is a list of those that run on
systems in general use, and how to obtain them.

@begin[itemize]

MULTICS EMACS.  This true EMACS, written in Lisp, is a Honeywell
product and runs on Multics systems only.  Unfortunately, it costs an
arm and a leg.  An early version was distributed free to Multics
sites; perhaps your Multics site can get this from another one.

NILE.  This true EMACS, written in New Implementation of Lisp, will
run on VAXes under VMS and UNIX when it is available, perhaps next
summer.  Write to Richard Soley; Lab for Computer Science; 545 Tech
Square; Cambridge, MA 02139.

PRIME EMACS.  This true EMACS, containing an implementation of Lisp,
will at some time be available from PRIME itself.  Write to Barry
Kingsbury; 10B-7; Prime Computer Company; 500 Old Connecticut Path;
Framingham, MA 01701.

VAX EMACS.  This is a semi-ersatz EMACS, containing a Lisp-like
extension language which currently lacks the data types required for
general programming.  It runs under VMS and UNIX.  Write to James
Gosling; Carnegie Mellon University; Department of Computer Science;
Pittsburgh, PA 15213.

FINE.  This ersatz EMACS runs on Bottoms-10.  Write to Mike Kazar;
Carnegie Mellon University; Department of Computer Science;
Pittsburgh, PA 15213.

UNIX EMACS.  This ersatz EMACS is written in C.  Unlike VAX EMACS, it
will run on a PDP-11, but it has minimal programming facilities.
Write to Steve Zimmerman; Computer Corporation of America; 575 Tech
Square; Cambridge, MA 02139.

MINCE.  This ersatz EMACS runs under CP/M.  It comes
from Mark of the Unicorn; P.O. Box 423; Arlington, MA 02174.
Shamefully, they will not give you complete sources.

@end[itemize]

@Include(GLOSS.MSS)
@Include(COMMANDS.MSS)
@Include(LIBRARIES.MSS)
@Include(VARS.MSS)
}

@Case(Device, Dover {
@Begin(Verbatim,FaceCode F,Spacing 13pts,bottommargin .3in)
@ITS[@Include(ITS-CHART.MSS)]
@Twenex[@Include(TWENEX-CHART.MSS)]
@End(Verbatim)})

@Info(@Verbatim(
@CTL[L]
Tag Table:
this is a dummy.  TAGS will fill in the real stuff.
 End Tag Table:
))
@Comment(

These are for the SCRIBE source file.
Local Modes:*
Mode:Scribe*
Page Delimiter:@Node*
End:*
)
