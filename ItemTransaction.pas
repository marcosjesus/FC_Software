unit ItemTransaction;

interface


Uses uDMConectDB, System.SysUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;


type
  TItem = class
  private
    FId   : integer;
    FName : string;
    FValor :Currency;
    FForecast : integer;  // 0 Real and 1 Forecas
    FCentrodeCusto: String;
    FSubCategoria: String;
    FCategoria: String;
    FConciliado: integer;
    FModo: string;
    FTipo: string;
    FDataTransacao: TDateTime;
    FID_BANKING: integer;
    FID_UserBank: integer;

  public
     constructor Create(const AId : integer);  overload;
     constructor CreateComData(Date : TDateTime; Amount : Currency);

     property Id : integer read FId write FId;
     property Name : string read FName write FName;
     property Tipo : string read FTipo write FTipo;
     property DataTransacao : TDateTime read FDataTransacao write FDataTransacao;
     property Categoria : String read FCategoria write FCategoria;
     property SubCategoria : String read FSubCategoria write FSubCategoria;
     property CentrodeCusto : String read FCentrodeCusto write FCentrodeCusto;
     property Modo : string read FModo write FModo;
     property Conciliado : integer read FConciliado write FConciliado;
     property Valor : Currency read FValor write FValor;
     property Forecast : integer read FForecast write FForecast;
     property ID_UserBank : integer read FID_UserBank write FID_UserBank;
     property ID_BANKING : integer read FID_BANKING write FID_BANKING;
  end;

  TItemTransaction = class
    private
     FItems : TArray<TItem>;

     function GetTotalReal : Currency;
     function GetTotalForecast : Currency;
     function GetTotalCount: Integer;
     function GetPercentual: Currency;
     function GetTotalAcumulado: Currency;


    public
      constructor Create;
      procedure Save(DataPagto : TDateTime);

      destructor Destroy; override;
      procedure AddItem(const AItem: TItem);
      procedure AddItemAcumula(const AItem : TItem);
      procedure AtualizaSaldo(varForecast: Integer);

      property TotalReal: Currency read GetTotalReal;
      property TotalForecast: Currency read GetTotalForecast;
      property TotalAcumulado: Currency read GetTotalAcumulado;
      property Percentual: Currency read GetPercentual;
      property TotalCount : Integer read GetTotalCount;
      property Items: TArray<TItem> read FItems;

  end;

implementation

var
  sqlAux  : TFDQuery;
  sqlAux2 : TFDQuery;

{ TItemTransaction }

procedure TItemTransaction.AddItem(const AItem: TItem);
var
  I : Integer;
  IsDuplicate : Boolean;
begin
  IsDuplicate := False;
  for I := Low(FItems) to High(FItems) do
  begin
      if FItems[i].Id = Aitem.Id then
        IsDuplicate := True;
  end;

  if IsDuplicate = False then
  begin
    SetLength(Fitems, Length(FItems) + 1);
    FItems[Length(Fitems) -1] := TItem.Create(AItem.Id);
  end;

end;

procedure TItemTransaction.AddItemAcumula(const AItem : TItem);
begin
    SetLength(Fitems, Length(FItems) + 1);
    FItems[Length(Fitems) -1] := TItem.CreateComData(AItem.DataTransacao, AItem.Valor);
end;


function TItemTransaction.GetPercentual: Currency;
begin
  Result :=  (((TotalReal - TotalForecast) / TotalForecast) *100) ;
end;

function TItemTransaction.GetTotalAcumulado: Currency;
var
 I : integer;
begin
   Result := 0;
   for I := Low(Fitems) to High(Fitems) do
   begin
        Result := Result + FItems[I].Valor;
   end;

end;

function TItemTransaction.GetTotalCount: Integer;
var
  I : Integer;
begin
   Result := 0;
   for I := Low(FItems) to High(FItems) do
      Result := Result + 1;

end;

procedure TItemTransaction.AtualizaSaldo(varForecast : Integer);
var
  Item : TItem;
