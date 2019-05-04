object frmHeranca: TfrmHeranca
  Left = 0
  Top = 0
  Caption = 'Heran'#231'a'
  ClientHeight = 216
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnSoldado: TButton
    Left = 16
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Soldado'
    TabOrder = 0
    OnClick = btnSoldadoClick
  end
  object Memo: TMemo
    Left = 104
    Top = 0
    Width = 340
    Height = 216
    Align = alRight
    Lines.Strings = (
      'Memo')
    TabOrder = 1
  end
  object btnMedico: TButton
    Left = 16
    Top = 40
    Width = 75
    Height = 25
    Caption = 'M'#233'dico'
    TabOrder = 2
    OnClick = btnMedicoClick
  end
end
