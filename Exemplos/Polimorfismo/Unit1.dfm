object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Polimorfismo'
  ClientHeight = 136
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo: TMemo
    Left = 103
    Top = 0
    Width = 275
    Height = 136
    Align = alRight
    Lines.Strings = (
      'Memo')
    TabOrder = 0
    ExplicitLeft = 240
  end
  object btnSoldado: TButton
    Left = 16
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 1
    OnClick = btnSoldadoClick
  end
end
