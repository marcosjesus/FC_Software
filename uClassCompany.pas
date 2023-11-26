unit uClassCompany;

interface

uses uDMConectDB, Messages, MensFun, System.DateUtils, Data.SqlTimSt,
  System.SysUtils, System.Classes, IniFiles,  Vcl.Forms, Vcl.Dialogs, uFunctions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  Data.DB;


Type
  TCompany = class
    private
       Fid_company          : Integer;
       FTax_ID              : String;
       Fadd_date            : string;
       Fupd_date            : string;
       Fcompanyname         : string;
       Ftradiningname       : string;
       Fcountry             : string;
       FCity                : string;
       Fst                  : string;
       Faddress1            : string;
       Fzipcode             : string;
       Fcompanyowner        : string;
       Fcompanyemail1       : string;
       Fcompanyphonenumber1 : string;
       FTax                 : Double;
       Fid_user             : integer;
       FestimateDays        : integer;



    procedure setFaddress1(const Value: string);
    procedure setFcompanyname(const Value: string);
    procedure setFcompanyemail1(const Value: string);
    procedure setFcompanyphonenumber1(const Value: string);
    procedure setFcountry(const Value: string);
    procedure setFid_company(const Value: integer);
    procedure setFid_user(const Value: integer);
    procedure setFadd_date(const Value: string);
    procedure setFupd_date(const Value: string);
    procedure setFst(const Value: string);
    procedure setFtradiningname(const Value: string);
    procedure setFzipcode(const Value: string);
    procedure setFtax_Id(const Value: string);
    procedure setFcity(const Value: string);
    procedure setFcompanyowner(const Value: string);
    procedure setFcompanytemail1(const Value: string);
    procedure setFcontactemail1(const Value: string);
    procedure setFcontactname1(const Value: string);
    procedure setFcontactphonenumber1(const Value: string);
    procedure setFestimateDays(const Value: integer);
    procedure setFTax(const Value: Double);
   public
       property id_company          : integer read Fid_company         write setFid_company;
       property tax_id              : string read Ftax_id              write setFtax_Id;
       property add_date            : string read Fadd_date            write setFadd_date;
       property upd_date            : string read Fupd_date            write setFupd_date;
       property companyname         : string read Fcompanyname         write setFcompanyname;
       property tradiningname       : string read Ftradiningname       write setFtradiningname;
       property country             : string read Fcountry             write setFcountry;
       property st                  : string read Fst                  write setFst;
       property city                : string read Fcity                write setFcity;
       property address1            : string read Faddress1            write setFaddress1;
       property zipcode             : string read Fzipcode             write setFzipcode;

       property companyowner        : string read Fcompanyowner        write setFcompanyowner;
       property companyemail1        : string read Fcompanyemail1       write setFcompanytemail1;
       property companyphonenumber1 : string read Fcompanyphonenumber1 write setFcompanyphonenumber1;
       property id_user             : integer read Fid_user            write setFid_user;
       property Tax                 : Double read FTax                 write setFTax;
       property estimateDays: integer read FestimateDays write setFestimateDays;

       Constructor Create;
       procedure Search(varID_Company : Integer);
       procedure Update;
       procedure Save;
       procedure Delete;

  end;

implementation

{ TCompany }

constructor TCompany.Create;
begin
    id_company          := 0;
    tax_id              := '';
    add_date            := '';
    upd_date            := '';
    companyname         := '';
    tradiningname       := '';
    country             := '';
    city                := '';
    st                  := '';
    address1            := '';
    zipcode             := '';
    companyowner        := '';
    companyemail1       := '';
    companyphonenumber1 := '';
    id_user             := 0;
    estimateDays        := 0;
    Tax                 := 0.0;
end;

procedure TCompany.Delete;
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
       sqlDados := TFDQuery.Create(Nil);
    Try
        sqlDados.Connection := FDConnection;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Delete from TBCOMPANY where id_company = :id_company ');
        sqlDados.Params.ParamByName('id_company').AsInteger := id_company;
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

procedure TCompany.Save;
var
 sqlDados : TFDQuery;
