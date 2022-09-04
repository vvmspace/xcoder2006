object Form1: TForm1
  Left = 234
  Top = 193
  Width = 201
  Height = 156
  Caption = 'X Coder***'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 41
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100':'
  end
  object Label3: TLabel
    Left = 120
    Top = 0
    Width = 1
    Height = 1
    AutoSize = False
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 184
    Top = 0
    Width = 9
    Height = 18
    Caption = '?'
    Color = clBtnText
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -13
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    OnClick = Label4Click
  end
  object Button1: TButton
    Left = 0
    Top = 40
    Width = 193
    Height = 17
    Caption = #1047#1072#1096#1080#1092#1088#1086#1074#1072#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 0
    Top = 56
    Width = 193
    Height = 17
    Caption = #1056#1072#1089#1096#1080#1092#1088#1086#1074#1072#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object MaskEdit1: TMaskEdit
    Left = 0
    Top = 16
    Width = 193
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 106
    Width = 193
    Height = 16
    Panels = <>
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 88
    Width = 193
    Height = 17
    TabOrder = 4
  end
  object Button3: TButton
    Left = 0
    Top = 72
    Width = 193
    Height = 17
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 5
    OnClick = Button3Click
  end
  object Op: TOpenDialog
    Filter = #1042#1089#1077' '#1092#1072#1081#1083#1099' (*.*)|*.*'
    Title = 'Where secret file?'
    Left = 88
    Top = 96
  end
  object Sa: TSaveDialog
    DefaultExt = 'xcod'
    Filter = 'The Stainless Steel Rat Code file (*.xcod)|*.xcod'
    Title = 'Where to save Coded file?'
    Left = 56
    Top = 96
  end
  object Opd: TOpenDialog
    DefaultExt = 'xcod'
    Filter = 'The Stainless Steel Rat Code file (*.xcod)|*.xcod'
    Title = 'Where is Coded file?'
    Left = 32
    Top = 96
  end
  object Sad: TSaveDialog
    Filter = #1042#1089#1077' '#1092#1072#1081#1083#1099' (*.*)|*.*'
    Title = 'Where to save Decoded file?'
    Top = 96
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 120
    Top = 96
  end
end
