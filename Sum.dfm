object SumForm: TSumForm
  Left = 0
  Top = 0
  Caption = #1057#1080#1084#1091#1083#1103#1090#1086#1088' '#1088#1099#1085#1082#1072
  ClientHeight = 291
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 120
  TextHeight = 16
  object SumLabel: TLabel
    Left = 391
    Top = 23
    Width = 113
    Height = 19
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1091#1084#1084#1091':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SumMemo: TMemo
    Left = 8
    Top = 8
    Width = 377
    Height = 275
    Lines.Strings = (
      'SumMemo')
    TabOrder = 0
  end
  object ExitButton: TButton
    Left = 413
    Top = 248
    Width = 75
    Height = 33
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 1
    OnClick = ExitButtonClick
  end
  object SumEdit: TEdit
    Left = 400
    Top = 64
    Width = 100
    Height = 24
    NumbersOnly = True
    TabOrder = 2
  end
  object SumButton: TButton
    Left = 413
    Top = 200
    Width = 75
    Height = 33
    Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
    TabOrder = 3
    OnClick = SumButtonClick
  end
end
