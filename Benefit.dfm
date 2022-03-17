object BenefitForm: TBenefitForm
  Left = 0
  Top = 0
  Caption = #1057#1080#1084#1091#1083#1103#1090#1086#1088' '#1088#1099#1085#1082#1072
  ClientHeight = 237
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object BenefitLabel: TLabel
    Left = 392
    Top = 19
    Width = 91
    Height = 16
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1090#1086#1074#1072#1088':'
  end
  object BenefitMemo: TMemo
    Left = 8
    Top = 16
    Width = 353
    Height = 201
    Lines.Strings = (
      'BenefitMemo')
    TabOrder = 0
  end
  object BenefitEdit: TEdit
    Left = 384
    Top = 51
    Width = 121
    Height = 24
    TabOrder = 1
  end
  object BenefitButton: TButton
    Left = 408
    Top = 140
    Width = 75
    Height = 33
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 2
    OnClick = BenefitButtonClick
  end
  object ExitButton: TButton
    Left = 408
    Top = 179
    Width = 75
    Height = 33
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 3
    OnClick = ExitButtonClick
  end
end
