unit uClassFinance;

interface

uses uDMConectDB, Messages, MensFun, System.DateUtils, Data.SqlTimSt,
  System.SysUtils, System.Classes, IniFiles,  Vcl.Forms, Vcl.Dialogs, uFunctions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  Data.DB;


Type
  TFinance = class
    private
       Fid_receivable       : Integer;
       Fid_customer         : Integer;
       Fid_payable          : Integer;
       Fid_company          : Integer;
       Finvoice_id          : String;
       Finvoice_date        : TDateTime;
       Fid_supplier         : Integer;
       Fid_expensecategory  : Integer;
       Fpayment_description : String;
       Fdate_due            : TDateTime;
       Fpayment_amount      : Currency;
       Fpayment_status      : String;
       Fid_payment_method   : Integer;
       Fnotes               : String;
       Fadd_date            : TDateTime;
       Fupd_date            : TDateTime;
       Fid_user             : Integer;
    procedure SetFadd_date(const Value: TDateTime);
    procedure SetFdate_due(const Value: TDateTime);
    procedure SetFid_company(const Value: Integer);
    procedure SetFid_expensecategory(const Value: Integer);
    procedure SetFid_payment_method(const Value: Integer);
    procedure SetFid_supplier(const Value: Integer);
    procedure SetFid_user(const Value: Integer);
    procedure SetFinvoice_date(const Value: TDateTime);
    procedure SetFinvoice_id(const Value: String);
    procedure SetFnotes(const Value: String);
    procedure SetFpayment_amount(const Value: Currency);
    procedure SetFpayment_description(const Value: String);
    procedure SetFpayment_status(const Value: String);
    procedure SetFupd_date(const Value: TDateTime);
    procedure setFid_payable(const Value: Integer);
    procedure setFid_customer(const Value: Integer);
    procedure setFid_receivable(const Value: Integer);

    public
     property  id_payable          : Integer     read Fid_payable          write setFid_payable;
     property  id_company          : Integer     read Fid_company          write SetFid_company;
     property  invoice_id          : String      read Finvoice_id          write SetFinvoice_id;
     property  invoice_date        : TDateTime   read Finvoice_date        write SetFinvoice_date;
     property  id_supplier         : Integer     read Fid_supplier         write SetFid_supplier;
     property  id_expensecategory  : Integer     read Fid_expensecategory  write SetFid_expensecategory;
     property  payment_description : String      read Fpayment_description write SetFpayment_description;
     property  date_due            : TDateTime   read Fdate_due            write SetFdate_due;
     property  payment_amount      : Currency    read Fpayment_amount      write SetFpayment_amount;
     property  payment_status      : String      read Fpayment_status      write SetFpayment_status;
     property  id_payment_method   : Integer     read Fid_payment_method   write SetFid_payment_method;
     property  notes               : String      read Fnotes               write SetFnotes;
     property  add_date            : TDateTime   read Fadd_date            write SetFadd_date;
     property  upd_date            : TDateTime   read Fupd_date            write SetFupd_date;
     property  id_user             : Integer     read Fid_user             write SetFid_user;

     property id_receivable        : Integer     read Fid_receivable      write setFid_receivable;
     property id_customer          : Integer     read Fid_customer        write setFid_customer;

     Constructor Create;
     procedure SavePAYABLE;
     procedure UpdatePAYABLE;

     procedure SaveRECEIVABLE;
     procedure UpdateRECEIVABLE;

  end;
implementation

{ TFinance }

constructor TFinance.Create;
begin
   id_receivable       := 0;
   id_customer         := 0;
   id_payable          := 0;
   id_company          := 0;
   invoice_id          := '';
   invoice_date        := 0;
   id_supplier         := 0;
   id_expensecategory  := 0;
   payment_description := '';
   date_due            := 0;
   payment_amount      := 0.0;
   payment_status      := '';
   id_payment_method   := 0;
   notes               := '';
   add_date            := 0;
   upd_date            := 0;
   id_user             := 0;
end;

procedure TFinance.SavePAYABLE;
var
 sqlAux : TFDQuery;
