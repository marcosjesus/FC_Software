unit uClassSalesProcess;

interface


uses  Contnrs, TypInfo, uDMConectDB, uClassDBGenerics, uClassContractor, uClassProduct, uClassCompany, uClassCustomer, Messages, MensFun, System.DateUtils, Data.SqlTimSt,
  System.SysUtils, System.Classes, IniFiles,  Vcl.Forms, Vcl.Dialogs, uFunctions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  Data.DB,  Generics.Collections;


type
  TClassTributaria = (
    cst00, // Tributada integralmente
    cst10, // Tributada e com cobran�a do ICMS por substitui��o tribut�ria
    cst20, // Com redu��o de base de c�lculo
    cst30, // Isenta ou n�o tributada e com cobran�a do ICMS por substitui��o tribut�ria
    cst40, // Isenta
    cst41, // N�o tributada
    cst50, // Suspens�o
    cst51, // Diferimento
    cst60, // ICMS cobrado anteriormente por substitui��o tribut�ria
    cst70, // Com redu��o de base de c�lculo e cobran�a do ICMS por substitui��o tribut�ria
    cst90  // Outras
    );

  TSalesProcess = class;

  TSalesProcessItem = class(TComponent)
    private
      FTableName        : String;
      Fid_process_item  : integer;
      Fid_process       : integer;
      Fid_pricelist     : integer;
      Fid_product       : integer;
      Fqty              : Double;
      Frate             : Double;
      Famout            : Double;
      Fid_user          : integer;
      Fadd_date         : TdateTime;
      Fupd_date         : TdateTime;
      Froom             : String;
      Fwidth            : Double;
      Fheight           : Double;
      Ftotalarea        : Double;
      Freq_purchase_order : String;
      Ftax                : Double;
      Fdif_totalarea      : Double;
    procedure setFadd_date(const Value: TdateTime);
    procedure setFamout(const Value: Double);
    procedure setFid_process(const Value: integer);
    procedure setFid_process_item(const Value: integer);
    procedure setFid_pricelist(const Value: integer);
    procedure setFid_user(const Value: integer);
    procedure setFqty(const Value: Double);
    procedure setFrate(const Value: Double);
    procedure setFupd_date(const Value: TdateTime);
    procedure setFTableName(const Value: String);
    procedure setFroom(const Value: String);
    procedure setFheight(const Value: Double);
    procedure setFwidth(const Value: Double);
    procedure setFId_product(const Value: integer);
    procedure setFtotalarea(const Value: Double);
    procedure setFreq_purchase_order(const Value: string);
    procedure setFtax(const Value: Double);
    procedure setFdif_totalarea(const Value: Double);

    protected
      function SalesProcess: TSalesProcess;

    public
     procedure Assign(const pItemNF: TSalesProcessItem); reintroduce;
     procedure Inicializar; virtual;


     property  tablename          : String    read FTableName          write setFTableName;
     property  id_process_item    : integer   read Fid_process_item    write setFid_process_item;
     property  id_process         : integer   read Fid_process         write setFid_process;
     property  id_pricelist       : integer   read Fid_pricelist       write setFid_pricelist;
     property  id_product         : integer   read Fid_product         write setFId_product;
     property  qty                : Double    read Fqty                write setFqty;
     property  rate               : Double    read Frate               write setFrate;
     property  amout              : Double    read Famout              write setFamout;
     property  id_user            : integer   read Fid_user            write setFid_user;
     property  add_date           : TdateTime read Fadd_date           write setFadd_date;
     property  upd_date           : TdateTime read Fupd_date           write setFupd_date;
     property  room               : String    read Froom               write setFroom;
     property  width              : Double    read Fwidth              write setFwidth;
     property  height             : Double    read Fheight             write setFheight;
     property  totalarea          : Double    read Ftotalarea          write setFtotalarea;
     property  req_purchase_order : String    read Freq_purchase_order write setFreq_purchase_order;
     property  tax                : Double    read Ftax                write setFtax;
     property  dif_totalarea      : Double    read Fdif_totalarea      write setFdif_totalarea;

     constructor Create(AOwner: TComponent); override;
     procedure Save;
     procedure SearchProductonSale(varTablename: string;
                                   varId_process,
                                   varId_product: integer);
     procedure SearchProductByItem(varTablename: string;
                                   varId_process,
                                   varId_process_item: integer);

     procedure Update;
     procedure Delete;

     function ProductPending(varTableName : String; varId_product: integer) : Double;

  end;



  TItensNF = class(TObjectList)
  protected
    {protected declarations}
    function GetItemNF(Index: Integer): TSalesProcessItem;
    procedure SetItemNF(Index: Integer; AItemNF: TSalesProcessItem);
  public
    {public declarations}
    function Add(ANotaFiscal: TSalesProcess; AItemNF: TSalesProcessItem): Integer;
    function Remove(AItemNF: TSalesProcessItem): Integer;
    function IndexOf(AItemNF: TSalesProcessItem): Integer;
    procedure Insert(Index : Integer; AItemNF: TSalesProcessItem);
    property Items[Index: Integer]: TSalesProcessItem read GetItemNF write SetItemNF; default;
  end;



  TSalesProcess = class(TComponent)
    private
       Ftablename         : string;
       Fid_process        : integer;
       Fid_company        : Integer;
       Fid_address        : Integer;
       Fid_contractor     : Integer;
       Fdt_process        : TdateTime;
       Fdt_process_valid  : TdateTime;
       Fcustomer_name     : string;
       Fcustomer_phone    : string;
       Fcustomer_email    : string;
       Faddress1          : string;
       Fzipcode           : string;
       Fst                : string;
       Fcity              : string;
       Fcounty            : string;
       Fponumber          : string;
       Fcomments          : string;
       Fsubtotal          : double;
       Fpercent_discount  : double;
       Fdiscount          : double;
       Ftax               : double;
       Fshipping          : double;
       Ftotal             : double;
       Fid_user           : Integer;
       Fadd_date          : TdateTime;
       Fupd_date          : TdateTime;
       Fid_customer       : Integer;
       Fid_origen         : Integer;
       Fstatus            : string;
       Fdt_shippingDate   : TDateTime;
       Fdt_completed      : TDateTime;
       FItens             : TList;
       FItensNF           : TItensNF;
       Fid_payment_method : Integer;
       Fpurchase_order    : String;
       Ffolder            : String;
       Fsalesrep_email    : String;
       Fsalesrep_name     : String;

    procedure setFaddress1(const Value: string);
    procedure setFcity(const Value: string);
    procedure setFcomments(const Value: string);
    procedure setFcustomer_email(const Value: string);
    procedure setFcustomer_name(const Value: string);
    procedure setFcustomer_phone(const Value: string);
    procedure setFdiscount(const Value: double);
    procedure setFdt_process(const Value: TdateTime);
    procedure setFdt_process_valid(const Value: TdateTime);
    procedure setFFadd_date(const Value: TdateTime);
    procedure setFFcounty(const Value: string);
    procedure setFFshipping(const Value: double);
    procedure setFFst(const Value: string);
    procedure setFpercent_discount(const Value: double);
    procedure setFponumber(const Value: string);
    procedure setFsubtotal(const Value: double);
    procedure setFtablename(const Value: string);
    procedure setFtax(const Value: double);
    procedure setFtotal(const Value: double);
    procedure setFupd_date(const Value: TdateTime);
    procedure setFzipcode(const Value: string);
    procedure setFid_process(const Value: integer);
    procedure setFid_customer(const Value: Integer);
    procedure setFid_origen(const Value: Integer);
    procedure setFstatus(const Value: string);
    procedure setFdt_shippingDate(const Value: TDateTime);
    procedure setFdt_completed(const Value: TDateTime);
    function getItens(index: Integer): TSalesProcessItem;
    function GetNroItens: Integer;
    procedure setFid_payment_method(const Value: Integer);
    procedure setFid_address(const Value: Integer);
    procedure setFpurchase_order(const Value: String);
    procedure setFid_company(const Value: Integer);
    procedure setFfolder(const Value: String);
    procedure setFid_contractor(const Value: Integer);
    procedure setFsalesrep_email(const Value: String);
    procedure setFsalesrep_name(const Value: String);
    procedure setFid_user(const Value: integer);

    public
       procedure setItens(index: Integer; const Value: TSalesProcessItem);
       property tablename         : string    read Ftablename        write setFtablename;
       property id_process        : integer   read Fid_process       write setFid_process;
       property id_company        : Integer   read Fid_company       write setFid_company;
       property id_contractor     : Integer   read Fid_contractor   write setFid_contractor;
       property dt_process        : TdateTime read Fdt_process       write setFdt_process;
       property dt_process_valid  : TdateTime read Fdt_process_valid write setFdt_process_valid;
       property customer_name     : string read Fcustomer_name     write setFcustomer_name;
       property customer_phone    : string read Fcustomer_phone    write setFcustomer_phone;
       property customer_email    : string read Fcustomer_email    write setFcustomer_email;
       property address1          : string read Faddress1          write setFaddress1;
       property zipcode           : string read Fzipcode           write setFzipcode;
       property st                : string read Fst                write setFFst;
       property city              : string read Fcity              write setFcity;
       property county            : string read Fcounty            write setFFcounty;
       property ponumber          : string read Fponumber          write setFponumber;
       property comments          : string read Fcomments          write setFcomments;
       property subtotal          : double read Fsubtotal          write setFsubtotal;
       property percent_discount  : double read Fpercent_discount  write setFpercent_discount;
       property discount          : double read Fdiscount          write setFdiscount;
       property tax               : double read Ftax               write setFtax;
       property shipping          : double read Fshipping          write setFFshipping;
       property total             : double read Ftotal             write setFtotal;
       property id_user           : integer read Fid_user          write setFid_user;
       property add_date          : TdateTime read Fadd_date       write setFFadd_date;
       property upd_date          : TdateTime read Fupd_date       write setFupd_date;
       property id_customer       : Integer read Fid_customer      write setFid_customer;
       property id_origen         : Integer read Fid_origen        write setFid_origen;
       property status            : string read Fstatus            write setFstatus;
       property dt_shippingDate   : TDateTime read Fdt_shippingDate   write setFdt_shippingDate;
       property dt_completed      : TDateTime read Fdt_completed write setFdt_completed;
       property id_payment_method : Integer read Fid_payment_method write setFid_payment_method;
       property id_address        : Integer read Fid_address write setFid_address;
       property purchase_order    : String read Fpurchase_order write setFpurchase_order;
       property folder            : String read Ffolder write setFfolder;
       property salesrep_email    : String read Fsalesrep_email write setFsalesrep_email;
       property salesrep_name     : String read Fsalesrep_name write setFsalesrep_name;

       property Itens[index: Integer]: TSalesProcessItem read getItens
      write setItens; default;

       property ItensNF        : TItensNF        read FItensNF        write FItensNF;

       constructor Create(AOwner: TComponent); override;
       procedure Save;
       procedure Update;
       procedure Search(varTableName : String; varID_Process : Integer);
       procedure Delete;

       procedure SaveSampleBoard;
       procedure UpdateSampleBoard;
  end;




