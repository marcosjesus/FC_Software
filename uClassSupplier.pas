unit uClassSupplier;

interface

uses uDMConectDB, uClassDBGenerics, Messages, MensFun, System.DateUtils, Data.SqlTimSt,
  System.SysUtils, System.Classes, IniFiles,  Vcl.Forms, Vcl.Dialogs, uFunctions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  Data.DB;


Type
  TSupplier = class
    private
       Fid_supplier         : Integer;
       Fadd_date            : string;
       Fupd_date            : string;
       Fnamebusiness        : string;
       Ftradiningname       : string;
       Findustry            : string;
       Fproduct_service     : string;
       Fwebsite             : string;
       Fadditioninfo        : string;
       Fid_user             : integer;
       FUser                : TUser;

    procedure setFid_supplier(const Value: integer);
    procedure setFadditioninfo(const Value: string);
    procedure setFindustry(const Value: string);
    procedure setFnamebusiness(const Value: string);
    procedure setFproduct_service(const Value: string);
    procedure setFtradiningname(const Value: string);
    procedure setFwebsite(const Value: string);
    procedure setFid_user(const Value: integer);
    procedure setFadd_date(const Value: string);
    procedure setFupd_date(const Value: string);
   public
       property id_supplier         : integer read Fid_supplier        write setFid_supplier;
       property add_date            : string read Fadd_date            write setFadd_date;
       property upd_date            : string read Fupd_date            write setFupd_date;
       property namebusiness        : string read Fnamebusiness        write setFnamebusiness;
       property tradiningname       : string read Ftradiningname       write setFtradiningname;
       property industry            : string read Findustry            write setFindustry;
       property product_service     : string read Fproduct_service     write setFproduct_service;
       property website             : string read Fwebsite             write setFwebsite;
       property additioninfo        : string read Fadditioninfo        write setFadditioninfo;
       property id_user             : integer read Fid_user            write setFid_user;
       property User                : TUser read FUser;

       Constructor Create;
       procedure SearchSupplier(varID_Supplier : Integer);
       procedure UpdateSupplier;
       procedure SaveSupplier;
       procedure Delete;
       function Lista(var Lista : TStringList) : TStringList;
  end;



implementation

{ TSupplie }

constructor TSupplier.Create;
begin
    id_supplier         := 0;
    add_date            := '';
    upd_date            := '';
    namebusiness        := '';
    tradiningname       := '';
    industry            := '';
    product_service     := '';
    website             := '';
    additioninfo        := '';
    id_user             := 0;
    FUser               := TUser.Create;
end;


procedure TSupplier.Delete;
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
       sqlDados := TFDQuery.Create(Nil);
    Try
        sqlDados.Connection := FDConnection;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Delete from TBSUPPLIER where id_supplier = :id_supplier ');
        sqlDados.Params.ParamByName('id_supplier').AsInteger := id_supplier;
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

function TSupplier.Lista(var Lista : TStringList): TStringList;
var
  sqlSupplier, sqlSave : TFDQuery;
begin
   sqlSupplier := TFDQuery.Create(Nil);
   Lista.Clear;
   Try
     sqlSupplier.Connection := DBDados.Connection;
     sqlSupplier.Close;
     sqlSupplier.SQL.Clear;
     sqlSupplier.SQL.Add('Select id_supplier From TBSUPPLIER' );
     sqlSupplier.Open;
     sqlSupplier.First;
     while not sqlSupplier.EOF do
     begin
       Lista.Add(sqlSupplier.FieldByName('id_supplier').AsString);
       sqlSupplier.Next;
     end;
   Finally
      FreeAndNil(sqlSupplier);
   End;
   Result := Lista;
end;

procedure TSupplier.SaveSupplier;
var
 sqlDados : TFDQuery;
