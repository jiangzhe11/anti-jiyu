VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "�߼�����"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   Icon            =   "Form4.frx":0000
   LinkTopic       =   "Form4"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  '����ȱʡ
   Begin VB.Frame Frame1 
      Caption         =   "����1�����ԣ�"
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
         Caption         =   "��ʹ���Զ��ر���Ļ�㲥����"
         Height          =   255
         Left            =   240
         TabIndex        =   2
         Top             =   240
         Value           =   -1  'True
         Width           =   3015
      End
      Begin VB.OptionButton Option2 
         Caption         =   "ʹ���Զ��ر���Ļ�㲥����"
         Height          =   375
         Left            =   240
         TabIndex        =   1
         Top             =   600
         Width           =   3015
      End
   End
   Begin VB.Label Label1 
      Caption         =   "ʹ��ʱ�뱣֤�˴��ڴ��ڴ�״̬    ÿ5����һ����Ļ�㲥"
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
 Shell "cmd /c TASKKILL /f /fi ""WINDOWTITLE eq ��Ļ�㲥""", vbMinimizedNoFocus
End If

End Sub
