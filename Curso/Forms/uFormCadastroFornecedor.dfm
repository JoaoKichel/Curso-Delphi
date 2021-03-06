inherited FormCadastroFornecedor: TFormCadastroFornecedor
  Caption = 'Cadastro de Fornecedor'
  ClientHeight = 266
  ClientWidth = 760
  WindowState = wsNormal
  OnShow = FormShow
  ExplicitWidth = 766
  ExplicitHeight = 295
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 56
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 100
    Top = 59
    Width = 78
    Height = 13
    Caption = 'RAZAO_SOCIAL'
    FocusControl = edtRazaoSocial
  end
  object Label3: TLabel [2]
    Left = 420
    Top = 56
    Width = 50
    Height = 13
    Caption = 'FANTASIA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 96
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 136
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 264
    Top = 136
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 420
    Top = 136
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label8: TLabel [7]
    Left = 578
    Top = 136
    Width = 57
    Height = 13
    Caption = 'ID_ESTADO'
  end
  object Label9: TLabel [8]
    Left = 214
    Top = 96
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit9
  end
  inherited pnCabecalho: TPanel
    Width = 760
    ExplicitWidth = 760
    inherited btnSair: TBitBtn
      Left = 669
      ExplicitLeft = 669
    end
  end
  object DBEdit1: TDBEdit [10]
    Left = 8
    Top = 72
    Width = 50
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 1
  end
  object edtRazaoSocial: TDBEdit [11]
    Left = 100
    Top = 72
    Width = 300
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [12]
    Left = 420
    Top = 72
    Width = 300
    Height = 21
    DataField = 'FANTASIA'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [13]
    Left = 8
    Top = 112
    Width = 200
    Height = 21
    DataField = 'CNPJ'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [14]
    Left = 8
    Top = 152
    Width = 250
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [15]
    Left = 264
    Top = 152
    Width = 150
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsCadastro
    TabOrder = 8
  end
  object DBEdit9: TDBEdit [16]
    Left = 214
    Top = 112
    Width = 200
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox [17]
    Left = 420
    Top = 152
    Width = 145
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    KeyField = 'ID_CIDADE'
    ListField = 'NOME'
    ListSource = Lookup.dsCidades
    TabOrder = 9
  end
  object DBLookupComboBox2: TDBLookupComboBox [18]
    Left = 578
    Top = 152
    Width = 45
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    KeyField = 'ID_ESTADO'
    ListField = 'SIGLA'
    ListSource = Lookup.dsEstados
    TabOrder = 7
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_FORNECEDOR_ID'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    Left = 712
    Top = 104
    object fdQryCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object fdQryCadastroFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object fdQryCadastroCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object fdQryCadastroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryCadastroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
    end
    object fdQryCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
    object fdQryCadastroEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 712
    Top = 160
  end
  inherited fdTransaction: TFDTransaction
    Left = 704
    Top = 216
  end
  inherited dsCadastro: TDataSource
    Left = 632
    Top = 216
  end
  inherited fdQryCodigo: TFDQuery
    Left = 552
    Top = 216
  end
end
