unit uClassDBGenerics;

interface

uses uDMConectDB, uClassCompany, Data.DB, Messages,MensFun, System.DateUtils, Data.SqlTimSt,
  System.SysUtils, System.Classes, IniFiles,  Vcl.Forms, Vcl.Dialogs, uFunctions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Generics.Collections;




Type
  TFolder = class
    private

    Fpasta    : string;
    Fsubpasta : string;
    procedure setFpasta(const Value: string);
    procedure setFsubpasta(const Value: string);
    public
    property pasta: string read Fpasta write setFpasta;
    property subpasta : string read Fsubpasta write setFsubpasta;

     procedure CreateFolder;
     procedure CreateSubPasta;

     Constructor Create;
  end;



Type
   TVendor = class
     private
       Fid_contractor : integer;
       Fnome          : string;
       Fposition      : string;
       Fcomissao      : Double;
       Femail         : String;
       FCompany       : TCompany;
    procedure setFcomissao(const Value: Double);
    procedure setFid_contractor(const Value: integer);
    procedure setFposition(const Value: string);
    procedure setFnome(const Value: string);
    procedure setFemail(const Value: string);
    public
      property id_contractor  : integer read Fid_contractor write setFid_contractor;
      property position       : string read Fposition write setFposition;
      property comissao       : Double read Fcomissao write setFcomissao;
      property nome           : string read Fnome write setFnome;
      property email          : string read Femail write setFemail;
      property Company        : TCompany read FCompany;

      Constructor Create;
      procedure Search(id_user : Integer);
   end;


Type
  TContact = class
    private
     	Fid_contact   : integer;
      Fid_address   : integer;
	    Fid_customer  : integer;
   	  Fid_supplier  : integer;
	    Fname         : string;
	    Fposition     : string;
    	Femail        : string;
    	Fphone1       : string;
    	Fphone2       : string;
    	Fid_user      : integer;
    	Fadd_date     : string;
   	  Fupd_date     : string;
    procedure setFid_customer(const Value: integer);
    procedure setFid_supplier(const Value: integer);
    procedure setFid_user(const Value: integer);
    procedure setFadd_date(const Value: string);
    procedure setFupd_date(const Value: string);
    procedure setFemail(const Value: string);
    procedure setFname(const Value: string);
    procedure setFphone1(const Value: string);
    procedure setFphone2(const Value: string);
    procedure setFposition(const Value: string);
    procedure setFid_contact(const Value: integer);
    procedure setFid_address(const Value: integer);
    public
      property id_contact  : integer read Fid_contact write setFid_contact;
      property id_address  : integer read Fid_address write setFid_address;
      property id_customer : integer read Fid_customer write setFid_customer;
      property id_supplier : integer read Fid_supplier write setFid_supplier;
      property name        : string  read Fname write setFname;
	    property position    : string  read Fposition write setFposition;
    	property email       : string  read Femail write setFemail;
    	property phone1      : string  read Fphone1 write setFphone1;
    	property phone2      : string  read Fphone2 write setFphone2;
      property id_user     : integer read Fid_user write setFid_user;
      property add_date    : string  read Fadd_date write setFadd_date;
      property upd_date    : string  read Fupd_date write setFupd_date;

      constructor Create;
  end;


Type
  TAddress = class
    private
      FId_Address          : integer;
      Fadd_date            : string;
      Fupd_date            : string;
      FId_Customer         : Integer;
      FId_Supplier         : Integer;
      FCountry             : String;
      FST                  : String;
      FCity                : String;
      FAddress             : String;
      FZipCode             : String;
      FID_User             : Integer;
    procedure setFId_Address(const Value: integer);
    procedure setFAddress(const Value: string);
    procedure setFCity(const Value: string);
    procedure setFCountry(const Value: string);
    procedure setFId_Customer(const Value: integer);
    procedure setFST(const Value: string);
    procedure setFZipCode(const Value: string);
    procedure setFadd_date(const Value: string);
    procedure setFupd_date(const Value: string);
    procedure setFId_User(const Value: integer);
    procedure setFId_Supplier(const Value: integer);
    public
       property Id_Address: integer read FId_Address write setFId_Address;
       property add_date : string read Fadd_date write setFadd_date;
       property upd_date : string read Fupd_date write setFupd_date;
       property Id_Customer : integer read FId_Customer write setFId_Customer;
       property Id_Supplier: integer read FId_Supplier write setFId_Supplier;
       property Country : string read FCountry write setFCountry;
       property ST : string read FST write setFST;
       property City : string read FCity write setFCity;
       property Address : string read FAddress write setFAddress;
       property ZipCode : string read FZipCode write setFZipCode;
       property ID_User : integer read FID_User write setFId_User;


       constructor Create;
       procedure Save;
       procedure Search(varId_Address : Integer);
       function SearchByCustomer(varId_Customer: Integer) : TObjectList<TAddress>;

  end;