implementation

{ TSalesProcess }

constructor TSalesProcess.Create(AOwner: TComponent);
begin
    ItensNF           := TItensNF.Create;
    FItens            := TList.Create;
    tablename         := '';
    id_process        := 0;
    id_company        := 0;
    id_contractor     := 0;
    dt_process        := Date;
    dt_process_valid  := Date;
    dt_shippingDate   := Date;
    dt_completed      := 0;
    customer_name     := '';
    customer_phone    := '';
    customer_email    := '';
    address1          := '';
    zipcode           := '';
    st                := '';
    city              := '';
    county            := '';
    ponumber          := '';
    comments          := '';
    subtotal          := 0.0;
    percent_discount  := 0.0;
    discount          := 0.0;
    tax               := 0.0;
    shipping          := 0.0;
    total             := 0.0;
    id_user           := 0;
    add_date          := 0;
    upd_date          := 0;
    id_origen         := 0;
    status            := '';
    id_payment_method := 0;
    id_address        := 0;
    purchase_order    := '';
    folder            := '';
    salesrep_email    := '';
    salesrep_name     := '';
end;

procedure TSalesProcess.Delete;
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try


        sqlDados.Connection := FDConnection;
        sqlDados.Close;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Delete From TBREQUESTORDER Where TableName = :tablename and id_process = :id_process');
        sqlDados.Params.ParamByName('tablename').AsString   := tablename + '_ITEM';
        sqlDados.Params.ParamByName('id_process').AsInteger := id_process;
        Try
           sqlDados.ExecSQL;
        except
            on E: EDatabaseError do
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
        end;


        sqlDados.Connection := FDConnection;
        sqlDados.Close;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Delete From TBSERVICE_ITEM Where TableName = :tablename and id_process = :id_process');
        sqlDados.Params.ParamByName('tablename').AsString   := tablename + '_ITEM';
        sqlDados.Params.ParamByName('id_process').AsInteger := id_process;
        Try
           sqlDados.ExecSQL;
        except
            on E: EDatabaseError do
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
        end;


        sqlDados.Connection := FDConnection;
        sqlDados.Close;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Delete From TBTERMS Where TableName = :tablename and id_process = :id_process');
        sqlDados.Params.ParamByName('tablename').AsString   := 'TBTERMS';
        sqlDados.Params.ParamByName('id_process').AsInteger := id_process;
        Try
           sqlDados.ExecSQL;
        except
            on E: EDatabaseError do
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
        end;

        sqlDados.Close;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Delete From TBPROCESS_ITEM Where TableName = :tablename and id_process = :id_process');
        sqlDados.Params.ParamByName('tablename').AsString   :=  tablename + '_ITEM';
        sqlDados.Params.ParamByName('id_process').AsInteger := id_process;
        Try
           sqlDados.ExecSQL;
        except
            on E: EDatabaseError do
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
        end;

        sqlDados.Close;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Delete From TBPROCESS Where RTRIM(TableName) = :tablename and id_process = :id_process');
        sqlDados.Params.ParamByName('tablename').AsString   := tablename;
        sqlDados.Params.ParamByName('id_process').AsInteger := id_process;
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

