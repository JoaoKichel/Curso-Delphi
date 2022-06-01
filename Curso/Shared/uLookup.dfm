object Lookup: TLookup
  OldCreateOrder = False
  Height = 312
  Width = 232
  object fdQryEstados: TFDQuery
    Connection = DmDados.fdConexao
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT * FROM ESTADO;')
    Left = 104
    Top = 56
  end
  object dsEstados: TDataSource
    DataSet = fdQryEstados
    Left = 168
    Top = 56
  end
  object fdTransaction: TFDTransaction
    Connection = DmDados.fdConexao
    Left = 16
    Top = 64
  end
  object fdQryCidades: TFDQuery
    Connection = DmDados.fdConexao
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT * FROM CIDADE;')
    Left = 104
    Top = 8
  end
  object dsCidades: TDataSource
    DataSet = fdQryCidades
    Left = 168
    Top = 8
  end
  object fdQryFornecedor: TFDQuery
    Connection = DmDados.fdConexao
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR;')
    Left = 96
    Top = 112
  end
  object dsFornecedor: TDataSource
    DataSet = fdQryFornecedor
    Left = 168
    Top = 112
  end
  object fdQryClientes: TFDQuery
    Connection = DmDados.fdConexao
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT '
      'ID_CLIENTE, DECODE(TIPO_FJ,'#39'F'#39', NOME, RAZAO_SOCIAL) NOMECLIENTE'
      'FROM CLIENTE;')
    Left = 96
    Top = 168
  end
  object dsClientes: TDataSource
    DataSet = fdQryClientes
    Left = 168
    Top = 168
  end
  object dsProdutos: TDataSource
    DataSet = fdQryProdutos
    Left = 168
    Top = 224
  end
  object fdQryProdutos: TFDQuery
    Connection = DmDados.fdConexao
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT ID_PRODUTO, '
      '       DESCRICAO,'
      '       V_UNITARIO'
      ' FROM PRODUTO;')
    Left = 96
    Top = 224
    object fdQryProdutosID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
  end
end
