inherited FormFiltroFornecedores: TFormFiltroFornecedores
  Caption = 'Filtro de Fornecedores'
  ClientHeight = 530
  ClientWidth = 1100
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 1116
  ExplicitHeight = 569
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1100
    ExplicitWidth = 1100
    inherited Label1: TLabel
      Left = 8
      Width = 60
      Caption = 'Raz'#227'o Social'
      ExplicitLeft = 8
      ExplicitWidth = 60
    end
    object Label2: TLabel [1]
      Left = 287
      Top = 16
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    inherited edtFiltro: TEdit
      Left = 8
      Width = 273
      ExplicitLeft = 8
      ExplicitWidth = 273
    end
    inherited btnFiltro: TButton
      Left = 692
      Caption = 'Buscar'
      OnClick = btnFiltroClick
      ExplicitLeft = 692
    end
    inherited Panel2: TPanel
      Left = 914
      ExplicitLeft = 914
    end
    object edtCnpj: TEdit
      Left = 287
      Top = 35
      Width = 137
      Height = 21
      TabOrder = 3
    end
    object btnVisualizar: TButton
      Left = 773
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 4
      OnClick = btnVisualizarClick
    end
    object btnNovo: TButton
      Left = 854
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
    Height = 441
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
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    Left = 1040
    Top = 112
    object fdQryFiltroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryFiltroRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object fdQryFiltroFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object fdQryFiltroCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object fdQryFiltroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryFiltroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
    end
    object fdQryFiltroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryFiltroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
    object fdQryFiltroEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
  end
  inherited dsFiltro: TDataSource
    Left = 1039
    Top = 165
  end
  inherited fdTransaction: TFDTransaction
    Left = 1039
    Top = 221
  end
end
