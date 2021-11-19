object FrmCertificado: TFrmCertificado
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Certificado Digital'
  ClientHeight = 320
  ClientWidth = 718
  Color = 6512197
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 275
    Width = 718
    Height = 45
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      718
      45)
    object BitBtn1: TBitBtn
      Left = 440
      Top = 6
      Width = 120
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 584
      Top = 6
      Width = 112
      Height = 30
      Anchors = [akTop, akRight]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 718
    Height = 275
    Align = alClient
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
    TabOrder = 1
  end
end
