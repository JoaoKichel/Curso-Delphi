program prjCursoBasico;

uses
  Vcl.Forms,
  uFormMain in 'Forms\uFormMain.pas' {FormMain},
  uDmDados in 'Forms\uDmDados.pas' {DmDados: TDataModule},
  uBiblioteca in 'Classes\uBiblioteca.pas',
  uFormConfigBanco in 'Forms\uFormConfigBanco.pas' {FormConfigBanco},
  uFormCadastroPai in 'Forms\uFormCadastroPai.pas' {FormCadastroPai},
  uFormCadastroCliente in 'Forms\uFormCadastroCliente.pas' {FormCadastroCliente},
  uFormCadastroEstado in 'Forms\uFormCadastroEstado.pas' {FormCadastroEstado},
  uFormCadastroCidade in 'Forms\uFormCadastroCidade.pas' {FormCadastroCidade},
  uLookup in 'Shared\uLookup.pas' {Lookup: TDataModule},
  uFormFiltroPai in 'Forms\uFormFiltroPai.pas' {FormFiltroPai},
  uFormFiltroClientes in 'Forms\uFormFiltroClientes.pas' {FormFiltroClientes},
  uFormCadastroFornecedor in 'Forms\uFormCadastroFornecedor.pas' {FormCadastroPai1},
  uFormFiltroFornecedores in 'Forms\uFormFiltroFornecedores.pas' {FormFiltroFornecedores},
  uFormFiltroProdutos in 'Forms\uFormFiltroProdutos.pas' {FormFiltroProdutos},
  uFormCadastroProduto in 'Forms\uFormCadastroProduto.pas' {FormCadastroProduto},
  uFormCadastroVenda in 'Forms\uFormCadastroVenda.pas' {FormCadastroVendaProduto},
  uFormFiltroVendas in 'Forms\uFormFiltroVendas.pas' {FormFiltroVendas},
  uFormFiltroUsuario in 'Forms\uFormFiltroUsuario.pas' {FormFiltroUsuario},
  uFormCadastroUsuario in 'Forms\uFormCadastroUsuario.pas' {FormCadastroUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TDmDados, DmDados);
  Application.CreateForm(TLookup, Lookup);
  Application.CreateForm(TFormConfigBanco, FormConfigBanco);
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormConfigBanco, FormConfigBanco);

  Application.Run;
end.
