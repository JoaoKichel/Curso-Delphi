object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Sistema de Gest'#227'o'
  ClientHeight = 315
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 16
    Top = 16
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Estado1: TMenuItem
        Caption = 'Estados'
        OnClick = Estado1Click
      end
      object Cidades1: TMenuItem
        Caption = 'Cidades'
        OnClick = Cidades1Click
      end
      object btnCadastroFornecedor: TMenuItem
        Caption = 'Fornecedores'
        OnClick = btnCadastroFornecedorClick
      end
      object btnCadastroProduto: TMenuItem
        Caption = 'Produtos'
        OnClick = btnCadastroProdutoClick
      end
      object Usurios1: TMenuItem
        Caption = 'Usu'#225'rios'
        OnClick = Usurios1Click
      end
    end
    object Filtros1: TMenuItem
      Caption = 'Filtros'
      object btnFiltroClientes: TMenuItem
        Caption = 'Clientes'
        OnClick = btnFiltroClientesClick
      end
      object btnFornecedor: TMenuItem
        Caption = 'Fornecedores'
        OnClick = btnFornecedorClick
      end
      object btnProdutos: TMenuItem
        Caption = 'Produtos'
        OnClick = btnProdutosClick
      end
      object btnFiltroVendas: TMenuItem
        Caption = 'Vendas'
        OnClick = btnFiltroVendasClick
      end
      object btnFiltroUsuario: TMenuItem
        Caption = 'Usu'#225'rios'
        OnClick = btnFiltroUsuarioClick
      end
    end
    object Configuraes1: TMenuItem
      Caption = 'Configura'#231#245'es'
    end
    object Vendas1: TMenuItem
      Caption = 'Vendas'
      object CadastroVendas1: TMenuItem
        Caption = 'Cadastro Vendas'
        OnClick = CadastroVendas1Click
      end
    end
  end
end
