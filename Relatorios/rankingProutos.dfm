object FrmRnkingProdutos: TFrmRnkingProdutos
  Left = 0
  Top = 0
  Caption = 'Ranking Produtos'
  ClientHeight = 426
  ClientWidth = 529
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
    Left = 127
    Top = 16
    Width = 86
    Height = 21
    Caption = 'Data Inicial'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 127
    Top = 64
    Width = 77
    Height = 21
    Caption = 'Data Final'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 105
    Width = 513
    Height = 313
    DataSource = dm.DSConsultarkProdut
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Palatino Linotype'
    TitleFont.Style = [fsBold]
  end
  object dataInicial: TDateTimePicker
    Left = 235
    Top = 19
    Width = 95
    Height = 21
    Date = 43535.000000000000000000
    Time = 0.808893749999697300
    TabOrder = 1
    OnChange = dataInicialChange
  end
  object dataFinal: TDateTimePicker
    Left = 235
    Top = 64
    Width = 95
    Height = 21
    Date = 43535.000000000000000000
    Time = 0.808893749999697300
    TabOrder = 2
    OnChange = dataFinalChange
  end
end