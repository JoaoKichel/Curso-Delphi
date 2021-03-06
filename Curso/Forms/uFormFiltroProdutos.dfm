inherited FormFiltroProdutos: TFormFiltroProdutos
  Caption = 'Filtro de Produtos'
  ClientHeight = 413
  ClientWidth = 1100
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 1116
  ExplicitHeight = 452
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1100
    ExplicitWidth = 1100
    inherited Label1: TLabel
      Width = 33
      Caption = 'C'#243'digo'
      ExplicitWidth = 33
    end
    object Label2: TLabel [1]
      Left = 176
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    inherited btnFiltro: TButton
      Left = 700
      Caption = 'Buscar'
      OnClick = btnFiltroClick
      ExplicitLeft = 700
    end
    inherited Panel2: TPanel
      Left = 914
      ExplicitLeft = 914
      inherited Button1: TButton
        Left = 62
        ExplicitLeft = 62
      end
    end
    object edtDescricao: TEdit
      Left = 176
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object btnVisualizar: TButton
      Left = 781
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 4
      OnClick = btnVisualizarClick
    end
    object btnNovo: TButton
      Left = 862
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 5
      OnClick = btnNovoClick
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 89
    Width = 1100
    Height = 324
    Align = alClient
    DataSource = dsFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  inherited fdQryFiltro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_PRODUTO_ID'
    UpdateOptions.AutoIncFields = 'ID_PRODUTO'
    SQL.Strings = (
      'SELECT '
      #9'P.ID_PRODUTO,'
      #9'P.DESCRICAO,'
      #9'P.QTD,'
      #9'P.CUSTO ,'
      #9'P.V_UNITARIO ,'
      #9'P.UNIDADE ,'
      #9'P.PESO_LIQUIDO ,'
      #9'P.PESO_BRUTO ,'
      #9'P.FABRICANTE ,'
      #9'P.MARCA_MODELO ,'
      #9'F.RAZAO_SOCIAL '
      'FROM PRODUTO P'
      'LEFT JOIN FORNECEDOR F ON'
      'F.ID_FORNECEDOR = P.ID_FORNECEDOR '
      'WHERE 1=1')
    Left = 1056
    object fdQryFiltroID_PRODUTO: TFDAutoIncField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryFiltroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fdQryFiltroQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object fdQryFiltroCUSTO: TSingleField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object fdQryFiltroV_UNITARIO: TSingleField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
    object fdQryFiltroUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 4
    end
    object fdQryFiltroPESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object fdQryFiltroPESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object fdQryFiltroFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 60
    end
    object fdQryFiltroMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      Origin = 'MARCA_MODELO'
      Size = 255
    end
    object fdQryFiltroRAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  inherited dsFiltro: TDataSource
    Left = 1056
    Top = 160
  end
  inherited fdTransaction: TFDTransaction
    Left = 1056
    Top = 224
  end
end
