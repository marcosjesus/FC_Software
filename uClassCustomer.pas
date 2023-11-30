unit uClassCustomer;

interface


uses uDMConectDB, uClassDBGenerics, uClassCompany, Messages, MensFun, System.DateUtils, Data.SqlTimSt,
  System.SysUtils, System.Classes, IniFiles,  Vcl.Forms, Vcl.Dialogs, uFunctions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  Data.DB,  Generics.Collections;

Type
  TCustomer = class
    private
     FId_Customer         : Integer;
     Fadd_date            : string;
     Fupd_date            : string;
     FLastName            : string;
     FMiddleName          : string;
     FFirstName           : string;
     FEmail               : string;
     FPhone1              : string;
     FPhone2              : string;
     FId_User             : integer;
     FAdditionInformation : string;
     FAddress             : TObjectList<TAddress>;
     FCompany             : TCompany;
     FUser                : TUser;
     Fid_contractors      : Integer;
     Ffolder              : TFolder;
     Ftypeperson          : string;

    procedure setFadd_date(const Value: string);
    procedure setFId_Customer(const Value: integer);
    procedure setFupd_date(const Value: string);
    procedure setFFirstName(const Value: string);
    procedure setFLastName(const Value: string);
    procedure setFMiddleName(const Value: string);
    procedure setFAdditionInformation(const Value: string);
    procedure setFEmail(const Value: string);
    procedure setFId_User(const Value: integer);
    procedure setFPhone1(const Value: string);
    procedure setFPhone2(const Value: string);
    procedure SetFid_contractors(const Value: integer);
    procedure SetFtypeperson(const Value: String);

    public
      property Id_customer          : integer read FId_Customer          write setFId_Customer;
      property add_date             : string  read Fadd_date             write setFadd_date;
      property upd_date             : string  read Fupd_date             write setFupd_date;
      property LastName             : string  read FLastName             write setFLastName;
      property MiddleName           : string  read FMiddleName           write setFMiddleName;
      property FirstName            : string  read FFirstName            write setFFirstName;
      property Email                : string  read FEmail                write setFEmail;
      property Phone1               : string  read FPhone1               write setFPhone1;
      property Phone2               : string  read FPhone2               write setFPhone2;
      property Id_User              : integer read FId_User              write setFId_User;
      property AdditionInformation  : string  read FAdditionInformation  write setFAdditionInformation;
      property Address              : TObjectList<TAddress> read FAddress;
      property User                 : TUser read FUser;
      property Company              : TCompany read FCompany;
      property id_contractors       : integer read Fid_contractors      write SetFid_contractors;
      property folder               : TFolder read FFolder;
      property typeperson           : String read Ftypeperson           write SetFtypeperson;

      constructor Create;
      procedure Save;
      procedure Update;
      procedure Delete;
      procedure Search(varID_Customer : Integer);
      destructor Destroy; override;

  end;
implementation

{ TCustomer }

constructor TCustomer.Create;
begin
   Id_customer          := 0;
   add_date             := '';
   upd_date             := '';
   LastName             := '';
   MiddleName           := '';
   FirstName            := '';
   Email                := '';
   Phone1               := '';
   Phone2               := '';
   Id_User              := 0;
   AdditionInformation  := '';
   FAddress             := TObjectList<TAddress>.Create;
   FUser                := TUser.Create;
   FCompany             := TCompany.Create;
   Fid_contractors      := 0;
   FFolder              := TFolder.Create;
   Ftypeperson          := '';
end;

procedure TCustomer.Delete;
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
       sqlDados := TFDQuery.Create(Nil);
    Try
        sqlDados.Connection := FDConnection;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Delete from TBCUSTOMER where id_customer = :id_customer ');
        sqlDados.Params.ParamByName('id_customer').AsInteger := Id_customer;
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

destructor TCustomer.Destroy;
begin
  //if Address <> Nil then
  //   FreeAndNil(Address);
  inherited;
end;

