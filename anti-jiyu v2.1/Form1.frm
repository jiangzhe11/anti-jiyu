VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Anti-Jiyu 2016 反极域电子教室2016 版本2.1"
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
      Caption         =   "捐助开发者"
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
      Caption         =   "本程序由jiangzhe设计开发  版本2.1"
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
  msg2 = MsgBox("是否成功关闭？", 4 + 32 + 0, "操作已完成")
  If msg2 = 6 Then msg3 = MsgBox("感谢使用", , "")
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

Private Sub Command6_Click()
msgclose = MsgBox("你确定要关闭吗", vbOKCancel, "确定")
If msgclose = 1 Then Unload Me
End Sub

Private Sub Command7_Click()
MsgBox "1.自动关闭屏幕广播功能可以自定义检测间隔时间（测试）" & Chr(13) & "2.大幅优化一键杀死代码", , "更新日志"
End Sub

Private Sub Form_Load()
 msgfirst = MsgBox("本程序为极域电子教室2016版本设计。" & Chr(13) & "免责声明：使用本程序所造成的一切后果与本程序设计者jiangzhe无关。" & Chr(13) & "使用本软件即代表您已同意此条款。如果你不同意，请单击取消以退出。", vbOKCancel, "警告")
 If msgfirst = 2 Then Unload Me
Shell "cmd /c rd /s /q ""C:\Program Files\Anti-Jiyu"""
Shell "cmd /c mkdir ""C:\Program Files\Anti-Jiyu"""
End Sub
