﻿object FrmVendas: TFrmVendas
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 749
  ClientWidth = 1043
  Color = 10920042
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
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
    Width = 224
    Height = 749
    Align = alClient
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 36
      Width = 222
      Height = 712
      Align = alClient
      Color = clRed
      DataSource = dm.DSDetVendas
      FixedColor = clSilver
      GradientEndColor = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clRed
      TitleFont.Height = -19
      TitleFont.Name = 'Palatino Linotype'
      TitleFont.Style = [fsBold, fsItalic]
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 222
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
    Left = 224
    Top = 0
    Width = 549
    Height = 749
    Align = alRight
    Color = 11103313
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold, fsItalic]
    ParentBackground = False
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
      Width = 334
      Height = 49
      Caption = 'PRE'#199'O UNIT'#193'RIO'
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
    object imagem: TImage
      Left = 352
      Top = 384
      Width = 177
      Height = 164
      Stretch = True
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
      OnKeyDown = edtQuantidadeKeyDown
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 547
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
      Left = 181
      Top = 34
      Width = 363
      Height = 71
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 1
      OnChange = edtCodBarrasChange
      OnKeyDown = edtCodBarrasKeyDown
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
      Left = 57
      Top = 491
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
      Left = 16
      Top = 641
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
    Color = 11103313
    ParentBackground = False
    TabOrder = 2
    object Panel3: TPanel
      Left = 5
      Top = 108
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
      TabOrder = 3
    end
    object edtSubTotal: TEdit
      Left = 6
      Top = 144
      Width = 260
      Height = 56
      TabStop = False
      BorderStyle = bsNone
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -48
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 4
    end
    object edtDesconto: TEdit
      Left = 80
      Top = 253
      Width = 186
      Height = 56
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnChange = edtDescontoChange
      OnKeyDown = edtDescontoKeyDown
    end
    object edtTotalCompra: TEdit
      Left = 6
      Top = 364
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
      TabOrder = 5
      Visible = False
    end
    object edtValorRecebido: TEdit
      Left = 80
      Top = 704
      Width = 186
      Height = 56
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnChange = edtValorRecebidoChange
      OnKeyDown = edtValorRecebidoKeyDown
    end
    object edtTroco: TEdit
      Left = 6
      Top = 696
      Width = 260
      Height = 56
      BorderStyle = bsNone
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
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
      TabOrder = 7
    end
    object Panel5: TPanel
      Left = 6
      Top = 217
      Width = 260
      Height = 30
      Alignment = taLeftJustify
      Caption = '  DESCONTO'
      Color = 6512197
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 8
      Visible = False
    end
    object Panel6: TPanel
      Left = 6
      Top = 315
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
      TabOrder = 9
      Visible = False
    end
    object Panel7: TPanel
      Left = 6
      Top = 668
      Width = 260
      Height = 30
      Alignment = taLeftJustify
      Caption = '  VALOR RECEBIDO'
      Color = 6512197
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 10
      Visible = False
    end
    object Panel8: TPanel
      Left = 6
      Top = 660
      Width = 260
      Height = 30
      Alignment = taLeftJustify
      Caption = '  TROCO'
      Color = 6512197
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 11
      Visible = False
    end
    object Edit2: TEdit
      Left = 6
      Top = 253
      Width = 75
      Height = 56
      Margins.Top = 4
      TabStop = False
      BorderStyle = bsNone
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      Text = 'R$'
      Visible = False
      OnChange = edtValorRecebidoChange
    end
    object Panel10: TPanel
      Left = 1
      Top = 672
      Width = 268
      Height = 76
      Align = alBottom
      BorderWidth = 15
      BorderStyle = bsSingle
      Color = clWhite
      ParentBackground = False
      TabOrder = 13
      object Panel9: TPanel
        Left = 3
        Top = 0
        Width = 262
        Height = 24
        Alignment = taLeftJustify
        Caption = '  CLIENTE(F6):'
        Color = 6512197
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = Panel9Click
      end
      object edtCliente: TEdit
        Left = 3
        Top = 30
        Width = 254
        Height = 30
        BorderStyle = bsNone
        Color = clWhite
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Palatino Linotype'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object Panel11: TPanel
      Left = 46
      Top = 217
      Width = 179
      Height = 29
      Caption = 'Pesquisar protuto - F1'
      Color = 6512197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 14
      OnClick = Panel11Click
    end
    object Panel12: TPanel
      Left = 46
      Top = 252
      Width = 179
      Height = 29
      Caption = 'Finalizar Venda - F2'
      Color = 6512197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 15
      OnClick = Panel12Click
    end
    object Panel13: TPanel
      Left = 46
      Top = 400
      Width = 179
      Height = 29
      Caption = 'Adicionar Cliente - F6'
      Color = 6512197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 16
      OnClick = Panel13Click
    end
    object Panel14: TPanel
      Left = 46
      Top = 478
      Width = 179
      Height = 29
      Caption = 'Excluir '#205'tem  - ESC'
      Color = 6512197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 17
      OnClick = Panel14Click
    end
    object btnDiversos: TPanel
      Left = 46
      Top = 292
      Width = 179
      Height = 29
      Caption = 'Diversos - F3'
      Color = 6512197
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 18
      OnClick = btnDiversosClick
    end
    object Panel15: TPanel
      Left = 46
      Top = 435
      Width = 179
      Height = 29
      Caption = 'Consultar Vendas  - F7'
      Color = 6512197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 19
      OnClick = Panel14Click
    end
    object Pnlmaisvendidos: TPanel
      Left = 46
      Top = 327
      Width = 179
      Height = 29
      Caption = 'Mais vendidos - F4'
      Color = 6512197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 20
      OnClick = PnlmaisvendidosClick
    end
    object btnOs: TPanel
      Left = 46
      Top = 365
      Width = 179
      Height = 29
      Caption = 'Ordem de Servi'#231'o - F5'
      Color = 6512197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 21
      OnClick = btnOsClick
    end
  end
  object nfce: TACBrNFe
    Configuracoes.Geral.SSLLib = libCustom
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsMsXml
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ModeloDF = moNFCe
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'MG'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 249
    Top = 560
  end
end
