unit uDmDados;

interface

uses
  System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  Vcl.Forms, Data.DB, System.SysUtils;

type
    TDmDados = class(TDataModule)
    fdConexao: TFDConnection;
    procedure DataModuleCreate (Sender: TObject);

  private
    procedure CarregaBanco;

  public
    { Public declarations }
  end;

var
  DmDados: TDmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uFormConfigBanco, uBiblioteca;
{$R *.dfm}

{ TdmDados }

procedure TDmDados.CarregaBanco;
begin
  try
     fdConexao.Params.Database := GetValorIni(ExtractFilePath(Application.ExeName) + 'config.ini', 'CONFIGURACAO','LOCAL_DB');
     fdConexao.Connected := True;
  except
      FormConfigBanco.ShowModal;
  end;
end;

procedure TDmDados.DataModuleCreate(Sender: TObject);
begin
 CarregaBanco;
end;

end.
