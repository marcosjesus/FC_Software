unit uClassSupplierInvoice;
interface


uses  Contnrs, TypInfo, uDMConectDB, uClassDBGenerics, uClassProduct, uClassCompany, uClassSupplier, Messages, MensFun, System.DateUtils, Data.SqlTimSt,
  System.SysUtils, System.Classes, IniFiles,  Vcl.Forms, Vcl.Dialogs, uFunctions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  Data.DB,  Generics.Collections;


type
  TClassTributaria = (
    cst00
    );

  TInvoice = class;

  TInvoiceItem = class(TComponent)
  private
    Fid_sup_invoiceitem : integer;
    Fid_sup_invoice     : integer;
    Fid_supplier        : integer;
    Finvoice_id         : string;
    Fid_product         : integer;
    Fwidth              : double;
    Fheight             : double;
    Fqty                : integer;
    Ftotalarea          : double;
    Frollnumber         : string;
    Fdyelot             : string;
    Funitprice          : double;
    Famount             : double;
    Fadd_date           : Tdatetime;
    Fupd_date           : Tdatetime;
    Fid_user            : Integer;
    procedure setFadd_date(const Value: Tdatetime);
    procedure setFamount(const Value: double);
    procedure setFdyelot(const Value: string);
    procedure setFheight(const Value: double);
    procedure setFid_product(const Value: integer);
    procedure setFid_sup_invoiceitem(const Value: integer);
    procedure setFid_supplier(const Value: integer);
    procedure setFid_user(const Value: Integer);
    procedure setFinvoice_id(const Value: string);
    procedure setFqty(const Value: integer);
    procedure setFrollnumber(const Value: string);
    procedure setFtotalarea(const Value: double);
    procedure setFunitprice(const Value: double);
    procedure setFupd_date(const Value: Tdatetime);
    procedure setFwidth(const Value: double);
    procedure setFid_sup_invoice(const Value: integer);

  protected
    function Invoice : TInvoice;

  public
     procedure Assign(const pItemNF: TInvoiceItem); reintroduce;
     procedure Inicializar; virtual;

     property id_sup_invoiceitem : integer   read Fid_sup_invoiceitem write setFid_sup_invoiceitem;
     property id_sup_invoice     : integer   read Fid_sup_invoice     write setFid_sup_invoice;
     property id_supplier        : integer   read Fid_supplier        write setFid_supplier;
     property invoice_id         : string    read Finvoice_id         write setFinvoice_id;
     property id_product         : integer   read Fid_product         write setFid_product;
     property width              : double    read Fwidth              write setFwidth;
     property height             : double    read Fheight             write setFheight;
     property qty                : integer   read Fqty                write setFqty;
     property totalarea          : double    read Ftotalarea          write setFtotalarea;
     property rollnumber         : string    read Frollnumber         write setFrollnumber;
     property dyelot             : string    read Fdyelot             write setFdyelot;
     property unitprice          : double    read Funitprice          write setFunitprice;
     property amount             : double    read Famount             write setFamount;
     property add_date           : Tdatetime read Fadd_date           write setFadd_date;
     property upd_date           : Tdatetime read Fupd_date           write setFupd_date;
     property id_user            : Integer   read Fid_user            write setFid_user;
     constructor Create(AOwner: TComponent); override;
     procedure Save;
     function SearchProductonSale : Boolean;

  end;

  TItensNF = class(TObjectList)
  protected
    {protected declarations}
    function GetItemNF(Index: Integer): TInvoiceItem;
    procedure SetItemNF(Index: Integer; AItemNF: TInvoiceItem);
  public
    {public declarations}
    function Add(AInvoice: TInvoice; AItemNF: TInvoiceItem): Integer;
    function Remove(AItemNF: TInvoiceItem): Integer;
    function IndexOf(AItemNF: TInvoiceItem): Integer;
    procedure Insert(Index : Integer; AItemNF: TInvoiceItem);
    property Items[Index: Integer]: TInvoiceItem read GetItemNF write SetItemNF; default;
  end;


  TInvoice = class(TComponent)
  private
    Fid_sup_invoice : Integer;
    Fid_supplier    : Integer;
    Fid_company     : Integer;
    Fdate_invoice   : TDatetime;
    Finvoice_id     : String;
    Fsalesrep       : String;
    Ffreight        : Double;
    Ftax            : Double;
    Fmerchandise    : Double;
    Ftotal          : Double;
    Fadd_date       : TDatetime;
    Fupd_date       : TDatetime;
    Fid_user        : Integer;
    FItens          : TList;
    FItensNF        : TItensNF;
    Fstatus         : String;

    function GetNroItens: Integer;
    function getItens(index: Integer): TInvoiceItem;
    procedure setFadd_date(const Value: TDatetime);
    procedure setFdate_invoice(const Value: TDatetime);
    procedure setFfreight(const Value: Double);
    procedure setFid_company(const Value: Integer);
    procedure setFid_sup_invoice(const Value: Integer);
    procedure setFid_supplier(const Value: Integer);
    procedure setFid_user(const Value: Integer);
    procedure setFinvoice_id(const Value: String);
    procedure setFsalesrep(const Value: String);
    procedure setFtax(const Value: Double);
    procedure setFtotal(const Value: Double);
    procedure setFupd_date(const Value: TDatetime);
    procedure setFmerchandise(const Value: Double);
    procedure setFStatus(const Value: String);

  public
    procedure setItens(index: Integer; const Value: TInvoiceItem);
    property id_sup_invoice : Integer   read Fid_sup_invoice write setFid_sup_invoice;
    property id_supplier    : Integer   read Fid_supplier    write setFid_supplier;
    property id_company     : Integer   read Fid_company     write setFid_company;
    property date_invoice   : TDatetime read Fdate_invoice   write setFdate_invoice;
    property invoice_id     : String    read Finvoice_id     write setFinvoice_id;
    property salesrep       : String    read Fsalesrep       write setFsalesrep;
    property freight        : Double    read Ffreight        write setFfreight;
    property tax            : Double    read Ftax            write setFtax;
    property merchandise    : Double    read Fmerchandise    write setFmerchandise;
    property total          : Double    read Ftotal          write setFtotal;
    property add_date       : TDatetime read Fadd_date       write setFadd_date;
    property upd_date       : TDatetime read Fupd_date       write setFupd_date;
    property id_user        : Integer   read Fid_user        write setFid_user;
    property status         : String    read Fstatus         write setFStatus;

    property Itens[index: Integer]: TInvoiceItem read getItens   write setItens; default;
    property ItensNF              : TItensNF     read FItensNF   write FItensNF;
    constructor Create(AOwner: TComponent); override;
    procedure Save;
    procedure Update;
    function ValidInvoiceDuplicty : Boolean;

  end;