function TSalesProcess.getItens(index: Integer): TSalesProcessItem;
begin
 result := FItens.Items[index];
end;

function TSalesProcess.GetNroItens: Integer;
begin
  Result := FItensNF.Count;
end;

procedure TSalesProcess.Save;
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try

        sqlDados.Connection := FDConnection;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Insert into TBPROCESS (');
        sqlDados.SQL.Add('tablename');
        sqlDados.SQL.Add(',id_process');
        sqlDados.SQL.Add(',id_company');
        sqlDados.SQL.Add(',dt_process');
        sqlDados.SQL.Add(',dt_process_valid');
        sqlDados.SQL.Add(',dt_shipping');
        sqlDados.SQL.Add(',id_contractors');
        sqlDados.SQL.Add(',customer_name');
        sqlDados.SQL.Add(',customer_phone');
        sqlDados.SQL.Add(',customer_email');
        sqlDados.SQL.Add(',address1');
        sqlDados.SQL.Add(',zipcode');
        sqlDados.SQL.Add(',st');
        sqlDados.SQL.Add(',city');
        sqlDados.SQL.Add(',county');
        sqlDados.SQL.Add(',ponumber');
        sqlDados.SQL.Add(',comments');
        sqlDados.SQL.Add(',subtotal');
        sqlDados.SQL.Add(',percent_discount');
        sqlDados.SQL.Add(',discount');
        sqlDados.SQL.Add(',tax');
        sqlDados.SQL.Add(',shipping');
        sqlDados.SQL.Add(',total');
        sqlDados.SQL.Add(',id_origen');
        sqlDados.SQL.Add(',status');
        sqlDados.SQL.Add(',id_user');
        sqlDados.SQL.Add(',add_date');
        sqlDados.SQL.Add(',purchase_order');
        sqlDados.SQL.Add(',id_payment_method');

        if id_customer <> 0 then
        begin
          sqlDados.SQL.Add(',id_customer');
          sqlDados.SQL.Add(',id_address');
        end;
        sqlDados.SQL.Add(') Values (');

        sqlDados.SQL.Add( QuotedStr(tablename) + ',' );
        sqlDados.SQL.Add( IntToStr(id_process) + ',' );
        sqlDados.SQL.Add( IntToStr(id_company) + ',' );
        sqlDados.SQL.Add( QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm:ss', dt_process)) +  ',' );
        sqlDados.SQL.Add( QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm:ss', dt_process_valid)) +  ',' );
        sqlDados.SQL.Add( QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm:ss', dt_shippingDate)) +  ',' );
        sqlDados.SQL.Add( IntToStr(id_contractor) + ',' );
        sqlDados.SQL.Add( QuotedStr(customer_name) +  ',' );
        sqlDados.SQL.Add( QuotedStr(customer_phone) +  ',' );
        sqlDados.SQL.Add( QuotedStr(customer_email) +  ',' );
        sqlDados.SQL.Add( QuotedStr(address1) +  ',' );
        sqlDados.SQL.Add( QuotedStr(zipcode) +  ',' );
        sqlDados.SQL.Add( QuotedStr(st) +  ',' );
        sqlDados.SQL.Add( QuotedStr(city) +  ',' );
        sqlDados.SQL.Add( QuotedStr(county) +  ',' );
        sqlDados.SQL.Add( QuotedStr(ponumber) +  ',' );
        sqlDados.SQL.Add( QuotedStr(comments) +  ',' );
        sqlDados.SQL.Add( QuotedStr( FloatToStr( subtotal )) +  ',' );
        sqlDados.SQL.Add( QuotedStr( FloatToStr( percent_discount )) +  ',' );
        sqlDados.SQL.Add( QuotedStr( FloatToStr( discount )) +  ',' );
        sqlDados.SQL.Add( QuotedStr( FloatToStr( tax )) +  ',' );
        sqlDados.SQL.Add( QuotedStr( FloatToStr( shipping )) +  ',' );
        sqlDados.SQL.Add( QuotedStr( FloatToStr( total )) +  ',' );
        sqlDados.SQL.Add( IntToStr(id_origen) +  ',' );
        sqlDados.SQL.Add( QuotedStr(status) +  ',' );
        sqlDados.SQL.Add( IntToStr(id_user) + ',' );
        sqlDados.SQL.Add( QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm:ss', now)) + ',' );
        sqlDados.SQL.Add( QuotedStr(purchase_order) +  ',' );
        sqlDados.SQL.Add( IntToStr(id_payment_method) );

        if id_customer <> 0 then
        begin
          sqlDados.SQL.Add(', ' + IntToStr(id_customer));
          sqlDados.SQL.Add(', ' + IntToStr(id_address));
        end;
        sqlDados.SQL.Add(')');

       // DBDados.GetComando(sqlDados, True);

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

procedure TSalesProcess.SaveSampleBoard;
 var
  varNextKey : TDBNextKey;
  varNewCustomer, varNewAddress  :  Integer;
  sqlDados : TFDQuery;
  Customer : TCustomer;
begin
  varNewCustomer := 0;
  varNewAddress  := 0;
  Customer := TCustomer.Create;
  Try
  Try

      varNextKey  := TDBNextKey.Create('TBCUSTOMER');
      Try
        varNewCustomer              := varNextKey.Key;
        varNextKey.UpdateKey(varNewCustomer, 'TBCUSTOMER'); // atualiza a nova chave no banco
      Finally
        FreeAndNil(varNextKey);
      End;

      Customer.Id_customer := varNewCustomer;
      // Saving Customer
      Customer.Save;


      varNextKey := TDBNextKey.Create('TBADDRESS');
      Try
          varNewAddress := varNextKey.Key;
      Finally
         varNextKey.UpdateKey(varNextKey.Key, 'TBADDRESS'); // atualiza a nova chave no banco
         FreeAndNil(varNextKey);
      End;

      Customer.Address[0].Id_Address := varNewAddress;
      Customer.Address[0].Id_Customer :=varNewCustomer;
      // Saving Customer�s Address
      Customer.Address[0].Save;


       with DBDados do
       begin
          sqlDados := TFDQuery.Create(Nil);

          sqlDados.Connection := FDConnection;

          Try
            sqlDados.Close;
            sqlDados.SQL.Clear;
            sqlDados.SQL.Add('Insert into TBSAMPLECHECKOUT (ID_SAMPLECHECKOUT, ID_CUSTOMER, DATE_CHECKOUT, DATE_RETURN, ABOUTUS, ID_USER)');
            sqlDados.SQL.Add(' Values (:ID_SAMPLECHECKOUT, :ID_CUSTOMER, :DATE_CHECKOUT, :DATE_RETURN, :ABOUTUS, :ID_USER) ');
            sqlDados.Params.ParamByName('ID_SAMPLECHECKOUT').AsInteger := id_process;
            sqlDados.Params.ParamByName('ID_CUSTOMER').AsInteger       := Customer.id_customer;
            sqlDados.Params.ParamByName('DATE_CHECKOUT').AsString      := FormatDateTime('mm/dd/yyyy hh:mm:ss', dt_process);
            sqlDados.Params.ParamByName('DATE_RETURN').AsString        := FormatDateTime('mm/dd/yyyy hh:mm:ss', dt_process_valid);
            sqlDados.Params.ParamByName('ABOUTUS').AsString            := comments;
            sqlDados.Params.ParamByName('ID_USER').AsInteger           := id_user;
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
  except
      on E: Exception  do
        Mens_MensErro(E.ClassName + ' error raised, with message : '+E.Message);

  end;
  Finally
    FreeAndNil(Customer);
  End;

end;

procedure TSalesProcess.Search(varTableName : String; varID_Process: Integer);
var
  sqlDados : TFDQuery;

begin

   with DBDados do
   begin
      sqlDados := TFDQuery.Create(Nil);

      sqlDados.Connection := FDConnection;

      Try
        sqlDados.Close;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Select p.tablename, p.id_process, p.id_customer, p.id_address, p.id_company, p.id_contractors, p.dt_process, p.dt_process_valid, ');
        sqlDados.SQL.Add(' p.dt_shipping, p.customer_name, p.customer_phone, p.customer_email, p.address1, ');
        sqlDados.SQL.Add(' p.zipcode, p.st, p.city, p.county, p.ponumber, p.comments, p.subtotal, p.percent_discount,');
        sqlDados.SQL.Add(' p.discount, p.tax, p.shipping, p.total, p.id_origen, p.status, p.id_user, p.add_date, p.upd_date, p.id_payment_method, p.purchase_order, ');
        sqlDados.SQL.Add(' c.folder, ct.email as salesrep_email, ct.name as salesrep_name ');
        sqlDados.SQL.Add('From TBPROCESS p With (NOLOCK)  ');
        sqlDados.SQL.Add(' left outer join TBCUSTOMER c on c.id_customer = p.id_customer ');
        sqlDados.SQL.Add(' left outer join TBCONTRACTORS ct on ct.id_contractors = p.id_contractors ');

        sqlDados.SQL.Add('Where p.id_process = :id_process and RTRIM(p.TableName) = :tablename');

        sqlDados.Params.ParamByName('tablename').AsString   := varTableName;
        sqlDados.Params.ParamByName('id_process').AsInteger := varID_Process;
        sqlDados.Open;
        if not sqlDados.IsEmpty  then
        begin
           tablename         := sqlDados.FieldByName('tablename').ASString;
           id_process        := sqlDados.FieldByName('id_process').AsInteger;
           folder            := sqlDados.FieldByName('folder').ASString;
           salesrep_email    := sqlDados.FieldByName('salesrep_email').ASString;
           salesrep_name     := sqlDados.FieldByName('salesrep_name').ASString;

           //if sqlDados.FieldByName('id_company').AsInteger > 0 then
           //  Company.Search(sqlDados.FieldByName('id_company').AsInteger);

           id_company :=  sqlDados.FieldByName('id_company').AsInteger;

           //if sqlDados.FieldByName('id_customer').ASString <> '' then
          // Customer.Search(sqlDados.FieldByName('id_customer').AsInteger);
           Id_customer      := sqlDados.FieldByName('id_customer').AsInteger;
           id_address           := sqlDados.FieldByName('id_address').AsInteger;

           // if sqlDados.FieldByName('id_contractors').AsInteger > 0 Then
         //  Contractors.Search(sqlDados.FieldByName('id_contractors').AsInteger);
            id_contractor :=  sqlDados.FieldByName('id_contractors').AsInteger;


           dt_process        := sqlDados.FieldByName('dt_process').AsDateTime;
           dt_process_valid  := sqlDados.FieldByName('dt_process_valid').AsDateTime;
           dt_shippingDate   := sqlDados.FieldByName('dt_shipping').AsDateTime;
           customer_name     := sqlDados.FieldByName('customer_name').ASString;
           customer_phone    := sqlDados.FieldByName('customer_phone').ASString;
           customer_email    := sqlDados.FieldByName('customer_email').ASString;
           address1          := sqlDados.FieldByName('address1').ASString;
           zipcode           := sqlDados.FieldByName('zipcode').ASString;
           st                := sqlDados.FieldByName('st').ASString;
           city              := sqlDados.FieldByName('city').ASString;
           county            := sqlDados.FieldByName('county').ASString;
           ponumber          := sqlDados.FieldByName('ponumber').ASString;
           comments          := sqlDados.FieldByName('comments').ASString;
           subtotal          := sqlDados.FieldByName('subtotal').AsFloat;
           percent_discount  := sqlDados.FieldByName('percent_discount').AsFloat;
           discount          := sqlDados.FieldByName('discount').AsFloat;
           tax               := sqlDados.FieldByName('tax').AsFloat;
           shipping          := sqlDados.FieldByName('shipping').AsFloat;
           total             := sqlDados.FieldByName('total').AsFloat;
           id_origen         := sqlDados.FieldByName('id_origen').AsInteger;
           status            := sqlDados.FieldByName('status').AsString;
           id_payment_method := sqlDados.FieldByName('id_payment_method').AsInteger;
           purchase_order    := sqlDados.FieldByName('purchase_order').AsString;
           id_user           := sqlDados.FieldByName('id_user').AsInteger;

           add_date          := sqlDados.FieldByName('add_date').AsDateTime;
           upd_date          := sqlDados.FieldByName('upd_date').AsDateTime;


        end;
          sqlDados.Close;
      Finally
         FreeAndNil(sqlDados);

      End;
   end;
end;


procedure TSalesProcess.setFaddress1(const Value: string);
begin
  Faddress1 := Value;
end;

procedure TSalesProcess.setFcity(const Value: string);
begin
  Fcity := Value;
end;

procedure TSalesProcess.setFcomments(const Value: string);
begin
  Fcomments := Value;
end;


procedure TSalesProcess.setFcustomer_email(const Value: string);
begin
  Fcustomer_email := Value;
end;

procedure TSalesProcess.setFcustomer_name(const Value: string);
begin
  Fcustomer_name := Value;
end;

procedure TSalesProcess.setFcustomer_phone(const Value: string);
begin
  Fcustomer_phone := Value;
end;

procedure TSalesProcess.setFdiscount(const Value: double);
begin
  Fdiscount := Value;
end;


procedure TSalesProcess.setFdt_completed(const Value: TDateTime);
begin
  Fdt_completed := Value;
end;

procedure TSalesProcess.setFdt_process(const Value: TdateTime);
begin
  Fdt_process := Value;
end;

procedure TSalesProcess.setFdt_process_valid(const Value: TdateTime);
begin
  Fdt_process_valid := Value;
end;

procedure TSalesProcess.setFFadd_date(const Value: TdateTime);
begin
  Fadd_date := Value;
end;

procedure TSalesProcess.setFFcounty(const Value: string);
begin
  Fcounty := Value;
end;

procedure TSalesProcess.setFfolder(const Value: String);
begin
  Ffolder := Value;
end;

procedure TSalesProcess.setFFshipping(const Value: double);
begin
  Fshipping := Value;
end;

procedure TSalesProcess.setFFst(const Value: string);
begin
  Fst := Value;
end;


procedure TSalesProcess.setFid_address(const Value: Integer);
begin
  Fid_address := Value;
end;

procedure TSalesProcess.setFid_company(const Value: Integer);
begin
  Fid_company := Value;
end;

procedure TSalesProcess.setFid_contractor(const Value: Integer);
begin
  Fid_contractor := Value;
end;


procedure TSalesProcess.setFid_customer(const Value: Integer);
begin
  Fid_customer := Value;
end;

procedure TSalesProcess.setFid_origen(const Value: Integer);
begin
  Fid_origen := Value;
end;

procedure TSalesProcess.setFid_payment_method(const Value: Integer);
begin
  Fid_payment_method := Value;
end;

procedure TSalesProcess.setFid_process(const Value: integer);
begin
  Fid_process := Value;
end;

procedure TSalesProcess.setFid_user(const Value: integer);
begin
  Fid_user := Value;
end;

procedure TSalesProcess.setFpercent_discount(const Value: double);
begin
  Fpercent_discount := Value;
end;

procedure TSalesProcess.setFponumber(const Value: string);
begin
  Fponumber := Value;
end;

procedure TSalesProcess.setFpurchase_order(const Value: String);
begin
  Fpurchase_order := Value;
end;

procedure TSalesProcess.setFdt_shippingDate(const Value: TDateTime);
begin
  Fdt_shippingDate := Value;
end;


procedure TSalesProcess.setFsalesrep_email(const Value: String);
begin
  Fsalesrep_email := Value;
end;

procedure TSalesProcess.setFsalesrep_name(const Value: String);
begin
  Fsalesrep_name := Value;
end;

procedure TSalesProcess.setFstatus(const Value: string);
begin
  Fstatus := Value;
end;

procedure TSalesProcess.setFsubtotal(const Value: double);
begin
  Fsubtotal := Value;
end;

procedure TSalesProcess.setFtablename(const Value: string);
begin
  Ftablename := Value;
end;

procedure TSalesProcess.setFtax(const Value: double);
begin
  Ftax := Value;
end;

procedure TSalesProcess.setFtotal(const Value: double);
begin
  Ftotal := Value;
end;

procedure TSalesProcess.setFupd_date(const Value: TdateTime);
begin
  Fupd_date := Value;
end;

procedure TSalesProcess.setFzipcode(const Value: string);
begin
  Fzipcode := Value;
end;

procedure TSalesProcess.setItens(index: Integer;
  const Value: TSalesProcessItem);

begin
  FItens.Insert(index,value);
end;

procedure TSalesProcess.Update;
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
        sqldados.sql.add('Update TBPROCESS '  );
        sqldados.sql.add(' Set  ');
        sqlDados.SQL.Add('id_company = :id_company');
        sqlDados.SQL.Add(',dt_process = :dt_process');
        sqlDados.SQL.Add(',dt_process_valid = :dt_process_valid');
        sqlDados.SQL.Add(',dt_shipping = :dt_shipping');
        sqlDados.SQL.Add(',id_contractors = :id_contractors');
        sqlDados.SQL.Add(',customer_name = :customer_name');
        sqlDados.SQL.Add(',customer_phone = :customer_phone');
        sqlDados.SQL.Add(',customer_email = :customer_email');
        sqlDados.SQL.Add(',address1 = :address1');
        sqlDados.SQL.Add(',zipcode = :zipcode');
        sqlDados.SQL.Add(',st = :st');
        sqlDados.SQL.Add(',city = :city');
        sqlDados.SQL.Add(',county = :county');
        sqlDados.SQL.Add(',ponumber = :ponumber');
        sqlDados.SQL.Add(',comments = :comments');
        sqlDados.SQL.Add(',subtotal = :subtotal');
        sqlDados.SQL.Add(',percent_discount = :percent_discount');
        sqlDados.SQL.Add(',discount = :discount');
        sqlDados.SQL.Add(',tax = :tax');
        sqlDados.SQL.Add(',shipping = :shipping');
        sqlDados.SQL.Add(',total = :total');
        sqlDados.SQL.Add(',id_user = :id_user ');
        sqlDados.SQL.Add(',id_origen = :id_origen');
        sqlDados.SQL.Add(',status = :status ');
        sqlDados.SQL.Add(',upd_date = :upd_date');
        sqlDados.SQL.Add(',purchase_order = :purchase_order');
        sqlDados.SQL.Add(',id_payment_method = :id_payment_method');

        if id_customer <> 0 then
        begin
           sqlDados.SQL.Add(',id_customer = :id_customer');
           sqlDados.SQL.Add(',id_address = :id_address');
        end;
        sqlDados.SQL.Add(' Where tablename = :tablename and id_process = :id_process ');


        sqlDados.Params.ParamByName('id_company').AsInteger          := id_company;
        sqlDados.Params.ParamByName('dt_process').AsString           := FormatDateTime('mm/dd/yyyy hh:mm:ss', dt_process);
        sqlDados.Params.ParamByName('dt_process_valid').AsString     := FormatDateTime('mm/dd/yyyy hh:mm:ss', dt_process_valid);
        sqlDados.Params.ParamByName('dt_shipping').AsString          := FormatDateTime('mm/dd/yyyy hh:mm:ss', dt_shippingDate);
        sqlDados.Params.ParamByName('id_contractors').AsInteger      := id_contractor;
        sqlDados.Params.ParamByName('customer_name').AsString        := customer_name;
        sqlDados.Params.ParamByName('customer_phone').AsString       := customer_phone;
        sqlDados.Params.ParamByName('customer_email').AsString       := customer_email;
        sqlDados.Params.ParamByName('address1').AsString             := address1;
        sqlDados.Params.ParamByName('zipcode').AsString              := zipcode;
        sqlDados.Params.ParamByName('st').AsString                   := st;
        sqlDados.Params.ParamByName('city').AsString                 := city;
        sqlDados.Params.ParamByName('county').AsString               := county;
        sqlDados.Params.ParamByName('ponumber').AsString             := ponumber ;
        sqlDados.Params.ParamByName('comments').AsString             := comments;
        sqlDados.Params.ParamByName('subtotal').AsFloat              := subtotal;
        sqlDados.Params.ParamByName('percent_discount').AsFloat      := percent_discount;
        sqlDados.Params.ParamByName('discount').AsFloat              := discount;
        sqlDados.Params.ParamByName('tax').AsFloat                   := tax;
        sqlDados.Params.ParamByName('shipping').AsFloat              := shipping;
        sqlDados.Params.ParamByName('total').AsFloat                 := total;
        sqlDados.Params.ParamByName('id_user').AsInteger             := id_user;
        sqlDados.Params.ParamByName('id_origen').AsInteger           := id_origen;
        sqlDados.Params.ParamByName('status').AsString               := status;
        sqlDados.Params.ParamByName('upd_date').AsString             := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
        sqlDados.Params.ParamByName('purchase_order').AsString       := purchase_order;
        sqlDados.Params.ParamByName('id_process').AsInteger          := id_process;
        sqlDados.Params.ParamByName('tablename').AsString            := tablename;
        sqlDados.Params.ParamByName('id_payment_method').AsInteger   := id_payment_method;

        if id_customer <> 0 then
        begin
          sqlDados.Params.ParamByName('id_customer').AsInteger       := id_customer;
          sqlDados.Params.ParamByName('id_address').AsInteger       := id_address;
        end;
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

procedure TSalesProcess.UpdateSampleBoard;
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
        sqldados.sql.add('Update TBSAMPLECHECKOUT '  );
        sqldados.sql.add(' Set DATE_RETURN = :DATE_RETURN, ABOUTUS = :ABOUTUS, UPD_DATE = :UPD_DATE, ID_USER = :ID_USER ');
        sqldados.sql.add(' WHERE ID_SAMPLECHECKOUT = :ID_SAMPLECHECKOUT ');
        sqlDados.Params.ParamByName('DATE_RETURN').AsString        := FormatDateTime('mm/dd/yyyy hh:mm:ss', dt_process_valid);
        sqlDados.Params.ParamByName('ABOUTUS').AsString            := comments;
        sqlDados.Params.ParamByName('UPD_DATE').AsString           := FormatDateTime('mm/dd/yyyy hh:mm:ss', DATE);
        sqlDados.Params.ParamByName('ID_USER').AsInteger           := id_user;
        sqlDados.Params.ParamByName('ID_SAMPLECHECKOUT').AsInteger := id_process;


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

{ TSalesProcessItem }

procedure TSalesProcessItem.Assign(const pItemNF: TSalesProcessItem);
begin
  Inicializar;

  tablename        := pItemNF.tablename;
  id_process_item  := pItemNF.id_process_item;
  id_process       := pItemNF.id_process;
  id_pricelist     := pItemNF.id_pricelist;
  id_product       := pItemNF.id_product;
  qty              := pItemNF.qty;
  rate             := pItemNF.rate;
  amout            := pItemNF.amout;
  id_user          := pItemNF.id_user;
  add_date         := pItemNF.add_date;
  upd_date         := pItemNF.upd_date;
  room             := pItemNF.room;
  width            := pItemNF.width;
  height           := pItemNF.height;
  totalarea          := pItemNF.totalarea;
  req_purchase_order := pItemNF.req_purchase_order;
  tax                := pItemNF.tax;
  dif_totalarea      := pItemNF.dif_totalarea;
end;

constructor TSalesProcessItem.Create(AOwner: TComponent);
begin
  inherited;
  Inicializar;
end;

procedure TSalesProcessItem.Delete;
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try
        sqlDados.Connection := FDConnection;
        sqlDados.Close;


        sqlDados.Close;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Delete From TBREQUESTORDER Where TableName = :tablename and id_process = :id_process and id_process_item = :id_process_item');
        sqlDados.Params.ParamByName('tablename').AsString   :=  tablename + '_ITEM';
        sqlDados.Params.ParamByName('id_process').AsInteger := id_process;
        sqlDados.Params.ParamByName('id_process_item').AsInteger := id_process_item;

        Try
           sqlDados.ExecSQL;
        except
            on E: EDatabaseError do
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
        end;


        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Delete From TBPROCESS_ITEM Where TableName = :tablename and id_process = :id_process and id_process_item = :id_process_item');
        sqlDados.Params.ParamByName('tablename').AsString        :=  tablename;
        sqlDados.Params.ParamByName('id_process').AsInteger      := id_process;
        sqlDados.Params.ParamByName('id_process_item').AsInteger := id_process_item;
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



procedure TSalesProcessItem.Inicializar;
begin
    tableName        := '';
    id_process_item  := 0;
    id_process       := 0;
    id_pricelist     := 0;
    id_product       := 0;
    qty              := 0.0;
    rate             := 0.0;
    amout            := 0.0;
    id_user          := 0;
    add_date         := Now;
    upd_date         := 0;
    room             := '';
    width            := 0.0;
    height           := 0.0;
    totalarea        := 0.0;
    req_purchase_order := 'N';
    tax                := 0.0;
    dif_totalarea      := 0.0;
end;

function TSalesProcessItem.ProductPending(varTableName : String; varId_product: integer): Double;
var
  sqlDados     : TFDQuery;
  varResultado : Double;
begin
   varResultado := 0;
   with DBDados do
   begin
       sqlDados := TFDQuery.Create(Nil);
       sqlDados.Connection := FDConnection;
       Try
        sqlDados.Close;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('SELECT ISNULL(SUM(I.TOTALAREA),0) AS SQUAREFEET ');
        sqlDados.SQL.Add('FROM TBPROCESS_ITEM I With (NOLOCK)  ');

        sqlDados.SQL.Add('INNER JOIN TBPROCESS H ON H.ID_PROCESS = I.ID_PROCESS AND RTRIM(H.TableName) = :TABLEHEADER ');

        sqlDados.SQL.Add('WHERE I.TABLENAME  = :TABLEITEM ');
        sqlDados.SQL.Add('AND   I.ID_PRODUCT = :ID_PRODUCT ');
        sqlDados.SQL.Add('AND   H.STATUS = ''PENDING''');

        sqlDados.SQL.Add('  AND I.ID_PROCESS  NOT  IN  (SELECT ID_PROCESS FROM TBPROCESS_ITEM X WHERE X.TABLENAME = :TABLEITEM AND X.ID_PROCESS = :ID_PROCESS )');

        sqlDados.Params.ParamByName('ID_PRODUCT').AsInteger := varId_product;
        sqlDados.Params.ParamByName('TABLEHEADER').AsString := varTableName;
        sqlDados.Params.ParamByName('TABLEITEM').AsString   := varTableName + '_ITEM';
        sqlDados.Params.ParamByName('ID_PROCESS').AsInteger := id_process;
        sqlDados.Open;
        varResultado := sqlDados.FieldByName('SQUAREFEET').AsFloat;
       Finally
         FreeAndNil(sqlDados);
       End;
   end;
   Result := varResultado;
end;

function TSalesProcessItem.SalesProcess: TSalesProcess;
begin
  Result := (Owner as TSalesProcess);
end;

procedure TSalesProcessItem.Save;
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try


        sqlDados.Connection := FDConnection;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Insert into TBPROCESS_ITEM (');
        sqlDados.SQL.Add('tablename');
        sqlDados.SQL.Add(',id_process_item');
        sqlDados.SQL.Add(',id_process');
        sqlDados.SQL.Add(',id_pricelist');
        sqlDados.SQL.Add(',id_product');
        sqlDados.SQL.Add(',qty');
        sqlDados.SQL.Add(',width');
        sqlDados.SQL.Add(',height');
        sqlDados.SQL.Add(',totalarea');
        sqlDados.SQL.Add(',rate');
        sqlDados.SQL.Add(',amout');
        sqlDados.SQL.Add(',room');
        sqlDados.SQL.Add(',req_purchase_order');
        sqlDados.SQL.Add(',id_user');
        sqlDados.SQL.Add(',add_date');
        sqlDados.SQL.Add(',dif_totalarea');
        sqlDados.SQL.Add(') Values (');

        sqlDados.SQL.Add( QuotedStr(tablename) + ',' );
        sqlDados.SQL.Add( IntToStr(id_process_item) + ',' );
        sqlDados.SQL.Add( IntToStr(id_process) + ',' );
        sqlDados.SQL.Add( IntToStr(id_pricelist) + ',' );
        sqlDados.SQL.Add( IntToStr(id_product) + ',' );
        sqlDados.SQL.Add( QuotedStr( FloatToStr( qty )) +  ',' );
        sqlDados.SQL.Add( QuotedStr( FloatToStr( width )) +  ',' );
        sqlDados.SQL.Add( QuotedStr( FloatToStr( height )) +  ',' );
        sqlDados.SQL.Add( QuotedStr( FloatToStr( totalarea )) +  ',' );
        sqlDados.SQL.Add( QuotedStr( FloatToStr( rate )) +  ',' );
        sqlDados.SQL.Add( QuotedStr( FloatToStr( amout )) +  ',' );
        sqlDados.SQL.Add( QuotedStr(room) + ',' );
        sqlDados.SQL.Add( QuotedStr(req_purchase_order) + ',');
        sqlDados.SQL.Add( IntToStr(id_user) + ',' );
        sqlDados.SQL.Add( QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm:ss', add_date)) + ',' );
         sqlDados.SQL.Add( QuotedStr( FloatToStr( dif_totalarea )));

        sqlDados.SQL.Add(')');

        //DBDados.GetComando(sqlDados, True);

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


procedure TSalesProcessItem.SearchProductByItem(varTablename: string;
  varId_process, varId_process_item: integer);
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try
        sqlDados.Connection := FDConnection;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Select tablename, id_process, id_process_item From TBPROCESS_ITEM With (NOLOCK) ');
        sqlDados.SQL.Add('where tablename = :tablename and id_process = :id_process and id_process_item = :id_process_item ');
        sqlDados.Params.ParamByName('tablename').AsString        := varTablename;
        sqlDados.Params.ParamByName('id_process').AsInteger      := varId_process;
        sqlDados.Params.ParamByName('id_process_item').AsInteger := varId_process_item;
        sqlDados.Open;
        tablename       := sqlDados.FieldByName('tablename').AsString;
        id_process      := sqlDados.FieldByName('id_process').AsInteger;
        id_process_item := sqlDados.FieldByName('id_process_item').AsInteger;

    Finally
      FreeAndNil(sqlDados);
    End;
  end;

end;

procedure TSalesProcessItem.SearchProductonSale(varTablename: string; varId_process,
  varId_product: integer);
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try
        sqlDados.Connection := FDConnection;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Select ISNULL(id_product,0) as id_product From TBPROCESS_ITEM With (NOLOCK) ');
        sqlDados.SQL.Add('where tablename = :tablename and id_process = :id_process and id_product = :id_product ');
        sqlDados.Params.ParamByName('tablename').AsString   := varTablename;
        sqlDados.Params.ParamByName('id_process').AsInteger := varId_process;
        sqlDados.Params.ParamByName('id_product').AsInteger := varId_product;
        sqlDados.Open;

        id_product := sqlDados.FieldByName('id_product').AsInteger;

    Finally
      FreeAndNil(sqlDados);
    End;
  end;
end;

procedure TSalesProcessItem.setFadd_date(const Value: TdateTime);
begin
  Fadd_date := Value;
end;

procedure TSalesProcessItem.setFamout(const Value: Double);
begin
  Famout := Value;
end;

procedure TSalesProcessItem.setFdif_totalarea(const Value: Double);
begin
  Fdif_totalarea := Value;
end;

procedure TSalesProcessItem.setFheight(const Value: Double);
begin
  Fheight := Value;
end;

procedure TSalesProcessItem.setFid_pricelist(const Value: integer);
begin
  Fid_pricelist := Value;
end;

procedure TSalesProcessItem.setFid_process(const Value: integer);
begin
  Fid_process := Value;
end;

procedure TSalesProcessItem.setFid_process_item(const Value: integer);
begin
  Fid_process_item := Value;
end;


procedure TSalesProcessItem.setFId_product(const Value: integer);
begin
  Fid_product := Value;
end;

procedure TSalesProcessItem.setFid_user(const Value: integer);
begin
  Fid_user := Value;
end;


procedure TSalesProcessItem.setFqty(const Value: Double);
begin
  Fqty := Value;
end;

procedure TSalesProcessItem.setFrate(const Value: Double);
begin
  Frate := Value;
end;

procedure TSalesProcessItem.setFreq_purchase_order(const Value: string);
begin
  Freq_purchase_order := Value;
end;

procedure TSalesProcessItem.setFroom(const Value: String);
begin
  Froom := Value;
end;

procedure TSalesProcessItem.setFTableName(const Value: String);
begin
  FTableName := Value;
end;

procedure TSalesProcessItem.setFtax(const Value: Double);
begin
  Ftax := Value;
end;

procedure TSalesProcessItem.setFtotalarea(const Value: Double);
begin
  Ftotalarea := Value;
end;

procedure TSalesProcessItem.setFupd_date(const Value: TdateTime);
begin
  Fupd_date := Value;
end;

procedure TSalesProcessItem.setFwidth(const Value: Double);
begin
  Fwidth := Value;
end;


procedure TSalesProcessItem.Update;
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
        sqldados.sql.add('Update TBPROCESS_ITEM '  );
        sqldados.sql.add(' Set  ');
        sqlDados.SQL.Add('id_product = :id_product');
        sqlDados.SQL.Add(',qty = :qty');
        sqlDados.SQL.Add(',width = :width');
        sqlDados.SQL.Add(',height = :height');
        sqlDados.SQL.Add(',totalarea = :totalarea');
        sqlDados.SQL.Add(',req_purchase_order = :req_purchase_order');
        sqlDados.SQL.Add(',rate = :rate');
        sqlDados.SQL.Add(',amout = :amout');
        sqlDados.SQL.Add(',room = :room');
        sqlDados.SQL.Add(',id_user = :id_user');
        sqlDados.SQL.Add(',upd_date = :upd_date');
        sqlDados.SQL.Add(',dif_totalarea = :dif_totalarea');
        sqlDados.SQL.Add(' Where tablename = :tablename and id_process = :id_process  and id_process_item = :id_process_item ');
        sqlDados.Params.ParamByName('tablename').AsString            := tablename;
        sqlDados.Params.ParamByName('id_process').AsInteger          := id_process;
        sqlDados.Params.ParamByName('id_process_item').AsInteger     := id_process_item;
        sqlDados.Params.ParamByName('id_product').AsInteger          := id_product;
        sqlDados.Params.ParamByName('qty').AsFloat                   := qty;
        sqlDados.Params.ParamByName('width').AsFloat                 := width;
        sqlDados.Params.ParamByName('height').AsFloat                := height;
        sqlDados.Params.ParamByName('totalarea').AsFloat             := totalarea;
        sqlDados.Params.ParamByName('req_purchase_order').AsString   := req_purchase_order;
        sqlDados.Params.ParamByName('rate').AsFloat                  := rate;
        sqlDados.Params.ParamByName('amout').AsFloat                 := amout;
        sqlDados.Params.ParamByName('id_user').AsInteger             := id_user;
        sqlDados.Params.ParamByName('room').AsString                 := room;
        sqlDados.Params.ParamByName('upd_date').AsString             := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
        sqlDados.Params.ParamByName('dif_totalarea').AsFloat         := dif_totalarea;

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


{ TItensNF }

function TItensNF.Add(ANotaFiscal: TSalesProcess;
  AItemNF: TSalesProcessItem): Integer;
var
  lNovoItemNF: TSalesProcessItem;
begin
  lNovoItemNF := TSalesProcessItem.Create(ANotaFiscal);
  lNovoItemNF.Assign(AItemNF);
  Result := inherited Add(lNovoItemNF);

end;


function TItensNF.GetItemNF(Index: Integer): TSalesProcessItem;
begin
  Result := inherited Items[Index] as TSalesProcessItem;
end;

function TItensNF.IndexOf(AItemNF: TSalesProcessItem): Integer;
begin
  Result := inherited IndexOf(AItemNF);
end;

procedure TItensNF.Insert(Index: Integer; AItemNF: TSalesProcessItem);
begin
  inherited Insert(Index, AItemNF);
end;

function TItensNF.Remove(AItemNF: TSalesProcessItem): Integer;
begin
  Result := inherited Remove(AItemNF);
end;

procedure TItensNF.SetItemNF(Index: Integer; AItemNF: TSalesProcessItem);
begin
  Items[Index] := AItemNF;
end;

end.