Type
    TUser = class
     private
      Fid_user : integer;
      Flastname : string;
      Fmiddle_name : string;
      Ffirst_name: string;
      Femail: string;
      Fcomputername : string;
      Fphone_number : string;
      Fid_company : integer;
    procedure setFcomputername(const Value: string);
    procedure setFemail(const Value: string);
    procedure setFfirst_name(const Value: string);
    procedure setFid_user(const Value: integer);
    procedure setFlastname(const Value: string);
    procedure setFmiddle_name(const Value: string);
    procedure setFphone_number(const Value: string);
    procedure setFid_company(const Value: integer);

    public
     property id_user:      integer read Fid_user     write setFid_user;
     property lastname:     string read Flastname     write setFlastname;
     property middlename:   string read Fmiddle_name  write setFmiddle_name;
     property firstname:    string read Ffirst_name   write setFfirst_name;
     property email:        string read Femail        write setFemail;
     property computername: string read Fcomputername write setFcomputername;
     property phonenumber:  string read Fphone_number write setFphone_number;
     property id_company:   integer read Fid_company  write setFid_company;
     constructor Create;
     procedure Search(varID_User : Integer);


end;


type
   TDBNextKey = class
     private
       FKey : integer;
       FTablename : String;
       procedure setFKey(const Value : integer);
    procedure setFTableName(const Value: String);
     protected

     public
       property key : integer read FKey write setFKey;
       property tablename : String read FTableName write setFTableName;
       Constructor Create(varTableName : String);
       procedure UpdateKey(varKey : Integer; varTableName : String);
   end;

implementation

{ TDBNextKey }



constructor TDBNextKey.Create(varTableName: String);
var
   SQL : TFDQuery;
begin

   with DBDados do
   begin
       SQL := TFDQuery.Create(Nil);
       Try

         SQL.Connection := DBDados.FDConnection;
         SQL.Close;
         SQL.SQL.Clear;
         SQL.SQL.Add('Select Value + 1 as Value  From TBKEYS where TABLENAME = ' + QuotedStr( varTableName ) );
         SQL.Open;

         Key := SQL.FieldByName('Value').AsInteger;

       Finally
         FreeAndNil(SQL);
       End;
   end;
end;

procedure TDBNextKey.setFKey(const Value: integer);
begin
   FKey := value;
end;

procedure TDBNextKey.setFTableName(const Value: String);
begin
  FTableName := Value;
end;

procedure TDBNextKey.UpdateKey(varKey: Integer; varTableName: String);
var
   SQL : TFDQuery;
begin

   with DBDados do
   begin
       SQL := TFDQuery.Create(Nil);
       Try

         SQL.Connection := DBDados.FDConnection;
         SQL.Close;
         SQL.SQL.Clear;
         SQL.SQL.Add('Update TBKEYS Set Value  = ' + IntToStr(varKey) );
         SQL.SQL.Add(' Where TABLENAME = ' + QuotedStr( varTableName ) );
         SQL.ExecSQL;

       Finally
         FreeAndNil(SQL);
       End;
   end;
end;

{ TUser }

constructor TUser.Create;
begin
  id_user      := 0;
  lastname     := '';
  middlename   := '';
  firstname    := '';
  email        := '';
  computername := '';
  phonenumber  := '';
  id_company   := 0;
end;

procedure TUser.Search(varID_User: Integer);
var
  sqlDados : TFDQuery;
