inherited FormFiltroClientes: TFormFiltroClientes
  Caption = 'FiltroClientes'
  ClientHeight = 491
  ClientWidth = 1078
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 1094
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1078
    ExplicitWidth = 1078
    inherited Label1: TLabel
      Width = 78
      Caption = 'Nome do Cliente'
      ExplicitWidth = 78
    end
    object Label2: TLabel [1]
      Left = 432
      Top = 16
      Width = 48
      Height = 13
      Caption = 'CPF/CNPJ'
    end
    object Label3: TLabel [2]
      Left = 230
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Fantasia'
    end
    object Label4: TLabel [3]
      Left = 615
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    inherited edtFiltro: TEdit
      Width = 200
      ExplicitWidth = 200
    end
    inherited btnFiltro: TButton
      Left = 694
      Caption = 'Buscar'
      OnClick = btnFiltroClick
      ExplicitLeft = 694
    end
    inherited Panel2: TPanel
      Left = 892
      ExplicitLeft = 892
      inherited Button1: TButton
        Left = 78
        ExplicitLeft = 78
      end
    end
    object edtFantasia: TEdit
      Left = 230
      Top = 35
      Width = 200
      Height = 21
      TabOrder = 3
    end
    object edtCnpj: TEdit
      Left = 436
      Top = 35
      Width = 173
      Height = 21
      TabOrder = 4
    end
    object edtCodigo: TEdit
      Left = 615
      Top = 35
      Width = 70
      Height = 21
      TabOrder = 5
    end
    object btnNovo: TButton
      Left = 856
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 6
      OnClick = btnNovoClick
    end
    object btnVisualizar: TButton
      Left = 775
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 7
      OnClick = btnVisualizarClick
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 89
    Width = 1078
    Height = 402
    Align = alClient
    DataSource = dsFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'C'#243'digo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL'
        Title.Caption = 'Raz'#227'o Social'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Caption = 'Nome Fantasia'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_FJ'
        Title.Caption = 'F'#237'sica/Jur'#237'dica'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Title.Caption = 'CPF/CNPJ'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Caption = 'E-mail'
        Width = 200
        Visible = True
      end>
  end
  inherited fdQryFiltro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 1032
    Top = 96
    object fdQryFiltroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
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
    object fdQryFiltroCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object fdQryFiltroTIPO_FJ: TStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      Size = 1
    end
    object fdQryFiltroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object fdQryFiltroEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryFiltroSITE: TStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object fdQryFiltroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryFiltroCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object fdQryFiltroNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdQryFiltroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryFiltroIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 30
    end
    object fdQryFiltroIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 30
    end
    object fdQryFiltroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object fdQryFiltroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryFiltroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
  end
  inherited dsFiltro: TDataSource
    Left = 1032
    Top = 152
  end
  inherited fdTransaction: TFDTransaction
    Left = 1032
    Top = 208
  end
end
