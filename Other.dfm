object OtherForm: TOtherForm
  Left = 0
  Top = 0
  Caption = #1057#1080#1084#1091#1083#1103#1090#1086#1088' '#1088#1099#1085#1082#1072
  ClientHeight = 291
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object SumLabel: TLabel
    Left = 205
    Top = 96
    Width = 92
    Height = 16
    Caption = #1058#1086#1074#1072#1088' '#1085#1072' '#1089#1091#1084#1084#1091
  end
  object BenefitLabel: TLabel
    Left = 345
    Top = 96
    Width = 96
    Height = 16
    Caption = #1042#1099#1075#1086#1076#1085#1099#1081' '#1090#1086#1074#1072#1088
  end
  object HistogrammLabel: TLabel
    Left = 482
    Top = 96
    Width = 127
    Height = 16
    Caption = #1043#1080#1089#1090#1086#1075#1088#1072#1084#1084#1072' '#1090#1086#1074#1072#1088#1086#1074
  end
  object MaxLabel: TLabel
    Left = 32
    Top = 96
    Width = 157
    Height = 16
    Caption = #1058#1086#1074#1072#1088' '#1074' '#1073#1086#1083#1100#1096#1077#1084' '#1085#1072#1083#1080#1095#1080#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object MaxButton: TButton
    Left = 64
    Top = 146
    Width = 81
    Height = 33
    Caption = #1052#1072#1082#1089#1080#1084#1091#1084
    TabOrder = 0
    OnClick = MaxButtonClick
  end
  object SumButton: TButton
    Left = 216
    Top = 146
    Width = 81
    Height = 33
    Caption = #1057#1091#1084#1084#1072
    TabOrder = 1
    OnClick = SumButtonClick
  end
  object BenefitButton: TButton
    Left = 360
    Top = 146
    Width = 81
    Height = 33
    Caption = #1042#1099#1075#1086#1076#1072
    TabOrder = 2
    OnClick = BenefitButtonClick
  end
  object HistogrammButton: TButton
    Left = 504
    Top = 146
    Width = 81
    Height = 33
    Caption = #1043#1080#1089#1090#1086#1075#1088#1072#1084#1084#1072
    TabOrder = 3
    OnClick = HistogrammButtonClick
  end
  object ExitButton: TButton
    Left = 528
    Top = 234
    Width = 81
    Height = 31
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 4
    OnClick = ExitButtonClick
  end
end