procedure TCustomer.Save;
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try
        sqlDados.Connection := FDConnection;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Insert into TBCUSTOMER (');
        sqlDados.SQL.Add('ID_CUSTOMER');
        sqlDados.SQL.Add(',ADD_DATE');
        sqlDados.SQL.Add(',LAST_NAME');
        sqlDados.SQL.Add(',MIDDLE_NAME');
        sqlDados.SQL.Add(',FIRST_NAME ');
        sqlDados.SQL.Add(',EMAIL');
        sqlDados.SQL.Add(',PHONE1');
        sqlDados.SQL.Add(',PHONE2 ');
        sqlDados.SQL.Add(',ADDITION_INFORMATION ');
        sqlDados.SQL.Add(',ID_COMPANY ');
        sqlDados.SQL.Add(',id_contractors ');
        sqlDados.SQL.Add(',folder ');
        sqlDados.SQL.Add(',typeperson ');
        sqlDados.SQL.Add(',id_user )');
        sqlDados.SQL.Add(' Values (');
        sqlDados.SQL.Add( IntToStr(Id_customer) + ',' );
        sqlDados.SQL.Add( QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm:ss', now)) +  ',' );
        sqlDados.SQL.Add( QuotedStr(LastName) +  ',' );
        sqlDados.SQL.Add( QuotedStr(MiddleName) +  ',' );
        sqlDados.SQL.Add( QuotedStr(FirstName)  +  ',' );
        sqlDados.SQL.Add( QuotedStr(Email) +  ',' );
        sqlDados.SQL.Add( QuotedStr(Phone1) +  ',' );
        sqlDados.SQL.Add( QuotedStr(Phone2) +  ',' );
        sqlDados.SQL.Add( QuotedStr(AdditionInformation) +  ',' );
        sqlDados.SQL.Add( IntToStr(Company.id_company) +  ',' );
        sqlDados.SQL.Add( IntToStr(id_contractors) +  ',' );
        sqlDados.SQL.Add( QuotedStr(folder.pasta) +  ',' );
        sqlDados.SQL.Add( QuotedStr(typeperson) + ',' );
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

procedure TCustomer.Search(varID_Customer : Integer);
var
  sqlDados, sqlAddress : TFDQuery;
  Addresses : TAddress;
  I : Integer;
  Endereco : TAddress;
begin

   with DBDados do
   begin
      sqlDados := TFDQuery.Create(Nil);
      sqlAddress   := TFDQuery.Create(Nil);
      sqlDados.Connection := FDConnection;
      sqlAddress.Connection := FDConnection;
      Try
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Select id_customer, id_company, add_date, upd_date, last_name, middle_name, first_name, email,');
        sqlDados.SQL.Add(' phone1, phone2, addition_information, id_user, id_contractors, folder, typeperson');
        sqlDados.SQL.Add(' From TBCUSTOMER WITH (NOLOCK) Where id_customer = :id_customer');
        sqlDados.Params.ParamByName('id_customer').AsInteger := varID_Customer;
        sqlDados.Open;
        if not sqlDados.IsEmpty  then
        begin

          Id_customer         := sqlDados.FieldByName('Id_customer').AsInteger;
          add_date            := sqlDados.FieldByName('add_date').ASString;
          upd_date            := sqlDados.FieldByName('upd_date').ASString;
          LastName            := sqlDados.FieldByName('Last_Name').ASString;
          MiddleName          := sqlDados.FieldByName('Middle_Name').ASString;
          FirstName           := sqlDados.FieldByName('First_Name').ASString;
          Email               := sqlDados.FieldByName('email').ASString;
          Phone1              := sqlDados.FieldByName('phone1').ASString;
          Phone2              := sqlDados.FieldByName('phone2').ASString;
          AdditionInformation := sqlDados.FieldByName('addition_information').ASString;
          Id_User             := sqlDados.FieldByName('id_user').AsInteger;
          id_contractors      := sqlDados.FieldByName('id_contractors').AsInteger;
          folder.pasta        := sqlDados.FieldByName('folder').AsString;
          typeperson          := sqlDados.FieldByName('typeperson').AsString;
          User.Search(id_user);
          Company.Search(sqlDados.FieldByName('Id_Company').AsInteger);

           Try
              sqlAddress.SQL.Clear;
              sqlAddress.SQL.Add('Select Id_Address, add_date, upd_date, id_customer, id_supplier, country, statee, city, address1, zipcode From TBADDRESS where Id_Customer = :Id_Customer');
              sqlAddress.Params.ParamByName('Id_Customer').AsInteger := Id_customer;
              sqlAddress.Open;
              sqlAddress.First;
              I := 1;
              while not sqlAddress.Eof  do
              begin

                Endereco := TAddress.Create;
                Try
                  Endereco.Id_Address         := sqlAddress.FieldByName('Id_Address').AsInteger;
                  Endereco.add_date           := sqlAddress.FieldByName('add_date').ASString;
                  Endereco.upd_date           := sqlAddress.FieldByName('upd_date').ASString;
                  Endereco.Id_Customer        := sqlAddress.FieldByName('Id_Customer').AsInteger;
                  Endereco.Id_Supplier        := sqlAddress.FieldByName('Id_Supplier').AsInteger;
                  Endereco.Country            := sqlAddress.FieldByName('Country').ASString;
                  Endereco.ST                 := sqlAddress.FieldByName('STATEE').ASString;
                  Endereco.City               := sqlAddress.FieldByName('CITY').ASString;
                  Endereco.Address            := sqlAddress.FieldByName('ADDRESS1').ASString;
                  Endereco.ZipCode            := sqlAddress.FieldByName('zipcode').ASString;
                  Address.Add(Endereco);

                  Inc(I);
                Finally
                  FreeAndNil(Endereco);
                End;

                sqlAddress.Next;
              end;
              sqlAddress.Close;

            Finally
              FreeAndNil(sqlAddress);
            End;
        end;
          sqlDados.Close;
      Finally
         FreeAndNil(sqlDados);
      End;
   end;

end;

procedure TCustomer.setFAdditionInformation(const Value: string);
begin
  FAdditionInformation := Value;
end;

procedure TCustomer.setFadd_date(const Value: string);
begin
  Fadd_date := Value;
end;

procedure TCustomer.setFEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TCustomer.setFFirstName(const Value: string);
begin
  FFirstName := Value;
end;

procedure TCustomer.SetFid_contractors(const Value: integer);
begin
  Fid_contractors := Value;
end;

procedure TCustomer.setFId_Customer(const Value: integer);
begin
  FId_Customer := Value;
end;

procedure TCustomer.setFId_User(const Value: integer);
begin
  FId_User := Value;
end;

procedure TCustomer.setFLastName(const Value: string);
begin
  FLastName := Value;
end;

procedure TCustomer.setFMiddleName(const Value: string);
begin
  FMiddleName := Value;
end;

procedure TCustomer.setFPhone1(const Value: string);
begin
  FPhone1 := Value;
end;

procedure TCustomer.setFPhone2(const Value: string);
begin
  FPhone2 := Value;
end;

procedure TCustomer.SetFtypeperson(const Value: String);
begin
  Ftypeperson := Value;
end;

procedure TCustomer.setFupd_date(const Value: string);
begin
  Fupd_date := Value;
end;

procedure TCustomer.Update;
var
  sqlDados : TFDQuery;
begin
   with DBDados do
   begin
       sqlDados := TFDQuery.Create(Nil);
       sqlDados.Connection := FDConnection;
       Try
        sqldados.sql.clear;
        sqldados.sql.add('Update TBCUSTOMER ');
        sqldados.sql.add(' Set  ');
        sqldados.sql.add(' upd_date = :upd_date ');
        sqldados.sql.add(',Last_Name = :LastName ');
        sqldados.sql.add(',Middle_Name = :MiddleName ');
        sqldados.sql.add(',First_Name = :FirstName');
        sqldados.sql.add(',Email = :Email');
        sqldados.sql.add(',Phone1 = :Phone1');
        sqldados.sql.add(',Phone2 = :Phone2');
        sqldados.sql.add(',id_user = :id_user ');
        sqldados.sql.add(',id_company = :id_company ');
        sqldados.sql.add(',ADDITION_INFORMATION = :AdditionInformation ');
        sqldados.sql.add(',id_contractors = :id_contractors ');
        sqldados.sql.add(',typeperson = :typeperson ');
        sqlDados.SQL.Add(' Where Id_customer = :Id_customer ');

        sqlDados.Params.ParamByName('upd_date').AsString             := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
        sqlDados.Params.ParamByName('LastName').AsString             := LastName;
        sqlDados.Params.ParamByName('MiddleName').AsString           := MiddleName;
        sqlDados.Params.ParamByName('FirstName').AsString            := FirstName;
        sqlDados.Params.ParamByName('Email').AsString                := Email;
        sqlDados.Params.ParamByName('Phone1').AsString               := Phone1;
        sqlDados.Params.ParamByName('Phone2').AsString               := Phone2;
        sqlDados.Params.ParamByName('ID_USER').AsInteger             := id_user;
        sqlDados.Params.ParamByName('id_company').AsInteger          := Company.id_company;
        sqlDados.Params.ParamByName('AdditionInformation').AsString  := AdditionInformation;
        sqlDados.Params.ParamByName('id_contractors').AsInteger      := id_contractors;
        sqlDados.Params.ParamByName('typeperson').AsString           := typeperson;
        sqlDados.Params.ParamByName('Id_customer').AsInteger         := Id_customer;


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
