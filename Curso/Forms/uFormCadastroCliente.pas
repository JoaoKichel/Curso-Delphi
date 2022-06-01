unit uFormCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, uDmDados, uLookup;

type
  TFormCadastroCliente = class(TFormCadastroPai)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    edtRazaoSocial: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    editTipoFJ: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label15: TLabel;
    Label16: TLabel;
    fdQryCadastroID_CLIENTE: TFDAutoIncField;
    fdQryCadastroRAZAO_SOCIAL: TStringField;
    fdQryCadastroFANTASIA: TStringField;
    fdQryCadastroCPF_CNPJ: TStringField;
    fdQryCadastroTIPO_FJ: TStringField;
    dt: TStringField;
    fdQryCadastroEMAIL: TStringField;
    fdQryCadastroSITE: TStringField;
    fdQryCadastroENDERECO: TStringField;
    fdQryCadastroCOMPLEMENTO: TStringField;
    fdQryCadastroNUMERO: TStringField;
    fdQryCadastroBAIRRO: TStringField;
    fdQryCadastroIE: TStringField;
    fdQryCadastroIM: TStringField;
    fdQryCadastroDT_EXCLUIDO: TDateField;
    fdQryCadastroID_CIDADE: TIntegerField;
    fdQryCadastroID_ESTADO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure fdQryCadastroBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCliente: TFormCadastroCliente;

implementation

{$R *.dfm}

procedure TFormCadastroCliente.fdQryCadastroBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if self.Visible then
  edtRazaoSocial.SetFocus;
end;

procedure TFormCadastroCliente.FormShow(Sender: TObject);
begin
  inherited;
  Lookup.fdQryEstados.Open();
  Lookup.fdQryEstados.FetchAll();

  Lookup.fdQryCidades.Open();
  Lookup.fdQryCidades.FetchAll();

  edtRazaoSocial.SetFocus;
end;

end.
