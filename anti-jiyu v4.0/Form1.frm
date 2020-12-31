VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Anti-Jiyu 2016 反极域电子教室2016 版本4.0"
   ClientHeight    =   2295
   ClientLeft      =   2955
   ClientTop       =   2355
   ClientWidth     =   6135
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   2295
   ScaleWidth      =   6135
   Begin VB.CommandButton Command2 
      Caption         =   "电脑卡顿"
      Height          =   975
      Left            =   4920
      TabIndex        =   7
      Top             =   480
      Width           =   615
   End
   Begin VB.CommandButton Command4 
      Caption         =   "   捐助开发者     以及高级功能"
      Height          =   975
      Left            =   3360
      TabIndex        =   2
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton Command7 
      Caption         =   "更新日志"
      Height          =   495
      Left            =   1920
      TabIndex        =   5
      Top             =   480
      Width           =   1455
   End
   Begin VB.CommandButton Command5 
      Caption         =   "什么是极域"
      Height          =   375
      Left            =   1920
      TabIndex        =   4
      Top             =   1800
      Width           =   1455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "帮助"
      Height          =   495
      Left            =   1920
      TabIndex        =   1
      Top             =   960
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
   Begin VB.Label Label2 
      Caption         =   "高级功能在捐助开发者中！"
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
      Caption         =   "本程序由jiangzhe设计开发  版本4.0"
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
End Sub

Private Sub Command2_Click()
msgkillupdate = MsgBox("由于机房电脑未禁用Windows update导致Windows update在后台静默下载消耗大量系统资源，单击确定来结束Windows update", vbOKCancel, "电脑卡顿怎么办")
If msgkillupdate = 1 Then
 Shell "cmd /c TASKKILL /IM setuphost.exe /f"
 Shell "cmd /c TASKKILL /IM windows update.exe /f"
 End If
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


Private Sub Command7_Click()
MsgBox "1.添加屏幕广播窗口化功能（测试）" & Chr(13) & "2.小幅优化", , "更新日志"
End Sub

Private Sub Form_Load()
 Shell "cmd /c del ""c:\happyclass.exe"" /f"
 msgfirst = MsgBox("本程序为极域电子教室2016版本设计。" & Chr(13) & "免责声明：使用本程序所造成的一切后果与本程序设计者jiangzhe无关。" & Chr(13) & "使用本软件即代表您已同意此条款。如果你不同意，请单击取消以退出。", vbOKCancel, "警告")
If msgfirst = 2 Then End

End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Unload Form4
 Shell "cmd /c TASKKILL /f /IM ""happyclass.exe"""
Shell "cmd /c del ""c:\happyclass.exe"" /f"
End Sub

