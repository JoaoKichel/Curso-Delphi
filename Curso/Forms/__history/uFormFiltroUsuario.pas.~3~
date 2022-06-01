unit uFormFiltroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormFiltroUsuario = class(TFormFiltroPai)
    btnVisualizar: TButton;
    btnNovo: TButton;
    DBGrid1: TDBGrid;
    procedure btnFiltroClick(Sender: TObject);
  private
    procedure Filtrar;
  public
    { Public declarations }
  end;

var
  FormFiltroUsuario: TFormFiltroUsuario;

implementation

{$R *.dfm}

procedure TFormFiltroUsuario.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFormFiltroUsuario.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT u.NOME,');
  fdQryFiltro.SQL.Add('       u.LOGIN');
  fdQryFiltro.SQL.Add('FROM USUARIO u');
  fdQryFiltro.SQL.Add('  WHERE 1=1');

  if Trim(edtFiltro.Text) <> '' then
  begin
    fdQryFiltro.SQL.Add('AND UPPER(u.NOME) = ' + QuotedStr('%' + UpperCase(Trim(edtFiltro.Text) + '%')));
  end;

  fdQryFiltro.Open();
  fdQryFiltro.FetchAll();
end;


end.



