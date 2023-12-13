unit uClassProduct;

interface



uses uDMConectDB, uClassDBGenerics, Messages, MensFun, System.DateUtils, Data.SqlTimSt,
  System.SysUtils, System.Classes, IniFiles,  Vcl.Forms, Vcl.Dialogs, uFunctions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  Data.DB,  Generics.Collections;


Type
  TProduct = class
    private
   {

	[ID_PRODUCT] [int] NOT NULL,
	[ID_SUPPLIER] [int] NULL,
	[SUPPLIER_ITEM] [varchar](30) NULL,
	[SKU] [varchar](20) NULL,

	STYLE VARCHAR(50),
	PRODUCT_STYLE VARCHAR(30),
	PRODUCT_STYLE_NAME VARCHAR(50),
	[COLOR] [varchar](30) NULL,
	COLOR_NAME VARCHAR(50),
	LOC_SECTION VARCHAR(10),
	LOC_POSITION VARCHAR(10),


	[PRODUCT_NAME] [varchar](500) NULL,

	[QTY] [float] NULL,
	[COST_VALUE] [numeric](15, 2) NULL,
	[CostValuePerFeet] [float] NULL,
	[AreaSquareFeetPerBox] [float] NULL,
	[TotalAreaSquareFeet] [float] NULL,
	[AreaSquareYardPerBox] [float] NULL,
	[TotalAreaSquareYard] [float] NULL,
	[rollnumber] [varchar](40) NULL,
	[rollnumberdialog] [varchar](40) NULL,


	[ID_USER] [int] NULL,
	[ADD_DATE] [datetime] NULL,
	[UPD_DATE] [datetime] NULL,
	[TAXBLE] [char](1) NULL,
	[TYPEOFPRODUCT] [varchar](7) NULL,
	[ID_TYPE] [int] NULL,
	[ACTIVE] [char](1) NULL,
  }
        Fid_product           : integer;
        Fid_supplier          : integer;
        Fsupplier_item        : string; // codigo do produto do fornecedor
        Fsku                  : string;

        Fcolor                : string;
        FStyle                : String;

        FColorName            : string;
        Fproduct_name         : string;
        Fproduct_style         : string;
        Fproduct_style_name    : string;
        Floc_section          : string;
        Floc_position         : string;
        Fwidth                : double;
        Fheight               : double;

	      FQty                  : double;
        Fcost_value           : double;
        FCostValuePerFeet     : double;
        FAreaSquareFeetPerBox : double;
        FTotalAreaSquareFeet  : double;
        FAreaSquareYardPerBox : double;
        FTotalAreaSquareYard  : double;
        Frollnumber           : string;
        Frollnumberdialog     : string;
        Fid_user              : integer;
        Fadd_date             : string;
        Fupd_date             : string;
        Ftaxble               : string;
        FTypeOfProduct        : String;
        FId_Type              : Integer;
        FActive               : String;
        FUser                 : TUser;

          procedure setFadd_date(const Value: string);
          procedure setFcolor(const Value: string);
          procedure setFcost_value(const Value: double);
          procedure setFid_product(const Value: integer);
          procedure setFid_supplier(const Value: integer);
          procedure setFid_user(const Value: integer);
          procedure setFproduct_name(const Value: string);
          procedure setFsku(const Value: string);
          procedure setFupd_date(const Value: string);
    procedure setFtaxble(const Value: string);
    procedure setFId_Type(const Value: integer);
    procedure setFTypeOfProduct(const Value: string);
    procedure setFQty(const Value: double);


    procedure setFActive(const Value: String);
    procedure setFstyle(const Value: string);
    procedure setFareasqfeet(const Value: string);
    procedure setFareasqmeter(const Value: string);
    procedure setFAreaSquareFeetPerBox(const Value: double);
    procedure setFAreaSquareYardPerBox(const Value: double);
    procedure setFCostValuePerFeet(const Value: double);
    procedure setFId_Brand(const Value: integer);
    procedure setFrollnumber(const Value: string);
    procedure setFrollnumberdialog(const Value: string);
    procedure setFsizefeet(const Value: string);
    procedure setFsizemeter(const Value: string);
    procedure setFsupplier_item(const Value: string);
    procedure setFTotalAreaSquareFeet(const Value: double);
    procedure setFTotalAreaSquareYard(const Value: double);
    procedure setFColorName(const Value: string);
    procedure setFloc_position(const Value: string);
    procedure setFloc_section(const Value: string);
    procedure setFproduct_style(const Value: string);
    procedure setFproduct_style_name(const Value: string);
    procedure setFheight(const Value: double);
    procedure setFwidth(const Value: double);

    public

       property id_product          : integer  read Fid_product            write setFid_product;
       property id_supplier         : integer  read Fid_supplier           write setFid_supplier;
       property supplier_item       : string   read Fsupplier_item         write setFsupplier_item;
       property sku                 : string   read Fsku                   write setFsku;
       property style               : string   read FStyle                 write setFstyle;
       property product_name        : string   read Fproduct_name          write setFproduct_name;
       property color               : string   read Fcolor                 write setFcolor;
       property colorname            : string read FColorName  write setFColorName;
       property product_style         : string read Fproduct_style write setFproduct_style;
       property product_style_name    : string read Fproduct_style_name write setFproduct_style_name;
       property loc_section          : string read Floc_section write  setFloc_section;
       property loc_position         : string read Floc_position write setFloc_position;
       property qty                 : double   read FQty                   write setFQty;
       property cost_value          : double   read Fcost_value            write setFcost_value;
       property costValuePerFeet      : double read FCostValuePerFeet  write setFCostValuePerFeet;
       property areaSquareFeetPerBox  : double read FAreaSquareFeetPerBox write setFAreaSquareFeetPerBox;
       property totalAreaSquareFeet   : double read FTotalAreaSquareFeet write setFTotalAreaSquareFeet;
       property areaSquareYardPerBox  : double read FAreaSquareYardPerBox write setFAreaSquareYardPerBox;
       property totalAreaSquareYard   : double read FTotalAreaSquareYard write setFTotalAreaSquareYard;
       property rollnumber : string read Frollnumber  write setFrollnumber;
       property rollnumberdialog : string read Frollnumberdialog write setFrollnumberdialog;
       property width               : double read Fwidth         write setFwidth;
       property height              : double read Fheight        write setFheight;

       property id_user             : integer  read Fid_user               write setFid_user;
       property add_date            : string   read Fadd_date              write setFadd_date;
       property taxble              : string   read Ftaxble                write setFtaxble;
       property upd_date            : string   read Fupd_date              write setFupd_date;
       property user                : TUser    read FUser;
       property typeOfProduct       : string   read FTypeOfProduct         write setFTypeOfProduct;
       property id_Type             : integer  read FId_Type               write setFId_Type;
       property active              : String   read FActive                write setFActive;

       constructor Create;
       procedure Save;
       procedure Update;
       procedure Delete;
       procedure Search(varId_Product : Integer);
       destructor Destroy; override;
       procedure Calculate;

  end;

