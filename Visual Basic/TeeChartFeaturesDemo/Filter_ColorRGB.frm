VERSION 5.00
Object = "{DE7847A7-A266-4AA9-AA68-16676652C9DB}#1.0#0"; "TeeChart2014.ocx"
Begin VB.Form Filter_ColorRGB 
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   6915
   ClientLeft      =   3480
   ClientTop       =   3390
   ClientWidth     =   11505
   LinkTopic       =   "Form2"
   ScaleHeight     =   6915
   ScaleWidth      =   11505
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command1 
      Caption         =   "Filters..."
      Height          =   345
      Left            =   8910
      TabIndex        =   8
      Top             =   1020
      Width           =   1125
   End
   Begin VB.HScrollBar HScroll3 
      Height          =   255
      Left            =   6480
      Max             =   255
      TabIndex        =   7
      Top             =   1080
      Value           =   100
      Width           =   2115
   End
   Begin VB.HScrollBar HScroll2 
      Height          =   255
      Left            =   3660
      Max             =   255
      TabIndex        =   5
      Top             =   1080
      Value           =   100
      Width           =   2115
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Left            =   690
      Max             =   255
      TabIndex        =   3
      Top             =   1080
      Value           =   100
      Width           =   2115
   End
   Begin TeeChart.TChart TChart1 
      Align           =   2  'Align Bottom
      Height          =   5445
      Left            =   0
      TabIndex        =   1
      Top             =   1470
      Width           =   11505
      Base64          =   $"Filter_ColorRGB.frx":0000
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00C0FFFF&
      Height          =   915
      Left            =   0
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "Filter_ColorRGB.frx":0784
      Top             =   0
      Width           =   11490
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Blue:"
      Height          =   195
      Left            =   6030
      TabIndex        =   6
      Top             =   1110
      Width           =   360
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Green:"
      Height          =   195
      Left            =   3090
      TabIndex        =   4
      Top             =   1110
      Width           =   480
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Red:"
      Height          =   195
      Left            =   240
      TabIndex        =   2
      Top             =   1110
      Width           =   345
   End
End
Attribute VB_Name = "Filter_ColorRGB"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
  TChart1.Tools.Items(0).ShowEditor
End Sub

Private Sub Form_Load()
  TChart1.Tools.Add tcAntiAlias
  TChart1.Tools.Items(0).asAntiAlias.Filters.Add fcColor
  
  With TChart1.Tools.Items(0).asAntiAlias.Filters.Item(0).asColor
    .Red = 100
    .green = 100
    .blue = 100
  End With
End Sub

Private Sub HScroll1_Change()
  TChart1.Tools.Items(0).asAntiAlias.Filters.Item(0).asColor.Red = HScroll1.Value
  TChart1.Repaint
End Sub

Private Sub HScroll1_Scroll()
  HScroll1_Change
End Sub

Private Sub HScroll2_Change()
  TChart1.Tools.Items(0).asAntiAlias.Filters.Item(0).asColor.green = HScroll2.Value
  TChart1.Repaint
End Sub

Private Sub HScroll2_Scroll()
  HScroll2_Change
End Sub

Private Sub HScroll3_Change()
  TChart1.Tools.Items(0).asAntiAlias.Filters.Item(0).asColor.blue = HScroll3.Value
  TChart1.Repaint
End Sub

Private Sub HScroll3_Scroll()
  HScroll3_Change
End Sub

Private Sub Text1_DblClick()
  TChart1.ShowEditor
End Sub
