unit uFormCadastroVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, uLookup, Vcl.Grids, Vcl.DBGrids,
   frxDBSet, frxClass;

type
  TFormCadastroVendaProduto = class(TFormCadastroPai)
    fdQryCadastroID_VENDA_CAB: TFDAutoIncField;
    fdQryCadastroID_CLIENTE: TIntegerField;
    fdQryCadastroDATA: TDateField;
    fdQryCadastroFATURADO: TStringField;
    fdQryCadastroDATA_FATURADO: TDateField;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    edtCliente: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    fdQryItens: TFDQuery;
    dsItens: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    fdQryItensID_VENDA_ITEM: TFDAutoIncField;
    fdQryItensID_PRODUTO: TIntegerField;
    fdQryItensQTD: TSingleField;
    fdQryItensVALOR_UNITARIO: TSingleField;
    fdQryItensDESCONTO: TSingleField;
    fdQryItensID_VENDA_CAB: TIntegerField;
    edtQuantidade: TEdit;
    edtDescricaoItem: TDBLookupComboBox;
    edtValorUnitario: TEdit;
    edtDesconto: TEdit;
    edtSubTotal: TEdit;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    edtTotal: TEdit;
    Label6: TLabel;
    Button1: TButton;
    fdQryItensDescricaoProduto: TStringField;
    fdQryItensSubTotal: TFloatField;
    fdQryItensTotal: TFloatField;
    fdtItens: TFDTransaction;
    Button2: TButton;
    frVendas: TfrxReport;
    frxDadosVenda: TfrxDBDataset;
    frxItensVenda: TfrxDBDataset;
    btnImprimir: TBitBtn;
    fdQryCadastroDT_EXCLUIDO: TDateField;
    Label11: TLabel;
    Label12: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure fdQryCadastroBeforePost(DataSet: TDataSet);
    procedure fdQryCadastroAfterInsert(DataSet: TDataSet);
    procedure fdQryItensAfterInsert(DataSet: TDataSet);
    procedure fdQryCadastroAfterOpen(DataSet: TDataSet);
    procedure fdQryCadastroAfterScroll(DataSet: TDataSet);
    procedure fdQryItensCalcFields(DataSet: TDataSet);
    procedure fdQryItensAfterPost(DataSet: TDataSet);
    procedure fdQryItensAfterDelete(DataSet: TDataSet);
    procedure fdQryItensAfterCancel(DataSet: TDataSet);
    procedure edtDescricaoItemClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    //procedure SysDBEditBt1Change(Sender: TObject);
  private
    procedure SetItens(pIdVenda : integer);
    procedure GravarItens;
    procedure SetDadosProduto(pIdProduto: integer);
    //procedure Totaliza;
    procedure CalculaTotais;
    procedure LimparCampos;
  public
    { Public declarations }
  end;

var
  FormCadastroVendaProduto: TFormCadastroVendaProduto;

implementation

{$R *.dfm}

uses uBiblioteca, uDmDados;

procedure TFormCadastroVendaProduto.btnImprimirClick(Sender: TObject);
begin
  inherited;
   CarregaRelatorio(frVendas);
end;

procedure TFormCadastroVendaProduto.Button1Click(Sender: TObject);
begin
  inherited;
  GravarItens;
  LimparCampos;
end;

procedure TFormCadastroVendaProduto.Button2Click(Sender: TObject);
begin
  inherited;
  fdQryItens.Delete;
end;

procedure TFormCadastroVendaProduto.CalculaTotais;
begin
  //edtSubTotal.Text :=  edtQuantidade = edtValorUnitario;
  //edtTotal.Text    := (edtQuantidade.Text = edtValorUnitario.Text); //- edtDesconto.Text;
end;

procedure TFormCadastroVendaProduto.edtDescricaoItemClick(Sender: TObject);
begin
  inherited;
  SetDadosProduto(edtDescricaoItem.KeyValue);
end;

procedure TFormCadastroVendaProduto.fdQryCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdQryCadastroDATA.AsDateTime := Date;
end;

procedure TFormCadastroVendaProduto.fdQryCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SetItens(fdQryCadastroID_VENDA_CAB.AsInteger);
end;

procedure TFormCadastroVendaProduto.fdQryCadastroAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SetItens(fdQryCadastroID_VENDA_CAB.AsInteger);
end;

procedure TFormCadastroVendaProduto.fdQryCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
   if (fdQryCadastroDATA_FATURADO.IsNull) and (fdQryCadastroFATURADO.AsAnsiString = 'S') then
   fdQryCadastroDATA_FATURADO.AsDateTime := Date;
end;

procedure TFormCadastroVendaProduto.fdQryItensAfterCancel(DataSet: TDataSet);
begin
  inherited;
  fdtItens.RollbackRetaining;
end;

procedure TFormCadastroVendaProduto.fdQryItensAfterDelete(DataSet: TDataSet);
begin
  fdtItens.StartTransaction;
  inherited;
  fdtItens.CommitRetaining;
end;