implementation

{ TProduct }

procedure TProduct.Calculate;
begin

 totalAreaSquareFeet := 0;
 costValuePerFeet     := 0;
 areaSquareYardPerBox := 0;
 totalAreaSquareYard := 0;


 if ((qty > 0) and (areaSquareFeetPerBox > 0) and (cost_value > 0)) then
 begin
   totalAreaSquareFeet   := qty * areaSquareFeetPerBox;
   costValuePerFeet      := cost_value / areaSquareFeetPerBox;
   areaSquareYardPerBox  := areaSquareFeetPerBox / 9;
   totalAreaSquareYard   := totalAreaSquareFeet / 9;
 end;
end;

constructor TProduct.Create;
begin
  id_product            := 0;
  id_supplier           := 0;
  supplier_item         := '';
  sku                   := '';
  color                 := '';
  style                 := '';
  product_name          := '';

  colorname             := '';
  product_style         := '';
  product_style_name    := '';
  loc_section           := '';
  loc_position          := '';


  costValuePerFeet      := 0.0;
  areaSquareFeetPerBox  := 0.0;
  totalAreaSquareFeet   := 0.0;
  areaSquareYardPerBox  := 0.0;
  totalAreaSquareYard   := 0.0;
  width                 := 0.0;
  height                := 0.0;

  rollnumber            := '';
  rollnumberdialog      := '';
  qty                   := 0.0;
  cost_value            := 0.0;
  id_user               := 0;
  add_date              := '';
  upd_date              := '';
  taxble                := '';
  typeOfProduct         := '';
  id_Type               := 0;
  active                := '';
  Fuser                  := TUser.Create;
