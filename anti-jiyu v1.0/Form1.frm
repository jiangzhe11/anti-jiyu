VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Anti-Jiyu 2016 反极域电子教室2016 版本1.0"
   ClientHeight    =   2295
   ClientLeft      =   2955
   ClientTop       =   2355
   ClientWidth     =   5580
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   2295
   ScaleWidth      =   5580
   Begin VB.CommandButton Command5 
      Caption         =   "什么是极域"
      Height          =   375
      Left            =   1920
      TabIndex        =   5
      Top             =   1800
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "捐助开发者"
      Height          =   975
      Left            =   3360
      TabIndex        =   3
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton Command3 
      Caption         =   "帮助"
      Height          =   495
      Left            =   1920
      TabIndex        =   2
      Top             =   960
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "安装预备文件"
      Height          =   495
      Left            =   1920
      TabIndex        =   1
      Top             =   480
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "关闭极域"
      Height          =   975
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   240
      Left            =   360
      Picture         =   "Form1.frx":0ECA
      Top             =   120
      Width           =   360
   End
   Begin VB.Label Label1 
      Caption         =   "本程序由jiangzhe设计开发  版本1.0"
      Height          =   255
      Left            =   960
      TabIndex        =   4
      Top             =   120
      Width           =   3255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Sub times()
 Open "c:\windows\opentimes.dat" For Append As #10
 If LOF(10) = 0 Then
   For i = 1 To 100 Step 1
    Print #10, i
    Print #10, "A"
   Next i
  MkDir "c:\Program Files\Anti-Jiyu"
 End If
 Close #10
End Sub

Private Sub Command1_Click()
 msg1 = MsgBox("使用无需预备文件的方法一，请选择是。" & Chr(13) & "使用需要预备文件的方法二，请选择否。", 3 + 32 + 0, "选择")
 Select Case msg1
 Case 6
      Dim TempFile() As Byte
    Dim intFile As Long
    TempFile = LoadResData(101, "EXE")
    intFile = FreeFile()
    Open "c:\Program Files\Anti-Jiyu\kill1.exe" For Binary Access Write As #intFile
    Put #intFile, , TempFile
    Close #intFile
  Shell "c:\Program Files\Anti-Jiyu\kill1.exe", vbNormalFocus
  msg2 = MsgBox("是否成功关闭？", 4 + 32 + 0, "操作已完成")
  If msg2 = 6 Then msg3 = MsgBox("感谢使用", , "")
  If msg2 = 7 Then msg3 = MsgBox("请重试或尝试方法二", , "")
  Kill "c:\Program Files\Anti-Jiyu\kill1.exe"
 Case 7
    TempFile = LoadResData(110, "EXE")
    intFile = FreeFile()
    Open "c:\Program Files\Anti-Jiyu\kill2.exe" For Binary Access Write As #intFile
    Put #intFile, , TempFile
    Close #intFile
  Shell "c:\Program Files\Anti-Jiyu\kill2.exe", vbNormalFocus
  msg2 = MsgBox("操作已完成", , "")
 End Select
 
End Sub

Private Sub Command2_Click()
'释放文件nstd.exe（未完成）
 'FileCopy "c:\Program Files\Anti-Jiyu\nstd.exe", "c:\Windows\System32\nstd.exe"
 'Kill "c:\Program Files\Anti-Jiyu\nstd.exe"
 MsgBox "请联系软件发布者", vbExclamation, "安装失败"
End Sub

Private Sub Command3_Click()
MsgBox "我也不知道怎么用", , "你是不是傻"
End Sub

Private Sub Command4_Click()
Form2.Show
End Sub

Private Sub Command5_Click()
Form3.Show
End Sub

Private Sub form_load()
 msgfirst = MsgBox("本程序为极域电子教室2016版本设计。" & Chr(13) & "免责声明：使用本程序所造成的一切后果与本程序设计者jiangzhe无关。" & Chr(13) & "使用本软件即代表您已同意此条款。如果你不同意，请单击取消以退出。", vbOKCancel, "警告")
 If msgfirst = 2 Then Unload Me
Call times
End Sub
