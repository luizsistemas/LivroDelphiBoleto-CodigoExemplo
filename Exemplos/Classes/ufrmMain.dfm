object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Classes'
  ClientHeight = 151
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnExecutar: TButton
    Left = 16
    Top = 8
    Width = 97
    Height = 33
    Caption = 'Executar'
    TabOrder = 0
    OnClick = btnExecutarClick
  end
  object Memo: TMemo
    Left = 150
    Top = 0
    Width = 341
    Height = 151
    Align = alRight
    Lines.Strings = (
      'Memo')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 16
    Top = 64
    Width = 97
    Height = 33
    Caption = 'Lista Funcion'#225'rios'
    TabOrder = 2
    OnClick = Button1Click
  end
end