begin

   with DBDados do
   begin
       sqlDados := TFDQuery.Create(Nil);
       sqlDados.Connection := FDConnection;
       Try
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Select id_user, lastname, middle_name, first_name, email, computername, phone_number, id_company From TBUSER Where id_user = :id_user');
        sqlDados.Params.ParamByName('id_user').AsInteger := varID_User;
        sqlDados.Open;
        if not sqlDados.IsEmpty  then
        begin

          id_user      := sqlDados.FieldByName('id_user').AsInteger;
          lastname     := sqlDados.FieldByName('lastname').ASString;
          middlename   := sqlDados.FieldByName('middle_name').ASString;
          firstname    := sqlDados.FieldByName('first_name').ASString;
          email        := sqlDados.FieldByName('email').ASString;
          computername := sqlDados.FieldByName('computername').ASString;
          phonenumber  := sqlDados.FieldByName('phone_number').ASString;
          id_company   := sqlDados.FieldByName('id_company').AsInteger;

        end;
          sqlDados.Close;
       Finally
         FreeAndNil(sqlDados);
       End;
   end;

end;

procedure TUser.setFcomputername(const Value: string);
begin
   Fcomputername := Value;
end;

procedure TUser.setFemail(const Value: string);
begin
   Femail := Value;
end;

procedure TUser.setFfirst_name(const Value: string);
begin
   Ffirst_name := Value;
end;

procedure TUser.setFid_company(const Value: integer);
begin
  Fid_company := Value;
end;

procedure TUser.setFid_user(const Value: integer);
begin
   Fid_user := Value;
end;

procedure TUser.setFlastname(const Value: string);
begin
    Flastname := Value;
end;

procedure TUser.setFmiddle_name(const Value: string);
begin
  Fmiddle_name := Value;
end;

procedure TUser.setFphone_number(const Value: string);
begin
   Fphone_number := Value;
end;

{ TAddress }

constructor TAddress.Create;
begin
    Id_Address := 0;
    Add_date := '';
    upd_date := '';
    Id_Customer := 0;
    Id_Supplier := 0;
    Country := '';
    ST := '';
    City := '';
    Address := '';
    ZipCode := '';
end;

