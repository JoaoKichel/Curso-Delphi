inherited FormFiltroVendas: TFormFiltroVendas
  Caption = 'Filtro de Vendas'
  ClientWidth = 1184
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  OnShow = FormShow
  ExplicitLeft = -482
  ExplicitWidth = 1200
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1184
    ExplicitWidth = 1184
    inherited Label1: TLabel
      Width = 33
      Caption = 'Cliente'
      ExplicitWidth = 33
    end
    object Label2: TLabel [1]
      Left = 471
      Top = 16
      Width = 66
      Height = 13
      Caption = 'C'#243'digo Venda'
    end
    object Label3: TLabel [2]
      Left = 271
      Top = 24
      Width = 84
      Height = 13
      Caption = 'Per'#237'odo de Venda'
    end
    inherited edtFiltro: TEdit
      Width = 233
      ExplicitWidth = 233
    end
    inherited btnFiltro: TButton
      Left = 864
      Caption = 'Filtrar'
      OnClick = btnFiltroClick
      ExplicitLeft = 864
    end
    inherited Panel2: TPanel
      Left = 998
      ExplicitLeft = 998
    end
    object edtData1: TDateTimePicker
      Left = 263
      Top = 35
      Width = 98
      Height = 21
      Date = 44708.000000000000000000
      Time = 0.704293391201645100
      TabOrder = 3
    end
    object edtData2: TDateTimePicker
      Left = 367
      Top = 35
      Width = 98
      Height = 21
      Date = 44708.000000000000000000
      Time = 0.704293391201645100
      TabOrder = 4
    end
    object edtCodVenda: TEdit
      Left = 471
      Top = 35
      Width = 106
      Height = 21
      TabOrder = 5
    end
    object cbFaturado: TCheckBox
      Left = 592
      Top = 37
      Width = 97
      Height = 17
      Caption = 'Faturado'
      TabOrder = 6
    end
    object btnImprimir: TButton
      Left = 945
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 7
      OnClick = btnImprimirClick
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 89
    Width = 1184
    Height = 210
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
      'SELECT V.ID_VENDA_CAB,'
      '       V.ID_CLIENTE,'
      '       DECODE(C.TIPO_FJ, '#39'F'#39',C.NOME,C.RAZAO_SOCIAL),'
      '       V.DATA,'
      '       COALESCE(V.FATURADO,'#39'N'#39') '
      
        'FROM VENDA_CAB V INNER JOIN CLIENTE C ON C.ID_CLIENTE = V.ID_CLI' +
        'ENTE')
    Left = 1104
    Top = 96
  end
  inherited dsFiltro: TDataSource
    Left = 1104
    Top = 160
  end
  inherited fdTransaction: TFDTransaction
    Left = 1104
    Top = 232
  end
  object frVendas: TfrxReport
    Version = '6.5.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44709.343251169000000000
    ReportOptions.LastChange = 44709.343251169000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 568
    Top = 144
    Datasets = <
      item
        DataSet = frDbVendas
        DataSetName = 'frDbVendas'
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE VENDAS')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = -7.559060000000000000
          Top = 287.244280000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        Condition = 'frDbVendas."CLIENTE"'
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object frDbVendasCLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 11.338590000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTE'
          DataSet = frDbVendas
          DataSetName = 'frDbVendas'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDbVendas."CLIENTE"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
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
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data ')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
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
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 49.133890000000000000
          Width = 102.047310000000000000
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
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 71.811070000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frDbVendas
        DataSetName = 'frDbVendas'
        RowCount = 0
        Stretched = True
        object frDbVendasDESCRICAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'DESCRICAO'
          DataSet = frDbVendas
          DataSetName = 'frDbVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDbVendas."DESCRICAO"]')
          ParentFont = False
        end
        object frDbVendasQTD: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QTD'
          DataSet = frDbVendas
          DataSetName = 'frDbVendas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDbVendas."QTD"]')
          ParentFont = False
        end
        object frDbVendasDATA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DATA'
          DataSet = frDbVendas
          DataSetName = 'frDbVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDbVendas."DATA"]')
          ParentFont = False
        end
        object frDbVendasCOALESCE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 3.779530000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          DataField = 'COALESCE'
          DataSet = frDbVendas
          DataSetName = 'frDbVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDbVendas."COALESCE"]')
          ParentFont = False
        end
        object frDbVendasSUBTOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'SUBTOTAL'
          DataSet = frDbVendas
          DataSetName = 'frDbVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDbVendas."SUBTOTAL"]')
          ParentFont = False
        end
        object frDbVendasDESCONTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'DESCONTO'
          DataSet = frDbVendas
          DataSetName = 'frDbVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDbVendas."DESCONTO"]')
          ParentFont = False
        end
        object frDbVendasTOTAL1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = frDbVendas
          DataSetName = 'frDbVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDbVendas."TOTAL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frDbVendas."DESCONTO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frDbVendas."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frDbVendas."SUBTOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frDbVendas: TfrxDBDataset
    UserName = 'frDbVendas'
    CloseDataSource = False
    DataSet = fdQryRelatorio
    BCDToCurrency = False
    Left = 632
    Top = 144
  end
  object fdQryRelatorio: TFDQuery
    Connection = DmDados.fdConexao
    SQL.Strings = (
      'SELECT V.ID_VENDA_CAB,'
      '       V.ID_CLIENTE,'
      '       DECODE(C.TIPO_FJ, '#39'F'#39',C.NOME,C.RAZAO_SOCIAL) AS CLIENTE,'
      '       V.DATA,'
      '       COALESCE(V.FATURADO,'#39'N'#39'),'
      '       P.DESCRICAO,'
      '       VI.QTD,'
      '       (VI.VALOR_UNITARIO * VI.QTD) AS SUBTOTAL,'
      '       COALESCE(VI.DESCONTO,0) DESCONTO,'
      
        '       (VI.VALOR_UNITARIO * VI.QTD) - COALESCE(VI.DESCONTO,0) AS' +
        ' TOTAL'
      'FROM VENDA_CAB V '
      'INNER JOIN CLIENTE C ON C.ID_CLIENTE = V.ID_CLIENTE'
      'INNER JOIN VENDA_ITEM VI ON VI.ID_VENDA_CAB = V.ID_VENDA_CAB'
      'INNER JOIN PRODUTO P ON P.ID_PRODUTO = VI.ID_PRODUTO '
      
        'ORDER BY DECODE(C.TIPO_FJ, '#39'F'#39',C.NOME,C.RAZAO_SOCIAL), P.DESCRIC' +
        'AO ')
    Left = 492
    Top = 143
    object fdQryRelatorioID_VENDA_CAB: TIntegerField
      FieldName = 'ID_VENDA_CAB'
      Origin = 'ID_VENDA_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryRelatorioID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object fdQryRelatorioDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdQryRelatorioCOALESCE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'COALESCE'
      Origin = '"COALESCE"'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object fdQryRelatorioDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object fdQryRelatorioQTD: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QTD'
      Origin = 'QTD'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioSUBTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioDESCONTO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
end
