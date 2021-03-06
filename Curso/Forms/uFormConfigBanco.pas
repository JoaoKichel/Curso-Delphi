unit uFormConfigBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, uBiblioteca;

type
  TFormConfigBanco = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Label1: TLabel;
    edtLocal: TEdit;
    opnPastas: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure Configura;
  public
    { Public declarations }
  end;

var
  FormConfigBanco: TFormConfigBanco;

implementation

{$R *.dfm}

{ TFormConfigBanco }

procedure TFormConfigBanco.Button1Click(Sender: TObject);
begin
    Configura;
end;

procedure TFormConfigBanco.Configura;
var vFileName: string;

begin
  if opnPastas.Execute then begin
  edtLocal.Text := opnPastas.Filename;
  vFileName := ExtractFilePath(Application.ExeName) + 'config.ini';
  SetValorIni(vFileName,'CONFIGURACAO','LOCAL_DB',edtLocal.Text);
  ShowMessage('Arquivo .ini gerado com sucesso!');
  Self.Close;
end;
end;
procedure TFormConfigBanco.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Application.Terminate;
end;

end.

