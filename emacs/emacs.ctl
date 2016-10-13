! PS:<EMACS>EMACS.CTL !
!==============================================================================
! This file does actually create a new EMACS, assuming you have the correct   !
! definitions for EMACS: and INFO:.  If the version numbers of the EMACS files!
! files are incorrect, you can expect all sorts of problems                   !
!==============================================================================

!	 Assemble TECO and build a new EMACS.
@enable

! Make sure EMACS: and INFO: point to where the *new* EMACS and INFO are to be
! installed.  (Define logical names to point to where <EMACS> will live, or
! change these if it lives elsewhere)

@define emacs: ps:<emacs>
@define info: ps:<info>

! EMACS: must be at the front of SYS: in this file to hide any DEC TECO.EXE.
! If this is not run under batch, you should be sure that MIT TECO is invoked.

@define sys: emacs:,sys:

! when TECO starts up, it must run TECO.INIT from <EMACS>, so connect there.

@connect emacs:

@vdirectory sys:midas.exe
@vdirectory teco.mid, tectrm.mid, config.mid
@vdirectory vtsdef.mid, tnxdfs.mid, twxdfs.mid, twxbts.mid
@vdirectory teco.init, info:emacs.init, zed.tec, view.teco
@vdirectory teach-emacs.init, teach-emacs.txt

! compile the new TECO

@midas
*temp_teco

!Now start up the new TECO, and dump out the environment the init file creates!

@iddt
*;ytemp
*purifyg
*mmrunpurifydumpnemacs.exe
*mmruneinit? document


@delete temp.exe

! Make a stand-alone INFO

@teco
*er info:emacs.init@y m(hfx*)


@reset

! Make TEACH-EMACS.EXE

@teco
*er emacs:teach-emacs.init@y m(hfx*)


! Make ZED.EXE and VIEW.EXE.  These are not EMACS-based, so hide the default
! teco.init file from the build process for them 

@set file invisible teco.init.*

@teco
=er zed.tec @y m(hfx*)xteco 2f? ei @ejzed.exe

@teco
=er view.teco @y m(hfx*) 10f? ei @ejview.exe

@set file visible teco.init.*

! see what we've done

@vdirectory teco.exe, tecpur.exe, nemacs.exe, emacs.doc, emacs.chart
@vdirectory ninfo.exe, teach-emacs.tutorial, teach-emacs.exe
@vdirectory view.exe, zed.exe
