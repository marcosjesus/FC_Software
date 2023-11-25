unit uDMConectDB;

interface

uses
  Windows, MensFun, System.DateUtils, Data.SqlTimSt,  System.IOUtils,
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL,
  FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLite, IniFiles,  Vcl.Forms, Vcl.Dialogs, uFunctions;

type
  TDBDados = class(TDataModule)
    FDManager: TFDManager;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDPhysMSSQLDriverLink: TFDPhysMSSQLDriverLink;
    sqlMensagem: TFDQuery;
    FDSQLiteSecurity: TFDSQLiteSecurity;
    FDConnection: TFDConnection;
    FDPhysSQLiteDriverLink: TFDPhysSQLiteDriverLink;
    SqlAux: TFDQuery;
    sqlAux2: TFDQuery;
    sqlSaldo: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    Arq : TIniFile;
    procedure AtualizaSaldo(idxBanco : Integer);

    { Private declarations }
  public
    { Public declarations }


    varAction    : Array of String;
    varRegiao    : String;
    varBanco     : String;
    varUsuario   : String;
    varUsuarioLastName : String;
    varIDSaldoAtual : Integer;
    varSaldoAtual   : Double;


    // SPECIAL PERMISSION VARIABLES
    varView_All_CustomersNaturalPerson  : Boolean;
    varView_All_CustomersLegalPerson    : Boolean;
    varView_All_Quotation               : Boolean;
    varView_All_Invoices                : Boolean;
    varView_All_Orders                  : Boolean;



    varID_USER, varIDMAIN_COMPANY, varID_Language, varID_Bank, varID_POSITION : Integer;
    varReturnCompanies : String;
    varLinha, varTotalLinha : Integer;
    varLogado : Boolean;
    varCaminhoExtratoBanco, varCaminhoBackup : Array of String;
    function GetComando(ObjetoQuery: TFDQuery; bMostra: Boolean = false): String;
    function RetornaMensagem(varDescription: String): String;
    procedure ConectarNoBanco;
    function CheckBank : Integer;
    function BuscaID_Bank(ID_UserBank: Integer): Integer;
    procedure BuscaCaminhodoArquivo;
    function BuscaDados : Boolean;
    function Connection: TFDConnection;
    procedure CadastraCategoria(varFavorecido, varCategoria,
      varSubCategoria: String; CentroDeCusto : String='');
    function RetornaIDCentrodeCusto(varCentroDeCusto, varCategoria : String) : Integer;
    function DirExists(const Directory: string): boolean;
    procedure SaldoAtual(idxBanco : Integer);
    function CompanyFilter(iUser : Integer = 0) : String;
    function PricingTableNames : String;
    function NumberofCompanyByUser : Integer;
    function GetSpecialPermission(varAction : String) : Boolean;
  end;



var
  DBDados: TDBDados;



implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDBDados.DirExists( const Directory: string ): boolean;
var
  Code: Integer;
begin
  Code := GetFileAttributes(PChar(Directory));
  Result := (Code <> -1) and (FILE_ATTRIBUTE_DIRECTORY and Code <> 0);
end;


Function TDBDados.GetComando(ObjetoQuery: TFDQuery; bMostra : Boolean) : String;
var
 i        : Integer;
 strQuery : String;
 sGetComando : String;
 Lista : TStringList;
