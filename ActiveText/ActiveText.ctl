VERSION 5.00
Begin VB.UserControl ActiveText 
   ClientHeight    =   330
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   1080
   ScaleHeight     =   330
   ScaleWidth      =   1080
   ToolboxBitmap   =   "ActiveText.ctx":0000
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   1065
   End
End
Attribute VB_Name = "ActiveText"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
'Default Property Values:
Const m_def_BackStyle = 0
Const m_def_ActiveForeGround = 0
Const m_def_ActiveBackGround = 0
Const m_def_InactiveForeGround = 0
Const m_def_InactiveBackGround = 0
'Property Variables:
Dim m_BackStyle As Integer
Dim m_ActiveForeGround As OLE_COLOR
Dim m_ActiveBackGround As OLE_COLOR
Dim m_InactiveForeGround As OLE_COLOR
Dim m_InactiveBackGround As OLE_COLOR
'Event Declarations:
Event Click() 'MappingInfo=Text1,Text1,-1,Click
Attribute Click.VB_Description = "Occurs when the user presses and then releases a mouse button over an object."
Event DblClick() 'MappingInfo=Text1,Text1,-1,DblClick
Attribute DblClick.VB_Description = "Occurs when the user presses and releases a mouse button and then presses and releases it again over an object."
Event KeyDown(KeyCode As Integer, Shift As Integer) 'MappingInfo=Text1,Text1,-1,KeyDown
Attribute KeyDown.VB_Description = "Occurs when the user presses a key while an object has the focus."
Event KeyPress(KeyAscii As Integer) 'MappingInfo=Text1,Text1,-1,KeyPress
Attribute KeyPress.VB_Description = "Occurs when the user presses and releases an ANSI key."
Event KeyUp(KeyCode As Integer, Shift As Integer) 'MappingInfo=Text1,Text1,-1,KeyUp
Attribute KeyUp.VB_Description = "Occurs when the user releases a key while an object has the focus."
Event MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'MappingInfo=Text1,Text1,-1,MouseDown
Attribute MouseDown.VB_Description = "Occurs when the user presses the mouse button while an object has the focus."
Event MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'MappingInfo=Text1,Text1,-1,MouseMove
Attribute MouseMove.VB_Description = "Occurs when the user moves the mouse."
Event MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single) 'MappingInfo=Text1,Text1,-1,MouseUp
Attribute MouseUp.VB_Description = "Occurs when the user releases the mouse button while an object has the focus."



'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=Text1,Text1,-1,BackColor
Public Property Get BackColor() As OLE_COLOR
Attribute BackColor.VB_Description = "Returns/sets the background color used to display text and graphics in an object."
    BackColor = Text1.BackColor
End Property

Public Property Let BackColor(ByVal New_BackColor As OLE_COLOR)
    Text1.BackColor() = New_BackColor
    PropertyChanged "BackColor"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=Text1,Text1,-1,ForeColor
Public Property Get ForeColor() As OLE_COLOR
Attribute ForeColor.VB_Description = "Returns/sets the foreground color used to display text and graphics in an object."
    ForeColor = Text1.ForeColor
End Property

Public Property Let ForeColor(ByVal New_ForeColor As OLE_COLOR)
    Text1.ForeColor() = New_ForeColor
    PropertyChanged "ForeColor"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=Text1,Text1,-1,Enabled
Public Property Get Enabled() As Boolean
Attribute Enabled.VB_Description = "Returns/sets a value that determines whether an object can respond to user-generated events."
    Enabled = Text1.Enabled
End Property

Public Property Let Enabled(ByVal New_Enabled As Boolean)
    Text1.Enabled() = New_Enabled
    PropertyChanged "Enabled"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=Text1,Text1,-1,Font
Public Property Get Font() As Font
Attribute Font.VB_Description = "Returns a Font object."
Attribute Font.VB_UserMemId = -512
    Set Font = Text1.Font
End Property

Public Property Set Font(ByVal New_Font As Font)
    Set Text1.Font = New_Font
    PropertyChanged "Font"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MemberInfo=7,0,0,0
