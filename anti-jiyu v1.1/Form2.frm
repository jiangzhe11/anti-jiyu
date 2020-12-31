VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "捐助"
   ClientHeight    =   5910
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   13215
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   5910
   ScaleWidth      =   13215
   StartUpPosition =   3  '窗口缺省
   Begin VB.Label Label3 
      Caption         =   "捐赠与否不影响软件的使用！！"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   21.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2535
      Left            =   10680
      TabIndex        =   2
      Top             =   240
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "微信"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   7680
      TabIndex        =   1
      Top             =   5040
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "支付宝"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   21.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1920
      TabIndex        =   0
      Top             =   5040
      Width           =   1935
   End
   Begin VB.Image Image2 
      Height          =   4965
      Left            =   5640
      Picture         =   "Form2.frx":0ECA
      Top             =   0
      Width           =   4935
   End
   Begin VB.Image Image1 
      Height          =   4785
      Left            =   240
      Picture         =   "Form2.frx":CCE0
      Top             =   120
      Width           =   4770
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form4.Show
End Sub