procedure TAddress.Save;
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
        sqlDados.SQL.Add('Insert into TBADDRESS (');
        sqlDados.SQL.Add('ID_ADDRESS');
        sqlDados.SQL.Add(',add_date');
        sqlDados.SQL.Add(',ID_CUSTOMER');
        sqlDados.SQL.Add(',COUNTRY');
        sqlDados.SQL.Add(',STATEE ');
        sqlDados.SQL.Add(',CITY');
        sqlDados.SQL.Add(',ADDRESS1');
        sqlDados.SQL.Add(',zipcode ');
        sqlDados.SQL.Add(',id_user )');
        sqlDados.SQL.Add(' Values (');

        sqlDados.SQL.Add( IntToStr(Id_Address) + ',' );
        sqlDados.SQL.Add( QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm:ss', now)) +  ',' );
        sqlDados.SQL.Add( IntToStr(ID_CUSTOMER) +  ',' );
        sqlDados.SQL.Add( QuotedStr(COUNTRY) +  ',' );
        sqlDados.SQL.Add( QuotedStr(ST)  +  ',' );
        sqlDados.SQL.Add( QuotedStr(CITY) +  ',' );
        sqlDados.SQL.Add( QuotedStr(ADDRESS) +  ',' );
        sqlDados.SQL.Add( QuotedStr(zipcode) +  ',' );
        sqlDados.SQL.Add( IntToStr(ID_USER) +  ')' );

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

procedure TAddress.Search(varId_Address: Integer);
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
        sqlDados.SQL.Add('Select id_address, add_date, id_customer, id_supplier, country, statee, city, address1, zipcode From TBADDRESS Where id_address = :id_address');
        sqlDados.Params.ParamByName('id_address').AsInteger := varId_Address;
        sqlDados.Open;
        if not sqlDados.IsEmpty  then
        begin
          id_address         := sqlDados.FieldByName('id_address').AsInteger;
          add_date           := sqlDados.FieldByName('add_date').ASString;
          Id_Customer        := sqlDados.FieldByName('Id_Customer').AsInteger;
          Id_Supplier        := sqlDados.FieldByName('Id_Supplier').AsInteger;
          Country            := sqlDados.FieldByName('Country').ASString;
          ST                 := sqlDados.FieldByName('STATEE').ASString;
          City               := sqlDados.FieldByName('CITY').ASString;
          Address            := sqlDados.FieldByName('ADDRESS1').ASString;
          ZipCode            := sqlDados.FieldByName('zipcode').ASString;
        end;
       Finally
         FreeAndNil(sqlDados);
       End;
   end;

end;


function TAddress.SearchByCustomer(varId_Customer: Integer) : TObjectList<TAddress>;
var
  sqlDados : TFDQuery;
  adrredress : TObjectList<TAddress>;
  adrredres : TAddress;
begin
   with DBDados do
   begin
       sqlDados := TFDQuery.Create(Nil);
       sqlDados.Connection := FDConnection;
       Try
        sqlDados.Close;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Select id_address, add_date, id_customer, id_supplier, country, statee, city, address1, zipcode From TBADDRESS Where Id_Customer = :varId_Customer');
        sqlDados.Params.ParamByName('varId_Customer').AsInteger := varId_Customer;
        sqlDados.Open;
        adrredress :=  TObjectList<TAddress>.Create;
        adrredres := TAddress.Create;
        if not sqlDados.IsEmpty  then
        begin

          adrredres.id_address         := sqlDados.FieldByName('id_address').AsInteger;
          adrredres.add_date           := sqlDados.FieldByName('add_date').ASString;
          adrredres.Id_Customer        := sqlDados.FieldByName('Id_Customer').AsInteger;
          adrredres.Id_Supplier        := sqlDados.FieldByName('Id_Supplier').AsInteger;
          adrredres.Country            := sqlDados.FieldByName('Country').ASString;
          adrredres.ST                 := sqlDados.FieldByName('STATEE').ASString;
          adrredres.City               := sqlDados.FieldByName('CITY').ASString;
          adrredres.Address            := sqlDados.FieldByName('ADDRESS1').ASString;
          adrredres.ZipCode            := sqlDados.FieldByName('zipcode').ASString;
          adrredress.Add(adrredres);

        end;
       Finally
         FreeAndNil(sqlDados);
         FreeAndNil(adrredres);
       End;
       Result := adrredress;
   end;

end;

procedure TAddress.setFAddress(const Value: string);
begin
   FAddress := Value;
end;

procedure TAddress.setFadd_date(const Value: string);
begin
   Fadd_date := Value;
end;

procedure TAddress.setFCity(const Value: string);
begin
  FCity := Value;
end;

procedure TAddress.setFCountry(const Value: string);
begin
  FCountry := Value;
end;

procedure TAddress.setFId_Address(const Value: integer);
begin
  FId_Address := Value;
end;

procedure TAddress.setFId_Customer(const Value: integer);
begin
  FId_Customer := Value;
end;

procedure TAddress.setFId_Supplier(const Value: integer);
begin
   FId_Supplier := Value;
end;

procedure TAddress.setFId_User(const Value: integer);
begin
   FID_User := Value;
end;

procedure TAddress.setFST(const Value: string);
begin
   FST := Value;
end;

procedure TAddress.setFupd_date(const Value: string);
begin
   Fupd_date := Value;
end;

procedure TAddress.setFZipCode(const Value: string);
begin
  FZipCode := Value;
end;

{ TContact }

constructor TContact.Create;
begin
  id_contact := 0;
  id_address := 0;
  id_customer := 0;
  id_supplier := 0;
  id_user := 0;
  name := '';
  position := '';
  email := '';
  phone1 := '';
  phone2 := '';
  add_date := '';
  upd_date := '';
end;

procedure TContact.setFadd_date(const Value: string);
begin
  Fadd_date := Value;
end;

procedure TContact.setFemail(const Value: string);
begin
  Femail := Value;
end;


procedure TContact.setFid_address(const Value: integer);
begin
  Fid_address := Value;
end;

procedure TContact.setFid_contact(const Value: integer);
begin
  Fid_contact := Value;
end;

procedure TContact.setFid_customer(const Value: integer);
begin
  Fid_customer := Value;
end;

procedure TContact.setFid_supplier(const Value: integer);
begin
  Fid_supplier := Value;
end;

procedure TContact.setFid_user(const Value: integer);
begin
  Fid_user := Value;
end;

procedure TContact.setFname(const Value: string);
begin
  Fname := Value;
end;

procedure TContact.setFphone1(const Value: string);
begin
  Fphone1 := Value;
end;

procedure TContact.setFphone2(const Value: string);
begin
  Fphone2 := Value;
end;

procedure TContact.setFposition(const Value: string);
begin
  Fposition := Value;
end;

procedure TContact.setFupd_date(const Value: string);
begin
  Fupd_date := Value;
end;

{ TVendor }

constructor TVendor.Create;
begin
  id_contractor := 0;
  nome := '';
  position := '';
  comissao := 0.00;
  email := '';
  FCompany := TCompany.Create;
end;



procedure TVendor.Search(id_user: Integer);
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
        sqlDados.SQL.Add('SELECT C.ID_COMPANY,  C.ID_CONTRACTORS, C.NAME AS VENDORNAME, C.COMISSION, P.NAME AS POSITION, C.EMAIL ');
        sqlDados.SQL.Add('FROM TBCONTRACTORS C WITH (NOLOCK) ');
        sqlDados.SQL.Add('LEFT OUTER JOIN TBPOSITION P ON P.ID_POSITION = C.ID_POSITION ');
        sqlDados.SQL.Add('WHERE  C.ID_MAIN_USER = :ID_USER');

       // sqlDados.SQL.Add('WHERE P.NAME IN ( ''MANAGER'',''SALES REPRESENTATIVE'') and C.ID_MAIN_USER = :ID_USER');
        sqlDados.Params.ParamByName('ID_USER').AsInteger := id_user;
        sqlDados.Open;
        if not sqlDados.IsEmpty  then
        begin
           id_contractor := sqlDados.FieldByName('ID_CONTRACTORS').AsInteger;

           nome          := sqlDados.FieldByName('VENDORNAME').AsString;

           position      := sqlDados.FieldByName('POSITION').AsString;

           comissao      := sqlDados.FieldByName('COMISSION').AsFloat;

           email         := sqlDados.FieldByName('EMAIL').AsString;

           Company.id_company :=  sqlDados.FieldByName('ID_COMPANY').AsInteger;

           Company.Search(sqlDados.FieldByName('ID_COMPANY').AsInteger);
        end;

       Finally
         FreeAndNil(sqlDados);
       End;
   end;
end;

procedure TVendor.setFcomissao(const Value: Double);
begin
  Fcomissao := Value;
end;

procedure TVendor.setFemail(const Value: string);
begin
  Femail := Value;
end;

procedure TVendor.setFid_contractor(const Value: integer);
begin
  Fid_contractor := Value;
end;


procedure TVendor.setFnome(const Value: string);
begin
  Fnome := Value;
end;

procedure TVendor.setFposition(const Value: string);
begin
  Fposition := Value;
end;

{ TFolder }

constructor TFolder.Create;
begin
  pasta := '';
  subpasta := '';
end;

procedure TFolder.CreateFolder;
var
  varMainFolder : String;
begin

   varMainFolder := 'Documents';

   if not DirExists(  ExtractFilePath(Application.ExeName) +  varMainFolder  ) then
   begin
        ForceDirectories ( ExtractFilePath(Application.ExeName) +  varMainFolder );
   end;

end;

procedure TFolder.CreateSubPasta;
var
  varMainFolder : String;
begin
    varMainFolder := 'Documents\' + pasta;

    if not DirExists(  ExtractFilePath(Application.ExeName) +  varMainFolder + '\' + subpasta  ) then
   begin
        ForceDirectories ( ExtractFilePath(Application.ExeName) +  varMainFolder + '\' + subpasta  );
   end;
end;

procedure TFolder.setFpasta(const Value: string);
begin
  Fpasta := Value;
end;

procedure TFolder.setFsubpasta(const Value: string);
begin
  Fsubpasta := Value;
end;

end.