begin
   sqlAux := TFDQuery.Create(nil);
   Try
    sqlAux.Connection := DBDados.Connection;
    SqlAux.Close;
    SqlAux.SQL.Clear;
    SqlAux.SQL.Add('INSERT INTO TBPAYABLE ');
    SqlAux.SQL.Add('(INVOICE_ID');
    SqlAux.SQL.Add(',ID_COMPANY ');
    SqlAux.SQL.Add(',INVOICE_DATE');
    SqlAux.SQL.Add(',ID_SUPPLIER ');
    SqlAux.SQL.Add(',DATE_DUE ');
    SqlAux.SQL.Add(',PAYMENT_AMOUNT');
    SqlAux.SQL.Add(',PAYMENT_STATUS');
    SqlAux.SQL.Add(',PAYMENT_DESCRIPTION');
    SqlAux.SQL.Add(',ID_PAYMENT_METHOD');
    SqlAux.SQL.Add(',ID_EXPENSECATEGORY');
    SqlAux.SQL.Add(',NOTES');
    SqlAux.SQL.Add(',ID_TERM');
    SqlAux.SQL.Add(',ADD_DATE');
    SqlAux.SQL.Add(',ID_USER)');
    SqlAux.SQL.Add('VALUES ');
    SqlAux.SQL.Add('(:INVOICE_ID');
    SqlAux.SQL.Add(',:ID_COMPANY ');
    SqlAux.SQL.Add(',:INVOICE_DATE');
    SqlAux.SQL.Add(',:ID_SUPPLIER ');
    SqlAux.SQL.Add(',:DATE_DUE ');
    SqlAux.SQL.Add(',:PAYMENT_AMOUNT');
    SqlAux.SQL.Add(',:PAYMENT_STATUS');
    SqlAux.SQL.Add(',:PAYMENT_DESCRIPTION');
    SqlAux.SQL.Add(',:ID_PAYMENT_METHOD');
    SqlAux.SQL.Add(',:ID_EXPENSECATEGORY');
    SqlAux.SQL.Add(',:NOTES');
    SqlAux.SQL.Add(',:ID_TERM');
    SqlAux.SQL.Add(',:ADD_DATE');
    SqlAux.SQL.Add(',:ID_USER)');

    SqlAux.Params.ParamByName('INVOICE_ID').AsString           := invoice_id;
    SqlAux.Params.ParamByName('ID_COMPANY').AsInteger          := id_company;
    SqlAux.Params.ParamByName('INVOICE_DATE').AsString         := FormatDateTime('mm/dd/yyyy hh:mm:ss', invoice_date);
    SqlAux.Params.ParamByName('ID_SUPPLIER').AsInteger         := id_supplier;
    SqlAux.Params.ParamByName('DATE_DUE').AsString             := FormatDateTime('mm/dd/yyyy hh:mm:ss', date_due);
    SqlAux.Params.ParamByName('PAYMENT_AMOUNT').AsFloat        := payment_amount;
    SqlAux.Params.ParamByName('PAYMENT_STATUS').AsString       := payment_status;
    SqlAux.Params.ParamByName('PAYMENT_DESCRIPTION').AsString  := payment_description;
    SqlAux.Params.ParamByName('ID_PAYMENT_METHOD').AsInteger   := id_payment_method;
    SqlAux.Params.ParamByName('ID_EXPENSECATEGORY').AsInteger  := id_expensecategory;
    SqlAux.Params.ParamByName('NOTES').AsString                := notes;
    SqlAux.Params.ParamByName('ID_TERM').AsInteger             := 0;
    SqlAux.Params.ParamByName('ADD_DATE').AsString             := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
    SqlAux.Params.ParamByName('ID_USER').AsInteger             := id_user;

    Try
       SqlAux.ExecSQL;

    except
        on E: EDatabaseError do
          Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

    end;

   Finally
      FreeAndNil(sqlAux);
   End;
end;

procedure TFinance.SaveRECEIVABLE;
var
 sqlAux : TFDQuery;
