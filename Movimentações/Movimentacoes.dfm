object FrmMovimentacoes: TFrmMovimentacoes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Movimenta'#231#245'es'
  ClientHeight = 376
  ClientWidth = 714
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
    Left = 295
    Top = 21
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
    Left = 517
    Top = 21
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
  object Label3: TLabel
    Left = 24
    Top = 21
    Width = 112
    Height = 21
    Caption = 'Entrada / Sa'#237'da'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 551
    Top = 327
    Width = 43
    Height = 21
    Caption = 'Total:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblTotal: TLabel
    Left = 610
    Top = 327
    Width = 8
    Height = 21
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 327
    Width = 69
    Height = 21
    Caption = 'Entradas:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblVlrEntradas: TLabel
    Left = 91
    Top = 327
    Width = 8
    Height = 21
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 282
    Top = 327
    Width = 52
    Height = 21
    Caption = 'Sa'#237'das:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lblVlrSaidas: TLabel
    Left = 360
    Top = 327
    Width = 8
    Height = 21
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object dataInicial: TDateTimePicker
    Left = 387
    Top = 21
    Width = 95
    Height = 21
    Date = 43535.000000000000000000
    Time = 0.808893749999697300
    TabOrder = 0
    OnChange = dataInicialChange
  end
  object gridVendas: TDBGrid
    Left = 8
    Top = 64
    Width = 698
    Height = 257
    DataSource = dm.DSMovimentacoes
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Palatino Linotype'
    TitleFont.Style = [fsBold, fsItalic]
  end
  object dataFinal: TDateTimePicker
    Left = 600
    Top = 21
    Width = 95
    Height = 21
    Date = 43535.000000000000000000
    Time = 0.808893749999697300
    TabOrder = 2
    OnChange = dataFinalChange
  end
  object cbEntradaSaida: TComboBox
    Left = 142
    Top = 24
    Width = 105
    Height = 21
    TabOrder = 3
    OnChange = cbEntradaSaidaChange
    Items.Strings = (
      'Tudo'
      'Entrada'
      'Sa'#237'da')
  end
end