begin

  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try
        sqlDados.Connection := FDConnection;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Insert into TBSUPPLIER (');
        sqlDados.SQL.Add('id_supplier');
        sqlDados.SQL.Add(',add_date');
        sqlDados.SQL.Add(',namebusiness');
        sqlDados.SQL.Add(',tradiningname');
        sqlDados.SQL.Add(',industry');
        sqlDados.SQL.Add(',product_service');
        sqlDados.SQL.Add(',website');
        sqlDados.SQL.Add(',id_user');
        sqlDados.SQL.Add(',additioninfo )');
        sqlDados.SQL.Add(' Values (');
        sqlDados.SQL.Add( IntToStr(id_supplier) + ',' );
        sqlDados.SQL.Add( QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm:ss', now)) +  ',' );
        sqlDados.SQL.Add( QuotedStr(namebusiness) +  ',' );
        sqlDados.SQL.Add( QuotedStr(tradiningname) +  ',' );
        sqlDados.SQL.Add( QuotedStr(industry)  +  ',' );
        sqlDados.SQL.Add( QuotedStr(product_service) +  ',' );
        sqlDados.SQL.Add( QuotedStr(website) +  ',' );
        sqlDados.SQL.Add( IntToStr(id_user) +  ',' );
        sqlDados.SQL.Add( QuotedStr(additioninfo)  +  ')' );

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

procedure TSupplier.SearchSupplier(varID_Supplier: Integer);
var
  sqlDados : TFDQuery;
begin

   with DBDados do
   begin
       sqlDados := TFDQuery.Create(Nil);
       sqlDados.Connection := FDConnection;
       Try
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Select ID_SUPPLIER, ADD_DATE, UPD_DATE, namebusiness, tradiningname, industry, product_service, website, additioninfo, id_user From TBSUPPLIER Where id_supplier = :id_supplier');
        sqlDados.Params.ParamByName('id_supplier').AsInteger := varID_Supplier;
        sqlDados.Open;
        if not sqlDados.IsEmpty  then
        begin
          id_supplier         := sqlDados.FieldByName('id_supplier').AsInteger;
          add_date            := sqlDados.FieldByName('add_date').ASString;
          upd_date            := sqlDados.FieldByName('upd_date').ASString;
          namebusiness        := sqlDados.FieldByName('namebusiness').ASString;
          tradiningname       := sqlDados.FieldByName('tradiningname').ASString;
          industry            := sqlDados.FieldByName('industry').ASString;
          product_service     := sqlDados.FieldByName('product_service').ASString;
          website             := sqlDados.FieldByName('website').ASString;
          additioninfo        := sqlDados.FieldByName('additioninfo').ASString;
          id_user             := sqlDados.FieldByName('id_user').AsInteger;
          User.Search(id_user);

        end;
          sqlDados.Close;
       Finally
         FreeAndNil(sqlDados);
       End;
   end;
end;




procedure TSupplier.UpdateSupplier;
var
  sqlDados : TFDQuery;
begin

   with DBDados do
   begin
       sqlDados := TFDQuery.Create(Nil);
       sqlDados.Connection := FDConnection;
       Try
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Update TBSUPPLIER ');
        sqlDados.SQL.Add(' Set  ');
        sqlDados.SQL.Add(' upd_date = :upd_date');
        sqlDados.SQL.Add(',namebusiness = :namebusiness ');
        sqlDados.SQL.Add(',tradiningname = :tradiningname');
        sqlDados.SQL.Add(',industry = :industry');
        sqlDados.SQL.Add(',product_service = :product_service');
        sqlDados.SQL.Add(',website = :website');
        sqlDados.SQL.Add(',additioninfo = :additioninfo ');
        sqlDados.SQL.Add(',ID_USER = :ID_USER ');

        sqlDados.SQL.Add(' Where ID_SUPPLIER = :id_supplier ');
        sqlDados.Params.ParamByName('id_supplier').AsInteger        := id_supplier;
        sqlDados.Params.ParamByName('upd_date').AsString             := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
        sqlDados.Params.ParamByName('namebusiness').AsString        := namebusiness;
        sqlDados.Params.ParamByName('tradiningname').AsString       := tradiningname;
        sqlDados.Params.ParamByName('industry').AsString            := industry;
        sqlDados.Params.ParamByName('product_service').AsString     := product_service;
        sqlDados.Params.ParamByName('website').AsString             := website;
        sqlDados.Params.ParamByName('additioninfo').AsString        := additioninfo;
        sqlDados.Params.ParamByName('ID_USER').AsInteger            := id_user;

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


procedure TSupplier.setFadditioninfo(const Value: string);
begin
  Fadditioninfo := Value;
end;


procedure TSupplier.setFadd_date(const Value: string);
begin
  Fadd_date := Value;
end;


procedure TSupplier.setFid_supplier(const Value: integer);
begin
  Fid_supplier := Value;
end;

procedure TSupplier.setFid_user(const Value: integer);
begin
  Fid_user := Value;
end;

procedure TSupplier.setFindustry(const Value: string);
begin
  Findustry := Value;
end;

procedure TSupplier.setFnamebusiness(const Value: string);
begin
  Fnamebusiness := Value;
end;


procedure TSupplier.setFproduct_service(const Value: string);
begin
  Fproduct_service := Value;
end;


procedure TSupplier.setFtradiningname(const Value: string);
begin
  Ftradiningname := Value;
end;

procedure TSupplier.setFupd_date(const Value: string);
begin
  Fupd_date := Value;
end;

procedure TSupplier.setFwebsite(const Value: string);
begin
  Fwebsite := Value;
end;


end.
