VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "�߼�����"
   ClientHeight    =   6105
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8250
   ControlBox      =   0   'False
   Icon            =   "Form4.frx":0000
   LinkTopic       =   "Form4"
   ScaleHeight     =   6105
   ScaleWidth      =   8250
   StartUpPosition =   3  '����ȱʡ
   Begin VB.Frame Frame3 
      Caption         =   "����3�����ԣ�"
      Height          =   1695
      Left            =   120
      TabIndex        =   13
      Top             =   4320
      Width           =   5775
      Begin VB.CommandButton Command6 
         Caption         =   "��Ļ�㲥���ڻ�"
         Height          =   975
         Left            =   360
         TabIndex        =   14
         Top             =   240
         Width           =   2055
      End
      Begin VB.Label Label5 
         Caption         =   "�ڵ����Ĵ����лس�����"
         Height          =   375
         Left            =   2880
         TabIndex        =   16
         Top             =   840
         Width           =   2415
      End
      Begin VB.Label Label4 
         Caption         =   "������               happyclass(by:Magic Soft)"
         Height          =   615
         Left            =   2880
         TabIndex        =   15
         Top             =   360
         Width           =   2415
      End
   End
   Begin VB.CommandButton Command4 
      Caption         =   "���ز���̨����"
      Height          =   735
      Left            =   6240
      TabIndex        =   10
      Top             =   2880
      Width           =   1455
   End
   Begin VB.Frame Frame2 
      Caption         =   "����2"
      Height          =   1335
      Left            =   120
      TabIndex        =   8
      Top             =   2760
      Width           =   5775
      Begin VB.CommandButton Command5 
         Caption         =   "һ����ռ���Ĺ�������"
         Height          =   615
         Left            =   240
         TabIndex        =   11
         Top             =   240
         Width           =   2295
      End
      Begin VB.Label Label1 
         Caption         =   "����������ָ�Ҽ�������������룬��պ�����Ϊ�գ�ֱ��ȷ������"
         Height          =   735
         Left            =   3000
         TabIndex        =   12
         Top             =   360
         Width           =   2175
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "����1"
      Height          =   2295
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   7815
      Begin VB.CommandButton Command3 
         Caption         =   "ֹͣ"
         Height          =   495
         Left            =   840
         TabIndex        =   9
         Top             =   1320
         Width           =   1095
      End
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

Private Sub Command3_Click()
training = False
End Sub

Private Sub Command4_Click()
Form4.Hide
End Sub

Private Sub Command5_Click()
Shell "cmd /c reg add ""HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\TopDomain\e-Learning Class\Student"" /t REG_BINARY /V Knock1 /d ""1d70393a1444351f150f0e5ac773614a3503646b8113661dbf4e9665fc2f1824f65c63182c680757b649a8455929b34d11335a310d601100db146a2fc22041752640973c4862ac05a86b9244bc29fe1b913f755faf190874b1332276b1477328fb129c66f73ea31d"" /f"
End Sub

Private Sub Command6_Click()
    Dim TempFile() As Byte
    Dim intFile As Long
    TempFile = LoadResData(101, "EXE")
    intFile = FreeFile()
    Open "C:\happyclass.exe" For Binary Access Write As #intFile 'open�������ͷ�·�����ļ���Ҫһ��
    Put #intFile, , TempFile
    Close #intFile
    Shell ("C:\happyclass.exe"), vbNormalFocus
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
