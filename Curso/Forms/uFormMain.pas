unit uFormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroCliente, Vcl.Menus,
  uFormCadastroEstado, uFormCadastroCidade, uFormFiltroClientes,
  uFormCadastroFornecedor, uFormFiltroFornecedores, uFormFiltroProdutos,
  uFormCadastroProduto;

type
  TFormMain = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Estado1: TMenuItem;
    Cidades1: TMenuItem;
    Filtros1: TMenuItem;
    Configuraes1: TMenuItem;
    btnFiltroClientes: TMenuItem;
    btnCadastroFornecedor: TMenuItem;
    btnFornecedor: TMenuItem;
    btnProdutos: TMenuItem;
    btnCadastroProduto: TMenuItem;
    Vendas1: TMenuItem;
    CadastroVendas1: TMenuItem;
    btnFiltroVendas: TMenuItem;
    btnFiltroUsuario: TMenuItem;
    Usurios1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure btnFiltroClientesClick(Sender: TObject);
    procedure btnCadastroFornecedorClick(Sender: TObject);
    procedure btnFornecedorClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnCadastroProdutoClick(Sender: TObject);
    procedure CadastroVendas1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure btnFiltroVendasClick(Sender: TObject);
    procedure btnFiltroUsuarioClick(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses uFormCadastroVenda, uBiblioteca, uFormFiltroVendas, uFormFiltroUsuario,
  uFormCadastroUsuario;

procedure TFormMain.btnCadastroFornecedorClick(Sender: TObject);
begin
ShowModalForm(TFormCadastroFornecedor, FormCadastroFornecedor);
end;

procedure TFormMain.btnCadastroProdutoClick(Sender: TObject);
begin
 ShowModalForm(TFormCadastroProduto, FormCadastroProduto);
end;

procedure TFormMain.btnFiltroClientesClick(Sender: TObject);
begin
  ShowForm(TFormFiltroClientes, FormFiltroClientes);
end;

procedure TFormMain.btnFiltroVendasClick(Sender: TObject);
begin
  ShowForm(TFormFiltroVendas, FormFiltroVendas);
end;

procedure TFormMain.btnFornecedorClick(Sender: TObject);
begin
 ShowForm(TFormFiltroFornecedores, FormFiltroFornecedores);
end;

procedure TFormMain.btnProdutosClick(Sender: TObject);
begin
 ShowForm(TFormFiltroProdutos, FormFiltroProdutos);
end;

procedure TFormMain.CadastroVendas1Click(Sender: TObject);
begin
  ShowModalForm(TFormCadastroVendaProduto, FormCadastroVendaProduto);
end;

procedure TFormMain.Cidades1Click(Sender: TObject);
begin
 ShowModalForm(TFormCadastroCidade, FormCadastroCidade);
end;

procedure TFormMain.Clientes1Click(Sender: TObject);
begin
 ShowModalForm(TFormCadastroCliente, FormCadastroCliente);
end;

procedure TFormMain.Estado1Click(Sender: TObject);
begin
 ShowModalForm(TFormCadastroEstado, FormCadastroEstado);
end;

procedure TFormMain.Usurios1Click(Sender: TObject);
begin
  ShowModalForm(TFormCadastroUsuario, FormCadastroUsuario);
end;

procedure TFormMain.btnFiltroUsuarioClick(Sender: TObject);
begin
  ShowForm(TFormFiltroUsuario, FormFiltroUsuario);
end;

end.