begin
   sqlAux := TFDQuery.Create(nil);
   Try
    sqlAux.Connection := DBDados.Connection;
    SqlAux.Close;
    SqlAux.SQL.Clear;
    SqlAux.SQL.Add('INSERT INTO TBRECEIVABLE ');
    SqlAux.SQL.Add('(INVOICE_ID');
    SqlAux.SQL.Add(',ID_COMPANY ');
    SqlAux.SQL.Add(',INVOICE_DATE');
    SqlAux.SQL.Add(',ID_CUSTOMER ');
    SqlAux.SQL.Add(',DATE_DUE ');
    SqlAux.SQL.Add(',PAYMENT_AMOUNT');
    SqlAux.SQL.Add(',PAYMENT_STATUS');
    SqlAux.SQL.Add(',PAYMENT_DESCRIPTION');
    SqlAux.SQL.Add(',ID_PAYMENT_METHOD');
    SqlAux.SQL.Add(',ID_EXPENSECATEGORY');
    SqlAux.SQL.Add(',NOTES');
    SqlAux.SQL.Add(',ID_TERM');
    SqlAux.SQL.Add(',ADD_DATE');
    SqlAux.SQL.Add(',ID_USER)');
    SqlAux.SQL.Add('VALUES ');
    SqlAux.SQL.Add('(:INVOICE_ID');
    SqlAux.SQL.Add(',:ID_COMPANY ');
    SqlAux.SQL.Add(',:INVOICE_DATE');
    SqlAux.SQL.Add(',:ID_CUSTOMER ');
    SqlAux.SQL.Add(',:DATE_DUE ');
    SqlAux.SQL.Add(',:PAYMENT_AMOUNT');
    SqlAux.SQL.Add(',:PAYMENT_STATUS');
    SqlAux.SQL.Add(',:PAYMENT_DESCRIPTION');
    SqlAux.SQL.Add(',:ID_PAYMENT_METHOD');
    SqlAux.SQL.Add(',:ID_EXPENSECATEGORY');
    SqlAux.SQL.Add(',:NOTES');
    SqlAux.SQL.Add(',:ID_TERM');
    SqlAux.SQL.Add(',:ADD_DATE');
    SqlAux.SQL.Add(',:ID_USER)');

    SqlAux.Params.ParamByName('INVOICE_ID').AsString           := invoice_id;
    SqlAux.Params.ParamByName('ID_COMPANY').AsInteger          := id_company;
    SqlAux.Params.ParamByName('INVOICE_DATE').AsString         := FormatDateTime('mm/dd/yyyy hh:mm:ss', invoice_date);
    SqlAux.Params.ParamByName('ID_CUSTOMER').AsInteger         := id_customer;
    SqlAux.Params.ParamByName('DATE_DUE').AsString             := FormatDateTime('mm/dd/yyyy hh:mm:ss', date_due);
    SqlAux.Params.ParamByName('PAYMENT_AMOUNT').AsFloat        := payment_amount;
    SqlAux.Params.ParamByName('PAYMENT_STATUS').AsString       := payment_status;
    SqlAux.Params.ParamByName('PAYMENT_DESCRIPTION').AsString  := payment_description;
    SqlAux.Params.ParamByName('ID_PAYMENT_METHOD').AsInteger   := id_payment_method;
    SqlAux.Params.ParamByName('ID_EXPENSECATEGORY').AsInteger  := id_expensecategory;
    SqlAux.Params.ParamByName('NOTES').AsString                := notes;
    SqlAux.Params.ParamByName('ID_TERM').AsInteger             := 0;
    SqlAux.Params.ParamByName('ADD_DATE').AsString             := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
    SqlAux.Params.ParamByName('ID_USER').AsInteger             := id_user;

    Try
       SqlAux.ExecSQL;

    except
        on E: EDatabaseError do
          Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

    end;

   Finally
      FreeAndNil(sqlAux);
   End;
end;

procedure TFinance.SetFadd_date(const Value: TDateTime);
begin
  Fadd_date := Value;
end;

procedure TFinance.SetFdate_due(const Value: TDateTime);
begin
  Fdate_due := Value;
end;

procedure TFinance.SetFid_company(const Value: Integer);
begin
  Fid_company := Value;
end;

procedure TFinance.setFid_customer(const Value: Integer);
begin
  Fid_customer := Value;
end;

procedure TFinance.SetFid_expensecategory(const Value: Integer);
begin
  Fid_expensecategory := Value;
end;

procedure TFinance.setFid_payable(const Value: Integer);
begin
  Fid_payable := Value;