begin

 sqlAux  := TFDQuery.Create(Nil);
 sqlAux2 := TFDQuery.Create(Nil);

 Try
     sqlAux.Connection  := DBDados.Connection;
     sqlAux2.Connection := DBDados.Connection;

     sqlAux.Close;
     sqlAux.SQL.Clear;
     if varForecast = 0 then
       sqlAux.SQL.Add('SELECT ID, DataTransacao, Valor FROM TBTRANSACAO WHERE FORECAST in (0,-1) AND MODO <> ''P'' and ID_USER = :ID_USER AND ID_USERBANK = :ID_USERBANK ORDER BY DATATRANSACAO')
     else sqlAux.SQL.Add('SELECT ID, DataTransacao, Valor FROM TBTRANSACAO WHERE FORECAST in (1) AND MODO <> ''P'' and ID_USER = :ID_USER AND ID_USERBANK = :ID_USERBANK ORDER BY DATATRANSACAO');
     sqlAux.Params.ParamByName('ID_USER').AsInteger      := DBDados.varID_USER;
     sqlAux.Params.ParamByName('ID_USERBANK').AsInteger  := DBDados.varID_Bank;
     sqlAux.Open;
     sqlAux.First;

     while not sqlAux.Eof do
     begin

       Item := TItem.CreateComData(sqlAux.FieldByName('DataTransacao').AsDateTime, sqlAux.FieldByName('Valor').asFloat);
       Try
         AddItemAcumula(Item);

         sqlAux2.Close;
         sqlAux2.SQL.Clear;
         sqlAux2.SQL.Add('Update TBTransacao ');
         sqlAux2.SQL.Add(' SET SUBTOTAL = :SUBTOTAL');
         sqlAux2.SQL.Add(' Where ID = :ID ');
         sqlAux2.Params.ParamByName('SUBTOTAL').AsFloat := TotalAcumulado;
         sqlAux2.Params.ParamByName('ID').AsInteger     := sqlAux.FieldByName('ID').AsInteger;
         Try
            sqlAux2.ExecSQL;
         except
           on E : Exception do
              exception.Create(E.ClassName+' error raised, with message : '+E.Message);
         end;

       Finally
          FreeAndNil(Item);
       End;

       sqlAux.Next;
     end;
 Finally
   FreeAndNil(sqlAux);
   FreeAndNil(sqlAux2);
 End;

end;

constructor TItemTransaction.Create;
begin
   SetLength(FItems, 0);

end;

destructor TItemTransaction.Destroy;
var
  I : Integer;
begin
  for I := Low(Fitems) to High(FItems) do
    FItems[I].Free;
  inherited;
end;


function TItemTransaction.GetTotalForecast: Currency;
var
 I : integer;
begin
   Result := 0;
   for I := Low(Fitems) to High(Fitems) do
   begin
     if FItems[i].Forecast = 1 then
        Result := Result + FItems[I].Valor;
   end;

end;

function TItemTransaction.GetTotalReal: Currency;
var
 I : integer;
begin
   Result := 0;
   for I := Low(Fitems) to High(Fitems) do
   begin
     if FItems[i].Forecast = 0 then
        Result := Result + FItems[I].Valor;
   end;
end;

procedure TItemTransaction.Save(DataPagto : TDateTime);
Var
 I             : Integer;
 varLocalID    : Integer;
 varLocalValor : Double;

