unit uFormFiltroVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet;

type
  TFormFiltroVendas = class(TFormFiltroPai)
    edtData1: TDateTimePicker;
    edtData2: TDateTimePicker;
    Label2: TLabel;
    edtCodVenda: TEdit;
    Label3: TLabel;
    cbFaturado: TCheckBox;
    DBGrid1: TDBGrid;
    btnImprimir: TButton;
    frVendas: TfrxReport;
    frDbVendas: TfrxDBDataset;
    fdQryRelatorio: TFDQuery;
    fdQryRelatorioID_VENDA_CAB: TIntegerField;
    fdQryRelatorioID_CLIENTE: TIntegerField;
    fdQryRelatorioDATA: TDateField;
    fdQryRelatorioCOALESCE: TWideStringField;
    fdQryRelatorioDESCRICAO: TStringField;
    fdQryRelatorioQTD: TSingleField;
    fdQryRelatorioSUBTOTAL: TFloatField;
    fdQryRelatorioDESCONTO: TSingleField;
    fdQryRelatorioTOTAL: TFloatField;
    fdQryRelatorioCLIENTE: TStringField;
    procedure btnFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    //procedure btnNovoClick(Sender: TObject);
  private
   procedure Filtrar;
   procedure SetFiltro(const pQuery:TFDQuery);
   procedure Imprimir;
  public
    { Public declarations }
  end;

var
  FormFiltroVendas: TFormFiltroVendas;

implementation

{$R *.dfm}

uses uDmDados, uBiblioteca, uFormCadastroVenda;

{ TFormFiltroVendas }

procedure TFormFiltroVendas.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFormFiltroVendas.btnImprimirClick(Sender: TObject);
begin
  inherited;
  CarregaRelatorio(frVendas);
end;

procedure TFormFiltroVendas.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT V.ID_VENDA_CAB,');
  fdQryFiltro.SQL.Add('       V.ID_CLIENTE,');
  fdQryFiltro.SQL.Add('       DECODE(C.TIPO_FJ, ''F'',C.NOME,C.RAZAO_SOCIAL),');
  fdQryFiltro.SQL.Add('       V.DATA,');
  fdQryFiltro.SQL.Add('       COALESCE(V.FATURADO,''N'') AS FATURADO');
  fdQryFiltro.SQL.Add('FROM VENDA_CAB V INNER JOIN CLIENTE C ON C.ID_CLIENTE = V.ID_CLIENTE');
  fdQryFiltro.SQL.Add('WHERE 1=1');

  SetFiltro(fdQryFiltro);

  fdQryFiltro.Open;
  fdQryFiltro.FetchAll;

end;

procedure TFormFiltroVendas.FormShow(Sender: TObject);
begin
  inherited;
  edtData1.Date := Date;
  edtData2.Date := Date;
end;

procedure TFormFiltroVendas.Imprimir;
begin
  fdQryRelatorio.Close;
  fdQryRelatorio.SQL.Clear;
  fdQryRelatorio.SQL.Add('SELECT V.ID_VENDA_CAB, ');
  fdQryRelatorio.SQL.Add('     V.ID_CLIENTE, ');
  fdQryRelatorio.SQL.Add('     DECODE(C.TIPO_FJ, ''F'',C.NOME,C.RAZAO_SOCIAL) AS CLIENTE, ');
  fdQryRelatorio.SQL.Add('     V.DATA, ');
  fdQryRelatorio.SQL.Add('     COALESCE(V.FATURADO,''N''), ');
  fdQryRelatorio.SQL.Add('     P.DESCRICAO, ');
  fdQryRelatorio.SQL.Add('     VI.QTD, ');
  fdQryRelatorio.SQL.Add('     (VI.VALOR_UNITARIO * VI.QTD) AS SUBTOTAL,  ');
  fdQryRelatorio.SQL.Add('     COALESCE(VI.DESCONTO,0) DESCONTO, ');
  fdQryRelatorio.SQL.Add('     (VI.VALOR_UNITARIO * VI.QTD) - COALESCE(VI.DESCONTO,0) AS TOTAL ');
  fdQryRelatorio.SQL.Add('FROM VENDA_CAB V');
  fdQryRelatorio.SQL.Add('      INNER JOIN CLIENTE C ON C.ID_CLIENTE = V.ID_CLIENTE ');
  fdQryRelatorio.SQL.Add('      INNER JOIN VENDA_ITEM VI ON VI.ID_VENDA_CAB = V.ID_VENDA_CAB');
  fdQryRelatorio.SQL.Add('      INNER JOIN PRODUTO P ON P.ID_PRODUTO = VI.ID_PRODUTO');
  fdQryRelatorio.SQL.Add('      WHERE 1=1');

  setFiltro(fdQryRelatorio);

  fdQryRelatorio.SQL.Add('  ORDER BY DECODE(C.TIPO_FJ, ''F'',C.NOME,C.RAZAO_SOCIAL), P.DESCRICAO');

  fdQryRelatorio.Open;
  fdQryRelatorio.FetchAll;

end;

procedure TFormFiltroVendas.SetFiltro(const pQuery:TFDQuery);
begin
   if Trim(edtFiltro.Text) <> '' then
   pQuery.SQL.Add(' AND TRIM(UPPER(DECODE(C.TIPO_FJ, ''F'',C.NOME,C.RAZAO_SOCIAL))) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtFiltro.Text)) + '%'));

   if edtData1.Date > 0 then
   pQuery.SQL.Add(' AND V.DATA >= ' + QuotedStr(FormatDateTime('dd.mm.yyy', edtData1.Date)));

   if edtData2.Date > 0 then
   pQuery.SQL.Add(' AND V.DATA <= ' + QuotedStr(FormatDateTime('dd.mm.yyy', edtData2.Date)));

   if Trim(edtCodVenda.Text) <> '' then
   begin
     pQuery.SQL.Add(' AND V.ID_VENDA_CAB = ' + edtCodVenda.Text);
   end;

   if cbFaturado.Checked then
   begin
     pQuery.SQL.Add(' AND v.FATURADO = ''S''');
   end;
end;

end.
