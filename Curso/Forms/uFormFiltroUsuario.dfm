inherited FormFiltroUsuario: TFormFiltroUsuario
  Caption = 'Filtro Usu'#225'rio'
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 81
      Caption = 'Nome do Usu'#225'rio'
      ExplicitWidth = 81
    end
    inherited btnFiltro: TButton
      Left = 200
      Caption = 'Filtrar'
      OnClick = btnFiltroClick
      ExplicitLeft = 200
    end
    object btnVisualizar: TButton
      Left = 362
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 3
    end
    object btnNovo: TButton
      Left = 281
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 89
    Width = 635
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
    Top = 96
  end
  inherited dsFiltro: TDataSource
    Top = 160
  end
  inherited fdTransaction: TFDTransaction
    Top = 232
  end
end