begin
 sqlAux := TFDQuery.Create(Nil);
 Try
    sqlAux.Connection := DBDados.Connection;

    for I := Low(Fitems) to High(Fitems) do
    begin
       if  (FItems[i].Forecast = 1) then
       begin
         varLocalID    := Fitems[I].Id;
         varLocalValor := Fitems[I].Valor;
       end;
    end;

    for I := Low(Fitems) to High(Fitems) do
    begin
      if Fitems[I].Forecast = 0 then
      begin
         sqlAux.Close;
         sqlAux.SQL.Clear;
         sqlAux.SQL.Add('Insert Into TBRECONCILIA (');
         sqlAux.SQL.Add('ID_TRANPREV, ');
         sqlAux.SQL.Add('ID_TRANREAL, ');
         sqlAux.SQL.Add('VALOR_FORECAST, ');
         sqlAux.SQL.Add('DATE_PAGTO, ');
         sqlAux.SQL.Add('VALOR_PAGO) ');
         sqlAux.SQL.Add(' Values ( ');
         sqlAux.SQL.Add(':ID_TRANPREV, ');
         sqlAux.SQL.Add(':ID_TRANREAL, ');
         sqlAux.SQL.Add(':VALOR_FORECAST, ');
         sqlAux.SQL.Add(':DATE_PAGTO, ');
         sqlAux.SQL.Add(':VALOR_PAGO) ');
         sqlAux.Params.ParamByName('ID_TRANPREV').AsInteger  := varLocalID;
         sqlAux.Params.ParamByName('ID_TRANREAL').AsInteger  := Fitems[I].id;
         sqlAux.Params.ParamByName('VALOR_FORECAST').AsFloat := varLocalValor;
         sqlAux.Params.ParamByName('DATE_PAGTO').AsDate      := DataPagto;
         sqlAux.Params.ParamByName('VALOR_PAGO').AsFloat     := Fitems[I].Valor;

         Try
             sqlAux.ExecSQL;
         except
           on E : Exception do
             exception.Create(E.ClassName+' error raised, with message : '+E.Message);
         end;

         sqlAux.Close;
         sqlAux.SQL.Clear;
         sqlAux.SQL.Add('Update TBTransacao ');
         sqlAux.SQL.Add(' Set Valor = Valor - :Valor');
         sqlAux.SQL.Add(' Where ID = :ID ');
         sqlAux.Params.ParamByName('ID').AsInteger  := Fitems[I].id;
         sqlAux.Params.ParamByName('Valor').AsFloat := varLocalValor;

         Try
           sqlAux.ExecSQL;
         except
           on E : Exception do
             exception.Create(E.ClassName+' error raised, with message : '+E.Message);
         end;


      end;

    end;

    sqlAux.Close;
    sqlAux.SQL.Clear;
    sqlAux.SQL.Add('Update TBTransacao ');
    sqlAux.SQL.Add('Set CONCILIADO = :CONCILIADO ');
    sqlAux.SQL.Add(',FORECAST = :FORECAST ');
    sqlAux.SQL.Add('Where ID = :ID ');
    sqlAux.Params.ParamByName('CONCILIADO').AsInteger := 1;
    sqlAux.Params.ParamByName('FORECAST').AsInteger   := 0;

    sqlAux.Params.ParamByName('ID').AsInteger := varLocalID;
    Try
      sqlAux.ExecSQL;
    except
      on E : Exception do
        exception.Create(E.ClassName+' error raised, with message : '+E.Message);
    end;



 Finally
     FreeAndNil(sqlAux);
 End;

end;

{ TItem }

constructor TItem.Create(const AId: integer);

begin
   sqlAux := TFDQuery.Create(Nil);

   Try
      sqlAux.Connection := DBDados.Connection;
      sqlAux.Close;
      sqlAux.SQL.Clear;
      sqlAux.SQL.Add('Select * From TBTRANSACAO Where ID = :ID');
      sqlAux.Params.ParamByName('ID').AsInteger := AId;
      sqlAux.Open;
      if not sqlAux.IsEmpty  then
      begin
        FId            := sqlAux.FieldByName('ID').AsInteger;
        FName          := sqlAux.FieldByName('Favorecido').AsString;
        FValor         := Abs(sqlAux.FieldByName('Valor').AsFloat);
        FForecast      := sqlAux.FieldByName('Forecast').AsInteger; // 0 Real and 1 Forecast
        FCentrodeCusto := sqlAux.FieldByName('CentrodeCusto').AsString;
        FSubCategoria  := sqlAux.FieldByName('SubCategoria').AsString;
        FCategoria     := sqlAux.FieldByName('Categoria').AsString;
        FConciliado    := sqlAux.FieldByName('CONCILIADO').AsInteger;
        FModo          := sqlAux.FieldByName('Modo').AsString;
        FTipo          := sqlAux.FieldByName('Tipo').AsString;
        FDataTransacao := sqlAux.FieldByName('DataTransacao').AsDateTime;
        FID_BANKING    := sqlAux.FieldByName('ID_BANKING').AsInteger;
        FID_UserBank   := sqlAux.FieldByName('ID_USERBANK').AsInteger;
      end;

   Finally
      FreeAndNil(sqlAux);
   End;

end;


constructor TItem.CreateComData(Date: TDateTime; Amount: Currency);
begin
    FDataTransacao := Date;
    FValor := Amount;

end;

end.
