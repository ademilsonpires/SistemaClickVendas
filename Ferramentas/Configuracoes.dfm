object FrmConfig: TFrmConfig
  Left = 0
  Top = 0
  Caption = 'Configurac'#245'es'
  ClientHeight = 312
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 297
    Height = 41
    Align = alTop
    BorderStyle = bsSingle
    Color = 10920042
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 40
      Top = -2
      Width = 213
      Height = 32
      Caption = 'CONFIGURA'#199#213'ES'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object CheckBoxImpressora: TCheckBox
    Left = 24
    Top = 86
    Width = 223
    Height = 27
    Caption = 'Imprimir Comprovante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = CheckBoxImpressoraClick
  end
  object btnSalvar: TButton
    Left = 96
    Top = 246
    Width = 105
    Height = 33
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = btnSalvarClick
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 119
    Width = 241
    Height = 27
    Caption = 'Imprimir Ordem de Servi'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = CheckBoxImpressoraClick
  end
end