end;

procedure TFinance.SetFid_payment_method(const Value: Integer);
begin
  Fid_payment_method := Value;
end;

procedure TFinance.setFid_receivable(const Value: Integer);
begin
  Fid_receivable := Value;
end;

procedure TFinance.SetFid_supplier(const Value: Integer);
begin
  Fid_supplier := Value;
end;

procedure TFinance.SetFid_user(const Value: Integer);
begin
  Fid_user := Value;
end;

procedure TFinance.SetFinvoice_date(const Value: TDateTime);
begin
  Finvoice_date := Value;
end;

procedure TFinance.SetFinvoice_id(const Value: String);
begin
  Finvoice_id := Value;
end;

procedure TFinance.SetFnotes(const Value: String);
begin
  Fnotes := Value;
end;

procedure TFinance.SetFpayment_amount(const Value: Currency);
begin
  Fpayment_amount := Value;
end;

procedure TFinance.SetFpayment_description(const Value: String);
begin
  Fpayment_description := Value;
end;

procedure TFinance.SetFpayment_status(const Value: String);
begin
  Fpayment_status := Value;
end;

procedure TFinance.SetFupd_date(const Value: TDateTime);
begin
  Fupd_date := Value;
end;

procedure TFinance.UpdatePAYABLE;
var
 sqlAux : TFDQuery;
begin
   sqlAux := TFDQuery.Create(nil);
   Try
    sqlAux.Connection := DBDados.Connection;
    SqlAux.Close;
    SqlAux.SQL.Clear;
    SqlAux.SQL.Add('UPDATE TBPAYABLE ');
    SqlAux.SQL.Add(' SET INVOICE_ID = :INVOICE_ID');
    SqlAux.SQL.Add(',ID_COMPANY = :ID_COMPANY');
    SqlAux.SQL.Add(',INVOICE_DATE = :INVOICE_DATE');
    SqlAux.SQL.Add(',ID_SUPPLIER = :ID_SUPPLIER');
    SqlAux.SQL.Add(',DATE_DUE  = :DATE_DUE');
    SqlAux.SQL.Add(',PAYMENT_AMOUNT = :PAYMENT_AMOUNT');
    SqlAux.SQL.Add(',PAYMENT_STATUS = :PAYMENT_STATUS');
    SqlAux.SQL.Add(',PAYMENT_DESCRIPTION = :PAYMENT_DESCRIPTION');
    SqlAux.SQL.Add(',ID_PAYMENT_METHOD = :ID_PAYMENT_METHOD');
    SqlAux.SQL.Add(',ID_EXPENSECATEGORY = :ID_EXPENSECATEGORY');
    SqlAux.SQL.Add(',NOTES = :NOTES');
    SqlAux.SQL.Add(',ID_TERM = :ID_TERM');
    SqlAux.SQL.Add(',UPD_DATE = :UPD_DATE ');
    SqlAux.SQL.Add(',ID_USER = :ID_USER');
    SqlAux.SQL.Add(' WHERE ID_PAYABLE = :ID_PAYABLE');

    SqlAux.Params.ParamByName('ID_PAYABLE').AsInteger          := id_payable;
    SqlAux.Params.ParamByName('INVOICE_ID').AsString           := invoice_id;
    SqlAux.Params.ParamByName('ID_COMPANY').AsInteger          := id_company;
    SqlAux.Params.ParamByName('INVOICE_DATE').AsString         := FormatDateTime('mm/dd/yyyy hh:mm:ss', invoice_date);
    SqlAux.Params.ParamByName('ID_SUPPLIER').AsInteger         := id_supplier;
    SqlAux.Params.ParamByName('DATE_DUE').AsString             := FormatDateTime('mm/dd/yyyy hh:mm:ss', date_due);
    SqlAux.Params.ParamByName('PAYMENT_AMOUNT').AsFloat        := payment_amount;
    SqlAux.Params.ParamByName('PAYMENT_STATUS').AsString       := payment_status;
    SqlAux.Params.ParamByName('PAYMENT_DESCRIPTION').AsString  := payment_description;
    SqlAux.Params.ParamByName('ID_PAYMENT_METHOD').AsInteger   := id_payment_method;
    SqlAux.Params.ParamByName('ID_EXPENSECATEGORY').AsInteger  := id_expensecategory;
    SqlAux.Params.ParamByName('NOTES').AsString                := notes;
    SqlAux.Params.ParamByName('ID_TERM').AsInteger             := 0;
    SqlAux.Params.ParamByName('UPD_DATE').AsString             := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
    SqlAux.Params.ParamByName('ID_USER').AsInteger             := id_user;

    Try
       SqlAux.ExecSQL;

    except
        on E: EDatabaseError do
          Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

    end;


   Finally
    FreeAndNil(sqlAux);
   End;
