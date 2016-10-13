@Comment{[XX]PS:<BKR>JANINF.MAK.4 22-Jun-80 21:10:48, Edit by BKR}
@Comment{[BBN-TENEXA]<XSCRIBE>INFO.MAK.3, 19-Jun-80 22:28:57, Ed: JWALKER}
	@Comment{Modifications to make EMACS manual look
more like a book and less like a typed report.}

@Marker(Make,INFO,Press)

@Define(BodyStyle,Font BodyFont,Spacing 13pts,Spread 6pts)
@Define(NoteStyle,Font SmallBodyFont,FaceCode R,Spacing 1.0 lines)
@Modify(Insert,Use BodyStyle)  @Comment{go for the same interline spacing}
@Modify(Verbatim,Use BodyStyle)
@Modify(Format,Use BodyStyle)
@Font(EMACS Helvetica 10)
@style(hyphenbreak=false)
@style(scriptpush=false)

@Enable(Outline,Index,Contents)
@Send(Contents "@NewPage(0)@Set(Page=1)@Style(PageNumber <@i>)")
@Send(Contents "@PrefaceSection(Table of Contents)")
@send(#Index	"@UnNumbered(Index)",
      #Index	"@Begin(IndexEnv)")
@SendEnd(#Index "@End(IndexEnv)")

@Form(Node="@String(Next-Node-Name=@parmquote(name))")
@String(Next-Node-Name="")
@Define	(HDX,LeftMargin 0,Indent 0,Fill,Spaces compact,Above 1,Below 0,
	  break,Need 5,Justification Off,
	  Initialize "@HDXFOO()")
@Form(HDXFOO="@Case(Next-Node-Name, null [],
		else [@label(@parmvalue(Filename) @parmvalue(Next-Node-Name))@string(Next-Node-Name=<>)])")
@Define	(Hd0,Use HdX,Font TitleFont5,FaceCode R,Above 1inch,Below 0.5inch)
@Define(Hd1,Use HdX,Font TitleFont5,FaceCode R,Sink 1in,Below 1in,
	BlankLines Kept,PageBreak UntilOdd,Centered,LongLines Wrap)
@Define(HD1A=HD1,Centered,LongLines Wrap)
@Define(HD1B,Use HD1A,Sink 0,Below 0,invisible)
@Define(Hd2,Use HdX,Font TitleFont3,FaceCode R,Above 0.4inch,Below 0.3inch)
@Define(Hd3,Use HdX,Font TitleFont3,FaceCode R,Above 0.3inch,Below 0.2inch)
@Define(Hd4,Use HdX,Font TitleFont3,FaceCode R,Above 0.2inch,Below 0.2inch)
@Define(TcX,LeftMargin 5,Indent -5,RightMargin 5,Fill,Spaces compact,
	Above 0,Spacing 13pts,Below 0,Break,Spread 0,Justification off)
@Define(Tc0=TcX,Font TitleFont3,FaceCode R,Need 4 lines,Above 1in,Below 0.5in)
@Define(Tc1=TcX,Font TitleFont1,FaceCode R,Above 16pts,
	Below 8pts,Need 2lines)
@Define(Tc2=TcX,LeftMargin 8,Font TitleFont0,FaceCode R)
@Define(Tc3=TcX,LeftMargin 12,Font TitleFont0,FaceCode R)
@Define(Tc4=TcX,LeftMargin 16,Font TitleFont0,FaceCode R)
@Counter(MajorPart,TitleEnv HD0,ContentsEnv tc0,Numbered [@I],
	  IncrementedBy Use,Announced)
@Counter(Chapter,ContentsEnv Tc1,TitleForm 
{@begin(Hd1A)Chapter @parm(Numbered)@*@ @*@parm(Title)@end(Hd1A)},ContentsForm
{@Begin(Tc1)@rfstr(@parm(page))@parm(Referenced).  @parm(Title)@end(Tc1)},
	  Numbered [@O],IncrementedBy Use,Referenced [@1],Announced)
@Counter(Appendix,TitleEnv HD1,ContentsEnv tc1,Numbered [@I.],
	 ContentsForm "@Tc1(Appendix @parm(referenced). @rfstr(@parm(page))@parm(Title))",
	 TitleForm "@Hd1(Appendix @parm(referenced)@*@ @*@Parm(Title))",

	  IncrementedBy,Referenced [@I],Announced,Alias Chapter)
@Counter(UnNumbered,TitleEnv HD1A,ContentsEnv tc1,Announced,Alias Chapter)
@Counter(UnNumberedInvis,TitleEnv HD1B,ContentsEnv TC1,Announced,Alias Chapter)
@Counter(Section,Within Chapter,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@#@:.@1.],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(AppendixSection,Within Appendix,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@#@:.@1.],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(SubSection,Within Section,TitleEnv HD3,
	  Numbered [@#@:.@1.],IncrementedBy Use,Referenced [@#@:.@1])
@Counter(AppendixSubsec,Within AppendixSection,TitleEnv Hd3,
	Numbered [@#@:.@1.],IncrementedBy USe,Referenced [@#@:.@1])
@Counter(Paragraph,Within SubSection,TitleEnv HD4,
	  Numbered [@#@:.@1.],Referenced [@#@:.@1],IncrementedBy Use)

@Counter(PrefaceSection,TitleEnv HD1A,Alias Chapter)

@Define(IndexEnv,Break,CRBreak,Fill,BlankLines Kept,Font SmallBodyFont,
	Columns 2,ColumnMargin 0.1in,Boxed,Bottommargin 1.1inch,
	ColumnWidth 2.75in,LineWidth 2.1in,
	FaceCode R,Spread 0,Spacing 1,Spaces Kept,LeftMargin 8,Indent -8)
@Modify(HDG,Visible,Columns 1)
@Modify(FTG,Columns 1)

@LibraryFile(Figures)
@LibraryFile(Math)
@LibraryFile(TitlePage)

@Modify(EquationCounter,Within Chapter)
@Modify(TheoremCounter,Within Chapter)
@Define(FileExample,Break,Use NoteStyle,FaceCode F,LongLines Wrap,
	Indent 16,NoFill,BlankLines Kept,Spacing 1,Spread 0,Above 1,
	Below 1,Font BodyFont)

@Equate(Sec=Section,Subsec=SubSection,Chap=Chapter,Para=Paragraph,
	SubSubSec=Paragraph,AppendixSec=AppendixSection)
@Begin(Text,Indent 1Quad,LeftMargin 1.5inch,TopMargin 1.1inch,
	BottomMargin 1.1inch,LineWidth 5.5inches,Spread 0.3line,
	Use BodyStyle,Justification,FaceCode R,Spaces Compact)
@Set(Page=0)

@Style(DoubleSided,BindingMargin=0.3inch,WidowAction Force)
@PageHeading(Even,Left "@value(Page)")
@PageHeading(Odd,Right "@value(Page)")
@Equate(XXI=I,XXII=I,XXU=U,XXUU=U)
@Textform(Info="")
@Textform(Manual="@Parm(Text)")
@Case(draft,ITS {@Textform[Twenex="",ITS="@Parm(text)"]},
	    Else {@Textform[ITS="",Twenex="@Parm(text)"]})

@Form{Note="See @w(section @ref(@parmvalue(Filename) @parm(node))) [@imbed(name, def <@parm(name)>, undef <@parm(node)>)], @w(page @pageref(@parmvalue(Filename) @parm(node)))"}
@Form{XNote="See @w(section @ref(@parm(File) @parm(node))) [@imbed(name, def <@parm(name)>, undef <@parm(node)>)], @w(page @pageref(@parm(File) @parm(node)))"}
@Form{Infonote="See the file @ITS(INFO;)@Twenex(INFO:)@parm(file)@ITS(@ >)@Twenex(.INFO)@imbed(node, def [, node @parm(node)]"}
@Textform{Menu=""}

@Define(Empty,Break,Continue)
@Textform(Need="@Begin(Empty,Need @parm(text))@End(Empty)")

@Textform(CTL="@parm(text)")
@define(dfn=i)

@Marker(Make,Info, Xgp)

@Define(BodyStyle,Font BodyFont,Spacing 1.5,Spread 0.8)
@Define(NoteStyle,Font SmallBodyFont,FaceCode R,Spacing 1)
@Modify(Insert,Use BodyStyle)  @Comment{go for the same interline spacing}
@Modify(Verbatim,Use BodyStyle)
@Modify(Format,Use BodyStyle)
@font(Gothic10)
@style(hyphenbreak=false)
@style(scriptpush=false)

@Generate(Outline,Index,Contents)
@Send(Contents "@NewPage(0)@Set(Page=1)@Style(PageNumber <@i>)")
@Send(Contents "@PrefaceSection(Table of Contents)")
@send(#Index	"@UnNumbered(Index)",
      #Index	"@Enter(IndexEnv)")

@Form(Node="@String(Next-Node-Name=@parmquote(name))")
@String(Next-Node-Name="")
@Define	(HDX,LeftMargin 0,Indent 0,Fill,Spaces compact,Above 1,Below 0,
	  break,Need 5,Justification Off,
	  Initialize "@HDXFOO()")
@Form(HDXFOO="@Case(Next-Node-Name, null [],
		else [@label(@parmvalue(Filename) @parmvalue(Next-Node-Name))@string(Next-Node-Name=<>)])")
@Define(Hd1,Use HdX,Font TitleFont5,FaceCode R,Above .5inch,Below .5inch,
	PageBreak UntilOdd)
@Define(HD1A=HD1,Centered)
@Define(Hd2,Use HdX,Font TitleFont3,FaceCode R,Above 0.4inch,Below .4inch)
@Define(Hd3,Use HdX,Font TitleFont1,FaceCode R,Above 0.4inch,Below .4inch)
@Define(Hd4,Use HdX,Font TitleFont1,FaceCode R,Above 0.3inch,Below .4inch)
@Define(TcX,LeftMargin 5,Indent -5,RightMargin 5,Fill,Spaces compact,
	Above 0,Spacing 1,Below 0,Break,Spread 0)
@Define(Tc0=TcX,Font TitleFont3,FaceCode R)
@Define(Tc1=TcX,Font TitleFont1,FaceCode R,Above 20raster,
	Below 20raster)
@Define(Tc2=TcX,LeftMargin 8,Font TitleFont0,FaceCode R)
@Define(Tc3=TcX,LeftMargin 12,Font TitleFont0,FaceCode R)
@Define(Tc4=TcX,LeftMargin 16,Font TitleFont0,FaceCode R)
@Counter(MajorPart,TitleEnv HD0,ContentsEnv tc0,Numbered [@I],
	  IncrementedBy Use,Announced)
@Counter(Chapter,TitleEnv HD1,ContentsEnv tc1,Numbered [@1.],
	  IncrementedBy Use,Referenced [@1],Announced)
@Counter(Appendix,TitleEnv HD1,ContentsEnv tc1,Numbered [@I.],
	  IncrementedBy,Referenced [@I],Announced,Alias Chapter)
@Counter(UnNumbered,TitleEnv HD1,ContentsEnv tc1,Announced,Alias Chapter)
@Counter(Section,Within Chapter,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(AppendixSection,Within Appendix,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(SubSection,Within Section,TitleEnv HD3,
	  Numbered [@#@:.@1],IncrementedBy Use,Referenced [@#@:.@1])
@Counter(AppendixSubsec,Within AppendixSection,TitleEnv Hd3,
	Numbered [@#@:.@1.],IncrementedBy USe,Referenced [@#@:.@1])
@Counter(Paragraph,Within SubSection,TitleEnv HD4,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use)

@Counter(PrefaceSection,TitleEnv HD1A,Alias Chapter)
@Define(IndexEnv,Break,CRBreak,Fill,BlankLines Kept,Font SmallBodyFont,
	FaceCode R,Spread 0,Spacing 1,Spaces Kept,LeftMargin 18,Indent -8)

@Counter(FigureCounter,Within Chapter,Numbered <Figure @#@:-@1: >,
	 Referenced "@#@:-@1",Init 0)
@Define(Figure,Nofill,Spaces Kept,Use R,BlankLines kept,Float,
	Above 1,Below 1,Counter FigureCounter,NumberLocation LFL)
@Define(FullPageFigure,Use Figure,FloatPage)
@Define(CaptionEnv=Center,FaceCode R,Below 0)

@Define(TitlePage,Break,PageBreak Around,Centered,
	BlankLines Kept,Above 4.4inches)
@Define(TitleBox,Break,Fixed 1.8inches,Spacing 1)
@Define(Abstract=Text,Spacing 1,Indent 0,Fill,Justification,
	Initialize "@heading{Abstract}")
@Define(ResearchCredit,Fixed 8.5inches,Fill,Justification,Spacing 1)
@TextForm(ArpaCredit="@ResearchCredit{@File[Sys:ArpaTP.]}")
@Define(CopyrightNotice,Fixed 8.0inches,Centered,
	Initialize "Copyright -C- @value{year} ")

@define(FileExample,Break,Use NoteStyle,FaceCode F,LongLines Wrap,
	Indent 16,NoFill,BlankLines Kept,Spacing 1,Spread 0,Above 1,
	Below 1,Font BodyFont)
@Define(OutputExample=FileExample)
@Define(InputExample=FileExample)

@Equate(Sec=Section,Subsec=SubSection,Chap=Chapter,Para=Paragraph,
	SubSubSec=Paragraph,AppendixSec=AppendixSection)
@Enter(Text,Indent 1Quad,LeftMargin 1inch,TopMargin 1inch,BottomMargin 1inch,
	LineWidth 6.5inches,Spread 15raster,
	Use BodyStyle,Justification,FaceCode R,Spaces Compact)
@Set(Page=0)
@PageHeading(Center "@value(page)")
@Equate(XXI=I,XXII=I,XXU=U,XXUU=U)
@Textform(Info="")
@Textform(Manual="@Parm(Text)")
@Case(draft,ITS {@Textform[Twenex="",ITS="@Parm(text)"]},
	    Else {@Textform[ITS="",Twenex="@Parm(text)"]})

@Form{Note="See @w(section @ref(@parmvalue(Filename) @parm(node))) [@imbed(name, def <@parm(name)>, undef <@parm(node)>)], @w(page @pageref(@parmvalue(Filename) @parm(node)))"}
@Form{XNote="See @w(section @ref(@parm(File) @parm(node))) [@imbed(name, def <@parm(name)>, undef <@parm(node)>)], @w(page @pageref(@parm(File) @parm(node)))"}
@Form{Infonote="See the file @ITS(INFO;)@Twenex(INFO:)@parm(file)@Twenex(.INFO)@imbed(node, def [, node @parm(node)]"}
@Textform{Menu=""}

@Define(Empty,Break,Continue)
@Textform(Need="@Begin(Empty,Need @parm(text))@End(Empty)")

@Textform(CTL="@parm(text)")
@define(dfn=i)

@Marker(Make,INFO,Diablo)
@Define(BodyStyle,Spacing 1.7,Spread 0.8)
@Define(TitleStyle,Spacing 1,Spread 0)
@Define(NoteStyle,Spacing 1,Spread 0.3)
@DefineFont(CharDef,R=<ascii "XLPT">)
@style(hyphenbreak=false)
@style(scriptpush=false)

@Generate(Outline,Index,Contents)
@Send(Contents "@NewPage(0)@Set(Page=1)@Style(PageNumber <@i>)")
@Send(Contents "@PrefaceSection(Table of Contents)")
@send(#Index	"@UnNumbered(Index)",
      #Index	"@Enter(IndexEnv)")

@Form(Node="@String(Next-Node-Name=@parmquote(name))")
@String(Next-Node-Name="")
@Define	(HDX,LeftMargin 0,Indent 0,Fill,Spaces compact,Above 1,Below 0,
	  break,Need 5,Justification Off,
	  Initialize "@HDXFOO()")
@Form(HDXFOO="@Case(Next-Node-Name, null [],
		else [@label(@parmvalue(Filename) @parmvalue(Next-Node-Name))@string(Next-Node-Name=<>)])")
@Define	(Hd0,Use HdX,Above 1inch,Below 0.5inch)
@Define(Hd1,Use HdX,,Above .5inch,PageBreak UntilOdd)
@Define(HD1A=HD1,Centered)
@Define(Hd2,Use HdX,Above 0.4inch)
@Define(Hd3,Use HdX,Above 0.4inch)
@Define(Hd4,Use HdX,Above 0.3inch)
@Define(TcX,LeftMargin 5,Indent -5,RightMargin 5,Fill,Spaces compact,
	Above 0,Spacing 1,Below 0,Break,Spread 0)
@Define(Tc0=TcX)
@Define(Tc1=TcX,Above 0.2,Below 0.2)
@Define(Tc2=TcX,LeftMargin 5)
@Define(Tc3=TcX,LeftMargin 10)
@Define(Tc4=TcX,LeftMargin 15)
@Counter(MajorPart,TitleEnv HD0,ContentsEnv tc0,Numbered [@I],
	  IncrementedBy Use,Announced)
@Counter(Chapter,TitleEnv HD1,ContentsEnv tc1,Numbered [@1.],
	  IncrementedBy Use,Referenced [@1],Announced)
@Counter(Appendix,TitleEnv HD1,ContentsEnv tc1,Numbered [@I.],
	  IncrementedBy,Referenced [@I],Announced,Alias Chapter)
@Counter(UnNumbered,TitleEnv HD1,ContentsEnv tc1,Announced,Alias Chapter)
@Counter(Section,Within Chapter,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(AppendixSection,Within Appendix,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(SubSection,Within Section,TitleEnv HD3,
	  Numbered [@#@:.@1],IncrementedBy Use,Referenced [@#@:.@1])
@Counter(AppendixSubsec,Within AppendixSection,TitleEnv Hd3,
	Numbered [@#@:.@1.],IncrementedBy USe,Referenced [@#@:.@1])
@Counter(Paragraph,Within SubSection,TitleEnv HD4,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use)

@Counter(PrefaceSection,TitleEnv HD1A,Alias Chapter)
@Define(IndexEnv,Break,CRBreak,Fill,BlankLines Kept,
	Spread 0,Spacing 1,Spaces Kept,LeftMargin 18,Indent -8)

@Counter(FigureCounter,Within Chapter,Numbered <Figure @#@:-@1: >,
	 Referenced "@#@:-@1",Init 0)
@Define(Figure,Nofill,Spaces Kept,Use R,BlankLines kept,Float,
	Above 1,Below 1,Counter FigureCounter,NumberLocation LFL)
@Define(FullPageFigure,Use Figure,FloatPage)
@Define(CaptionEnv=Center,FaceCode R,Below 0)

@Define(TitlePage,Break,PageBreak Around,Centered,
	BlankLines Kept,Above 4.4inches)
@Define(TitleBox,Break,Fixed 1.8inches)
@Define(Abstract=Text,Spacing 1,Indent 0,Fill,Justification,
	Initialize "@heading{Abstract}")
@Define(ResearchCredit,Fixed 8.5inches,Fill,Justification,Spacing 1)
@TextForm(ArpaCredit="@ResearchCredit{@File[Sys:ArpaTP.]}")
@Define(CopyrightNotice,Fixed 8.0inches,Centered,
	Initialize "Copyright -C- @value{year} ")

@define(FileExample,Break,Use NoteStyle,FaceCode R,CRbreak,LeftMargin 16,
        Fill,BlankLines Kept,Indent -10,Spacing 1,Spread 0,Above 1,Below 1)
@Define(OutputExample=Verbatim,LeftMargin 2)
@Equate(InputExample=OutputExample)

@Equate(Sec=Section,Subsec=SubSection,Chap=Chapter,Para=Paragraph,
	SubSubSec=Paragraph,AppendixSec=AppendixSection)
@Enter(Text,Indent 3,Use BodyStyle,LeftMargin 1inch,TopMargin 1inch,
	BottomMargin 1inch,LineWidth 6.5inches,Justification,
	Spaces Compact,Font CharDef,FaceCode R)
@set(page=0)
@PageHeading(Center "@value(page)")
@Equate(XXI=I,XXII=I,XXU=U,XXUU=U)
@Textform(Info="")
@Textform(Manual="@Parm(Text)")
@Case(draft,ITS {@Textform[Twenex="",ITS="@Parm(text)"]},
	    Else {@Textform[ITS="",Twenex="@Parm(text)"]})

@Form{Note="See @w(section @ref(@parmvalue(Filename) @parm(node))) [@imbed(name, def <@parm(name)>, undef <@parm(node)>)], @w(page @pageref(@parmvalue(Filename) @parm(node)))"}
@Form{XNote="See @w(section @ref(@parm(File) @parm(node))) [@imbed(name, def <@parm(name)>, undef <@parm(node)>)], @w(page @pageref(@parm(File) @parm(node)))"}
@Form{Infonote="See the file @ITS(INFO;)@Twenex(INFO:)@parm(file)@Twenex(.INFO)@imbed(node, def [, node @parm(node)]"}
@Textform{Menu=""}

@Define(Empty,Break,Continue)
@Textform(Need="@Begin(Empty,Need @parm(text))@End(Empty)")

@Textform(CTL="@parm(text)")
@define(dfn=u)

@Marker(Make,INFO,INFO)
@Define(BodyStyle,Spacing 1)
@Define(TitleStyle,Spacing 1)
@Define(NoteStyle,Spacing 1)
@style(hyphenbreak=false)
@style(scriptpush=false)

@DefineFont(Control,X=<ASCII "CTRL">)
@Define(CTL,Font Control, FaceCode X)  @comment(make @ctl[X] come out as )

@Define	(HDX,LeftMargin 0,Indent 0,Fill,Spaces compact,Above 1,Below 1,
	  break,Need 5,Justification Off)
@Define	(Hd0,Use HDX)
@Define(Hd1,Use HdX)
@Define(HD1A=HD1,Centered)
@Define(Hd2,Use HdX)
@Define(Hd3,Use HdX)
@Define(Hd4,Use HdX)
@Counter(MajorPart,TitleEnv HD0,Numbered [@I],
	  IncrementedBy Use,Announced)
@Counter(Chapter,TitleForm "@HD1{@parm(Title)}",Numbered [@1.],
	  IncrementedBy Use,Referenced [@1],Announced)
@Counter(Appendix,TitleForm "@HD1{@parm(Title)}",Numbered [@I.],
	  IncrementedBy,Referenced [@I],Announced,Alias Chapter)
@Counter(UnNumbered,TitleForm "@HD1{@parm(Title)}",Announced,Alias Chapter)
@Counter(Section,Within Chapter,TitleForm "@HD2{@parm(Title)}",
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(AppendixSection,Within Appendix,TitleForm "@HD2{@parm(Title)}",
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(SubSection,Within Section,TitleForm "@HD3{@parm(Title)}",
	  Numbered [@#@:.@1],IncrementedBy Use,Referenced [@#@:.@1])
@Counter(AppendixSubsec,Within AppendixSection,TitleForm "@HD3{@parm(Title)}",
	Numbered [@#@:.@1.],IncrementedBy USe,Referenced [@#@:.@1])
@Counter(Paragraph,Within SubSection,TitleForm "@HD4{@parm(Title)}",
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use)

@Counter(PrefaceSection,TitleForm "@HD1A{@parm(Title)}",Alias Chapter)
@Define(IndexEnv,Break,CRBreak,Fill,BlankLines Kept,
	Spread 0,Spacing 1,Spaces Kept,LeftMargin 18,Indent -8)

@Counter(FigureCounter,Within Chapter,Numbered <Figure @#@:-@1: >,
	 Referenced "@#@:-@1",Init 0)
@Define(Figure,Nofill,Spaces Kept,Use R,BlankLines kept,Float,
	Above 1,Below 1,Counter FigureCounter,NumberLocation LFL)
@Define(FullPageFigure,Use Figure,FloatPage)
@Define(CaptionEnv=Center,FaceCode R,Below 0)

@Define(TitlePage,Break,PageBreak Around,Centered,
	BlankLines Kept,Above 4.4inches)
@Define(TitleBox,Break,Fixed 1.8inches)
@Define(Abstract=Text,Spacing 1,Indent 0,Fill,Justification,
	Initialize "@heading{Abstract}")
@Define(ResearchCredit,Fixed 8.5inches,Fill,Justification,Spacing 1)
@TextForm(ArpaCredit="@ResearchCredit{@File[Sys:ArpaTP.]}")
@Define(CopyrightNotice,Fixed 8.0inches,Centered,
	Initialize "Copyright -C- @value{year} ")

@define(FileExample,Break,Use NoteStyle,FaceCode F,CRbreak,LeftMargin 16,
        Fill,BlankLines Kept,Indent -10,Spacing 1,Spread 0,Above 1,Below 1)
@Define(OutputExample=Verbatim,LeftMargin 2)
@Define(InputExample=OutputExample)

@Equate(Sec=Section,Subsec=SubSection,Chap=Chapter,Para=Paragraph,
	SubSubSec=Paragraph,AppendixSec=AppendixSection)
@Enter(Text,Indent 0,Spread 1,Use BodyStyle,
	Spaces Compact,
	Justification off,Font CharDef,FaceCode R)
@set(page=0)
@Equate(XXI=R,XXII=I,XXU=R,XXUU=U)
@Textform(Manual="")
@Textform(Info="@Parm(Text)")
@Case<draft,ITS {@Textform[Twenex="",ITS="@Parm(text)"]},
	    Else {@Textform[ITS="",Twenex="@Parm(text)"]}>

@Form{Node={@begin(Verbatim,linewidth 100)
@CTL[L]
@Parmvalue(Filename)  Node: @parm(name)@imbed(prev, def ", Previous: @parm(prev)"), Up: @parm(up, default "Top")@imbed(next, def ", Next: @parm(next)")
@end(verbatim)}}
@Form{Note={*Note @w(@imbed(iname, def=(@parm[iname]), undef=(@imbed[name, def=[@parm<name>], undef=[@parm<node>]]))): @w[@parm(node)]}}
@Form{Infonote={*Note @w(@imbed(iname, def=(@parm[iname]), undef=(@imbed[name, def=[@parm<name>], undef=[@parm<node>]]))): @w[(@parm(file))@parm(node,default "")]}}
@Form{XNote={*Note @w(@imbed(iname, def=(@parm[iname]), undef=(@imbed[name, def=[@parm<name>], undef=[@parm<node>]]))): @w[(@parm(file))@parm(node,default "")]}}

@Textform{Menu={@begin(verbatim,rightmargin 0)

* Menu:
@parm(text)
@end(verbatim)}}

@Define(Empty,Break,Continue)
@Textform(Need="@Begin(Empty,Need @parm(text))@End(Empty)")
@textform(dfn=<"@parm(text)">)

@Marker(Make,INFO,File,Editor,SOS,TECO)
@Define(BodyStyle,Spacing 1)
@Define(TitleStyle,Spacing 1)
@Define(NoteStyle,Spacing 1)
@DefineFont(CharDef,R=<ascii "XLPT">)
@style(hyphenbreak=false)
@style(scriptpush=false)

@Generate(Outline,Index,Contents)
@Send(Contents "@Style(PageNumber <@i>)@Set(Page=0)")
@Send(Contents "@PrefaceSection(Table of Contents)")
@send(#Index	"@UnNumbered(Index)",
      #Index	"@Enter(IndexEnv)")

@Form(Node="@String(Next-Node-Name=@parmquote(name))")
@String(Next-Node-Name="")
@Define	(HDX,LeftMargin 0,Indent 0,Fill,Spaces compact,Above 1,Below 0,
	  break,Need 5,Justification Off,
	  Initialize "@HDXFOO()")
@Form(HDXFOO="@Case(Next-Node-Name, null [],
		else [@label(@parmvalue(Filename) @parmvalue(Next-Node-Name))@string(Next-Node-Name=<>)])")
@Define	(Hd0,Use HdX,Above 1inch,Below 0.5inch)
@Define(Hd1,Use HdX,Above 3,PageBreak Before)
@Define(HD1A=HD1,Centered)
@Define(Hd2,Use HdX,Above 1)
@Define(Hd3,Use HdX,Above 3)
@Define(Hd4,Use HdX,Above 2)
@Define(TcX,LeftMargin 5,Indent -5,RightMargin 5,Fill,Spaces compact,
	Above 0,Spacing 1,Below 0,Break,Spread 0)
@Define(Tc0=TcX)
@Define(Tc1=TcX,Above 1,Below 1)
@Define(Tc2=TcX,LeftMargin 5)
@Define(Tc3=TcX,LeftMargin 10)
@Define(Tc4=TcX,LeftMargin 15)
@Counter(MajorPart,TitleEnv HD0,ContentsEnv tc0,Numbered [@I],
	  IncrementedBy Use,Announced)
@Counter(Chapter,TitleEnv HD1,ContentsEnv tc1,Numbered [@1.],
	  IncrementedBy Use,Referenced [@1],Announced)
@Counter(Appendix,TitleEnv HD1,ContentsEnv tc1,Numbered [@I.],
	  IncrementedBy,Referenced [@I],Announced,Alias Chapter)
@Counter(UnNumbered,TitleEnv HD1,ContentsEnv tc1,Announced,Alias Chapter)
@Counter(Section,Within Chapter,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(AppendixSection,Within Appendix,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(SubSection,Within Section,TitleEnv HD3,
	  Numbered [@#@:.@1],IncrementedBy Use,Referenced [@#@:.@1])
@Counter(AppendixSubsec,Within AppendixSection,TitleEnv Hd3,
	Numbered [@#@:.@1.],IncrementedBy USe,Referenced [@#@:.@1])
@Counter(Paragraph,Within SubSection,TitleEnv HD4,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use)

@Counter(PrefaceSection,TitleEnv HD1A,Alias Chapter)
@Define(IndexEnv,Break,CRBreak,Fill,BlankLines Kept,
	Spread 0,Spacing 1,Spaces Kept,LeftMargin 18,Indent -8)

@Counter(FigureCounter,Within Chapter,Numbered <Figure @#@:-@1: >,
	 Referenced "@#@:-@1",Init 0)
@Define(Figure,Nofill,Spaces Kept,Use R,BlankLines kept,Float,
	Above 1,Below 1,Counter FigureCounter,NumberLocation LFL)
@Define(FullPageFigure,Use Figure,FloatPage)
@Define(CaptionEnv=Center,FaceCode R,Below 0)

@Define(TitlePage,Break,PageBreak Around,Centered,
	BlankLines Kept,Above 4.4inches)
@Define(TitleBox,Break,Fixed 1.8inches)
@Define(Abstract=Text,Spacing 1,Indent 0,Fill,Justification,
	Initialize "@heading{Abstract}")
@Define(ResearchCredit,Fixed 8.5inches,Fill,Justification,Spacing 1)
@TextForm(ArpaCredit="@ResearchCredit{@File[Sys:ArpaTP.]}")
@Define(CopyrightNotice,Fixed 8.0inches,Centered,
	Initialize "Copyright -C- @value{year} ")

@define(FileExample,Break,Use NoteStyle,FaceCode F,CRbreak,LeftMargin 16,
        Fill,BlankLines Kept,Indent -10,Spacing 1,Spread 0,Above 1,Below 1)
@Define(OutputExample=Verbatim,LeftMargin 2)
@Equate(InputExample=OutputExample)

@Equate(Sec=Section,Subsec=SubSection,Chap=Chapter,Para=Paragraph,
	SubSubSec=Paragraph,AppendixSec=AppendixSection)
@Enter(Text,Indent 2,Spread 1,Use BodyStyle,LineWidth 7.9inches,
	Spaces Compact,
	Justification,Font CharDef,FaceCode R)
@set(page=0)
@PageHeading(Center "@value(page)")
@Equate(XXI=R,XXII=I,XXU=R,XXUU=U)
@Textform(Info="")
@Textform(Manual="@Parm(Text)")
@Case(draft,ITS {@Textform[Twenex="",ITS="@Parm(text)"]},
	    Else {@Textform[ITS="",Twenex="@Parm(text)"]})

@Form{Note="See @w(section @ref(@parmvalue(Filename) @parm(node))) [@imbed(name, def <@parm(name)>, undef <@parm(node)>)], @w(page @pageref(@parmvalue(Filename) @parm(node)))"}
@Form{XNote="See @w(section @ref(@parm(File) @parm(node))) [@imbed(name, def <@parm(name)>, undef <@parm(node)>)], @w(page @pageref(@parm(File) @parm(node)))"}
@Form{Infonote="See the file @ITS(INFO;)@Twenex(INFO:)@parm(file)@Twenex(.INFO)@imbed(node, def [, node @parm(node)]"}
@Textform{Menu=""}

@Define(Empty,Break,Continue)
@Textform(Need="@Begin(Empty,Need @parm(text))@End(Empty)")

@Textform(CTL="@parm(text)")
@define(dfn=u)

@Marker(Make,INFO,WideLpt)
@Define(BodyStyle,Spacing 2)
@Define(TitleStyle,Spacing 1)
@Define(NoteStyle,Spacing 1)
@DefineFont(CharDef,R=<ascii "XLPT">)
@style(hyphenbreak=false)
@style(scriptpush=false)

@Generate(Outline,Index,Contents)
@Send(Contents "@Style(PageNumber <@i>)@Set(Page=0)")
@Send(Contents "@PrefaceSection(Table of Contents)")
@send(#Index	"@UnNumbered(Index)",
      #Index	"@Enter(IndexEnv)")

@Form(Node="@String(Next-Node-Name=@parmquote(name))")
@String(Next-Node-Name="")
@Define	(HDX,LeftMargin 0,Indent 0,Fill,Spaces compact,Above 1,Below 0,
	  break,Need 5,Justification Off,
	  Initialize "@HDXFOO()")
@Form(HDXFOO="@Case(Next-Node-Name, null [],
		else [@label(@parmvalue(Filename) @parmvalue(Next-Node-Name))@string(Next-Node-Name=<>)])")
@Define	(Hd0,Use HdX,Above 1inch,Below 0.5inch)
@Define(Hd1,Use HdX,Above 3,PageBreak UntilOdd)
@Define(HD1A=HD1,Centered)
@Define(Hd2,Use HdX,Above 1)
@Define(Hd3,Use HdX,Above 3)
@Define(Hd4,Use HdX,Above 2)
@Define(TcX,LeftMargin 5,Indent -5,RightMargin 5,Fill,Spaces compact,
	Above 0,Spacing 1,Below 0,Break,Spread 0)
@Define(Tc0=TcX)
@Define(Tc1=TcX,Above 1,Below 1)
@Define(Tc2=TcX,LeftMargin 5)
@Define(Tc3=TcX,LeftMargin 10)
@Define(Tc4=TcX,LeftMargin 15)
@Counter(MajorPart,TitleEnv HD0,ContentsEnv tc0,Numbered [@I],
	  IncrementedBy Use,Announced)
@Counter(Chapter,TitleEnv HD1,ContentsEnv tc1,Numbered [@1.],
	  IncrementedBy Use,Referenced [@1],Announced)
@Counter(Appendix,TitleEnv HD1,ContentsEnv tc1,Numbered [@I.],
	  IncrementedBy,Referenced [@I],Announced,Alias Chapter)
@Counter(UnNumbered,TitleEnv HD1,ContentsEnv tc1,Announced,Alias Chapter)
@Counter(Section,Within Chapter,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(AppendixSection,Within Appendix,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(SubSection,Within Section,TitleEnv HD3,
	  Numbered [@#@:.@1],IncrementedBy Use,Referenced [@#@:.@1])
@Counter(AppendixSubsec,Within AppendixSection,TitleEnv Hd3,
	Numbered [@#@:.@1.],IncrementedBy USe,Referenced [@#@:.@1])
@Counter(Paragraph,Within SubSection,TitleEnv HD4,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use)

@Counter(PrefaceSection,TitleEnv HD1A,Alias Chapter)
@Define(IndexEnv,Break,CRBreak,Fill,BlankLines Kept,
	Spread 0,Spacing 1,Spaces Kept,LeftMargin 18,Indent -8)

@Counter(FigureCounter,Within Chapter,Numbered <Figure @#@:-@1: >,
	 Referenced "@#@:-@1",Init 0)
@Define(Figure,Nofill,Spaces Kept,Use R,BlankLines kept,Float,
	Above 1,Below 1,Counter FigureCounter,NumberLocation LFL)
@Define(FullPageFigure,Use Figure,FloatPage)
@Define(CaptionEnv=Center,FaceCode R,Below 0)

@Define(TitlePage,Break,PageBreak Around,Centered,
	BlankLines Kept,Above 4.4inches)
@Define(TitleBox,Break,Fixed 1.8inches)
@Define(Abstract=Text,Spacing 1,Indent 0,Fill,Justification,
	Initialize "@heading{Abstract}")
@Define(ResearchCredit,Fixed 8.5inches,Fill,Justification,Spacing 1)
@TextForm(ArpaCredit="@ResearchCredit{@File[Sys:ArpaTP.]}")
@Define(CopyrightNotice,Fixed 8.0inches,Centered,
	Initialize "Copyright -C- @value{year} ")

@define(FileExample,Break,Use NoteStyle,FaceCode F,CRbreak,LeftMargin 16,
        Fill,BlankLines Kept,Indent -10,Spacing 1,Spread 0,Above 1,Below 1)
@Define(OutputExample=Verbatim,LeftMargin 2,RightMargin 0)
@Equate(InputExample=OutputExample)

@Equate(Sec=Section,Subsec=SubSection,Chap=Chapter,Para=Paragraph,
	SubSubSec=Paragraph,AppendixSec=AppendixSection)
@Enter(Text,Indent 2,Spread 1,Use BodyStyle,LineWidth 10inches,
	Spaces Compact,LeftMargin 1inch,
	Justification,Font CharDef,FaceCode R)
@set(page=0)
@PageHeading(Center "@value(page)")
@Equate(XXI=R,XXII=I,XXU=R,XXUU=U)
@Textform(Info="")
@Textform(Manual="@Parm(Text)")
@Case(draft,ITS {@Textform[Twenex="",ITS="@Parm(text)"]},
	    Else {@Textform[ITS="",Twenex="@Parm(text)"]})

@Form{Note="See @w(section @ref(@parmvalue(Filename) @parm(node))) [@imbed(name, def <@parm(name)>, undef <@parm(node)>)], @w(page @pageref(@parmvalue(Filename) @parm(node)))"}
@Form{XNote="See @w(section @ref(@parm(File) @parm(node))) [@imbed(name, def <@parm(name)>, undef <@parm(node)>)], @w(page @pageref(@parm(File) @parm(node)))"}
@Form{Infonote="See the file @ITS(INFO;)@Twenex(INFO:)@parm(file)@Twenex(.INFO)@imbed(node, def [, node @parm(node)]"}
@Textform{Menu=""}

@Define(Empty,Break,Continue)
@Textform(Need="@Begin(Empty,Need @parm(text))@End(Empty)")

@Textform(CTL="@parm(text)")
@define(dfn=u)

@Marker(Make,INFO,LPT)

@Define(BodyStyle,Spacing 1,Spread 1)
@Define(TitleStyle,Spacing 1)
@Define(NoteStyle,Spacing 1)
@DefineFont(CharDef,R=<ascii "XLPT">)
@style(hyphenbreak=false)
@style(scriptpush=false)

@Generate(Outline,Index,Contents)
@Send(Contents "@NewPage(0)@Set(Page=1)@Style(PageNumber <@i>)")
@Send(Contents "@PrefaceSection(Table of Contents)")
@send(#Index	"@UnNumbered(Index)",
      #Index	"@Enter(IndexEnv)")
@SendEnd(#Index "@End(IndexEnv)")

@Form(Node="@String(Next-Node-Name=@parmquote(name))")
@String(Next-Node-Name="")
@Define(HDX,LeftMargin 0,Indent 0,Fill,Spaces compact,Above 1,Below 0,
	break,Need 5,Justification Off,Initialize "@HDXFOO()")
@Form(HDXFOO="@Case(Next-Node-Name, null [],
		else [@label(@parmvalue(Filename) @parmvalue(Next-Node-Name))@string(Next-Node-Name=<>)])")
@Define	(Hd0,Use HdX,Above 1inch,Below 0.5inch,Use B,TabExport False)
@Define(Hd1,Use HdX,Below 0.5in,PageBreak UntilOdd,Use B,
	Capitalized,TabExport False,Centered,LongLines Wrap)
@Define(HD1A=HD1,Centered,LongLines Wrap)
@Define(Hd2,Use HdX,Above 3,Below 2,Use B,TabExport False)
@Define(Hd3,Use HdX,Above 2,Below 2,Use B,TabExport False)
@Define(Hd4,Use HdX,Above 2,Below 1,Use B,TabExport False)
@Define(TcX,LeftMargin 5,Indent -5,RightMargin 5,Fill,Spaces compact,
	Above 0,Spacing 1,Below 0,Break,Spread 0,Justification Off)
@Define(Tc0=TcX,Use B,TabExport False,Need 4lines)
@Define(Tc1=TcX,Above 2,Below 1,Use B,TabExport False,Need 3)
@Define(Tc2=TcX,LeftMargin 8,Need 3lines)
@Define(Tc3=TcX,LeftMargin 12)
@Define(Tc4=TcX,LeftMargin 16)
@Counter(MajorPart,TitleEnv HD0,ContentsEnv tc0,Numbered [@I],
	  IncrementedBy Use,Announced)
@Counter(Chapter,ContentsEnv Tc1,TitleForm 
{@begin(Hd1A)Chapter @parm(Numbered)@*@ @*@parm(Title)@end(Hd1A)},ContentsForm
{@Begin(Tc1)@rfstr(@parm(page))@parm(Referenced).  @parm(Title)@end(Tc1)},
	  Numbered [@O],IncrementedBy Use,Referenced [@1],Announced)
@Counter(Appendix,TitleEnv HD1,ContentsEnv tc1,Numbered [@I.],
	 ContentsForm "@Tc1(Appendix @parm(referenced). @rfstr(@parm(page))@parm(Title))",
	 TitleForm "@Hd1(Appendix @parm(referenced)@*@ @*@Parm(Title))",
	  IncrementedBy,Referenced [@I],Announced,Alias Chapter)
@Counter(UnNumbered,TitleEnv HD1,ContentsEnv tc1,Announced,Alias Chapter)
@Counter(PrefaceSection,TitleEnv HD1A,Alias Chapter)
@Counter(Section,Within Chapter,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(AppendixSection,Within Appendix,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(SubSection,Within Section,TitleEnv HD3,
	  Numbered [@#@:.@1],IncrementedBy Use,Referenced [@#@:.@1])
@Counter(AppendixSubsec,Within AppendixSection,TitleEnv Hd3,
	Numbered [@#@:.@1.],IncrementedBy USe,Referenced [@#@:.@1])
@Counter(Paragraph,Within SubSection,TitleEnv HD4,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use)

@Define(IndexEnv,Break,CRBreak,Fill,BlankLines Kept,
	Columns 2,ColumnMargin 0.1in,Boxed,
	ColumnWidth 3.3in,LineWidth 2.3in,
	FaceCode R,Spread 0,Spacing 1,Spaces Kept,LeftMargin 10,Indent -10)
@Modify(HDG,Visible,Columns 1)
@Modify(FTG,Columns 1)

@LibraryFile(Figures)
@LibraryFile(Math)
@LibraryFile(TitlePage)

@define(FileExample,Break,Use NoteStyle,FaceCode F,LongLines Wrap,
	Indent 16,NoFill,BlankLines Kept,Spacing 1,Spread 0,Above 1,Below 1)
@Define(OutputExample=Verbatim,LeftMargin 2,RightMargin 0,LongLines Keep)

@Equate(Sec=Section,Subsec=SubSection,Chap=Chapter,Para=Paragraph,
	SubSubSec=Paragraph,AppendixSec=AppendixSection)
@Begin(Text,Indent 2,Spread 1,Use BodyStyle,LineWidth 6.5in,
	LeftMargin 0.5in,TopMargin 0.6in,BottomMargin 0.6in,
	Spaces Compact,Justification,Font CharDef,FaceCode R)
@Style(WidowAction Force)	@Comment{Not doublesided}
@set(page=0)

@Modify(EquationCounter,Within Chapter)
@Modify(TheoremCounter,Within Chapter)
@Modify(Verbatim,LongLines Keep)	@Comment{Needs more thought}
@Modify(Display,LongLines Keep)
@Modify(Format,LongLines Keep)
@Modify(Example,LongLines Keep)

@Equate(XXI=R,XXII=I,XXU=R,XXUU=U)
@Textform(Info="")
@Textform(Manual="@Parm(Text)")
@Case(draft,ITS {@Textform[Twenex="",ITS="@Parm(text)"]},
	    Else {@Textform[ITS="",Twenex="@Parm(text)"]})

@Form{Note="See @w(section @ref(@parmvalue(Filename) @parm(node))) [@imbed(name, def <@parm(name)>, undef <@parm(node)>)], @w(page @pageref(@parmvalue(Filename) @parm(node)))"}
@Form{XNote="See @w(section @ref(@parm(File) @parm(node))) [@imbed(name, def <@parm(name)>, undef <@parm(node)>)], @w(page @pageref(@parm(File) @parm(node)))"}
@Form{Infonote="See the file @ITS(INFO;)@Twenex(INFO:)@parm(file)@Twenex(.INFO)@imbed(node, def [, node @parm(node)]"}
@Textform{Menu=""}

@Define(Empty,Break,Continue)
@Textform(Need="@Begin(Empty,Need @parm(text))@End(Empty)")

@Textform(CTL="@parm(text)")
@define(dfn=u)

@Marker(Make,INFO)
@Define(BodyStyle,Spacing 2)
@Define(TitleStyle,Spacing 1)
@Define(NoteStyle,Spacing 1)
@DefineFont(CharDef,R=<ascii "XLPT">)
@style(hyphenbreak=false)
@style(scriptpush=false)

@Generate(Outline,Index,Contents)
@Send(Contents "@Style(PageNumber <@i>)@Set(Page=0)")
@Send(Contents "@PrefaceSection(Table of Contents)")
@send(#Index	"@UnNumbered(Index)",
      #Index	"@Enter(IndexEnv)")

@Form(Node="@String(Next-Node-Name=@parmquote(name))")
@String(Next-Node-Name="")
@Define	(HDX,LeftMargin 0,Indent 0,Fill,Spaces compact,Above 1,Below 0,
	  break,Need 5,Justification Off,
	  Initialize "@HDXFOO()")
@Form(HDXFOO="@Case(Next-Node-Name, null [],
		else [@label(@parmvalue(Filename) @parmvalue(Next-Node-Name))@string(Next-Node-Name=<>)])")
@Define	(Hd0,Use HdX,Above 1inch,Below 0.5inch,Use B)
@Define(Hd1,Use HdX,Below 1,PageBreak UntilOdd,Use B,Centered,Capitalized)
@Define(HD1A=HD1,Capitalized off)
@Define(Hd2,Use HdX,Above 3,Below 1,Use B)
@Define(Hd3,Use HdX)
@Define(Hd4,Use HdX)
@Define(TcX,LeftMargin 5,Indent -5,RightMargin 5,Fill,Spaces compact,
	Above 0,Spacing 1,Below 0,Break,Spread 0)
@Define(Tc0=TcX,Use B)
@Define(Tc1=TcX,Above 1,Below 1,Use b)
@Define(Tc2=TcX,LeftMargin 10)
@Define(Tc3=TcX,LeftMargin 15)
@Define(Tc4=TcX,LeftMargin 20)
@Counter(MajorPart,TitleEnv HD0,ContentsEnv tc0,Numbered [@I],
	  IncrementedBy Use,Announced)
@Counter(Chapter,TitleEnv HD1,ContentsEnv tc1,Numbered [@1.],
	  IncrementedBy Use,Referenced [@1],Announced)
@Counter(Appendix,TitleEnv HD1,ContentsEnv tc1,Numbered [@I.],
	  IncrementedBy,Referenced [@I],Announced,Alias Chapter)
@Counter(UnNumbered,TitleEnv HD1,ContentsEnv tc1,Announced,Alias Chapter)
@Counter(Section,Within Chapter,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(AppendixSection,Within Appendix,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(SubSection,Within Section,TitleEnv HD3,
	  Numbered [@#@:.@1],IncrementedBy Use,Referenced [@#@:.@1])
@Counter(AppendixSubsec,Within AppendixSection,TitleEnv Hd3,
	Numbered [@#@:.@1.],IncrementedBy USe,Referenced [@#@:.@1])
@Counter(Paragraph,Within SubSection,TitleEnv HD4,
	  Numbered [@#@:.@1],Referenced [@#@:.@1],IncrementedBy Use)

@Counter(PrefaceSection,TitleEnv HD1A,Alias Chapter)
@Define(IndexEnv,Break,CRBreak,Fill,BlankLines Kept,
	Spread 0,Spacing 1,Spaces Kept,LeftMargin 18,Indent -8)

@LibraryFile(Figures)
@LibraryFile(Math)
@LibraryFile(TitlePage)

@define(FileExample,Break,Use NoteStyle,FaceCode F,CRbreak,LeftMargin 16,
        Fill,BlankLines Kept,Indent -10,Spacing 1,Spread 0,Above 1,Below 1)
@Define(OutputExample=Verbatim,LeftMargin 2,RightMargin 0)
@Equate(InputExample=OutputExample)

@Equate(Sec=Section,Subsec=SubSection,Chap=Chapter,Para=Paragraph,
	SubSubSec=Paragraph,AppendixSec=AppendixSection)
@Enter(Text,Indent 2,Spread 1,Use BodyStyle,LineWidth 7.5inches,
	Spaces Compact,
	Justification,Font CharDef,FaceCode R)
@set(page=0)
@PageHeading(Center "@value(page)")
@Equate(XXI=R,XXII=I,XXU=R,XXUU=U)
@Textform(Info="")
@Textform(Manual="@Parm(Text)")
@Case(draft,ITS {@Textform[Twenex="",ITS="@Parm(text)"]},
	    Else {@Textform[ITS="",Twenex="@Parm(text)"]})

@Form{Note="See @w(section @ref(@parmvalue(Filename) @parm(node))) [@imbed(name, def <@parm(name)>, undef <@parm(node)>)], @w(page @pageref(@parmvalue(Filename) @parm(node)))"}
@Form{XNote="See @w(section @ref(@parm(File) @parm(node))) [@imbed(name, def <@parm(name)>, undef <@parm(node)>)], @w(page @pageref(@parm(File) @parm(node)))"}
@Form{Infonote="See the file @ITS(INFO;)@Twenex(INFO:)@parm(file)@Twenex(.INFO)@imbed(node, def [, node @parm(node)]"}
@Textform{Menu=""}

@Define(Empty,Break,Continue)
@Textform(Need="@Begin(Empty,Need @parm(text))@End(Empty)")

@Textform(CTL="@parm(text)")
@define(dfn=u)
