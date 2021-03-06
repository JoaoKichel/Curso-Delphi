inherited FormCadastroCidade: TFormCadastroCidade
  Caption = 'Cadastro de Cidades'
  ClientHeight = 138
  ClientWidth = 594
  WindowState = wsNormal
  ExplicitWidth = 600
  ExplicitHeight = 167
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 48
    Width = 55
    Height = 13
    Caption = 'ID_CIDADE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 84
    Top = 45
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  inherited pnCabecalho: TPanel
    Width = 594
    ExplicitWidth = 594
    inherited btnSair: TBitBtn
      Left = 517
      ExplicitLeft = 517
    end
  end
  object DBEdit1: TDBEdit [3]
    Left = 8
    Top = 64
    Width = 70
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [4]
    Left = 84
    Top = 64
    Width = 300
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 2
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CIDADE_ID'
    UpdateOptions.AutoIncFields = 'ID_CIDADE'
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 440
    Top = 48
    object fdQryCadastroID_CIDADE: TFDAutoIncField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 392
    Top = 96
  end
  inherited fdTransaction: TFDTransaction
    Left = 440
    Top = 96
  end
  inherited dsCadastro: TDataSource
    Left = 392
    Top = 48
  end
end
