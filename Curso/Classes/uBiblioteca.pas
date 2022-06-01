unit uBiblioteca;

interface
  uses IniFiles, System.SysUtils, Vcl.Forms, FireDAC.Comp.Client, frxClass,
  System.Classes;
type
 TNav = (tFirst, tPrior, tNext, tLast, TNil);
  procedure SetValorIni(pLocal, pSessao, pSubSessao: string; pValor:string);
  function GetValorIni(pLocal, pSessao, pSubSessao: string) : string;
  procedure AtualizaFDQuery(const pFDQuery : TFDQuery; pSQL : string);
  procedure ShowModalForm(pClass: TComponentClass; pForm: TForm);
  procedure ShowForm(pClass: TComponentClass; pForm: TForm);
  procedure CarregaRelatorio(const pReport: TFrxReport);
implementation

  procedure SetValorIni(pLocal, pSessao, pSubSessao: string; pValor:string);

  var vArquivo: TIniFile;

  begin
    vArquivo := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
    vArquivo.WriteString(pSessao, pSubSessao, pValor);
    vArquivo.Free;
  end;

  function GetValorIni(pLocal, pSessao, pSubSessao: string) : string;

  var vArquivo: TIniFile;

  begin
    vArquivo := TIniFile.Create(pLocal);
    Result := vArquivo.ReadString(pSessao, pSubSessao, '');
    vArquivo.Free;
  end;

  procedure AtualizaFDQuery(const pFDQuery : TFDQuery; pSQL : string);
  begin
    pFDQuery.Close;
    if Trim(pSQL) <> '' then
    begin
      pFDQuery.SQL.Clear;
      pFDQuery.SQL.Text := pSQL;
    end;
    pfdquery.Open();
    pFDQuery.FetchAll;
  end;

  procedure ShowModalForm(pClass: TComponentClass; pForm: TForm);
  begin
    try
      Application.CreateForm(pClass, pForm);
      pForm.ShowModal
    finally
      FreeAndNil(pForm);
    end;
  end;

  procedure ShowForm(pClass: TComponentClass; pForm: TForm);
  begin
     try
      Application.CreateForm(pClass, pForm);
      pForm.Show
    finally
    end;
  end;

  procedure CarregaRelatorio(const pReport: TFrxReport);
  begin
    pReport.PrepareReport;
    pReport.ShowPreparedReport;
  end;
end.