begin

  strQuery := UpperCase(ObjetoQuery.SQL.Text);

  For  i := 0 to ObjetoQuery.Params.Count - 1 do
    strQuery := StrTran(strQuery,':' + UpperCase(ObjetoQuery.Params[i].Name), QuotedStr(ObjetoQuery.Params[i].Value) );

   strQuery :=  StrTran(StrTran(strQuery, ''#$D#$A'', ' '), ''#$D#$A'', '');

  {
  sGetComando := ExisteRegistroComValor('PARAMETROS', 'VL_PARAM', 'NM_PARAM = ''GETCOMANDONATELA'' ');

  if (sGetComando = 'S') or (sGetComando = '') Then
     MostrarScriptnaTela := True;

  if not MostrarScriptnaTela Then
     LogWriter(GUsuario, strQuery, Tela)
  else
  }
  if bMostra  then
     ShowMessage(strQuery);

  Lista := TStringList.Create;
  Try
    Lista.Clear;
    Lista.Add(strQuery);
    Lista.SaveToFile('c:\BiBanco\GetComando.sql');
  Finally
    FreeAndNil(Lista);
  End;

  result := strQuery;

end;



function TDBDados.GetSpecialPermission(varAction: String): Boolean;
var
  varRetorno : Boolean;
begin
  SqlAux.Close;
  SqlAux.SQL.Clear;
  SqlAux.SQL.Add('SELECT ACTIONS FROM TBUSER_SPECIAL_PER  S');
  SqlAux.SQL.Add(' INNER JOIN TBMENU M ON M.ID_MENU = S.ID_MENU ');
  SqlAux.SQL.Add('  WHERE S.ID_USER = :ID_USER and ACTIONS = :ACTIONS ');
  SqlAux.Params.ParamByName('ID_USER').AsInteger := varID_USER;
  SqlAux.Params.ParamByName('ACTIONS').AsString  := varAction;
  SqlAux.Open;
  if SqlAux.IsEmpty then
    varRetorno := False;

  SqlAux.Close;

  Result :=  varRetorno;

end;

function TDBDados.NumberofCompanyByUser: Integer;
var
  varRetorno : Integer;
begin
  varRetorno := 0;
  SqlAux.Close;
  SqlAux.SQL.Clear;
  SqlAux.SQL.Add('Select ISNull(Count(1),0) as TOTAL FROM TBUSER_COMPANY where ID_USER = :ID_USER');
  SqlAux.Params.ParamByName('ID_USER').AsInteger := varID_USER;
  SqlAux.Open;
  varRetorno := SqlAux.FieldByName('TOTAL').AsInteger;
  Result := varRetorno
end;

function TDBDados.PricingTableNames: String;
var
  varRetorno : String;
begin
  varRetorno := 'Pricing Table not Found';
  SqlAux2.Close;
  SqlAux2.SQL.Clear;
  SqlAux2.SQL.Add(' SELECT NAME FROM TBPRICELIST WHERE ACTIVE = ''Y'' AND EXPIREDDATE  > GETDATE() ');
  SqlAux2.SQL.Add(' &WHERE1 ');

  SqlAux2.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + CompanyFilter;

  SqlAux2.Open;
  SqlAux2.First;
  if not SqlAux2.IsEmpty then
  begin
    varRetorno := '[';
    while not SqlAux2.Eof do
    begin
       varRetorno := varRetorno + SqlAux2.FieldByName('NAME').AsString + '],[';
       SqlAux2.Next;
    end;
    varRetorno := Copy(varRetorno, 1, length(varRetorno)-2);
  end;

  Result := varRetorno;

end;

function TDBDados.CheckBank: Integer;
begin
   sqlAux.Close;
   sqlAux.SQL.Clear;
   SqlAux.SQL.Add('SELECT  COUNT(1) AS QUANTIDADE from TBUSERBANK WHERE ID_USER = :ID_USER');
   SqlAux.Params.ParamByName('ID_USER').AsInteger := varID_USER;
   SqlAux.Open;
   Result := SqlAux.FieldByName('QUANTIDADE').AsInteger
end;

procedure TDBDados.BuscaCaminhodoArquivo;
var
 I : Integer;
begin

  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add('Select ID_BANK, PATH From TBUSERBANK Where ID_USER = :ID_USER');
  sqlAux.Params.ParamByName('ID_USER').AsInteger :=  varID_User;
  sqlAux.Open;
  if not sqlAux.IsEmpty  then
  begin
     sqlAux.First;
     SetLength(varCaminhoExtratoBanco, sqlAux.RecordCount);
     SetLength(varCaminhoBackup, sqlAux.RecordCount);
     i := 0;
     while not sqlAux.Eof do
     begin
        varCaminhoExtratoBanco[i] := SqlAux.FieldByName('ID_BANK').AsString + ';' + SqlAux.FieldByName('PATH').AsString + '\';
        varCaminhoBackup[i]       := SqlAux.FieldByName('ID_BANK').AsString + ';' + SqlAux.FieldByName('PATH').AsString + '\BACKUP\';
        inc(i);
        sqlAux.Next;
     end;

  end;
  sqlAux.Close;
end;

function TDBDados.BuscaDados: Boolean;
begin
  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add('Select ID  From TBTRANSACAO  WHERE ID_USER = :ID_USER limit  1 ');
  sqlAux.Params.ParamByName('ID_USER').AsInteger :=  varID_USER;
  sqlAux.Open;
  Result := not sqlAux.IsEmpty;
end;

function TDBDados.BuscaID_Bank(ID_UserBank: Integer): Integer;
var
  varRetorno : Integer;
begin
  varRetorno := -1;

  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add('Select ID_Bank From TBUSERBANK Where ID_USERBANK = :ID_USERBANK');
  sqlAux.Params.ParamByName('ID_USERBANK').AsInteger :=  ID_UserBank;
  sqlAux.Open;
  varRetorno := sqlAux.FieldByName('ID_Bank').AsInteger;

  Result := varRetorno;
end;



function TDBDados.CompanyFilter(iUser : Integer = 0): String;
var
  varRetorno : String;
begin
  varRetorno := 'Company not Found';
  SqlAux.Close;
  SqlAux.SQL.Clear;
  SqlAux.SQL.Add('Select ID_COMPANY FROM TBUSER_COMPANY where ID_USER = :ID_USER');
  if iUser = 0 then
    SqlAux.Params.ParamByName('ID_USER').AsInteger := varID_USER
  else  SqlAux.Params.ParamByName('ID_USER').AsInteger := iUser;
  SqlAux.Open;
  SqlAux.First;
  if not SqlAux.IsEmpty then
  begin
    varRetorno := 'ID_COMPANY IN (';
    while not SqlAux.Eof do
    begin
       varRetorno := varRetorno + SqlAux.FieldByName('ID_COMPANY').AsString + ',';
       SqlAux.Next;
    end;
    varRetorno := Copy(varRetorno, 1, length(varRetorno)-1);
    varRetorno := varRetorno + ')';
  end;

  Result := varRetorno;

end;

procedure TDBDados.ConectarNoBanco;
begin

  if varBanco = '1' then        //SQLServer
  begin


  if not FDConnection.Connected then
  begin

    FDConnection.Close;
    FDConnection.Params.Clear;

    //Local
  //  FDConnection.Params.Add('SERVER=DESKTOP-99M8LEG');
   //  FDConnection.Params.Add('User_Name=bi_banco');
   // FDConnection.Params.Add('Password=bi12345banco');

    //Cloud

   //if TFile.Exists( ExtractFilePath(Application.ExeName) + 'FloorDB.ini' ) then
   //  FDConnection.Params.LoadFromFile( ExtractFilePath(Application.ExeName) + '\' +  'FloorDB.ini' );

    FDConnection.Params.Add('SERVER=mssql-155263-0.cloudclusters.net,19322');
    FDConnection.Params.Add('User_Name=fcdata');
    FDConnection.Params.Add('Password=Fcdata2023');


    FDConnection.Params.Add('ApplicationName=FLOOROFCOLUMBUS');
    FDConnection.Params.Add('DATABASE=FLOORDB');
    FDConnection.Params.Add('MARS=yes');
    FDConnection.Params.Add('DriverID=SQL13');

    Try
      FDConnection.Open;
    except
              on E : Exception do
                Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
    end;

  end;
  end
  else if varBanco = '2' then   // SQLite
  begin
     if not FDConnection.Connected  then
     begin

         FDConnection.Close;
         FDConnection.DriverName := 'SQLITE';
         FDConnection.Params.Values['Database'] := ExtractFilePath(Application.ExeName)+'dbcashflow.db';

         if FDSQLiteSecurity.CheckEncryption = '<unencrypted>' then
           FDConnection.Params.Values['Password'] := '';

         try
          FDConnection.Open;
         except

          on E: EDatabaseError do
             Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

         end;
     end;

  end;


end;

procedure TDBDados.DataModuleCreate(Sender: TObject);
begin
   FDConnection.Connected := False;
   Arq       := TIniFile.Create(ExtractFilePath(Application.ExeName)+'conexao.ini');
   varBanco  := Arq.ReadString('BANCO','VENDOR', '');
   varRegiao := Arq.ReadString('REGIAO','FORMATDATE', '');
   Arq.Free;
   varLogado := False;
   ConectarNoBanco;
end;


function TDBDados.Connection: TFDConnection;
begin
  System.TMonitor.Enter(FDConnection);
  try
    Result := FDConnection;
  finally
    System.TMonitor.Exit(FDConnection);
  end;
end;



function TDBDados.RetornaIDCentrodeCusto(varCentroDeCusto, varCategoria: String): Integer;
begin
   sqlAux2.Close;
   sqlAux2.SQL.Clear;
   sqlAux2.SQL.Add('Select ID_CENTRODECUSTO From CENTRODECUSTO Where CENTRODECUSTO = :CENTRODECUSTO AND CATEGORIA = :CATEGORIA AND ID_USER = :ID_USER');
   sqlAux2.params.ParamByName('CENTRODECUSTO').AsString := varCentroDeCusto;
   sqlAux2.params.ParamByName('CATEGORIA').AsString := varCategoria;
   sqlAux2.params.ParamByName('ID_USER').AsInteger := varID_USER;

   sqlAux2.Open;
   Result := sqlAux2.FieldByName('ID_CENTRODECUSTO').AsInteger;

end;

function TDBDados.RetornaMensagem(varDescription : String) : String;
begin
    if varID_Language = 0 then
     varID_Language := 1;

    //ConectarNoBanco;

    sqlMensagem.Close;
    sqlMensagem.SQL.Clear;
    sqlMensagem.SQL.Add('SELECT DESCRIPTION_MESSAGE FROM TBMESSAGE where ID_LANGUAGE = :ID_LANGUAGE and DESCRIPTION_TYPE = :DESCRIPTION_TYPE' );
    sqlMensagem.Params.ParamByName('ID_LANGUAGE').AsInteger      := varID_Language;
    sqlMensagem.Params.ParamByName('DESCRIPTION_TYPE').AsString :=  varDescription;
    sqlMensagem.Open;
    if not sqlMensagem.IsEmpty then
      Result := Trim(sqlMensagem.FieldByName('DESCRIPTION_MESSAGE').AsString)
    else Result := 'None';
end;


procedure TDBDados.SaldoAtual(idxBanco: Integer);
var
  varSaldoOK : Boolean;
  I : Integer;
  varDataAtual : TDateTime;
begin

  varSaldoOK := False;
  I := 0;


  while not varSaldoOK do
  begin

      sqlSaldo.Close;
      sqlSaldo.SQL.Clear;
      sqlSaldo.SQL.Add('Select T.id,');
      sqlSaldo.SQL.Add('T.Favorecido,');
      sqlSaldo.SQL.Add('T.Categoria,');
      sqlSaldo.SQL.Add('T.Valor');
      sqlSaldo.SQL.Add('From  TBTRANSACAO T ');
      sqlSaldo.SQL.Add('Where T.modo = ''S'' ');
      sqlSaldo.SQL.Add(' &WHERE1 ');
      sqlSaldo.SQL.Add(' &WHERE2 ');
      sqlSaldo.SQL.Add(' &WHERE3 ');

      sqlSaldo.MacroByName( 'WHERE1' ).AsRaw := 'AND T.DATATRANSACAO BETWEEN ' + QuotedStr(FormatDateTime('yyyy-mm-dd', IncDay(Now, -I))) +
      ' and ' +  QuotedStr(FormatDateTime('yyyy-mm-dd', IncDay(Now, -I)));

      sqlSaldo.MacroByName( 'WHERE2' ).AsRaw := ' AND  T.ID_USER = ' + IntToStr(DBDados.varID_USER);

      if ((idxBanco <> 0) and (idxBanco <> -1)) then
        sqlSaldo.MacroByName( 'WHERE3' ).AsRaw := ' AND T.ID_USERBANK = ' + IntToStr(idxBanco);

      sqlSaldo.Open;
      if sqlSaldo.IsEmpty then
      begin
          Inc(I);
      end
      else
      begin
         varSaldoOK := True;
         if I > 0 then
         begin
           varDataAtual := Now;
           sqlAux.Close;
           sqlAux.SQL.Clear;
           sqlAux.SQL.Add('Insert Into TBTransacao (ID_USER, ID_BANKING, Tipo, DataTransacao, Favorecido, Categoria, Valor, CentroDeCusto,ID_USERBANK, MODO, FORECAST) Values ( ');
           sqlAux.SQL.Add(':ID_USER, :ID_BANKING, :Tipo, :DataTransacao, :Favorecido, :Categoria, :Valor, :CentroDeCusto,:ID_USERBANK, :MODO, :FORECAST) ');
           sqlAux.Params.ParamByName('ID_USER').AsInteger      := DBDados.varID_USER;
           sqlAux.Params.ParamByName('ID_BANKING').AsInteger   := DBDados.varID_Bank;
           sqlAux.Params.ParamByName('Tipo').AsString          := consTipoIncome;
           sqlAux.Params.ParamByName('DataTransacao').asDate   := varDataAtual;
           sqlAux.Params.ParamByName('Favorecido').AsString    := Trim(sqlSaldo.FieldByName('Favorecido').AsString);
           sqlAux.Params.ParamByName('Categoria').AsString     := Trim(sqlSaldo.FieldByName('Categoria').AsString);
           sqlAux.Params.ParamByName('Valor').AsFloat          := sqlSaldo.FieldByName('valor').AsFloat;
           sqlAux.Params.ParamByName('CentroDeCusto').AsString := 'BALANCE';
           sqlAux.Params.ParamByName('ID_USERBANK').AsInteger  := idxBanco;
           sqlAux.Params.ParamByName('MODO').AsString          := 'S';  // I - Importado - M - Manual - S - Saldo Inicial
           sqlAux.Params.ParamByName('FORECAST').AsInteger     := 0;  // I - Importado - M - Manual - S - Saldo Inicial

           Try
              sqlAux.ExecSQL;
           except
              on E : Exception do
                Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
           end;

              sqlSaldo.Close;
              sqlSaldo.SQL.Clear;
              sqlSaldo.SQL.Add('Select T.id,');
              sqlSaldo.SQL.Add('T.Valor');
              sqlSaldo.SQL.Add('From  TBTRANSACAO T ');
              sqlSaldo.SQL.Add('Where T.modo = ''S'' ');
              sqlSaldo.SQL.Add(' &WHERE1 ');
              sqlSaldo.SQL.Add(' &WHERE2 ');
              sqlSaldo.SQL.Add(' &WHERE3 ');

              sqlSaldo.MacroByName( 'WHERE1' ).AsRaw := 'AND T.DATATRANSACAO BETWEEN ' + QuotedStr(FormatDateTime('yyyy-mm-dd', Now)) +
              ' and ' +  QuotedStr(FormatDateTime('yyyy-mm-dd', Now));

              sqlSaldo.MacroByName( 'WHERE2' ).AsRaw := ' AND  T.ID_USER = ' + IntToStr(DBDados.varID_USER);

              if ((idxBanco <> 0) and (idxBanco <> -1)) then
                sqlSaldo.MacroByName( 'WHERE3' ).AsRaw := ' AND T.ID_USERBANK = ' + IntToStr(idxBanco);

              sqlSaldo.Open;

         end;

      end;

  end;

  varIDSaldoAtual := sqlSaldo.FieldByName('id').AsInteger;
  varSaldoAtual   := sqlSaldo.FieldByName('valor').AsFloat;
  AtualizaSaldo(idxBanco);
end;

procedure  TDBDados.AtualizaSaldo(idxBanco : Integer);
begin
  SqlAux.Close;
  SqlAux.SQL.Clear;
  SqlAux.SQL.Add('Update TBUSERBANK ');
  SqlAux.SQL.Add('Set SALDO_INICIAL = :SALDO_INICIAL ');
  SqlAux.SQL.Add('Where ID_USER = :ID_USER ');
  SqlAux.SQL.Add('and  ID_USERBANK = :ID_USERBANK ');

  SqlAux.Params.ParamByName('ID_USER').AsInteger     :=  DBDados.varID_USER;
  SqlAux.Params.ParamByName('ID_USERBANK').AsInteger :=  idxBanco;
  SqlAux.Params.ParamByName('SALDO_INICIAL').AsFloat :=  varSaldoAtual;

  Try
    sqlAux.ExecSQL;
  except
    on E : Exception do
      Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
  end;
end;

procedure TDBDados.CadastraCategoria(varFavorecido,varCategoria, varSubCategoria :String; CentroDeCusto : String);
begin

    sqlAux.Close;
    sqlAux.SQL.Clear;
    if CentroDeCusto = '' then
    begin
      sqlAux.SQL.Add('Insert Into TBCATEGORIA ( Favorecido, Categoria, SubCategoria, ID_Language, ID_USER )');
      sqlAux.SQL.Add(' Values ( :Favorecido, :Categoria, :SubCategoria, :ID_Language, :ID_USER )');
    end
    else
    begin
      sqlAux.SQL.Add('Insert Into TBCATEGORIA ( Favorecido, Categoria, SubCategoria, ID_Language, ID_USER, ID_CENTRODECUSTO )');
      sqlAux.SQL.Add(' Values ( :Favorecido, :Categoria, :SubCategoria, :ID_Language, :ID_USER, :ID_CENTRODECUSTO )');
      sqlAux.Params.ParamByName('ID_CENTRODECUSTO').AsInteger := RetornaIDCentrodeCusto(CentroDeCusto, varCategoria);

    end;
    sqlAux.Params.ParamByName('Favorecido').AsString   := varFavorecido;
    sqlAux.Params.ParamByName('SubCategoria').AsString := varSubCategoria;
    sqlAux.Params.ParamByName('Categoria').AsString    := varCategoria;
    sqlAux.Params.ParamByName('ID_Language').AsInteger := varID_Language;
    sqlAux.Params.ParamByName('ID_USER').AsInteger     := varID_USER;


    Try
       sqlAux.ExecSQL;
    except
      on E : Exception do
         ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
    end;

end;



end.