begin

  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try
        sqlDados.Connection := FDConnection;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Insert into TBCOMPANY (');
        sqlDados.SQL.Add('ID_COMPANY');
        sqlDados.SQL.Add(',ADD_DATE');
        sqlDados.SQL.Add(',TAX_ID');
        sqlDados.SQL.Add(',COMPANYNAME');
        sqlDados.SQL.Add(',TRADINGNAME');
        sqlDados.SQL.Add(',COMPANYOWNER');
        sqlDados.SQL.Add(',PHONENUMBER ');
        sqlDados.SQL.Add(',EMAIL');
        sqlDados.SQL.Add(',ADDRESS1 ');
        sqlDados.SQL.Add(',COUNTRY');
        sqlDados.SQL.Add(',ST ');
        sqlDados.SQL.Add(',CITY');
        sqlDados.SQL.Add(',ZIPCODE');
        sqlDados.SQL.Add(',ESTIMATEDAYS');
        sqlDados.SQL.Add(',TAX');
        sqlDados.SQL.Add(',ID_USER)');
        sqlDados.SQL.Add(' Values (');
        sqlDados.SQL.Add( IntToStr(id_company) + ',' );
        sqlDados.SQL.Add( QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm:ss', now)) +  ',' );
        sqlDados.SQL.Add( QuotedStr(tax_id) +  ',' );
        sqlDados.SQL.Add( QuotedStr(companyname) +  ',' );
        sqlDados.SQL.Add( QuotedStr(tradiningname) +  ',' );
        sqlDados.SQL.Add( QuotedStr(companyowner) +  ',' );
        sqlDados.SQL.Add( QuotedStr(Fcompanyphonenumber1) +  ',' );
        sqlDados.SQL.Add( QuotedStr(companyemail1) +  ',' );
        sqlDados.SQL.Add( QuotedStr(address1) +  ',' );
        sqlDados.SQL.Add( QuotedStr(country)  +  ',' );
        sqlDados.SQL.Add( QuotedStr(st) +  ',' );
        sqlDados.SQL.Add( QuotedStr(city) +  ',' );
        sqlDados.SQL.Add( QuotedStr(zipcode) +  ',' );
        sqlDados.SQL.Add( IntToStr(estimateDays) +  ',' );
        sqlDados.SQL.Add( FloatToStr(Tax) +  ',' );
        sqlDados.SQL.Add( IntToStr(id_user) +  ')' );

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


procedure TCompany.Search(varID_Company: Integer);
var
  sqlDados : TFDQuery;
begin

   with DBDados do
   begin
       sqlDados := TFDQuery.Create(Nil);
       sqlDados.Connection := FDConnection;
       Try
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Select id_company, tax_id, add_date, upd_date, companyname, TRADINGNAME,  ');
        sqlDados.SQL.Add('companyowner, country, st, city, address1, phonenumber, zipcode,');
        sqlDados.SQL.Add('email,EstimateDays, id_user, tax');
        sqlDados.SQL.Add(' From TBCOMPANY WITH (NOLOCK) Where id_company = :id_company');
        sqlDados.Params.ParamByName('id_company').AsInteger := varID_Company;
        sqlDados.Open;
        if not sqlDados.IsEmpty  then
        begin
          id_company          := sqlDados.FieldByName('id_company').AsInteger;
          tax_id              := sqlDados.FieldByName('tax_id').ASString;
          add_date            := sqlDados.FieldByName('add_date').ASString;
          upd_date            := sqlDados.FieldByName('upd_date').ASString;
          companyname         := sqlDados.FieldByName('companyname').ASString;
          tradiningname       := sqlDados.FieldByName('TRADINGNAME').ASString;
          companyowner        := sqlDados.FieldByName('companyowner').ASString;
          country             := sqlDados.FieldByName('country').ASString;
          st                  := sqlDados.FieldByName('st').ASString;
          city                := sqlDados.FieldByName('city').ASString;
          address1            := sqlDados.FieldByName('address1').ASString;
          companyphonenumber1 := sqlDados.FieldByName('phonenumber').ASString;
          zipcode             := sqlDados.FieldByName('zipcode').ASString;
          companyemail1       := sqlDados.FieldByName('EMAIL').ASString;
          estimateDays        := sqlDados.FieldByName('EstimateDays').AsInteger;
          id_user             := sqlDados.FieldByName('id_user').AsInteger;
          Tax                 := sqlDados.FieldByName('Tax').AsFloat;

        end;
          sqlDados.Close;
       Finally
         FreeAndNil(sqlDados);
       End;
   end;

end;


procedure TCompany.setFaddress1(const Value: string);
begin
  Faddress1 := Value;
end;

procedure TCompany.setFadd_date(const Value: string);
begin
  Fadd_date := Value;
end;

procedure TCompany.setFcity(const Value: string);
begin
  Fcity := Value;
end;

procedure TCompany.setFcompanyemail1(const Value: string);
begin

end;

procedure TCompany.setFcompanyname(const Value: string);
begin
  Fcompanyname := Value;
end;

procedure TCompany.setFcompanyowner(const Value: string);
begin
  Fcompanyowner := Value;
end;

procedure TCompany.setFcompanyphonenumber1(const Value: string);
begin
  Fcompanyphonenumber1 := Value;
end;

procedure TCompany.setFcompanytemail1(const Value: string);
begin
  Fcompanyemail1 := Value;
end;

procedure TCompany.setFcontactemail1(const Value: string);
begin
end;

procedure TCompany.setFcontactname1(const Value: string);
begin
end;

procedure TCompany.setFcontactphonenumber1(const Value: string);
begin
  Fcompanyphonenumber1 := Value;
end;

procedure TCompany.setFcountry(const Value: string);
begin
  Fcountry := Value;
end;

procedure TCompany.setFestimateDays(const Value: integer);
begin
  FestimateDays := Value;
end;

procedure TCompany.setFid_company(const Value: integer);
begin
  Fid_company := Value;
end;

procedure TCompany.setFid_user(const Value: integer);
begin
  Fid_user := Value;
end;


procedure TCompany.setFst(const Value: string);
begin
  Fst := Value;
end;

procedure TCompany.setFTax(const Value: Double);
begin
  FTax := Value;
end;

procedure TCompany.setFtax_Id(const Value: string);
begin
  Ftax_id := Value;
end;

procedure TCompany.setFtradiningname(const Value: string);
begin
  Ftradiningname := Value;
end;

procedure TCompany.setFupd_date(const Value: string);
begin
  Fupd_date := Value;
end;

procedure TCompany.setFzipcode(const Value: string);
begin
  Fzipcode := Value;
end;

procedure TCompany.Update;
var
  sqlDados : TFDQuery;
begin
   with DBDados do
   begin
       sqlDados := TFDQuery.Create(Nil);
       sqlDados.Connection := FDConnection;
       Try
        sqldados.sql.clear;
        sqldados.sql.add('Update tbcompany ');
        sqldados.sql.add(' Set  ');
        sqldados.sql.add(' upd_date = :upd_date ');
        sqldados.sql.add(',tax_id = :tax_id ');
        sqldados.sql.add(',companyname = :companyname ');
        sqldados.sql.add(',tradingname = :tradingname');
        sqldados.sql.add(',companyowner = :companyowner');
        sqldados.sql.add(',phonenumber = :phonenumber');
        sqldados.sql.add(',email = :email');
        sqldados.sql.add(',address1 = :address1');
        sqldados.sql.add(',country = :country');
        sqldados.sql.add(',st = :st');
        sqldados.sql.add(',city = :city');
        sqldados.sql.add(',zipcode = :zipcode');
        sqldados.sql.add(',id_user = :id_user ');
        sqldados.sql.add(',EstimateDays = :EstimateDays ');
        sqldados.sql.add(',Tax = :Tax ');

        sqlDados.SQL.Add(' Where ID_COMPANY = :ID_COMPANY ');


        sqlDados.Params.ParamByName('upd_date').AsString            := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
        sqlDados.Params.ParamByName('tax_id').AsString              := tax_id;
        sqlDados.Params.ParamByName('companyname').AsString         := Fcompanyname;
        sqlDados.Params.ParamByName('tradingname').AsString         := tradiningname;
        sqlDados.Params.ParamByName('companyowner').AsString        := companyowner;
        sqlDados.Params.ParamByName('phonenumber').AsString         := companyphonenumber1;
        sqlDados.Params.ParamByName('email').AsString               := companyemail1;
        sqlDados.Params.ParamByName('address1').AsString            := address1;
        sqlDados.Params.ParamByName('country').AsString             := country;
        sqlDados.Params.ParamByName('st').AsString                  := st;
        sqlDados.Params.ParamByName('city').AsString                := city;
        sqlDados.Params.ParamByName('zipcode').AsString             := zipcode;
        sqlDados.Params.ParamByName('ID_USER').AsInteger            := id_user;
        sqlDados.Params.ParamByName('EstimateDays').AsInteger       := estimateDays;
        sqlDados.Params.ParamByName('Tax').AsFloat                  := Tax;

        sqlDados.Params.ParamByName('ID_COMPANY').AsInteger         := ID_COMPANY;

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

end.
