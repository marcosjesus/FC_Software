unit uClassImportPrice;

interface



uses uDMConectDB, uClassDBGenerics, Messages, MensFun, System.DateUtils, Data.SqlTimSt,
  System.SysUtils, System.Classes, IniFiles,  Vcl.Forms, Vcl.Dialogs, uFunctions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  Data.DB,  Generics.Collections;


Type
  TImportPrice = class
    private
      Fid_supplier       : Integer;
      Fstyle_code        : String;
      Fstyle_description : String;
      Fsize              : String;
      Fback              : String;
      Fstd_roll          : Double;
      Ffiber             : String;
      Fbrand             : String;
      Frollprice         : Currency;
      Fcutprice          : Currency;
      Fum                : String;
      Fid_user           : Integer;
    procedure setFback(const Value: String);
    procedure setFbrand(const Value: String);
    procedure setFcutprice(const Value: Currency);
    procedure setFfiber(const Value: String);
    procedure setFid_supplier(const Value: Integer);
    procedure setFid_user(const Value: Integer);
    procedure setFrollprice(const Value: Currency);
    procedure setFset_roll(const Value: Double);
    procedure setFsize(const Value: String);
    procedure setFstyle_code(const Value: String);
    procedure setFstyle_description(const Value: String);
    procedure setFum(const Value: String);

    public
      property id_supplier       : Integer  read Fid_supplier       write setFid_supplier;
      property style_code        : String   read Fstyle_code        write setFstyle_code;
      property style_description : String   read Fstyle_description write setFstyle_description;
      property size              : String   read Fsize              write setFsize;
      property back              : String   read Fback              write setFback;
      property std_roll          : Double   read Fstd_roll          write setFset_roll;
      property fiber             : String   read Ffiber             write setFfiber;
      property brand             : String   read Fbrand             write setFbrand;
      property rollprice         : Currency read Frollprice         write setFrollprice;
      property cutprice          : Currency read Fcutprice          write setFcutprice;
      property um                : String   read Fum                write setFum;
      property id_user           : Integer  read Fid_user           write setFid_user;
      Constructor Create;
      procedure Save;

  end;

implementation

{ TImportPrice }

constructor TImportPrice.Create;
begin
    Fid_supplier       := 0;
    Fstyle_code        := '';
    Fstyle_description := '';
    Fsize              := '';
    Fback              := '';
    Fstd_roll          := 0.0;
    Ffiber             := '';
    Fbrand             := '';
    Frollprice         := 0.0;
    Fcutprice          := 0.0;
    Fum                := '';
    Fid_user           := 0;
end;

procedure TImportPrice.Save;
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try
        sqlDados.Connection := FDConnection;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Insert into TBIMPORTPRICE (');
        sqlDados.SQL.Add('id_supplier');
        sqlDados.SQL.Add(',style_code');
        sqlDados.SQL.Add(',style_description');
        sqlDados.SQL.Add(',size');
        sqlDados.SQL.Add(',back');
        sqlDados.SQL.Add(',std_roll');
        sqlDados.SQL.Add(',fiber');
        sqlDados.SQL.Add(',brand');
        sqlDados.SQL.Add(',rollprice');
        sqlDados.SQL.Add(',cutprice');
        sqlDados.SQL.Add(',um');
        sqlDados.SQL.Add(',id_user)');
        sqlDados.SQL.Add(' Values (');
        sqlDados.SQL.Add(':id_supplier');
        sqlDados.SQL.Add(',:style_code');
        sqlDados.SQL.Add(',:style_description');
        sqlDados.SQL.Add(',:size');
        sqlDados.SQL.Add(',:back');
        sqlDados.SQL.Add(',:std_roll');
        sqlDados.SQL.Add(',:fiber');
        sqlDados.SQL.Add(',:brand');
        sqlDados.SQL.Add(',:rollprice');
        sqlDados.SQL.Add(',:cutprice');
        sqlDados.SQL.Add(',:um');
        sqlDados.SQL.Add(',:id_user)');

        sqlDados.Params.ParamByName('id_supplier').AsInteger      := id_supplier;
        sqlDados.Params.ParamByName('style_code').AsString        := style_code;
        sqlDados.Params.ParamByName('style_description').AsString := style_description;
        sqlDados.Params.ParamByName('size').AsString              := size;
        sqlDados.Params.ParamByName('back').AsString              := back;
        sqlDados.Params.ParamByName('std_roll').AsFloat           := std_roll;
        sqlDados.Params.ParamByName('fiber').AsString             := fiber;
        sqlDados.Params.ParamByName('brand').AsString             := brand;
        sqlDados.Params.ParamByName('rollprice').AsFloat          := rollprice;
        sqlDados.Params.ParamByName('cutprice').AsFloat           := cutprice;
        sqlDados.Params.ParamByName('um').AsString                := um;
        sqlDados.Params.ParamByName('id_user').AsInteger          := DBDados.varID_USER;

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

procedure TImportPrice.setFback(const Value: String);
begin
  Fback := Value;
end;

procedure TImportPrice.setFbrand(const Value: String);
begin
  Fbrand := Value;
end;

procedure TImportPrice.setFcutprice(const Value: Currency);
begin
  Fcutprice := Value;
end;

procedure TImportPrice.setFfiber(const Value: String);
begin
  Ffiber := Value;
end;

procedure TImportPrice.setFid_supplier(const Value: Integer);
begin
  Fid_supplier := Value;
end;

procedure TImportPrice.setFid_user(const Value: Integer);
begin
  Fid_user := Value;
end;

procedure TImportPrice.setFrollprice(const Value: Currency);
begin
  Frollprice := Value;
end;

procedure TImportPrice.setFset_roll(const Value: Double);
begin
  Fstd_roll := Value;
end;

procedure TImportPrice.setFsize(const Value: String);
begin
  Fsize := Value;
end;

procedure TImportPrice.setFstyle_code(const Value: String);
begin
  Fstyle_code := Value;
end;

procedure TImportPrice.setFstyle_description(const Value: String);
begin
  Fstyle_description := Value;
end;

procedure TImportPrice.setFum(const Value: String);
begin
  Fum := Value;
end;

end.
