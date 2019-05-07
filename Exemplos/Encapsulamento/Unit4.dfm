object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Encapsulamento'
  ClientHeight = 142
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Percentual: TLabel
    Left = 8
    Top = 0
    Width = 51
    Height = 13
    Caption = 'Percentual'
  end
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 30
    Height = 13
    Caption = 'Venda'
  end
  object btnExecutar: TButton
    Left = 8
    Top = 80
    Width = 89
    Height = 33
    Caption = 'Executar'
    TabOrder = 2
    OnClick = btnExecutarClick
  end
  object Memo: TMemo
    Left = 112
    Top = 0
    Width = 333
    Height = 142
    Align = alRight
    TabOrder = 3
  end
  object edPercentual: TEdit
    Left = 8
    Top = 16
    Width = 89
    Height = 21
    TabOrder = 0
  end
  object edVenda: TEdit
    Left = 8
    Top = 56
    Width = 89
    Height = 21
    TabOrder = 1
  end
end
