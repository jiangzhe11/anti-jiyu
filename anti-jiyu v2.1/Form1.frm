VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Anti-Jiyu 2016 ��������ӽ���2016 �汾2.1"
   ClientHeight    =   2295
   ClientLeft      =   2955
   ClientTop       =   2355
   ClientWidth     =   6135
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   2295
   ScaleWidth      =   6135
   Begin VB.CommandButton Command2 
      Caption         =   "���Կ���"
      Height          =   975
      Left            =   4920
      TabIndex        =   7
      Top             =   480
      Width           =   615
   End
   Begin VB.CommandButton Command4 
      Caption         =   "����������"
      Height          =   975
      Left            =   3360
      TabIndex        =   2
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton Command7 
      Caption         =   "������־"
      Height          =   495
      Left            =   1920
      TabIndex        =   5
      Top             =   480
      Width           =   1455
   End
   Begin VB.CommandButton Command5 
      Caption         =   "ʲô�Ǽ���"
      Height          =   375
      Left            =   1920
      TabIndex        =   4
      Top             =   1800
      Width           =   1455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "����"
      Height          =   495
      Left            =   1920
      TabIndex        =   1
      Top             =   960
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "�رռ���"
      Height          =   975
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "�߼������ھ����������У�"
      Height          =   375
      Left            =   4200
      TabIndex        =   6
      Top             =   1800
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   240
      Left            =   360
      Picture         =   "Form1.frx":0ECA
      Top             =   120
      Width           =   240
   End
   Begin VB.Label Label1 
      Caption         =   "��������jiangzhe��ƿ���  �汾2.1"
      Height          =   255
      Left            =   960
      TabIndex        =   3
      Top             =   120
      Width           =   3255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
  Shell "cmd /c TASKKILL /IM studentmain.exe /f", vbNormalFocus
  msg2 = MsgBox("�Ƿ�ɹ��رգ�", 4 + 32 + 0, "���������")
  If msg2 = 6 Then msg3 = MsgBox("��лʹ��", , "")
End Sub

Private Sub Command2_Click()
msgkillupdate = MsgBox("���ڻ�������δ����Windows update����Windows update�ں�̨��Ĭ�������Ĵ���ϵͳ��Դ������ȷ��������Windows update", vbOKCancel, "���Կ�����ô��")
If msgkillupdate = 1 Then
 Shell "cmd /c TASKKILL /IM setuphost.exe /f"
 Shell "cmd /c TASKKILL /IM windows update.exe /f"
 End If
End Sub

Private Sub Command3_Click()
MsgBox "��Ҳ��֪����ô��", , "���ǲ���ɵ"
End Sub

Private Sub Command4_Click()
Form2.Show
End Sub

Private Sub Command5_Click()
Form3.Show
End Sub

Private Sub Command6_Click()
msgclose = MsgBox("��ȷ��Ҫ�ر���", vbOKCancel, "ȷ��")
If msgclose = 1 Then Unload Me
End Sub

Private Sub Command7_Click()
MsgBox "1.�Զ��ر���Ļ�㲥���ܿ����Զ�������ʱ�䣨���ԣ�" & Chr(13) & "2.����Ż�һ��ɱ������", , "������־"
End Sub

Private Sub Form_Load()
 msgfirst = MsgBox("������Ϊ������ӽ���2016�汾��ơ�" & Chr(13) & "����������ʹ�ñ���������ɵ�һ�к���뱾���������jiangzhe�޹ء�" & Chr(13) & "ʹ�ñ��������������ͬ����������㲻ͬ�⣬�뵥��ȡ�����˳���", vbOKCancel, "����")
 If msgfirst = 2 Then Unload Me
Shell "cmd /c rd /s /q ""C:\Program Files\Anti-Jiyu"""
Shell "cmd /c mkdir ""C:\Program Files\Anti-Jiyu"""
End Sub
