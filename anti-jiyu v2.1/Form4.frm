VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "�߼�����"
   ClientHeight    =   2640
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8055
   Icon            =   "Form4.frx":0000
   LinkTopic       =   "Form4"
   ScaleHeight     =   2640
   ScaleWidth      =   8055
   StartUpPosition =   3  '����ȱʡ
   Begin VB.Frame Frame1 
      Caption         =   "����1�����ԣ�"
      Height          =   2295
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   7815
      Begin VB.CheckBox Check1 
         Caption         =   "�趨ÿ������һ��"
         Enabled         =   0   'False
         Height          =   255
         Left            =   4680
         TabIndex        =   5
         Top             =   240
         Width           =   2175
      End
      Begin VB.CommandButton Command2 
         Caption         =   "����"
         Height          =   375
         Left            =   6720
         TabIndex        =   4
         Top             =   480
         Width           =   855
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   5040
         TabIndex        =   3
         Top             =   600
         Width           =   855
      End
      Begin VB.CommandButton Command1 
         Caption         =   "ȷ��"
         Height          =   375
         Left            =   840
         TabIndex        =   2
         Top             =   600
         Width           =   1095
      End
      Begin VB.Timer Timer1 
         Interval        =   1500
         Left            =   2280
         Top             =   1080
      End
      Begin VB.OptionButton Option2 
         Caption         =   "ʹ���Զ��ر���Ļ�㲥����"
         Height          =   375
         Left            =   240
         TabIndex        =   1
         Top             =   240
         Width           =   3015
      End
      Begin VB.Label Label1 
         Caption         =   "ʹ��ʱ�뱣֤�˴��ڴ��ڴ�״̬   �ر�ֻ��رմ˴��ڼ���"
         Height          =   495
         Left            =   3960
         TabIndex        =   8
         Top             =   1560
         Width           =   3015
      End
      Begin VB.Label Label3 
         Caption         =   "δ�����δָ��������Ĭ��5��"
         Height          =   255
         Left            =   4320
         TabIndex        =   7
         Top             =   1200
         Width           =   3015
      End
      Begin VB.Label Label2 
         Caption         =   "��"
         Height          =   255
         Left            =   6000
         TabIndex        =   6
         Top             =   720
         Width           =   255
      End
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public jihuocode As String, training As Boolean

Private Sub Command1_Click()
If Option2.Value = True And Check1.Value = 1 Then
    If Val(Text1.Text) < 5 Or Val(Text1.Text) > 60 Then
      MsgBox "������5��60֮�����", , "������Ч"
      training = False
    Else
      Timer1.Interval = Val(Text1.Text) * 1000
      training = True
    End If
Else
     Timer1.Interval = 5000
     training = True
End If
   
End Sub

Private Sub Command2_Click()
 jihuocode = InputBox("�����뼤����", "����", "")
  If jihuocode = "GMbirthday" Then
 succeed
 Else
  If jihuocode = "A0B923820DCC509A" Or jihuocode = "9D4C2F636F067F89" Or jihuocode = "4B5CE2FE28308FD9" Then
  succeed
  Else
  MsgBox "��Ч������", , ""
  End If
End If
End Sub

Private Sub Form_Load()
training = False
 Check1.Enabled = False
End Sub

Private Sub Timer1_Timer()
If training = True Then
 Shell "cmd /c TASKKILL /f /fi ""WINDOWTITLE eq ��Ļ�㲥""", vbMinimizedNoFocus
End If

End Sub

Public Sub succeed()
 Check1.Enabled = True
 MsgBox "�ɹ�", , ""
 Command2.Enabled = False
 Command2.Caption = "�Ѽ���"
End Sub
