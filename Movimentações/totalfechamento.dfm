object totalizarcaixa: Ttotalizarcaixa
  Left = 0
  Top = 0
  Caption = 'TOTAL CAIXA'
  ClientHeight = 201
  ClientWidth = 441
  Color = 10920042
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 24
    Width = 188
    Height = 28
    Caption = 'TOTAL DO CAIXA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 144
    Top = 80
    Width = 161
    Height = 34
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = 'Edit1'
  end
  object BitBtn1: TBitBtn
    Left = 184
    Top = 144
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
