﻿object FrmEntradaNotas: TFrmEntradaNotas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Entrada Nota'
  ClientHeight = 749
  ClientWidth = 1043
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object painelGrid: TPanel
    Left = 0
    Top = 0
    Width = 264
    Height = 749
    Align = alClient
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 36
      Width = 262
      Height = 712
      Align = alClient
      DataSource = dm.DSDetalhesnotas
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -19
      TitleFont.Name = 'Palatino Linotype'
      TitleFont.Style = [fsBold, fsItalic]
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 262
      Height = 35
      Align = alTop
      Alignment = taLeftJustify
      Caption = '  ITENS ADICIONADOS'
      Color = 6512197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object painelCentral: TPanel
    Left = 264
    Top = 0
    Width = 509
    Height = 749
    Align = alRight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 6
      Top = 241
      Width = 222
      Height = 49
      Caption = 'DESCRI'#199#195'O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 6
      Top = 117
      Width = 195
      Height = 49
      Caption = 'PRODUTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 6
      Top = 420
      Width = 332
      Height = 49
      Caption = 'CUSTO UNIT'#193'RIO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 6
      Top = 601
      Width = 191
      Height = 53
      Caption = 'ESTOQUE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Visible = False
    end
    object edtQuantidade: TEdit
      Left = 16
      Top = 34
      Width = 144
      Height = 71
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 507
      Height = 35
      Align = alTop
      Alignment = taLeftJustify
      Color = 6512197
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object Label6: TLabel
        Left = 179
        Top = 1
        Width = 225
        Height = 28
        Caption = '  C'#211'DIGO DE BARRAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 15
        Top = 3
        Width = 163
        Height = 28
        Caption = 'QUANTIDADE  /'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
    end
    object edtCodBarras: TEdit
      Left = 196
      Top = 36
      Width = 306
      Height = 71
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 1
      OnChange = edtCodBarrasChange
    end
    object edtProduto: TEdit
      Left = 5
      Top = 164
      Width = 488
      Height = 57
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 3
    end
    object edtDescrição: TEdit
      Left = 5
      Top = 307
      Width = 488
      Height = 57
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 4
    end
    object edtPreco: TEdit
      Left = 16
      Top = 475
      Width = 171
      Height = 57
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 5
    end
    object edtEstoque: TEdit
      Left = 6
      Top = 660
      Width = 172
      Height = 61
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 6
      Visible = False
    end
    object MediaPlayer1: TMediaPlayer
      Left = 282
      Top = 691
      Width = 253
      Height = 30
      DoubleBuffered = True
      Visible = False
      ParentDoubleBuffered = False
      TabOrder = 7
    end
  end
  object painelTotal: TPanel
    Left = 773
    Top = 0
    Width = 270
    Height = 749
    Align = alRight
    Color = 10920042
    ParentBackground = False
    TabOrder = 2
    object Panel3: TPanel
      Left = 6
      Top = 96
      Width = 260
      Height = 30
      Alignment = taLeftJustify
      Caption = '  SUB TOTAL'
      Color = 6512197
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object edtTotal: TEdit
      Left = 5
      Top = 34
      Width = 260
      Height = 56
      TabStop = False
      BorderStyle = bsNone
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 1
    end
    object edtSubTotal: TEdit
      Left = 7
      Top = 132
      Width = 260
      Height = 56
      TabStop = False
      BorderStyle = bsNone
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 2
    end
    object edtTotalCompra: TEdit
      Left = 6
      Top = 230
      Width = 260
      Height = 56
      TabStop = False
      BorderStyle = bsNone
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 3
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 268
      Height = 35
      Align = alTop
      Alignment = taLeftJustify
      Caption = '  TOTAL DO ITEM'
      Color = 6512197
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
    end
    object Panel6: TPanel
      Left = 6
      Top = 194
      Width = 260
      Height = 30
      Alignment = taLeftJustify
      Caption = '  TOTAL DA COMPRA'
      Color = 6512197
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
    end
    object Panel11: TPanel
      Left = 40
      Top = 298
      Width = 201
      Height = 41
      Caption = 'Pesquisar protuto - F1'
      Color = 6512197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      OnClick = Panel11Click
    end
    object Panel12: TPanel
      Left = 40
      Top = 345
      Width = 201
      Height = 41
      Caption = 'Finalizar Entrada - F2'
      Color = 6512197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 7
      OnClick = Panel12Click
    end
    object Panel13: TPanel
      Left = 40
      Top = 392
      Width = 201
      Height = 41
      Caption = 'Adicionar Fornecedor - F6'
      Color = 6512197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 8
      OnClick = Panel13Click
    end
    object Panel14: TPanel
      Left = 40
      Top = 439
      Width = 201
      Height = 41
      Caption = 'Excluir '#205'tem  - ESC'
      Color = 6512197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 9
      OnClick = Panel14Click
    end
    object edtFornecedor: TEdit
      Left = 6
      Top = 620
      Width = 259
      Height = 30
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object edtNumeroNota: TEdit
      Left = 6
      Top = 526
      Width = 259
      Height = 30
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object Panel5: TPanel
      Left = 6
      Top = 583
      Width = 259
      Height = 39
      Caption = 'FORNECEDOR'
      Color = 6512197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 12
      OnClick = Panel5Click
    end
    object Panel8: TPanel
      Left = 6
      Top = 486
      Width = 259
      Height = 39
      Caption = 'NOTA DE COMPRA N'#186'  :'
      Color = 6512197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 13
    end
  end
end
