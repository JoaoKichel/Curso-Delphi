unit uFormFiltroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Vcl.ExtCtrls, uDmDados, uFormCadastroProduto;

type
  TFormFiltroProdutos = class(TFormFiltroPai)
    DBGrid1: TDBGrid;
    edtDescricao: TEdit;
    Label2: TLabel;
    fdQryFiltroID_PRODUTO: TFDAutoIncField;
    fdQryFiltroDESCRICAO: TStringField;
    fdQryFiltroQTD: TSingleField;
    fdQryFiltroCUSTO: TSingleField;
    fdQryFiltroV_UNITARIO: TSingleField;
    fdQryFiltroUNIDADE: TStringField;
    fdQryFiltroPESO_LIQUIDO: TSingleField;
    fdQryFiltroPESO_BRUTO: TSingleField;
    fdQryFiltroFABRICANTE: TStringField;
    fdQryFiltroMARCA_MODELO: TStringField;
    fdQryFiltroRAZAO_SOCIAL: TStringField;
    btnVisualizar: TButton;
    btnNovo: TButton;
    procedure btnFiltroClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    procedure Filtrar;
  public
    { Public declarations }
  end;

var
  FormFiltroProdutos: TFormFiltroProdutos;

implementation

{$R *.dfm}

uses uBiblioteca;

{ TFormFiltroPai1 }

procedure TFormFiltroProdutos.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

{procedure TFFormFiltroProdutosFiltrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT  P.DESCRICAO,');
  fdQryFiltro.SQL.Add('        P.DESCRICAO,');
  fdQryFiltro.SQL.Add('        P.QTD,');
  fdQryFiltro.SQL.Add('        P.CUSTO ,');
  fdQryFiltro.SQL.Add('        P.V_UNITARIO ,');
  fdQryFiltro.SQL.Add('        P.UNIDADE ,');
  fdQryFiltro.SQL.Add('        P.PESO_LIQUIDO ,');
  fdQryFiltro.SQL.Add('        P.PESO_BRUTO ,');
  fdQryFiltro.SQL.Add('        P.FABRICANTE ,');
  fdQryFiltro.SQL.Add('        P.MARCA_MODELO ,');
  fdQryFiltro.SQL.Add('        F.RAZAO_SOCIAL');
  fdQryFiltro.SQL.Add('        FROM PRODUTO P');
  fdQryFiltro.SQL.Add('  LEFT JOIN FORNECEDOR F ON');
  fdQryFiltro.SQL.Add('        F.ID_FORNECEDOR = P.ID_FORNECEDOR');
  fdQryFiltro.SQL.Add('  WHERE 1=1');

  if StrToIntDef(edtFiltro.Text, 0) > 0 then
  begin
    fdQryFiltro.SQL.Add('AND P.ID_PRODUTO = ' + edtFiltro.Text);
  end;

  if Trim(edtDescricao.Text) <> '' then
  begin
    fdQryFiltro.SQL.Add('AND UPPER(P.DESCRICAO) = ' + QuotedStr('%' + UpperCase(Trim(edtDescricao.Text) + '%')));
  end;

  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;

end;}

procedure TFormFiltroProdutos.btnNovoClick(Sender: TObject);
begin
  inherited;
  FormCadastroProduto := TFormCadastroProduto.Create(Self);
  try
    FormCadastroProduto.SetRecord(0,tNil);
    FormCadastroProduto.fdQryCadastro.Insert;
    FormCadastroProduto.ShowModal;
  finally
    FreeAndNil(FormCadastroProduto);
   end;
end;
procedure TFormFiltroProdutos.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  if fdQryFiltro.IsEmpty then
  begin
    ShowMessage('Favor pesquisar um Produto!');
    Abort;
  end;

  FormCadastroProduto := TFormCadastroProduto.Create(Self);
  try
    //FormCadastroProduto.fdQryCadastro.Locate('ID_PRODUTO',fdQryFiltro.FieldByName('ID_PRODUTO').AsInteger, []);
    FormCadastroProduto.SetRecord(fdQryFiltroID_PRODUTO.AsInteger,tNil);
    FormCadastroProduto.ShowModal;
  finally
    FreeAndNil(FormCadastroProduto);
   end;
end;

procedure TFormFiltroProdutos.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT  P.ID_PRODUTO,');
  fdQryFiltro.SQL.Add('        P.DESCRICAO,');
  fdQryFiltro.SQL.Add('        P.QTD,');
  fdQryFiltro.SQL.Add('        P.CUSTO ,');
  fdQryFiltro.SQL.Add('        P.V_UNITARIO ,');
  fdQryFiltro.SQL.Add('        P.UNIDADE ,');
  fdQryFiltro.SQL.Add('        P.PESO_LIQUIDO ,');
  fdQryFiltro.SQL.Add('        P.PESO_BRUTO ,');
  fdQryFiltro.SQL.Add('        P.FABRICANTE ,');
  fdQryFiltro.SQL.Add('        P.MARCA_MODELO ,');
  fdQryFiltro.SQL.Add('        F.RAZAO_SOCIAL');
  fdQryFiltro.SQL.Add(' FROM PRODUTO P LEFT JOIN FORNECEDOR F ON F.ID_FORNECEDOR = P.ID_FORNECEDOR');
  fdQryFiltro.SQL.Add('  WHERE 1=1');

  if StrToIntDef(edtFiltro.Text, 0) > 0 then
  begin
    fdQryFiltro.SQL.Add('AND P.ID_PRODUTO = ' + edtFiltro.Text);
  end;

  if Trim(edtDescricao.Text) <> '' then
  begin
    fdQryFiltro.SQL.Add('AND UPPER(P.DESCRICAO) = ' + QuotedStr('%' + UpperCase(Trim(edtDescricao.Text) + '%')));
  end;

  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;
end;

end.
