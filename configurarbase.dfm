object Frmconfigbd: TFrmconfigbd
  Left = 0
  Top = 0
  Caption = 'Configurar base'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object caminho: TLabel
    Left = 24
    Top = 24
    Width = 133
    Height = 13
    Caption = 'Caminho da base de dados:'
  end
  object Label1: TLabel
    Left = 24
    Top = 80
    Width = 36
    Height = 13
    Caption = 'Server:'
  end
  object edtBase: TEdit
    Left = 24
    Top = 43
    Width = 385
    Height = 21
    TabOrder = 0
  end
  object edServer: TEdit
    Left = 24
    Top = 99
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object btnBuscar: TButton
    Left = 256
    Top = 97
    Width = 153
    Height = 25
    Caption = 'BUSCAR'
    TabOrder = 2
    OnClick = btnBuscarClick
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Firedac|*frm'
    Left = 224
    Top = 144
  end
end
