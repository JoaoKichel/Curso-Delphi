object FormFiltroPai: TFormFiltroPai
  Left = 0
  Top = 0
  Caption = 'FormFiltroPai'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object edtFiltro: TEdit
      Left = 24
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btnFiltro: TButton
      Left = 280
      Top = 33
      Width = 75
      Height = 25
      Caption = 'btnFiltro'
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 449
      Top = 1
      Width = 185
      Height = 87
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object Button1: TButton
        Left = 54
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Sair'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object fdQryFiltro: TFDQuery
    Connection = DmDados.fdConexao
    Transaction = fdTransaction
    Left = 512
    Top = 104
  end
  object dsFiltro: TDataSource
    DataSet = fdQryFiltro
    Left = 512
    Top = 168
  end
  object fdTransaction: TFDTransaction
    Connection = DmDados.fdConexao
    Left = 512
    Top = 240
  end
end
