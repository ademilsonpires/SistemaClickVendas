object FrmDetalhesNota: TFrmDetalhesNota
  Left = 0
  Top = 0
  Caption = 'Detalhes Nota'
  ClientHeight = 570
  ClientWidth = 518
  Color = 10920042
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grid: TDBGrid
    Left = 8
    Top = 72
    Width = 497
    Height = 482
    DataSource = dm.DSDetalhesnotas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Palatino Linotype'
    TitleFont.Style = [fsBold, fsItalic]
  end
  object Panel1: TPanel
    Left = 8
    Top = 3
    Width = 497
    Height = 70
    Color = 6512197
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 128
      Top = 5
      Width = 257
      Height = 22
      Caption = 'Detalhamento da Nota de Entrada '
    end
    object Label2: TLabel
      Left = 24
      Top = 35
      Width = 32
      Height = 26
      Caption = 'N'#186' :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtnumeronota: TEdit
      Left = 80
      Top = 33
      Width = 353
      Height = 30
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 458
    Top = 32
  end
end