implementation

{ TInvoice }

constructor TInvoice.Create(AOwner: TComponent);
begin
  inherited;
    ItensNF           := TItensNF.Create;
    FItens            := TList.Create;
    id_sup_invoice    := 0;
    id_supplier       := 0;
    id_company        := 0;
    date_invoice      := Date;
    invoice_id        := '';
    salesrep          := '';
    freight           := 0.0;
    tax               := 0.0;
    merchandise       := 0.0;
    total             := 0.0;
    add_date          := Date;
    upd_date          := Date;
    id_user           := 0;
    status            := 'PENDING';
end;

function TInvoice.getItens(index: Integer): TInvoiceItem;
begin
 result := FItens.Items[index];
end;

function TInvoice.GetNroItens: Integer;
begin
 Result := FItensNF.Count;
end;

procedure TInvoice.Save;
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try
      sqlDados.Connection := FDConnection;
      sqlDados.SQL.Clear;
      sqlDados.SQL.Add('Insert into TBSUP_INVOICE (');
      sqlDados.SQL.Add('id_sup_invoice ');
      sqlDados.SQL.Add(',id_supplier ');
      sqlDados.SQL.Add(',id_company  ');
      sqlDados.SQL.Add(',date_invoice  ');
      sqlDados.SQL.Add(',invoice_id  ');
      sqlDados.SQL.Add(',salesrep ');
      sqlDados.SQL.Add(',freight ');
      sqlDados.SQL.Add(',tax ');
      sqlDados.SQL.Add(',merchandise  ');
      sqlDados.SQL.Add(',total ');
      sqlDados.SQL.Add(',id_user ');
      sqlDados.SQL.Add(',status) ');

      sqlDados.SQL.Add(' Values ( ');
      sqlDados.SQL.Add(  IntToStr(id_sup_invoice) + ',' );
      sqlDados.SQL.Add(  IntToStr(id_supplier) + ',' );
      sqlDados.SQL.Add(  IntToStr(id_company) + ',' );
      sqlDados.SQL.Add(  QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm:ss', date_invoice)) +  ',' );
      sqlDados.SQL.Add(  QuotedStr(invoice_id) + ',' );
      sqlDados.SQL.Add(  QuotedStr(salesrep) + ',' );
      sqlDados.SQL.Add(  QuotedStr( FloatToStr( freight )) +  ',' );
      sqlDados.SQL.Add(  QuotedStr( FloatToStr( tax )) +  ',' );
      sqlDados.SQL.Add(  QuotedStr( FloatToStr( merchandise )) +  ',' );
      sqlDados.SQL.Add(  QuotedStr( FloatToStr( total )) +  ',' );
      sqlDados.SQL.Add(  IntToStr(DBDados.varID_USER) + ',' );
      sqlDados.SQL.Add(  QuotedStr(status) + ')' );

      Try
         sqlDados.ExecSQL;

      except
          on E: EDatabaseError do
            Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

      end;

    Finally
      FreeAndNil(sqlDados);
    End;
  end;
end;

procedure TInvoice.setFadd_date(const Value: TDatetime);
begin
  Fadd_date := Value;
end;

procedure TInvoice.setFdate_invoice(const Value: TDatetime);
begin
  Fdate_invoice := Value;
end;

procedure TInvoice.setFfreight(const Value: Double);
begin
  Ffreight := Value;
end;

procedure TInvoice.setFid_company(const Value: Integer);
begin
  Fid_company := Value;
end;

procedure TInvoice.setFid_supplier(const Value: Integer);
begin
  Fid_supplier := Value;
end;

procedure TInvoice.setFid_sup_invoice(const Value: Integer);
begin
  Fid_sup_invoice := Value;
end;

procedure TInvoice.setFid_user(const Value: Integer);
begin
  Fid_user := Value;
end;

procedure TInvoice.setFinvoice_id(const Value: String);
begin
  Finvoice_id := Value;
end;


procedure TInvoice.setFsalesrep(const Value: String);
begin
  Fsalesrep := Value;
end;

procedure TInvoice.setFStatus(const Value: String);
begin
  Fstatus := Value;
end;

procedure TInvoice.setFmerchandise(const Value: Double);
begin
  Fmerchandise := Value;
end;

procedure TInvoice.setFtax(const Value: Double);
begin
  Ftax := Value;
end;


procedure TInvoice.setFtotal(const Value: Double);
begin
  Ftotal := Value;
end;

procedure TInvoice.setFupd_date(const Value: TDatetime);
begin
  Fupd_date := Value;
end;

procedure TInvoice.setItens(index: Integer; const Value: TInvoiceItem);
begin
  FItens.Insert(index,value);
end;

procedure TInvoice.Update;
var
  sqlDados : TFDQuery;
begin
   with DBDados do
   begin
       sqlDados := TFDQuery.Create(Nil);
       sqlDados.Connection := FDConnection;
       Try
        sqldados.Close;
        sqldados.sql.clear;

        sqldados.sql.add('Update TBSUP_INVOICE ');
        sqldados.sql.add(' Set ID_COMPANY = :ID_COMPANY');
        sqlDados.SQL.Add(',DATE_INVOICE = :DATE_INVOICE ');
        sqlDados.SQL.Add(',SALESREP     = :SALESREP  ');
        sqlDados.SQL.Add(',FREIGHT      = :FREIGHT  ');
        sqlDados.SQL.Add(',TAX          = :TAX  ');
        sqlDados.SQL.Add(',MERCHANDISE  = :MERCHANDISE  ');
        sqlDados.SQL.Add(',TOTAL        = :TOTAL ');
        sqlDados.SQL.Add(',UPD_DATE     = :UPD_DATE  ');
        sqlDados.SQL.Add(',ID_USER      = :ID_USER  ');
        sqlDados.SQL.Add(',STATUS       = :STATUS  ');
        sqlDados.SQL.Add(' Where ID_SUPPLIER = :ID_SUPPLIER and  INVOICE_ID = :INVOICE_ID');
        sqlDados.Params.ParamByName('ID_SUPPLIER').AsInteger    := id_supplier;
        sqlDados.Params.ParamByName('INVOICE_ID').AsString      := invoice_id;
        sqlDados.Params.ParamByName('ID_COMPANY').AsInteger     := id_company;
        sqlDados.Params.ParamByName('DATE_INVOICE').AsString    := FormatDateTime('mm/dd/yyyy hh:mm:ss', date_invoice);
        sqlDados.Params.ParamByName('SALESREP').AsString        := salesrep;
        sqlDados.Params.ParamByName('FREIGHT').AsFloat          := freight;
        sqlDados.Params.ParamByName('TAX').AsFloat              := tax;
        sqlDados.Params.ParamByName('MERCHANDISE').AsFloat      := merchandise;
        sqlDados.Params.ParamByName('TOTAL').AsFloat            := total;
        sqlDados.Params.ParamByName('UPD_DATE').AsString        := FormatDateTime('mm/dd/yyyy hh:mm:ss', upd_date);
        sqlDados.Params.ParamByName('ID_USER').AsInteger        := id_user;
        sqlDados.Params.ParamByName('STATUS').AsString          := status;


        Try
           sqlDados.ExecSQL;

        except
            on E: EDatabaseError do
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

        end;
       Finally
         FreeAndNil(sqlDados);
       End;
   end;

end;

function TInvoice.ValidInvoiceDuplicty: Boolean;
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try
      sqlDados.Connection := FDConnection;
      sqlDados.SQL.Clear;
      sqlDados.SQL.Add('Select ID_SUPPLIER From  TBSUP_INVOICE ');
      sqlDados.SQL.Add(' Where ID_SUPPLIER = :ID_SUPPLIER and INVOICE_ID = :INVOICE_ID');
      sqlDados.Params.ParamByName('ID_SUPPLIER').AsInteger := id_supplier;
      sqlDados.Params.ParamByName('INVOICE_ID').AsString   := invoice_id;
      sqlDados.Open;
      Result := sqlDados.IsEmpty;
    Finally
      FreeAndNil(sqlDados);
    End;
  End;
end;

{ TItensNF }

function TItensNF.Add(AInvoice: TInvoice; AItemNF: TInvoiceItem): Integer;
var
  lNovoItemNF: TInvoiceItem;
begin
  lNovoItemNF := TInvoiceItem.Create(AInvoice);
  lNovoItemNF.Assign(AItemNF);
  Result := inherited Add(lNovoItemNF);

end;

function TItensNF.GetItemNF(Index: Integer): TInvoiceItem;
begin
  Result := inherited Items[Index] as TInvoiceItem;
end;

function TItensNF.IndexOf(AItemNF: TInvoiceItem): Integer;
begin
  Result := inherited IndexOf(AItemNF);
end;

procedure TItensNF.Insert(Index: Integer; AItemNF: TInvoiceItem);
begin
  inherited Insert(Index, AItemNF);
end;

function TItensNF.Remove(AItemNF: TInvoiceItem): Integer;
begin
  Result := inherited Remove(AItemNF);
end;

procedure TItensNF.SetItemNF(Index: Integer; AItemNF: TInvoiceItem);
begin
  Items[Index] := AItemNF;
end;

{ TInvoiceItem }

procedure TInvoiceItem.Assign(const pItemNF: TInvoiceItem);
begin
   Inicializar;
   id_sup_invoice     := pItemNF.id_sup_invoice;
   id_sup_invoiceitem := pItemNF.id_sup_invoiceitem;
   id_supplier        := pItemNF.id_supplier;
   invoice_id         := pItemNF.invoice_id;
   id_product         := pItemNF.id_product;
   width              := pItemNF.width;
   height             := pItemNF.height;
   qty                := pItemNF.qty;
   totalarea          := pItemNF.totalarea;
   rollnumber         := pItemNF.rollnumber;
   dyelot             := pItemNF.dyelot;
   unitprice          := pItemNF.unitprice;
   amount             := pItemNF.amount;
   add_date           := pItemNF.add_date;
   upd_date           := pItemNF.upd_date;
   id_user            := pItemNF.id_user;
end;

constructor TInvoiceItem.Create(AOwner: TComponent);
begin
  inherited;
  Inicializar;
end;

procedure TInvoiceItem.Inicializar;
begin
    id_sup_invoiceitem  := 0;
    id_sup_invoice      := 0;
    id_supplier         := 0;
    invoice_id          := '';
    id_product          := 0;
    width               := 0.0;
    height              := 0.0;
    qty                 := 0;
    totalarea           := 0.0;
    rollnumber          := '';
    dyelot              := '';
    unitprice           := 0.0;
    amount              := 0.0;
    add_date            := Date;
    upd_date            := Date;
    id_user             := 0;
end;

function TInvoiceItem.Invoice: TInvoice;
begin
  Result := (Owner as TInvoice);
end;

procedure TInvoiceItem.Save;
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try
      sqlDados.Connection := FDConnection;
      sqlDados.SQL.Clear;
      sqlDados.SQL.Add('Insert into TBSUP_INVOICEITEM (');
      sqlDados.SQL.Add('id_sup_invoiceitem ');
      sqlDados.SQL.Add(',id_sup_invoice ');
      sqlDados.SQL.Add(',id_supplier ');
      sqlDados.SQL.Add(',invoice_id ');
      sqlDados.SQL.Add(',id_product ');
      sqlDados.SQL.Add(',width ');
      sqlDados.SQL.Add(',height ');
      sqlDados.SQL.Add(',qty ');
      sqlDados.SQL.Add(',totalarea ');
      sqlDados.SQL.Add(',rollnumber ');
      sqlDados.SQL.Add(',dyelot ');
      sqlDados.SQL.Add(',unitprice ');
      sqlDados.SQL.Add(',amount ');
      sqlDados.SQL.Add(',id_user)');
      sqlDados.SQL.Add(' Values ( ');
      sqlDados.SQL.Add(  IntToStr(id_sup_invoiceitem) + ',' );
      sqlDados.SQL.Add(  IntToStr(id_sup_invoice) + ',' );
      sqlDados.SQL.Add(  IntToStr(id_supplier) + ',' );
      sqlDados.SQL.Add(  QuotedStr(invoice_id) + ',' );
      sqlDados.SQL.Add(  IntToStr(id_product) + ',' );
      sqlDados.SQL.Add(  QuotedStr( FloatToStr( width )) +  ',' );
      sqlDados.SQL.Add(  QuotedStr( FloatToStr( height )) +  ',' );
      sqlDados.SQL.Add(  IntToStr(qty) + ',' );
      sqlDados.SQL.Add(  QuotedStr( FloatToStr( totalarea )) +  ',' );
      sqlDados.SQL.Add(  QuotedStr(rollnumber) + ',' );
      sqlDados.SQL.Add(  QuotedStr(dyelot) + ',' );
      sqlDados.SQL.Add(  QuotedStr( FloatToStr( unitprice )) +  ',' );
      sqlDados.SQL.Add(  QuotedStr( FloatToStr( amount )) +  ',' );
      sqlDados.SQL.Add(  IntToStr(id_user) + ')' );

      Try
         sqlDados.ExecSQL;

      except
          on E: EDatabaseError do
            Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

      end;
    Finally
      FreeAndNil(sqlDados);
    End;
  end;
end;

function TInvoiceItem.SearchProductonSale : Boolean;
var
 sqlDados   : TFDQuery;
begin
  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try
        sqlDados.Connection := FDConnection;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Select ISNULL(id_product,0) as id_product From TBSUP_INVOICEITEM With (NOLOCK) ');
        sqlDados.SQL.Add('where  INVOICE_ID = :INVOICE_ID and ID_SUPPLIER = :ID_SUPPLIER AND  ID_PRODUCT = :ID_PRODUCT ');
        sqlDados.Params.ParamByName('INVOICE_ID').AsString      := invoice_id;
        sqlDados.Params.ParamByName('ID_SUPPLIER').AsInteger    := id_supplier;
        sqlDados.Params.ParamByName('ID_PRODUCT').AsInteger     := id_product;
        sqlDados.Open;
        Result := sqlDados.IsEmpty;
    Finally
      FreeAndNil(sqlDados);
    End;
  end;
end;

procedure TInvoiceItem.setFadd_date(const Value: Tdatetime);
begin
  Fadd_date := Value;
end;

procedure TInvoiceItem.setFamount(const Value: double);
begin
  Famount := Value;
end;

procedure TInvoiceItem.setFdyelot(const Value: string);
begin
  Fdyelot := Value;
end;

procedure TInvoiceItem.setFheight(const Value: double);
begin
  Fheight := Value;
end;

procedure TInvoiceItem.setFid_product(const Value: integer);
begin
  Fid_product := Value;
end;

procedure TInvoiceItem.setFid_supplier(const Value: integer);
begin
  Fid_supplier := Value;
end;

procedure TInvoiceItem.setFid_sup_invoice(const Value: integer);
begin
  Fid_sup_invoice := Value;
end;

procedure TInvoiceItem.setFid_sup_invoiceitem(const Value: integer);
begin
  Fid_sup_invoiceitem := Value;
end;

procedure TInvoiceItem.setFid_user(const Value: Integer);
begin
  Fid_user := Value;
end;

procedure TInvoiceItem.setFinvoice_id(const Value: string);
begin
  Finvoice_id := Value;
end;

procedure TInvoiceItem.setFqty(const Value: integer);
begin
  Fqty := Value;
end;

procedure TInvoiceItem.setFrollnumber(const Value: string);
begin
  Frollnumber := Value;
end;

procedure TInvoiceItem.setFtotalarea(const Value: double);
begin
  Ftotalarea := Value;
end;

procedure TInvoiceItem.setFunitprice(const Value: double);
begin
  Funitprice := Value;
end;

procedure TInvoiceItem.setFupd_date(const Value: Tdatetime);
begin
  Fupd_date := Value;
end;

procedure TInvoiceItem.setFwidth(const Value: double);
begin
  Fwidth := Value;
end;

end.