end;

procedure TFinance.UpdateRECEIVABLE;
var
 sqlAux : TFDQuery;
begin
   sqlAux := TFDQuery.Create(nil);
   Try
    sqlAux.Connection := DBDados.Connection;
    SqlAux.Close;
    SqlAux.SQL.Clear;
    SqlAux.SQL.Add('UPDATE RECEIVABLE ');
    SqlAux.SQL.Add(' SET INVOICE_ID = :INVOICE_ID');
    SqlAux.SQL.Add(',ID_COMPANY = :ID_COMPANY');
    SqlAux.SQL.Add(',INVOICE_DATE = :INVOICE_DATE');
    SqlAux.SQL.Add(',ID_CUSTOMER = :ID_CUSTOMER');
    SqlAux.SQL.Add(',DATE_DUE  = :DATE_DUE');
    SqlAux.SQL.Add(',PAYMENT_AMOUNT = :PAYMENT_AMOUNT');
    SqlAux.SQL.Add(',PAYMENT_STATUS = :PAYMENT_STATUS');
    SqlAux.SQL.Add(',PAYMENT_DESCRIPTION = :PAYMENT_DESCRIPTION');
    SqlAux.SQL.Add(',ID_PAYMENT_METHOD = :ID_PAYMENT_METHOD');
    SqlAux.SQL.Add(',ID_EXPENSECATEGORY = :ID_EXPENSECATEGORY');
    SqlAux.SQL.Add(',NOTES = :NOTES');
    SqlAux.SQL.Add(',ID_TERM = :ID_TERM');
    SqlAux.SQL.Add(',UPD_DATE = :UPD_DATE ');
    SqlAux.SQL.Add(',ID_USER = :ID_USER');
    SqlAux.SQL.Add(' WHERE ID_RECEIVABLE = :ID_RECEIVABLE');

    SqlAux.Params.ParamByName('ID_RECEIVABLE').AsInteger       := id_receivable;
    SqlAux.Params.ParamByName('INVOICE_ID').AsString           := invoice_id;
    SqlAux.Params.ParamByName('ID_COMPANY').AsInteger          := id_company;
    SqlAux.Params.ParamByName('INVOICE_DATE').AsString         := FormatDateTime('mm/dd/yyyy hh:mm:ss', invoice_date);
    SqlAux.Params.ParamByName('ID_CUSTOMER').AsInteger         := id_customer;
    SqlAux.Params.ParamByName('DATE_DUE').AsString             := FormatDateTime('mm/dd/yyyy hh:mm:ss', date_due);
    SqlAux.Params.ParamByName('PAYMENT_AMOUNT').AsFloat        := payment_amount;
    SqlAux.Params.ParamByName('PAYMENT_STATUS').AsString       := payment_status;
    SqlAux.Params.ParamByName('PAYMENT_DESCRIPTION').AsString  := payment_description;
    SqlAux.Params.ParamByName('ID_PAYMENT_METHOD').AsInteger   := id_payment_method;
    SqlAux.Params.ParamByName('ID_EXPENSECATEGORY').AsInteger  := id_expensecategory;
    SqlAux.Params.ParamByName('NOTES').AsString                := notes;
    SqlAux.Params.ParamByName('ID_TERM').AsInteger             := 0;
    SqlAux.Params.ParamByName('UPD_DATE').AsString             := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
    SqlAux.Params.ParamByName('ID_USER').AsInteger             := id_user;

    Try
       SqlAux.ExecSQL;

    except
        on E: EDatabaseError do
          Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

    end;


   Finally
    FreeAndNil(sqlAux);
   End;

end;

end.
