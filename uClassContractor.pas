unit uClassContractor;

interface

uses uDMConectDB, uClassSupplier, Messages, MensFun, System.DateUtils, Data.SqlTimSt,
  System.SysUtils, System.Classes, IniFiles,  Vcl.Forms, Vcl.Dialogs, uFunctions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  Data.DB;


Type
   TVendor = class
     private
       Fid_contractor : integer;
       Fnome          : string;
       Fposition      : string;
       Fcomissao      : Double;
       Femail         : String;
       FId_Company    : Integer;
       FSupplier      : TSupplier;
    procedure setFcomissao(const Value: Double);
    procedure setFid_contractor(const Value: integer);
    procedure setFposition(const Value: string);
    procedure setFnome(const Value: string);
    procedure setFemail(const Value: string);
    procedure setFId_company(const Value: integer);
    public
      property id_contractor  : integer read Fid_contractor write setFid_contractor;
      property position       : string read Fposition write setFposition;
      property comissao       : Double read Fcomissao write setFcomissao;
      property nome           : string read Fnome write setFnome;
      property email          : string read Femail write setFemail;
      property id_company     : integer read Fid_company write setFId_company;
      property Supplier       : TSupplier read FSupplier;

      Constructor Create;
      procedure Search(id_user : Integer; SelectCompany : Boolean = False);
   end;

implementation

{ TVendor }

constructor TVendor.Create;
begin
  id_contractor := 0;
  nome := '';
  position := '';
  comissao := 0.00;
  email := '';
  id_company := 0;
  FSupplier := TSupplier.Create;
end;

procedure TVendor.Search(id_user: Integer; SelectCompany: Boolean);
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
        sqlDados.SQL.Add('SELECT C.ID_SUPPLIER, C.ID_CONTRACTORS, C.NAME AS VENDORNAME, C.COMISSION, P.NAME AS POSITION, C.EMAIL,  C.ID_COMPANY ');
        sqlDados.SQL.Add('FROM TBCONTRACTORS C WITH (NOLOCK) ');
        sqlDados.SQL.Add('LEFT OUTER JOIN TBPOSITION P ON P.ID_POSITION = C.ID_POSITION ');
        sqlDados.SQL.Add('WHERE  C.ID_MAIN_USER = :ID_USER');

       // sqlDados.SQL.Add('WHERE P.NAME IN ( ''MANAGER'',''SALES REPRESENTATIVE'') and C.ID_MAIN_USER = :ID_USER');
        sqlDados.Params.ParamByName('ID_USER').AsInteger := id_user;
        sqlDados.Open;
        if not sqlDados.IsEmpty  then
        begin
           id_contractor := sqlDados.FieldList.Fields[1].AsInteger; // sqlDados.FieldByName('ID_CONTRACTORS').AsInteger;
           nome          := sqlDados.FieldList.Fields[2].AsString; //sqlDados.FieldByName('VENDORNAME').AsString;
           position      := sqlDados.FieldList.Fields[4].AsString; //sqlDados.FieldByName('POSITION').AsString;
           comissao      := sqlDados.FieldList.Fields[3].AsFloat; //sqlDados.FieldByName('COMISSION').AsFloat;
           email         := sqlDados.FieldList.Fields[5].AsString; //sqlDados.FieldByName('EMAIL').AsString;
           id_company    := sqlDados.FieldList.Fields[6].AsInteger;

           Supplier.id_supplier :=  sqlDados.FieldList.Fields[0].AsInteger; //sqlDados.FieldByName('ID_COMPANY').AsInteger;
           //Supplier.SearchSupplier(sqlDados.FieldList.Fields[0].AsInteger);
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

procedure TVendor.setFId_company(const Value: integer);
begin
  Fid_company := Value;
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

end.
