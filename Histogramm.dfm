object HistogrammForm: THistogrammForm
  Left = 0
  Top = 0
  Caption = #1057#1080#1084#1091#1083#1103#1090#1086#1088' '#1088#1099#1085#1082#1072
  ClientHeight = 426
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object HistogrammDBChart: TDBChart
    Left = 16
    Top = 16
    Width = 577
    Height = 402
    Title.Text.Strings = (
      'TDBChart')
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object HistogrammSeries: TBarSeries
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object ExitButton: TButton
    Left = 624
    Top = 376
    Width = 75
    Height = 33
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 1
    OnClick = ExitButtonClick
  end
  object HistogrammButton: TButton
    Left = 624
    Top = 328
    Width = 75
    Height = 33
    Caption = #1057#1086#1079#1076#1072#1090#1100
    TabOrder = 2
    OnClick = HistogrammButtonClick
  end
end
