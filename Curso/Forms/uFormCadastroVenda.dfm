inherited FormCadastroVendaProduto: TFormCadastroVendaProduto
  Caption = 'Cadastro de Vendas '
  ClientHeight = 723
  ClientWidth = 1065
  ExplicitWidth = 1071
  ExplicitHeight = 752
  PixelsPerInch = 96
  TextHeight = 13
  object Label11: TLabel [0]
    Left = 40
    Top = 48
    Width = 78
    Height = 13
    Caption = 'Dados da Venda'
  end
  object Label12: TLabel [1]
    Left = 24
    Top = 136
    Width = 73
    Height = 13
    Caption = 'Itens da Venda'
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 662
    Width = 1065
    Height = 61
    Align = alBottom
    TabOrder = 2
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 113
    Width = 1065
    Height = 549
    Align = alClient
    TabOrder = 3
    ExplicitLeft = -136
    ExplicitTop = 92
    object Label7: TLabel
      Left = 175
      Top = 48
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label8: TLabel
      Left = 302
      Top = 48
      Width = 64
      Height = 13
      Caption = 'Valor Unit'#225'rio'
    end
    object Label9: TLabel
      Left = 429
      Top = 48
      Width = 45
      Height = 13
      Caption = 'Desconto'
    end
    object Label10: TLabel
      Left = 556
      Top = 48
      Width = 42
      Height = 13
      Caption = 'SubTotal'
    end
    object Label4: TLabel
      Left = 24
      Top = 48
      Width = 22
      Height = 13
      Caption = 'Item'
    end
    object Label6: TLabel
      Left = 692
      Top = 48
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object edtQuantidade: TEdit
      Left = 175
      Top = 67
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtDescricaoItem: TDBLookupComboBox
      Left = 24
      Top = 67
      Width = 145
      Height = 21
      KeyField = 'ID_PRODUTO'
      ListField = 'DESCRICAO'
      ListSource = Lookup.dsProdutos
      TabOrder = 1
      OnClick = edtDescricaoItemClick
    end
    object edtValorUnitario: TEdit
      Left = 302
      Top = 67
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edtDesconto: TEdit
      Left = 429
      Top = 67
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edtSubTotal: TEdit
      Left = 556
      Top = 67
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 136
      Width = 1063
      Height = 412
      Align = alBottom
      DataSource = dsItens
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Title.Caption = 'C'#243'digo'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoProduto'
          Title.Caption = 'Descricao'
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Title.Caption = 'Quantidade'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_UNITARIO'
          Title.Caption = 'Valor Unit'#225'rio'
          Width = 136
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Title.Caption = 'Desconto'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SubTotal'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Width = 118
          Visible = True
        end>
    end
    object edtTotal: TEdit
      Left = 692
      Top = 67
      Width = 121
      Height = 21
      TabOrder = 6
    end
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 41
    Width = 1065
    Height = 72
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -8
    object Label1: TLabel
      Left = 41
      Top = 32
      Width = 76
      Height = 13
      Caption = 'ID_VENDA_CAB'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 123
      Top = 31
      Width = 58
      Height = 13
      Caption = 'ID_CLIENTE'
    end
    object Label3: TLabel
      Left = 300
      Top = 30
      Width = 27
      Height = 13
      Caption = 'DATA'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 407
      Top = 29
      Width = 88
      Height = 13
      Caption = 'DATA_FATURADO'
      FocusControl = DBEdit5
    end
    object DBEdit1: TDBEdit
      Left = 41
      Top = 45
      Width = 76
      Height = 21
      DataField = 'ID_VENDA_CAB'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 300
      Top = 45
      Width = 101
      Height = 21
      DataField = 'DATA'
      DataSource = dsCadastro
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 407
      Top = 45
      Width = 134
      Height = 21
      DataField = 'DATA_FATURADO'
      DataSource = dsCadastro
      TabOrder = 2
    end
    object edtCliente: TDBLookupComboBox
      Left = 123
      Top = 45
      Width = 171
      Height = 21
      DataField = 'ID_CLIENTE'
      DataSource = dsCadastro
      KeyField = 'ID_CLIENTE'
      ListField = 'NOMECLIENTE'
      ListSource = Lookup.dsClientes
      TabOrder = 3
    end
    object DBCheckBox1: TDBCheckBox
      Left = 547
      Top = 46
      Width = 99
      Height = 17
      Caption = 'Faturado'
      DataField = 'FATURADO'
      DataSource = dsCadastro
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  inherited pnCabecalho: TPanel
    Width = 1065
    ExplicitWidth = 1065
    inherited SpeedButton1: TSpeedButton
      Left = 632
      Top = 13
      ExplicitLeft = 632
      ExplicitTop = 13
    end
    inherited SpeedButton2: TSpeedButton
      Left = 661
      Top = 13
      ExplicitLeft = 661
      ExplicitTop = 13
    end
    inherited SpeedButton3: TSpeedButton
      Left = 690
      Top = 13
      ExplicitLeft = 690
      ExplicitTop = 13
    end
    inherited SpeedButton4: TSpeedButton
      Left = 719
      Top = 13
      ExplicitLeft = 719
      ExplicitTop = 13
    end
    inherited btnSair: TBitBtn
      Left = 989
      ExplicitLeft = 989
    end
    object btnImprimir: TBitBtn
      Left = 324
      Top = 0
      Width = 75
      Height = 40
      Caption = 'Imprimir'
      TabOrder = 5
      OnClick = btnImprimirClick
    end
  end
  object Button1: TButton [6]
    Left = 835
    Top = 178
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton [7]
    Left = 916
    Top = 178
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 5
    OnClick = Button2Click
  end
  inherited fdQryCadastro: TFDQuery
    AfterOpen = fdQryCadastroAfterOpen
    AfterInsert = fdQryCadastroAfterInsert
    BeforePost = fdQryCadastroBeforePost
    AfterScroll = fdQryCadastroAfterScroll
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_VENDA_CAB_ID'
    UpdateOptions.AutoIncFields = 'ID_VENDA_CAB'
    UpdateObject = nil
    SQL.Strings = (
      'SELECT * FROM VENDA_CAB')
    Left = 1024
    Top = 104
    object fdQryCadastroID_VENDA_CAB: TFDAutoIncField
      FieldName = 'ID_VENDA_CAB'
      Origin = 'ID_VENDA_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object fdQryCadastroDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdQryCadastroFATURADO: TStringField
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
      Size = 1
    end
    object fdQryCadastroDATA_FATURADO: TDateField
      FieldName = 'DATA_FATURADO'
      Origin = 'DATA_FATURADO'
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 1024
    Top = 152
  end
  inherited fdTransaction: TFDTransaction
    Left = 1024
    Top = 208
  end
  inherited dsCadastro: TDataSource
    Left = 1024
    Top = 56
  end
  inherited fdQryCodigo: TFDQuery
    Left = 616
    Top = 208
  end
  object fdQryItens: TFDQuery
    AfterInsert = fdQryItensAfterInsert
    AfterPost = fdQryItensAfterPost
    AfterCancel = fdQryItensAfterCancel
    AfterDelete = fdQryItensAfterDelete
    OnCalcFields = fdQryItensCalcFields
    Connection = DmDados.fdConexao
    Transaction = fdtItens
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_VENDA_ITEM_ID'
    UpdateOptions.AutoIncFields = 'ID_VENDA_ITEM'
    UpdateObject = fdUpdCadastro
    SQL.Strings = (
      'SELECT * FROM VENDA_ITEM'
      'WHERE ID_VENDA_CAB = :ID_VENDA_CAB')
    Left = 960
    Top = 128
    ParamData = <
      item
        Name = 'ID_VENDA_CAB'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdQryItensID_VENDA_ITEM: TFDAutoIncField
      FieldName = 'ID_VENDA_ITEM'
      Origin = 'ID_VENDA_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object fdQryItensQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object fdQryItensVALOR_UNITARIO: TSingleField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
    end
    object fdQryItensDESCONTO: TSingleField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object fdQryItensID_VENDA_CAB: TIntegerField
      FieldName = 'ID_VENDA_CAB'
      Origin = 'ID_VENDA_CAB'
    end
    object fdQryItensDescricaoProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoProduto'
      LookupDataSet = Lookup.fdQryProdutos
      LookupKeyFields = 'ID_PRODUTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 80
      Lookup = True
    end
    object fdQryItensSubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      Calculated = True
    end
    object fdQryItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object dsItens: TDataSource
    DataSet = fdQryItens
    Left = 960
    Top = 72
  end
  object fdtItens: TFDTransaction
    Connection = DmDados.fdConexao
    Left = 960
    Top = 184
  end
  object frVendas: TfrxReport
    Version = '2022.2.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44708.624043032400000000
    ReportOptions.LastChange = 44708.689486828710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 760
    Top = 209
    Datasets = <
      item
        DataSet = frxDadosVenda
        DataSetName = 'frxDadosVenda'
      end
      item
        DataSet = frxItensVenda
        DataSetName = 'frxItensVenda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxItensVenda
        DataSetName = 'frxItensVenda'
        RowCount = 0
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."ID_PRODUTO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'DescricaoProduto'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."DescricaoProduto"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_UNITARIO'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."VALOR_UNITARIO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'SubTotal'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."SubTotal"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'DESCONTO'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."DESCONTO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 185.196970000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'QTD'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."QTD"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."Total"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 120.944960000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 41.574830000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."ID_VENDA_CAB"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo Venda')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 176.637910000000000000
          Top = 41.574830000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosVenda."ID_CLIENTE"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo Cliente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 68.708720000000000000
          Width = 729.449290000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 71.811070000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 71.811070000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o Produto')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 71.811070000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 71.811070000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Unit'#225'rio')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'SubTotal')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 71.811070000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 71.811070000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxItensVenda."Total">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDadosVenda: TfrxDBDataset
    UserName = 'frxDadosVenda'
    CloseDataSource = False
    DataSet = fdQryCadastro
    BCDToCurrency = False
    DataSetOptions = []
    Left = 832
    Top = 209
  end
  object frxItensVenda: TfrxDBDataset
    UserName = 'frxItensVenda'
    CloseDataSource = False
    DataSet = fdQryItens
    BCDToCurrency = False
    DataSetOptions = []
    Left = 688
    Top = 209
  end
end
