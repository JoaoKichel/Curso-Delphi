inherited FormCadastroCliente: TFormCadastroCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 321
  ClientWidth = 817
  WindowState = wsNormal
  OnShow = FormShow
  ExplicitWidth = 823
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 57
    Width = 58
    Height = 13
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 72
    Top = 60
    Width = 78
    Height = 13
    Caption = 'RAZAO_SOCIAL'
    FocusControl = edtRazaoSocial
  end
  object Label3: TLabel [2]
    Left = 384
    Top = 57
    Width = 50
    Height = 13
    Caption = 'FANTASIA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 314
    Top = 103
    Width = 50
    Height = 13
    Caption = 'CPF_CNPJ'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 642
    Top = 60
    Width = 41
    Height = 13
    Caption = 'TIPO_FJ'
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 103
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 595
    Top = 100
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 8
    Top = 186
    Width = 22
    Height = 13
    Caption = 'SITE'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 8
    Top = 143
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 569
    Top = 143
    Width = 75
    Height = 13
    Caption = 'COMPLEMENTO'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 314
    Top = 143
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 363
    Top = 143
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit12
  end
  object Label13: TLabel [12]
    Left = 532
    Top = 183
    Width = 10
    Height = 13
    Caption = 'IE'
    FocusControl = DBEdit13
  end
  object Label14: TLabel [13]
    Left = 326
    Top = 183
    Width = 12
    Height = 13
    Caption = 'IM'
    FocusControl = DBEdit14
  end
  object Label15: TLabel [14]
    Left = 738
    Top = 186
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label16: TLabel [15]
    Left = 650
    Top = 140
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  inherited pnCabecalho: TPanel
    Width = 817
    ExplicitWidth = 817
    inherited btnSair: TBitBtn
      Left = 742
      ExplicitLeft = 742
    end
  end
  object DBEdit1: TDBEdit [17]
    Left = 8
    Top = 76
    Width = 50
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object edtRazaoSocial: TDBEdit [18]
    Left = 72
    Top = 76
    Width = 306
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [19]
    Left = 384
    Top = 76
    Width = 252
    Height = 21
    DataField = 'FANTASIA'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [20]
    Left = 314
    Top = 116
    Width = 275
    Height = 21
    DataField = 'CPF_CNPJ'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object DBEdit6: TDBEdit [21]
    Left = 8
    Top = 116
    Width = 300
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object DBEdit7: TDBEdit [22]
    Left = 595
    Top = 116
    Width = 200
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBEdit8: TDBEdit [23]
    Left = 8
    Top = 202
    Width = 312
    Height = 21
    DataField = 'SITE'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object DBEdit9: TDBEdit [24]
    Left = 8
    Top = 159
    Width = 300
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsCadastro
    TabOrder = 8
  end
  object DBEdit10: TDBEdit [25]
    Left = 569
    Top = 159
    Width = 70
    Height = 21
    DataField = 'COMPLEMENTO'
    DataSource = dsCadastro
    TabOrder = 9
  end
  object DBEdit11: TDBEdit [26]
    Left = 314
    Top = 159
    Width = 43
    Height = 21
    DataField = 'NUMERO'
    DataSource = dsCadastro
    TabOrder = 10
  end
  object DBEdit12: TDBEdit [27]
    Left = 363
    Top = 159
    Width = 200
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsCadastro
    TabOrder = 11
  end
  object DBEdit13: TDBEdit [28]
    Left = 532
    Top = 202
    Width = 200
    Height = 21
    DataField = 'IE'
    DataSource = dsCadastro
    TabOrder = 12
  end
  object DBEdit14: TDBEdit [29]
    Left = 326
    Top = 202
    Width = 200
    Height = 21
    DataField = 'IM'
    DataSource = dsCadastro
    TabOrder = 13
  end
  object editTipoFJ: TDBComboBox [30]
    Left = 642
    Top = 76
    Width = 153
    Height = 21
    DataField = 'TIPO_FJ'
    DataSource = dsCadastro
    Items.Strings = (
      'F'
      'J')
    TabOrder = 14
  end
  object DBLookupComboBox1: TDBLookupComboBox [31]
    Left = 738
    Top = 202
    Width = 57
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    KeyField = 'ID_ESTADO'
    ListField = 'SIGLA'
    ListSource = Lookup.dsEstados
    TabOrder = 15
  end
  object DBLookupComboBox2: TDBLookupComboBox [32]
    Left = 650
    Top = 159
    Width = 145
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    KeyField = 'ID_CIDADE'
    ListField = 'NOME'
    ListSource = Lookup.dsCidades
    TabOrder = 16
  end
  inherited fdQryCadastro: TFDQuery
    BeforeInsert = fdQryCadastroBeforeInsert
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CLIENTE_ID'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 80
    Top = 248
    object fdQryCadastroID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
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
    object fdQryCadastroCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object fdQryCadastroTIPO_FJ: TStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      Size = 1
    end
    object dt: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object fdQryCadastroEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryCadastroSITE: TStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object fdQryCadastroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryCadastroCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object fdQryCadastroNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdQryCadastroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryCadastroIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 30
    end
    object fdQryCadastroIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 30
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object fdQryCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 152
    Top = 248
  end
  inherited fdTransaction: TFDTransaction
    Left = 224
    Top = 248
  end
  inherited dsCadastro: TDataSource
    Left = 16
    Top = 248
  end
  inherited fdQryCodigo: TFDQuery
    Left = 288
    Top = 248
  end
end
