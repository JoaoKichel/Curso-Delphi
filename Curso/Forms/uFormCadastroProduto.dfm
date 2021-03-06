inherited FormCadastroProduto: TFormCadastroProduto
  Caption = 'Cadastro de Produto'
  ClientHeight = 314
  ClientWidth = 731
  WindowState = wsNormal
  ExplicitWidth = 737
  ExplicitHeight = 343
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 8
    Top = 48
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [1]
    Left = 420
    Top = 48
    Width = 21
    Height = 13
    Caption = 'QTD'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [2]
    Left = 414
    Top = 85
    Width = 34
    Height = 13
    Caption = 'CUSTO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [3]
    Left = 386
    Top = 162
    Width = 62
    Height = 13
    Caption = 'V_UNITARIO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [4]
    Left = 8
    Top = 162
    Width = 45
    Height = 13
    Caption = 'UNIDADE'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [5]
    Left = 243
    Top = 165
    Width = 75
    Height = 13
    Caption = 'PESO_LIQUIDO'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [6]
    Left = 103
    Top = 165
    Width = 66
    Height = 13
    Caption = 'PESO_BRUTO'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [7]
    Left = 8
    Top = 88
    Width = 63
    Height = 13
    Caption = 'FABRICANTE'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [8]
    Left = 8
    Top = 128
    Width = 84
    Height = 13
    Caption = 'MARCA_MODELO'
    FocusControl = DBEdit10
  end
  object Label1: TLabel [9]
    Left = 414
    Top = 125
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
  end
  inherited pnCabecalho: TPanel
    Width = 731
    ExplicitWidth = 731
    inherited btnSair: TBitBtn
      Left = 642
      ExplicitLeft = 642
    end
  end
  object DBEdit2: TDBEdit [11]
    Left = 8
    Top = 64
    Width = 400
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit3: TDBEdit [12]
    Left = 414
    Top = 64
    Width = 106
    Height = 21
    DataField = 'QTD'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit4: TDBEdit [13]
    Left = 414
    Top = 104
    Width = 106
    Height = 21
    DataField = 'CUSTO'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object DBEdit5: TDBEdit [14]
    Left = 386
    Top = 181
    Width = 134
    Height = 21
    DataField = 'V_UNITARIO'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object DBEdit6: TDBEdit [15]
    Left = 8
    Top = 181
    Width = 84
    Height = 21
    DataField = 'UNIDADE'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object DBEdit7: TDBEdit [16]
    Left = 243
    Top = 181
    Width = 134
    Height = 21
    DataField = 'PESO_LIQUIDO'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBEdit8: TDBEdit [17]
    Left = 103
    Top = 181
    Width = 134
    Height = 21
    DataField = 'PESO_BRUTO'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object DBEdit9: TDBEdit [18]
    Left = 8
    Top = 104
    Width = 400
    Height = 21
    DataField = 'FABRICANTE'
    DataSource = dsCadastro
    TabOrder = 8
  end
  object DBEdit10: TDBEdit [19]
    Left = 8
    Top = 144
    Width = 400
    Height = 21
    DataField = 'MARCA_MODELO'
    DataSource = dsCadastro
    TabOrder = 9
  end
  object DBLookupComboBox1: TDBLookupComboBox [20]
    Left = 414
    Top = 144
    Width = 106
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = dsCadastro
    KeyField = 'ID_FORNECEDOR'
    ListField = 'RAZAO_SOCIAL'
    ListSource = Lookup.dsFornecedor
    TabOrder = 10
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_PRODUTO_ID'
    UpdateOptions.AutoIncFields = 'ID_PRODUTO'
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 680
    Top = 48
    object fdQryCadastroID_PRODUTO: TFDAutoIncField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fdQryCadastroQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object fdQryCadastroCUSTO: TSingleField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object fdQryCadastroV_UNITARIO: TSingleField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
    object fdQryCadastroUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 4
    end
    object fdQryCadastroPESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object fdQryCadastroPESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object fdQryCadastroFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 60
    end
    object fdQryCadastroMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      Origin = 'MARCA_MODELO'
      Size = 255
    end
    object fdQryCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 680
    Top = 136
  end
  inherited fdTransaction: TFDTransaction
    Left = 680
    Top = 184
  end
  inherited dsCadastro: TDataSource
    Left = 680
    Top = 89
  end
  inherited fdQryCodigo: TFDQuery
    Left = 544
    Top = 240
  end
end
