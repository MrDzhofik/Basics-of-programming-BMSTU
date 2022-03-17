object MaxForm: TMaxForm
  Left = 0
  Top = 0
  Caption = #1057#1080#1084#1091#1083#1103#1090#1086#1088' '#1088#1099#1085#1082#1072
  ClientHeight = 212
  ClientWidth = 487
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
  object MaxMemo: TMemo
    Left = 8
    Top = 8
    Width = 345
    Height = 161
    Lines.Strings = (
      'MaxMemo')
    TabOrder = 0
  end
  object ExitButton: TButton
    Left = 400
    Top = 160
    Width = 79
    Height = 33
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 1
    OnClick = ExitButtonClick
  end
end
