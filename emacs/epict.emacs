!* -*- TECO -*- !
!* Reconstructed from a sourceless library. !

!~Filename~:! !Macros for editing wide screen pictures!
EPICT

!Edit Picture:! !C Edit a wide screen picture.
Puts you in a recursive editing session, with only 72 columns of the display
visible.  Tab will change the start of the visible columns.

If there is text remaining on either side of the lines then that side will be
bordered by "\\".  The user is responsible for making sure that these line up
(visually, don't worry about tabs) when exiting or changing the viewed column.
Overwrite mode is set.!

    q..O m.v Picture_Real_Buffer
    0[..F f[BBind
    0 m.v Picture_Display_Column
    [..J m(m.m&_Set_Picture_Display)

    m.m ^R_Change_Picture_Display_Column [I
    m.m ^R_Edit_Picture_Kill_Line [.K
    m.m ^R_Edit_Picture_New_Line [M
    m.m ^R_Edit_Picture_Open_Line [.O

    1[Overwrite_Mode
        
    m(m.m&_Update_Picture_Buffer)
    

!^R Change Picture Display Column:! !^R Redisplay on a new column.
Argument is increment to add to column; if no argument is given, display
column is reset to zero.!

    f f "e 0' "# qPicture_Display_Column + ' [0

    q0"l 0u0'

    m(m.m&_Update_Picture_Buffer)

    q0 uPicture_Display_Column

    m(m.m&_Set_Picture_Display)
    

!^R Edit Picture Kill Line:! !^R Perform c-K within picture!

    m(m.m&_Update_Picture_Buffer)

    qPicture_Real_Buffer [..O

    f @m (m.m^R_Kill_Line)

    ]..O

    m(m.m&_Set_Picture_Display)

    .[0 .,(:l . (q0j))

!^R Edit Picture New Line:! !^R Insert CRLF before point!

    m(m.m&_Update_Picture_Buffer)

    .[0 qPicture_Real_Buffer[..O

    "l -' "#' <i
    >

    ]..O

    m(m.m&_Set_Picture_Display)

    .(:l.u1)j

    "l q0j'
    q0,q1

!^R Edit Picture Open Line:! !^R Insert CRLF after point!

    - :m (m.m^R_Edit_Picture_New_Line)

!& Set Picture Display:! !S Fill display buf with partial lines from real buf!

    [0[1[2[3[4[5

    fs ^R VPos u5
    hk q..O u2
    qPicture_Display_Column u3
    qPicture_Real_Buffer [..O

    fs SHPos  - q3 u0
    q0 - 72"g 72 u0' q0"l 0u0'
    0u1 0l <b-. ; -l %1>
    m(m.mUntabify)

    < .-z; :x4 q2 [..O
    fq4 - q3 "g q3,(fq4) :g4 u4' "# :i4 '
    fq4 - 72 "g 0,72 :g4 u4 :i44 \\'
    q3"n i\\'
    g4 72 - (fq4)f"g ,_i' w
    i
     ' ]..O l >

    q2 [..O
    0 fs Modified  w 0 fs X Modified  w

    j q1 l q3"n 2 + ' q0 c
    :g3 u3

    :i..J (Editing_picture,_column_3,_return_with_c-m-Z)

    f q5 :f
    

!& Update Picture Buffer:! !S Propagate display buf changes back to real buf!

    [0[1[2[3[4[5 q..O u3

    qPicture_Display_Column u0

    fs SHPos  u1 q0"n q1 - 2 u1' q1 + q0 u1

    0u2 0l < b-.; -l %2>

    fs Modified u5
    j m(m.mUntabify)

    qPicture_Real_Buffer [..O j
    q5"n < .-z;
           q3[..O q0"n 2c ' :x4 0,72 :g4 u4 l ]..O
    :l fq4 + q0 - (fs SHPos ) f"g ,_i' w
    0l q0 c f 4
    :l -@f 	_ k l >'

    j q2 l q1 c
    ]..O j q2 l q1 c
    
    