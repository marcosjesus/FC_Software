unit uClassPurchaseOrder;

interface


uses uDMConectDB, uClassDBGenerics, uClassProduct, uClassCompany, uClassCustomer, uClassSalesProcess, Messages, MensFun, System.DateUtils, Data.SqlTimSt,
  System.SysUtils, System.Classes, IniFiles,  Vcl.Forms, Vcl.Dialogs, uFunctions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  Data.DB,  Generics.Collections;


Type
  TPurchase = class
    private
      Fid_requestorder : integer;
      Fid_company      : integer;
      Fid_contractor   : integer;
      Freq_date        : TdateTime;
      Ftablename       : string;
      Fid_process      : integer;
      Fid_user         : integer;
      Fid_supplier     : integer;
      Fid_product      : integer;
      Fcountneed       : double;
      Festimatedcost   : double;
      Fstatus          : string;
      Fdate_ordered    : tdatetime;
      Fadd_date        : tdatetime;
      Fupd_date        : tdatetime;
    procedure setFadd_date(const Value: tdatetime);
    procedure setFcountneed(const Value: double);
    procedure setFdate_ordered(const Value: tdatetime);
    procedure setFestimatedcost(const Value: double);
    procedure setFid_company(const Value: integer);
    procedure setFid_contractor(const Value: integer);
    procedure setFid_process(const Value: integer);
    procedure setFid_product(const Value: integer);
    procedure setFid_requestorder(const Value: integer);
    procedure setFid_supplier(const Value: integer);
    procedure setFid_user(const Value: integer);
    procedure setFreq_date(const Value: TdateTime);
    procedure setFstatus(const Value: string);
    procedure setFtablename(const Value: string);
    procedure setFupd_date(const Value: tdatetime);

    public
      property id_requestorder : integer    read Fid_requestorder  write setFid_requestorder;
      property id_company      : integer    read Fid_company       write setFid_company;
      property id_contractor   : integer    read Fid_contractor    write setFid_contractor;
      property req_date        : TdateTime  read Freq_date         write setFreq_date;
      property tablename       : string     read Ftablename        write setFtablename;
      property id_process      : integer    read Fid_process       write setFid_process;
      property id_user         : integer    read Fid_user          write setFid_user;
      property id_supplier     : integer    read Fid_supplier      write setFid_supplier;
      property id_product      : integer    read Fid_product       write setFid_product;
      property countneed       : double     read Fcountneed        write setFcountneed;
      property estimatedcost   : double     read Festimatedcost    write setFestimatedcost;
      property status          : string     read Fstatus           write setFstatus;
      property date_ordered    : tdatetime  read Fdate_ordered     write setFdate_ordered;
      property add_date        : tdatetime  read Fadd_date         write setFadd_date;
      property upd_date        : tdatetime  read Fupd_date         write setFupd_date;

      Constructor Create;
      procedure Save;
  end;


implementation

{ TPurchase }

constructor TPurchase.Create;
var
  varNextKey : TDBNextKey;
begin
  tablename         := 'TBREQUESTORDER';
  varNextKey        := TDBNextKey.Create(tablename);
  Try
    id_requestorder := varNextKey.Key;
    varNextKey.UpdateKey(id_requestorder, tablename); // atualiza a nova chave no banco
  finally
    FreeAndNil(varNextKey);
  End;

  id_company    := 0;
  id_contractor := 0;
  req_date      := 0;
  id_process    := 0;
  id_user       := 0;
  id_supplier   := 0;
  id_product    := 0;
  countneed     := 0.0;
  estimatedcost := 0.0;
  status        := '';
  date_ordered  := 0;
  add_date      := Now;
  upd_date      := 0;

end;

procedure TPurchase.Save;
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try

        sqlDados.Connection := FDConnection;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Insert into TBREQUESTORDER (');
        sqlDados.SQL.Add('id_requestorder ');
        sqlDados.SQL.Add(',id_company');
        sqlDados.SQL.Add(',id_contractor');
        sqlDados.SQL.Add(',req_date');
        sqlDados.SQL.Add(',tablename');
	      sqlDados.SQL.Add(',id_process');
        sqlDados.SQL.Add(',id_user ');
        sqlDados.SQL.Add(',id_supplier');
        sqlDados.SQL.Add(',id_product');
        sqlDados.SQL.Add(',countneed');
        sqlDados.SQL.Add(',estimatedcost');
        sqlDados.SQL.Add(',date_ordered');
        sqlDados.SQL.Add(',add_date');
        sqlDados.SQL.Add(',status) ');
        sqlDados.SQL.Add(' Values ( ');
        sqlDados.SQL.Add( IntToStr(id_requestorder)+ ',' );
        sqlDados.SQL.Add( IntToStr(id_company) + ',' );
        sqlDados.SQL.Add( IntToStr(id_contractor) + ',' );
        sqlDados.SQL.Add( QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm:ss', req_date)) +  ',' );
        sqlDados.SQL.Add( QuotedStr(tablename) + ',' );
        sqlDados.SQL.Add( IntToStr(id_process)+ ',' );
        sqlDados.SQL.Add( IntToStr(id_user) + ',' );
        sqlDados.SQL.Add( IntToStr(id_supplier) + ',' );
        sqlDados.SQL.Add( IntToStr(id_product)+ ',' );
        sqlDados.SQL.Add( QuotedStr( FloatToStr( countneed )) +  ',' );
        sqlDados.SQL.Add( QuotedStr( FloatToStr( estimatedcost )) +  ',' );
        sqlDados.SQL.Add( QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm:ss', date_ordered)) +  ',' );
        sqlDados.SQL.Add( QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm:ss', add_date)) +  ',' );
        sqlDados.SQL.Add( QuotedStr(status) + ')' );

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

procedure TPurchase.setFadd_date(const Value: tdatetime);
begin
  Fadd_date := Value;
end;

procedure TPurchase.setFcountneed(const Value: double);
begin
  Fcountneed := Value;
end;

procedure TPurchase.setFdate_ordered(const Value: tdatetime);
begin
  Fdate_ordered := Value;
end;

procedure TPurchase.setFestimatedcost(const Value: double);
begin
  Festimatedcost := Value;
end;

procedure TPurchase.setFid_company(const Value: integer);
begin
  Fid_company := Value;
end;

procedure TPurchase.setFid_contractor(const Value: integer);
begin
  Fid_contractor := Value;
end;

procedure TPurchase.setFid_process(const Value: integer);
begin
  Fid_process := Value;
end;

procedure TPurchase.setFid_product(const Value: integer);
begin
  Fid_product := Value;
end;

procedure TPurchase.setFid_requestorder(const Value: integer);
begin
  Fid_requestorder := Value;
end;

procedure TPurchase.setFid_supplier(const Value: integer);
begin
  Fid_supplier := Value;
end;

procedure TPurchase.setFid_user(const Value: integer);
begin
  Fid_user := Value;
end;

procedure TPurchase.setFreq_date(const Value: TdateTime);
begin
  Freq_date := Value;
end;

procedure TPurchase.setFstatus(const Value: string);
begin
  Fstatus := Value;
end;

procedure TPurchase.setFtablename(const Value: string);
begin
  Ftablename := Value;
end;

procedure TPurchase.setFupd_date(const Value: tdatetime);
begin
  Fupd_date := Value;
end;

end.