Public Property Get BackStyle() As Integer
Attribute BackStyle.VB_Description = "Indicates whether a Label or the background of a Shape is transparent or opaque."
    BackStyle = m_BackStyle
End Property

Public Property Let BackStyle(ByVal New_BackStyle As Integer)
    m_BackStyle = New_BackStyle
    PropertyChanged "BackStyle"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=Text1,Text1,-1,BorderStyle
Public Property Get BorderStyle() As Integer
Attribute BorderStyle.VB_Description = "Returns/sets the border style for an object."
    BorderStyle = Text1.BorderStyle
End Property

Public Property Let BorderStyle(ByVal New_BorderStyle As Integer)
    Text1.BorderStyle() = New_BorderStyle
    PropertyChanged "BorderStyle"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=Text1,Text1,-1,Refresh
Public Sub Refresh()
Attribute Refresh.VB_Description = "Forces a complete repaint of a object."
    Text1.Refresh
End Sub

Private Sub Text1_Click()
    RaiseEvent Click
End Sub

Private Sub Text1_DblClick()
    RaiseEvent DblClick
End Sub

Private Sub Text1_GotFocus()
    Text1.BackColor = m_ActiveBackGround
    Text1.ForeColor = m_ActiveForeGround
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer)
    RaiseEvent KeyDown(KeyCode, Shift)
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
    RaiseEvent KeyPress(KeyAscii)
End Sub

Private Sub Text1_KeyUp(KeyCode As Integer, Shift As Integer)
    RaiseEvent KeyUp(KeyCode, Shift)
End Sub

Private Sub Text1_LostFocus()
    Text1.BackColor = m_InactiveBackGround
    Text1.ForeColor = m_InactiveForeGround
End Sub

Private Sub Text1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    RaiseEvent MouseDown(Button, Shift, X, Y)
End Sub

Private Sub Text1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    RaiseEvent MouseMove(Button, Shift, X, Y)
End Sub

Private Sub Text1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    RaiseEvent MouseUp(Button, Shift, X, Y)
End Sub

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=Text1,Text1,-1,PasswordChar
Public Property Get PasswordChar() As String
Attribute PasswordChar.VB_Description = "Returns/sets a value that determines whether characters typed by a user or placeholder characters are displayed in a control."
    PasswordChar = Text1.PasswordChar
End Property

Public Property Let PasswordChar(ByVal New_PasswordChar As String)
    Text1.PasswordChar() = New_PasswordChar
    PropertyChanged "PasswordChar"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=Text1,Text1,-1,Text
Public Property Get Text() As String
Attribute Text.VB_Description = "Returns/sets the text contained in the control."
    Text = Text1.Text
End Property

Public Property Let Text(ByVal New_Text As String)
    Text1.Text() = New_Text
    PropertyChanged "Text"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=Text1,Text1,-1,Alignment
Public Property Get Alignment() As Integer
Attribute Alignment.VB_Description = "Returns/sets the alignment of a CheckBox or OptionButton, or a control's text."
    Alignment = Text1.Alignment
End Property

Public Property Let Alignment(ByVal New_Alignment As Integer)
    Text1.Alignment() = New_Alignment
    PropertyChanged "Alignment"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MemberInfo=10,0,0,0
Public Property Get ActiveForeGround() As OLE_COLOR
    ActiveForeGround = m_ActiveForeGround
End Property

Public Property Let ActiveForeGround(ByVal New_ActiveForeGround As OLE_COLOR)
    m_ActiveForeGround = New_ActiveForeGround
    PropertyChanged "ActiveForeGround"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MemberInfo=10,0,0,0
Public Property Get ActiveBackGround() As OLE_COLOR
    ActiveBackGround = m_ActiveBackGround
End Property

Public Property Let ActiveBackGround(ByVal New_ActiveBackGround As OLE_COLOR)
    m_ActiveBackGround = New_ActiveBackGround
    PropertyChanged "ActiveBackGround"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MemberInfo=10,0,0,0
