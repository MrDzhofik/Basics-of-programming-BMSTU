object DeleteForm: TDeleteForm
  Left = 0
  Top = 0
  Caption = #1057#1080#1084#1091#1083#1103#1090#1086#1088' '#1088#1099#1085#1082#1072
  ClientHeight = 292
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object NameLabel: TLabel
    Left = 104
    Top = 59
    Width = 116
    Height = 21
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SupplierButton: TLabel
    Left = 104
    Top = 137
    Width = 85
    Height = 21
    Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object NameEdit: TEdit
    Left = 240
    Top = 58
    Width = 121
    Height = 24
    TabOrder = 0
  end
  object SupplierEdit: TEdit
    Left = 240
    Top = 133
    Width = 121
    Height = 24
    TabOrder = 1
  end
  object DeleteButton: TButton
    Left = 114
    Top = 225
    Width = 75
    Height = 28
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = DeleteButtonClick
  end
  object ExitButton: TButton
    Left = 264
    Top = 225
    Width = 75
    Height = 28
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = ExitButtonClick
  end
end