end;

procedure TProduct.Delete;
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
       sqlDados := TFDQuery.Create(Nil);
    Try
        sqlDados.Connection := FDConnection;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Delete from TBPRODUCT where id_product = :id_product ');
        sqlDados.Params.ParamByName('id_product').AsInteger := id_product;
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

destructor TProduct.Destroy;
begin

  inherited;
end;

procedure TProduct.Save;
var
 sqlDados : TFDQuery;
begin
  with DBDados do
  begin
    sqlDados := TFDQuery.Create(Nil);
    Try
        sqlDados.Connection := FDConnection;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Insert into TBPRODUCT (');
        sqlDados.SQL.Add('id_product  ');
        sqlDados.SQL.Add(',id_supplier ');
        sqlDados.SQL.Add(',supplier_item ');
        sqlDados.SQL.Add(',sku');
        sqlDados.SQL.Add(',color ');
        sqlDados.SQL.Add(',style ');
        sqlDados.SQL.Add(',product_name ');
        sqlDados.SQL.Add(',color_name ');
        sqlDados.SQL.Add(',product_style ');
        sqlDados.SQL.Add(',product_style_name ');
        sqlDados.SQL.Add(',loc_section ');
        sqlDados.SQL.Add(',loc_position ');
        sqlDados.SQL.Add(',costValuePerFeet ');
        sqlDados.SQL.Add(',areaSquareFeetPerBox ');
        sqlDados.SQL.Add(',totalAreaSquareFeet ');
        sqlDados.SQL.Add(',areaSquareYardPerBox ');
        sqlDados.SQL.Add(',totalAreaSquareYard ');
        sqlDados.SQL.Add(',rollnumber ');
        sqlDados.SQL.Add(',rollnumberdialog ');
        sqlDados.SQL.Add(',Qty');
        sqlDados.SQL.Add(',cost_value');
        sqlDados.SQL.Add(',id_user ');
        sqlDados.SQL.Add(',taxble ');
        sqlDados.SQL.Add(',typeofproduct');
        sqlDados.SQL.Add(',id_type ');
        sqlDados.SQL.Add(',active ');
        sqlDados.SQL.Add(',width ');
        sqlDados.SQL.Add(',height ');
        sqlDados.SQL.Add(',add_date) ');
        sqlDados.SQL.Add(' Values (');


        sqlDados.SQL.Add( IntToStr(id_product) + ',' );
        sqlDados.SQL.Add( IntToStr(id_supplier) + ',' );
        sqlDados.SQL.Add( QuotedStr(supplier_item) + ',' );
        sqlDados.SQL.Add( QuotedStr(sku) +  ',' );
        sqlDados.SQL.Add( QuotedStr(color)  +  ',' );
        sqlDados.SQL.Add( QuotedStr(style)  +  ',' );
        sqlDados.SQL.Add( QuotedStr(product_name) +  ',' );
        sqlDados.SQL.Add( QuotedStr(colorname) +  ',' );
        sqlDados.SQL.Add( QuotedStr(product_style) +  ',' );
        sqlDados.SQL.Add( QuotedStr(product_style_name) +  ',' );
        sqlDados.SQL.Add( QuotedStr(loc_section) +  ',' );
        sqlDados.SQL.Add( QuotedStr(loc_position) +  ',' );
        sqlDados.SQL.Add( FloatToStr(costValuePerFeet) +  ',' );
        sqlDados.SQL.Add( FloatToStr(areaSquareFeetPerBox) +  ',' );
        sqlDados.SQL.Add( FloatToStr(totalAreaSquareFeet) +  ',' );
        sqlDados.SQL.Add( FloatToStr(areaSquareYardPerBox) +  ',' );
        sqlDados.SQL.Add( FloatToStr(totalAreaSquareYard) +  ',' );
        sqlDados.SQL.Add( QuotedStr(rollnumber) +  ',' );
        sqlDados.SQL.Add( QuotedStr(rollnumberdialog) +  ',' );
        sqlDados.SQL.Add( FloatToStr(qty) +  ',' );
        sqlDados.SQL.Add( FloatToStr(cost_value) +  ',' );
        sqlDados.SQL.Add( IntToStr(id_user) +  ',' );
        sqlDados.SQL.Add( QuotedStr(taxble) +  ',' );
        sqlDados.SQL.Add( QuotedStr(typeofproduct) +  ',' );
        sqlDados.SQL.Add( IntToStr(id_type) + ',' );
        sqlDados.SQL.Add( QuotedStr(Active) + ',' );
        sqlDados.SQL.Add( FloatToStr(width) +  ',' );
        sqlDados.SQL.Add( FloatToStr(height) +  ',' );
        sqlDados.SQL.Add( QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm:ss', now)) +  ')' );
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

procedure TProduct.Search(varId_Product: Integer);
var
  sqlDados : TFDQuery;
begin

   with DBDados do
   begin
      sqlDados := TFDQuery.Create(Nil);
      sqlDados.Connection := FDConnection;
      Try
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Select id_product, id_supplier, supplier_item, sku, color, style, product_name, color_name, product_style, ');
        sqlDados.SQL.Add(' product_style_name,  loc_section,  loc_position,costValuePerFeet, areaSquareFeetPerBox, totalAreaSquareFeet, ');
        sqlDados.SQL.Add(' areaSquareYardPerBox, totalAreaSquareYard ,  rollnumber , rollnumberdialog , Qty , cost_value, add_date,  upd_date, ');
        sqlDados.SQL.Add('  taxble,  id_user,  typeofproduct, id_type, active, width,  height ');
        sqlDados.SQL.Add(' From TBPRODUCT with (NOLOCK) Where id_product = :id_product');
        sqlDados.Params.ParamByName('id_product').AsInteger := varId_Product;
        sqlDados.Open;
        if not sqlDados.IsEmpty  then
        begin

          id_product           := sqlDados.FieldByName('id_product').AsInteger;
          id_supplier          := sqlDados.FieldByName('id_supplier').AsInteger;
          supplier_item        := sqlDados.FieldByName('supplier_item').ASString;
          sku                  := sqlDados.FieldByName('sku').ASString;
          color                := sqlDados.FieldByName('color').ASString;
          style                := sqlDados.FieldByName('style').ASString;
          product_name         := sqlDados.FieldByName('product_name').ASString;
          colorname            := sqlDados.FieldByName('color_name').ASString;
          product_style        := sqlDados.FieldByName('product_style').ASString;
          product_style_name   := sqlDados.FieldByName('product_style_name').ASString;
          loc_section          := sqlDados.FieldByName('loc_section').ASString;
          loc_position         := sqlDados.FieldByName('loc_position').ASString;
          costValuePerFeet     := sqlDados.FieldByName('costValuePerFeet').AsFloat;
          areaSquareFeetPerBox := sqlDados.FieldByName('areaSquareFeetPerBox').AsFloat;
          totalAreaSquareFeet  := sqlDados.FieldByName('totalAreaSquareFeet').AsFloat;
          areaSquareYardPerBox := sqlDados.FieldByName('areaSquareYardPerBox').AsFloat;
          totalAreaSquareYard  := sqlDados.FieldByName('totalAreaSquareYard').AsFloat;
          rollnumber           := sqlDados.FieldByName('rollnumber').ASString;
          rollnumberdialog     := sqlDados.FieldByName('rollnumberdialog').ASString;
          qty                  := sqlDados.FieldByName('Qty').AsFloat;
          cost_value           := sqlDados.FieldByName('cost_value').AsFloat;
          add_date             := sqlDados.FieldByName('add_date').ASString;
          upd_date             := sqlDados.FieldByName('upd_date').ASString;
          taxble               := sqlDados.FieldByName('taxble').ASString;
          Id_User              := sqlDados.FieldByName('id_user').AsInteger;
          typeofproduct        := sqlDados.FieldByName('typeofproduct').ASString;
          id_type              := sqlDados.FieldByName('id_type').AsInteger;
          active               := sqlDados.FieldByName('active').ASString;
          width                := sqlDados.FieldByName('width').AsFloat;
          height               := sqlDados.FieldByName('height').AsFloat;

          user.Search(id_user);
        end;
          sqlDados.Close;
      Finally
         FreeAndNil(sqlDados);
      End;
   end;
end;

procedure TProduct.setFActive(const Value: String);
begin
  FActive := Value;
end;

procedure TProduct.setFadd_date(const Value: string);
begin
  Fadd_date := Value;
end;

procedure TProduct.setFareasqfeet(const Value: string);
begin
end;

procedure TProduct.setFareasqmeter(const Value: string);
begin
end;

procedure TProduct.setFAreaSquareFeetPerBox(const Value: double);
begin
  FAreaSquareFeetPerBox := Value;
end;

procedure TProduct.setFAreaSquareYardPerBox(const Value: double);
begin
  FAreaSquareYardPerBox := Value;
end;

procedure TProduct.setFcolor(const Value: string);
begin
  Fcolor := Value;
end;

procedure TProduct.setFColorName(const Value: string);
begin
  FColorName := Value;
end;

procedure TProduct.setFCostValuePerFeet(const Value: double);
begin
  FCostValuePerFeet := Value;
end;

procedure TProduct.setFcost_value(const Value: double);
begin
  Fcost_value := Value;
end;

procedure TProduct.setFheight(const Value: double);
begin
  Fheight := Value;
end;

procedure TProduct.setFId_Brand(const Value: integer);
begin

end;

procedure TProduct.setFid_product(const Value: integer);
begin
  Fid_product := Value;
end;

procedure TProduct.setFid_supplier(const Value: integer);
begin
  Fid_supplier := Value;
end;

procedure TProduct.setFId_Type(const Value: integer);
begin
  FId_Type := Value;
end;

procedure TProduct.setFid_user(const Value: integer);
begin
  Fid_user := Value;
end;

procedure TProduct.setFloc_position(const Value: string);
begin
  Floc_position := Value;
end;

procedure TProduct.setFloc_section(const Value: string);
begin
  Floc_section := Value;
end;

procedure TProduct.setFproduct_name(const Value: string);
begin
  Fproduct_name := Value;
end;



procedure TProduct.setFproduct_style(const Value: string);
begin
  Fproduct_style := Value;
end;

procedure TProduct.setFproduct_style_name(const Value: string);
begin
  Fproduct_style_name := Value;
end;

procedure TProduct.setFQty(const Value: double);
begin
  FQty := Value;
end;


procedure TProduct.setFrollnumber(const Value: string);
begin
  Frollnumber := Value;
end;

procedure TProduct.setFrollnumberdialog(const Value: string);
begin
  Frollnumberdialog := Value;
end;

procedure TProduct.setFsizefeet(const Value: string);
begin
end;

procedure TProduct.setFsizemeter(const Value: string);
begin
end;

procedure TProduct.setFsku(const Value: string);
begin
  Fsku := Value;
end;

procedure TProduct.setFstyle(const Value: string);
begin
  FStyle := Value;
end;

procedure TProduct.setFsupplier_item(const Value: string);
begin
  Fsupplier_item := Value;
end;

procedure TProduct.setFtaxble(const Value: string);
begin
  Ftaxble := Value;
end;


procedure TProduct.setFTotalAreaSquareFeet(const Value: double);
begin
  FTotalAreaSquareFeet := Value;
end;

procedure TProduct.setFTotalAreaSquareYard(const Value: double);
begin
  FTotalAreaSquareYard := Value;
end;

procedure TProduct.setFTypeOfProduct(const Value: string);
begin
  FTypeOfProduct := Value;
end;

procedure TProduct.setFupd_date(const Value: string);
begin
  Fupd_date := Value;
end;

procedure TProduct.setFwidth(const Value: double);
begin
  Fwidth := Value;
end;

procedure TProduct.Update;
var
  sqlDados : TFDQuery;
begin
   with DBDados do
   begin
       sqlDados := TFDQuery.Create(Nil);
       sqlDados.Connection := FDConnection;
       Try
        sqldados.sql.clear;
        sqldados.sql.add('Update TBPRODUCT ');
        sqldados.sql.add(' Set  ');
        sqlDados.SQL.Add(' id_supplier = :id_supplier');
        sqlDados.SQL.Add(',supplier_item = :supplier_item');
        sqlDados.SQL.Add(',sku = :sku ');
        sqlDados.SQL.Add(',color = :color');
        sqlDados.SQL.Add(',style = :style');
        sqlDados.SQL.Add(',product_name = :product_name');

        sqlDados.SQL.Add(',color_name = :color_name');
        sqlDados.SQL.Add(',product_style = :product_style');
        sqlDados.SQL.Add(',product_style_name = :product_style_name');
        sqlDados.SQL.Add(',loc_section = :loc_section');
        sqlDados.SQL.Add(',loc_position = :loc_position');

        sqlDados.SQL.Add(',costValuePerFeet = :costValuePerFeet');
        sqlDados.SQL.Add(',areaSquareFeetPerBox = :areaSquareFeetPerBox');
        sqlDados.SQL.Add(',totalAreaSquareFeet = :totalAreaSquareFeet');
        sqlDados.SQL.Add(',areaSquareYardPerBox = :areaSquareYardPerBox');
        sqlDados.SQL.Add(',totalAreaSquareYard = :totalAreaSquareYard');
        sqlDados.SQL.Add(',rollnumber = :rollnumber');
        sqlDados.SQL.Add(',rollnumberdialog = :rollnumberdialog');
        sqlDados.SQL.Add(',Qty = :Qty');
        sqlDados.SQL.Add(',cost_value = :cost_value');
        sqlDados.SQL.Add(',id_user = :id_user');
        sqlDados.SQL.Add(',taxble = :taxble');
        sqlDados.SQL.Add(',typeofproduct = :typeofproduct');
        sqlDados.SQL.Add(',id_type = :id_type');
        sqlDados.SQL.Add(',upd_date = :upd_date ');
        sqlDados.SQL.Add(',active = :active ');
        sqlDados.SQL.Add(',width = :width ');
        sqlDados.SQL.Add(',height = :height ');
        sqlDados.SQL.Add(' Where Id_Product = :Id_Product ');


        sqlDados.Params.ParamByName('id_supplier').AsInteger          := id_supplier;
        sqlDados.Params.ParamByName('supplier_item').AsString         := supplier_item;
        sqlDados.Params.ParamByName('sku').AsString                   := sku;
        sqlDados.Params.ParamByName('color').AsString                 := color;
        sqlDados.Params.ParamByName('style').AsString                 := style;

        sqlDados.Params.ParamByName('product_name').AsString          := product_name;

        sqlDados.Params.ParamByName('color_name').AsString             := colorname;
        sqlDados.Params.ParamByName('product_style').AsString         := product_style;
        sqlDados.Params.ParamByName('product_style_name').AsString    := product_style_name;
        sqlDados.Params.ParamByName('loc_section').AsString           := loc_section;
        sqlDados.Params.ParamByName('loc_position').AsString          := loc_position;

        sqlDados.Params.ParamByName('costValuePerFeet').asFloat       := costValuePerFeet;
        sqlDados.Params.ParamByName('areaSquareFeetPerBox').asFloat   := areaSquareFeetPerBox;
        sqlDados.Params.ParamByName('totalAreaSquareFeet').asFloat    := totalAreaSquareFeet;
        sqlDados.Params.ParamByName('areaSquareYardPerBox').asFloat   := areaSquareYardPerBox;
        sqlDados.Params.ParamByName('totalAreaSquareYard').asFloat    := totalAreaSquareYard;
        sqlDados.Params.ParamByName('rollnumber').AsString             := rollnumber;
        sqlDados.Params.ParamByName('rollnumberdialog').AsString       := rollnumberdialog;
        sqlDados.Params.ParamByName('Qty').asFloat                    := Qty;
        sqlDados.Params.ParamByName('cost_value').asFloat             := cost_value;
        sqlDados.Params.ParamByName('id_user').AsInteger              := id_user;
        sqlDados.Params.ParamByName('taxble').AsString                := taxble;
        sqlDados.Params.ParamByName('typeofproduct').AsString         := TypeOfProduct;
        sqlDados.Params.ParamByName('id_type').AsInteger              := Id_Type;
        sqlDados.Params.ParamByName('upd_date').AsString              := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
        sqlDados.Params.ParamByName('active').AsString                := Active;
        sqlDados.Params.ParamByName('width').asFloat                  := width;
        sqlDados.Params.ParamByName('height').asFloat                 := height;
        sqlDados.Params.ParamByName('Id_Product').AsInteger           := id_product;

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