Public Property Get InactiveForeGround() As OLE_COLOR
    InactiveForeGround = m_InactiveForeGround
End Property

Public Property Let InactiveForeGround(ByVal New_InactiveForeGround As OLE_COLOR)
    m_InactiveForeGround = New_InactiveForeGround
    PropertyChanged "InactiveForeGround"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MemberInfo=10,0,0,0
Public Property Get InactiveBackGround() As OLE_COLOR
    InactiveBackGround = m_InactiveBackGround
End Property

Public Property Let InactiveBackGround(ByVal New_InactiveBackGround As OLE_COLOR)
    m_InactiveBackGround = New_InactiveBackGround
    PropertyChanged "InactiveBackGround"
End Property

'Initialize Properties for User Control
Private Sub UserControl_InitProperties()
    m_BackStyle = m_def_BackStyle
    m_ActiveForeGround = m_def_ActiveForeGround
    m_ActiveBackGround = m_def_ActiveBackGround
    m_InactiveForeGround = m_def_InactiveForeGround
    m_InactiveBackGround = m_def_InactiveBackGround
End Sub

'Load property values from storage
Private Sub UserControl_ReadProperties(PropBag As PropertyBag)

    Text1.BackColor = PropBag.ReadProperty("BackColor", &H80000005)
    Text1.ForeColor = PropBag.ReadProperty("ForeColor", &H80000008)
    Text1.Enabled = PropBag.ReadProperty("Enabled", True)
    Set Text1.Font = PropBag.ReadProperty("Font", Ambient.Font)
    m_BackStyle = PropBag.ReadProperty("BackStyle", m_def_BackStyle)
    Text1.BorderStyle = PropBag.ReadProperty("BorderStyle", 1)
    Text1.PasswordChar = PropBag.ReadProperty("PasswordChar", "")
    Text1.Text = PropBag.ReadProperty("Text", "Text1")
    Text1.Alignment = PropBag.ReadProperty("Alignment", 0)
    m_ActiveForeGround = PropBag.ReadProperty("ActiveForeGround", m_def_ActiveForeGround)
    m_ActiveBackGround = PropBag.ReadProperty("ActiveBackGround", m_def_ActiveBackGround)
    m_InactiveForeGround = PropBag.ReadProperty("InactiveForeGround", m_def_InactiveForeGround)
    m_InactiveBackGround = PropBag.ReadProperty("InactiveBackGround", m_def_InactiveBackGround)
End Sub

Private Sub UserControl_Resize()
    Text1.Width = UserControl.Width
    Text1.Height = UserControl.Height
End Sub

'Write property values to storage
Private Sub UserControl_WriteProperties(PropBag As PropertyBag)

    Call PropBag.WriteProperty("BackColor", Text1.BackColor, &H80000005)
    Call PropBag.WriteProperty("ForeColor", Text1.ForeColor, &H80000008)
    Call PropBag.WriteProperty("Enabled", Text1.Enabled, True)
    Call PropBag.WriteProperty("Font", Text1.Font, Ambient.Font)
    Call PropBag.WriteProperty("BackStyle", m_BackStyle, m_def_BackStyle)
    Call PropBag.WriteProperty("BorderStyle", Text1.BorderStyle, 1)
    Call PropBag.WriteProperty("PasswordChar", Text1.PasswordChar, "")
    Call PropBag.WriteProperty("Text", Text1.Text, "Text1")
    Call PropBag.WriteProperty("Alignment", Text1.Alignment, 0)
    Call PropBag.WriteProperty("ActiveForeGround", m_ActiveForeGround, m_def_ActiveForeGround)
    Call PropBag.WriteProperty("ActiveBackGround", m_ActiveBackGround, m_def_ActiveBackGround)
    Call PropBag.WriteProperty("InactiveForeGround", m_InactiveForeGround, m_def_InactiveForeGround)
    Call PropBag.WriteProperty("InactiveBackGround", m_InactiveBackGround, m_def_InactiveBackGround)
End Sub

