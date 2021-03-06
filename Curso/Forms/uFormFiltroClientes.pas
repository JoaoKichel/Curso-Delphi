unit uFormFiltroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, uFormCadastroCliente;

type
  TFormFiltroClientes = class(TFormFiltroPai)
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    edtFantasia: TEdit;
    edtCnpj: TEdit;
    edtCodigo: TEdit;
    Label4: TLabel;
    btnNovo: TButton;
    btnVisualizar: TButton;
    fdQryFiltroID_CLIENTE: TIntegerField;
    fdQryFiltroRAZAO_SOCIAL: TStringField;
    fdQryFiltroFANTASIA: TStringField;
    fdQryFiltroCPF_CNPJ: TStringField;
    fdQryFiltroTIPO_FJ: TStringField;
    fdQryFiltroNOME: TStringField;
    fdQryFiltroEMAIL: TStringField;
    fdQryFiltroSITE: TStringField;
    fdQryFiltroENDERECO: TStringField;
    fdQryFiltroCOMPLEMENTO: TStringField;
    fdQryFiltroNUMERO: TStringField;
    fdQryFiltroBAIRRO: TStringField;
    fdQryFiltroIE: TStringField;
    fdQryFiltroIM: TStringField;
    fdQryFiltroDT_EXCLUIDO: TDateField;
    fdQryFiltroID_CIDADE: TIntegerField;
    fdQryFiltroID_ESTADO: TIntegerField;
    procedure btnFiltroClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
  private
    procedure Filtrar;
  public
    { Public declarations }
  end;

var
  FormFiltroClientes: TFormFiltroClientes;

implementation

{$R *.dfm}

uses uBiblioteca;

{ TFormFiltroClientes }

procedure TFormFiltroClientes.btnFiltroClick(Sender: TObject);
begin
  inherited;
   Filtrar;
end;

procedure TFormFiltroClientes.btnNovoClick(Sender: TObject);
begin
  inherited;
  FormCadastroCliente := TFormCadastroCliente.Create(Self);
  try
    FormCadastroCliente.SetRecord(0,tNil);
    FormCadastroCliente.fdQryCadastro.Insert;
    FormCadastroCliente.ShowModal;
  finally
    FreeAndNil(FormCadastroCliente);
   end;
end;

procedure TFormFiltroClientes.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  if fdQryFiltro.IsEmpty then
  begin
    ShowMessage('Favor pesquisar um Cliente!');
    Abort;
  end;

  FormCadastroCliente := TFormCadastroCliente.Create(Self);
  try
    FormCadastroCliente.SetRecord(fdQryFiltroID_CLIENTE.AsInteger,tNil);
    FormCadastroCliente.fdQryCadastro.Locate('ID_CLIENTE',fdQryFiltro.FieldByName('ID_CLIENTE').AsInteger, []);
    FormCadastroCliente.ShowModal;
  finally
    FreeAndNil(FormCadastroCliente);
   end;
end;


procedure TFormFiltroClientes.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT * FROM CLIENTE');
  fdQryFiltro.SQL.Add(' WHERE 1=1');

  if Trim(edtFiltro.Text) <> '' then
  begin
    fdQryFiltro.SQL.Add('  AND UPPER(TRIM(RAZAO_SOCIAL)) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtFiltro.Text)) + '%' ));
  end;

  if Trim(edtFantasia.Text) <> '' then
  begin
    fdQryFiltro.SQL.Add(' AND UPPER(TRIM(FANTASIA)) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtFantasia.Text)) + '%'));
  end;

  if Trim(edtCnpj.Text) <> '' then
  begin
    fdQryFiltro.SQL.Add('AND UPPER(TRIM(REPLACE(REPLACE(REPLACE(CPF_CNPJ, ''.'',''''),''-'',''''),''/'',''''))) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtCnpj.Text)) + '%'));
  end;

  if StrToIntDef(edtCodigo.Text,0) >  0 then
  begin
    fdQryFiltro.SQL.Add('AND ID_CLIENTE = ' + edtCodigo.Text);
  end;

  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;
end;

end.
