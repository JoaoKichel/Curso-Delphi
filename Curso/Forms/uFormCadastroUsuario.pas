unit uFormCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormCadastroUsuario = class(TFormCadastroPai)
    fdQryCadastroID_USUARIO: TIntegerField;
    fdQryCadastroNOME: TStringField;
    fdQryCadastroLOGIN: TStringField;
    fdQryCadastroSENHA: TStringField;
    Label1: TLabel;
    edtNome: TDBEdit;
    Label2: TLabel;
    edtLogin: TDBEdit;
    Label3: TLabel;
    edtSenha: TDBEdit;
    fdQryCadastroDT_EXCLUIDO: TDateField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure fdQryCadastroBeforePost(DataSet: TDataSet);
    procedure btnGravarClick(Sender: TObject);
    //procedure DBEdit1Change(Sender: TObject);
  private
    procedure ValidaCampos;
  public
    { Public declarations }
  end;

var
  FormCadastroUsuario: TFormCadastroUsuario;

implementation

{$R *.dfm}

uses uCrpt;

procedure TFormCadastroUsuario.btnGravarClick(Sender: TObject);
begin
  ValidaCampos;
  inherited;
end;

procedure TFormCadastroUsuario.fdQryCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if fdQryCadastro.State in [dsInsert] then
  begin
    fdQryCadastroSENHA.AsAnsiString := Criptografa('D',fdQryCadastroSENHA.AsAnsiString);
  end
  else if fdQryCadastro.State in [dsEdit] then
  begin
    if (fdQryCadastroSENHA.AsAnsiString <> fdQryCadastroSENHA.OldValue) then
    begin
      fdQryCadastroSENHA.AsAnsiString := Criptografa('C',fdQryCadastroSENHA.AsAnsiString);


    end;
  end;
end;
procedure TFormCadastroUsuario.ValidaCampos;
begin
  if (Trim(edtNome.Text) = '')
      or (Trim(edtLogin.Text) = '')
      or (Trim(edtSenha.Text) = '') then
      begin
        ShowMessage('Todos campos s�o Obrigat�rios');
        Abort;
      end;

end;

end.