procedure TFormCadastroVendaProduto.fdQryItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdQryItensID_VENDA_CAB.AsInteger := fdQryCadastroID_VENDA_CAB.AsInteger;
end;

procedure TFormCadastroVendaProduto.fdQryItensAfterPost(DataSet: TDataSet);
begin
  fdtItens.StartTransaction;
  inherited;
  fdtItens.CommitRetaining;
  //Totaliza;
end;

procedure TFormCadastroVendaProduto.fdQryItensCalcFields(DataSet: TDataSet);
begin
  inherited;
  fdQryItensSubTotal.AsFloat := (fdQryItensQTD.AsFloat * fdQryItensVALOR_UNITARIO.AsFloat);
  fdQryItensTotal.AsFloat := (fdQryItensQTD.AsFloat * fdQryItensVALOR_UNITARIO.AsFloat) - fdQryItensDESCONTO.AsFloat;
end;

procedure TFormCadastroVendaProduto.FormCreate(Sender: TObject);
begin
  inherited;
  AtualizaFDQuery(Lookup.fdQryClientes, '');
  AtualizaFDQuery(Lookup.fdQryProdutos, '');
end;

//Grava valores na tabela
procedure TFormCadastroVendaProduto.GravarItens;
begin
  fdQryItens.Append;
  fdQryItensID_PRODUTO.Value              := Integer(edtDescricaoItem.KeyValue);
  fdQryItensQTD.AsFloat                 := Integer(edtQuantidade);
  fdQryItensVALOR_UNITARIO.AsFloat     := Integer(edtValorUnitario);
  fdQryItensDESCONTO.AsFloat            := Integer(edtDesconto);
  fdQryItens.Post;
end;

procedure TFormCadastroVendaProduto.LimparCampos;
begin
  edtDescricaoItem.KeyValue := 0;
  {edtQuantidade.Value := 0;
  edtValorUnitario.Value := 0;
  edtDesconto.Value := 0;
  edtSubTotal.Value := 0;
  edtTotal.Value := 0;}
  edtDescricaoItem.SetFocus;
end;

procedure TFormCadastroVendaProduto.SetDadosProduto(pIdProduto: integer);
begin
  edtQuantidade.Text := IntToStr(1);
  //edtValorUnitario.Text := Lookup.fdQryProdutosV_UNITARIO.AsString;
  //edtValorUnitario.Text := StrToFloat(fdQryProdutosV_UNITARIO); //Video aula 60, problemas por conta do componente
  //edtValorUnitario.Value := StrToFloat Lookup.fdQryProdutos;
end;

procedure TFormCadastroVendaProduto.SetItens(pIdVenda: integer);
begin
  fdQryItens.Close;
  fdQryItens.ParamByName('ID_VENDA_CAB').AsInteger := pIdVenda;
  AtualizaFDQuery(fdQryItens, '');
  //Totaliza;
end;

procedure TFormCadastroVendaProduto.SpeedButton1Click(Sender: TObject);
begin
  inherited;

end;

{procedure TFormCadastroVendaProduto.Totaliza;
var
  vQryTotais: TFDQuery;
  vSql: string;
begin
  vQryTotais := TFDQuery.Create(nil);
  vQryTotais.Transaction := fdtItens;
  vQryTotais.Connection  := dmDados.fdConexao;
   {try
   vSql := 'SELECT SUM(QTD * VALOR_UNITARIO) SUBTOTAL, SUM(COALESCE(DESCONTO,0)) DESCONTO, SUM(QTD * VALOR_UNITARIO) - COALESCE(DESCONTO,0) TOTAL' + #13 +
             '  FROM VENDA_ITEM' + #13 +
             ' WHERE ID_VENDA_CAB = ' + IntToStr(fdQryCadastroID_VENDA_CAB.AsInteger);
     AtualizaFDQuery(vQryTotais, vSql);
     edtTotSubTotal.Text := vQryTotais.FieldByName('SUBTOTAL').AsString;
     edtTotDesc.Text := vQryTotais.FieldByName('DESCONTO').AsString;
     edtTot.Text := vQryTotais.FieldByName('TOTAL').AsString;

       finally
    vQryTotais.Close;
    FreeAndNil(vQryTotais);
    }

   { vSql := 'SELECT SUM(QTD * VALOR_UNITARIO) SUBTOTAL, SUM(COALESCE(DESCONTO,0)) DESCONTO, SUM((QTD * VALOR_UNITARIO) - COALESCE(DESCONTO,0)) TOTAL' + #13 +
            '  FROM VENDA_ITEM' + #13 +
            ' WHERE ID_VENDA_CAB = ' + FloatToStr(fdQryCadastroID_VENDA_CAB.AsString);
    AtualizaFDQuery(vQryTotais, vSql);
    edtTotSubTotal.Text := vQryTotais.FieldByName('SUBTOTAL').AsFloat;
    edtTotDesc.Text := vQryTotais.FieldByName('DESCONTO').AsFloat;
    edtTot.Text    := vQryTotais.FieldByName('TOTAL').AsFloat;
  finally
    vQryTotais.Close;
    FreeAndNil(vQryTotais);
 end;
end;}

end.
