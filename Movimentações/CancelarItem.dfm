object FrmCancelarItem: TFrmCancelarItem
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cancelar Item'
  ClientHeight = 213
  ClientWidth = 599
  Color = 6512197
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
  object Label1: TLabel
    Left = 112
    Top = 99
    Width = 192
    Height = 35
    Caption = 'C'#243'digo do Item:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object edtIdItem: TEdit
    Left = 343
    Top = 98
    Width = 122
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 599
    Height = 41
    Align = alTop
    BorderStyle = bsSingle
    Color = 10920042
    ParentBackground = False
    TabOrder = 1
    object Label2: TLabel
      Left = 208
      Top = -2
      Width = 200
      Height = 32
      Caption = 'CANCELAR '#205'TEM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Palatino Linotype'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Button1: TButton
    Left = 167
    Top = 180
    Width = 105
    Height = 25
    Caption = 'Concluir - Enter'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 343
    Top = 180
    Width = 89
    Height = 25
    Caption = 'Sair - ESC'
    TabOrder = 3
    OnClick = Button2Click
  end
end
