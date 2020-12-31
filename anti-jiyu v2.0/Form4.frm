VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "高级功能"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   Icon            =   "Form4.frx":0000
   LinkTopic       =   "Form4"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  '窗口缺省
   Begin VB.Frame Frame1 
      Caption         =   "功能1（测试）"
      Height          =   1215
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   4095
      Begin VB.Timer Timer1 
         Interval        =   5000
         Left            =   3360
         Top             =   600
      End
      Begin VB.OptionButton Option1 
         Caption         =   "不使用自动关闭屏幕广播功能"
         Height          =   255
         Left            =   240
         TabIndex        =   2
         Top             =   240
         Value           =   -1  'True
         Width           =   3015
      End
      Begin VB.OptionButton Option2 
         Caption         =   "使用自动关闭屏幕广播功能"
         Height          =   375
         Left            =   240
         TabIndex        =   1
         Top             =   600
         Width           =   3015
      End
   End
   Begin VB.Label Label1 
      Caption         =   "使用时请保证此窗口处于打开状态    每5秒检测一次屏幕广播"
      Height          =   495
      Left            =   840
      TabIndex        =   3
      Top             =   1680
      Width           =   3015
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()
If Option2.Value = True Then
 Shell "cmd /c TASKKILL /f /fi ""WINDOWTITLE eq 屏幕广播""", vbMinimizedNoFocus
End If

End Sub
