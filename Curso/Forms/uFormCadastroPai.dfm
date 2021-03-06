object FormCadastroPai: TFormCadastroPai
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FormCadastroPai'
  ClientHeight = 309
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 41
    Align = alTop
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 384
      Top = 8
      Width = 23
      Height = 22
      Caption = '<<'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 413
      Top = 8
      Width = 23
      Height = 22
      Hint = 'Registro Anterior'
      Caption = '<'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 442
      Top = 8
      Width = 23
      Height = 22
      Hint = 'Pr'#243'ximo Registro'
      Caption = '>'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 471
      Top = 8
      Width = 23
      Height = 22
      Hint = #218'ltimo Registro'
      Caption = '>>'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object btnNovo: TBitBtn
      Left = 0
      Top = 0
      Width = 75
      Height = 42
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnGravar: TBitBtn
      Left = 81
      Top = 0
      Width = 75
      Height = 42
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnGravarClick
    end
    object btnCancelar: TBitBtn
      Left = 162
      Top = 0
      Width = 75
      Height = 42
      Caption = 'Limpar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnExcluir: TBitBtn
      Left = 243
      Top = 0
      Width = 75
      Height = 42
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnSair: TBitBtn
      Left = 570
      Top = 0
      Width = 75
      Height = 42
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
  end
  object fdQryCadastro: TFDQuery
    Connection = DmDados.fdConexao
    Transaction = fdTransaction
    UpdateObject = fdUpdCadastro
    Left = 584
    Top = 144
  end
  object fdUpdCadastro: TFDUpdateSQL
    Connection = DmDados.fdConexao
    Left = 584
    Top = 200
  end
  object fdTransaction: TFDTransaction
    Connection = DmDados.fdConexao
    Left = 584
    Top = 256
  end
  object dsCadastro: TDataSource
    DataSet = fdQryCadastro
    Left = 584
    Top = 88
  end
  object fdQryCodigo: TFDQuery
    Connection = DmDados.fdConexao
    Left = 416
    Top = 128
  end
end
