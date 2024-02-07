unit ufrmBrandType;

interface

uses
  MensFun,
  uClassSupplier,
  uClassDBGenerics,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxDropDownEdit, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxBarBuiltInMenu, Vcl.ComCtrls, cxPC, cxDBLookupComboBox;

type
  TFrmBrandType = class(TForm)
    Panel2: TPanel;
    sqlGridType: TFDQuery;
    sqlGridBrand: TFDQuery;
    dsGridType: TDataSource;
    dsGridBrand: TDataSource;
    Page: TcxPageControl;
    TabMaterial: TcxTabSheet;
    TabBrand: TcxTabSheet;
    TabRoom: TcxTabSheet;
    TabDisplay: TcxTabSheet;
    cxGridPriceType: TcxGrid;
    cxGridDBTableViewType: TcxGridDBTableView;
    cxGridDBTableViewTypeCATEGORY: TcxGridDBColumn;
    cxGridDBTableViewTypeDESCRIPTION: TcxGridDBColumn;
    cxGridDBTableViewTypePROFIT_MIN: TcxGridDBColumn;
    cxGridDBTableViewTypePROFIT_REGULAR: TcxGridDBColumn;
    cxGridLevelType: TcxGridLevel;
    cxGridBrand: TcxGrid;
    cxGridDBTableViewBrand: TcxGridDBTableView;
    cxGridDBTableViewBrandCATEGORY: TcxGridDBColumn;
    cxGridDBTableViewBrandDESCRIPTION: TcxGridDBColumn;
    cxGridLevelBrand: TcxGridLevel;
    StatusBar1: TStatusBar;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    sqlGridRoom: TFDQuery;
    dsGridRoom: TDataSource;
    sqlGridRoomID_MISCELLANEOUS: TFDAutoIncField;
    sqlGridRoomVALUE: TStringField;
    sqlGridRoomDESCRIPTION: TStringField;
    sqlGridRoomADD_DATE: TDateField;
    sqlGridRoomUPD_DATE: TDateField;
    sqlGridRoomID_USER: TIntegerField;
    cxGridDBTableView1DESCRIPTION: TcxGridDBColumn;
    sqlSupplier: TFDQuery;
    dsSupplier: TDataSource;
    sqlGridTypeID_TYPEBRAND: TFDAutoIncField;
    sqlGridTypeCATEGORY: TStringField;
    sqlGridTypeDESCRIPTION: TStringField;
    sqlGridTypeADD_DATE: TDateField;
    sqlGridTypeUPD_DATE: TDateField;
    sqlGridTypeID_USER: TIntegerField;
    sqlGridTypePROFIT_MIN: TFloatField;
    sqlGridTypePROFIT_REGULAR: TFloatField;
    sqlGridBrandID_TYPEBRAND: TFDAutoIncField;
    sqlGridBrandCATEGORY: TStringField;
    sqlGridBrandDESCRIPTION: TStringField;
    sqlGridBrandADD_DATE: TDateField;
    sqlGridBrandUPD_DATE: TDateField;
    sqlGridBrandID_USER: TIntegerField;
    sqlGridBrandPROFIT_MIN: TFloatField;
    sqlGridBrandPROFIT_REGULAR: TFloatField;
    TabService: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    sqlService: TFDQuery;
    dsService: TDataSource;
    cxGridDBTableView3DESCRIPTION: TcxGridDBColumn;
    sqlServiceID_LABOR: TFDAutoIncField;
    sqlServiceDESCRIPTION: TStringField;
    sqlServiceID_TYPEBRAND: TIntegerField;
    TabInstallments: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    sqlInstallments: TFDQuery;
    dsInstallments: TDataSource;
    sqlInstallmentsID_INSTALLMENTS: TFDAutoIncField;
    sqlInstallmentsDESCRIPTION: TStringField;
    sqlInstallmentsINTERVAL: TIntegerField;
    sqlInstallmentsQTDEDAYS: TIntegerField;
    cxGridDBTableView4DESCRIPTION: TcxGridDBColumn;
    cxGridDBTableView4INTERVAL: TcxGridDBColumn;
    cxGridDBTableView4QTDEDAYS: TcxGridDBColumn;
    sqlSample: TFDQuery;
    dsSample: TDataSource;
    sqlSampleID_SAMPLE: TFDAutoIncField;
    sqlSampleID_SUPPLIER: TIntegerField;
    sqlSamplePRODUCT_NAME: TStringField;
    sqlSamplePRODUCT_DESC: TStringField;
    sqlSampleID_USER: TIntegerField;
    sqlSampleADD_DATE: TSQLTimeStampField;
    sqlSampleUPD_DATE: TSQLTimeStampField;
    cxGridDBTableView2ID_SUPPLIER: TcxGridDBColumn;
    cxGridDBTableView2PRODUCT_NAME: TcxGridDBColumn;
    cxGridDBTableView2PRODUCT_DESC: TcxGridDBColumn;
    sqlSupplierID_SUPPLIER: TIntegerField;
    sqlSupplierNAMEBUSINESS: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sqlGridTypeAfterEdit(DataSet: TDataSet);
    procedure sqlGridTypeNewRecord(DataSet: TDataSet);
    procedure sqlGridBrandNewRecord(DataSet: TDataSet);
    procedure sqlGridBrandAfterEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure sqlGridRoomNewRecord(DataSet: TDataSet);
    procedure sqlGridRoomAfterEdit(DataSet: TDataSet);
    procedure sqlServiceAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    Supplier : TSupplier;
    varLista : TStringList;



  public
    { Public declarations }
    procedure SetupForm;
  end;

var
  FrmBrandType: TFrmBrandType;

implementation

{$R *.dfm}

uses uDMConectDB;

procedure TFrmBrandType.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if varLista <> Nil then
     FreeAndNil(varLista);

  if Supplier <> Nil then
     FreeAndNil(Supplier);


  DBDados.LoadRoom;

  FrmBrandType := nil;
  Action := caFree;
end;

procedure TFrmBrandType.FormShow(Sender: TObject);
begin
  sqlGridType.Close;
  sqlGridBrand.Close;
  sqlGridRoom.Close;
  sqlService.Close;
  sqlInstallments.Close;
  sqlSupplier.Close;
  sqlSample.Close;

  sqlSample.Open;
  sqlSupplier.Open;
  sqlInstallments.Open;
  sqlGridType.Open;
  sqlGridBrand.Open;
  sqlGridRoom.Open;
  sqlService.Open;
end;

procedure TFrmBrandType.SetupForm;
begin
   Supplier := TSupplier.Create;
   varLista := TStringList.Create;
   varLista := Supplier.Lista(varLista);

end;

procedure TFrmBrandType.sqlGridBrandAfterEdit(DataSet: TDataSet);
begin
  sqlGridBrandCATEGORY.AsString := 'BRAND';
  sqlGridBrandUPD_DATE.AsDateTime := now;
  sqlGridBrandID_USER.AsInteger   := DBDados.varID_USER;
end;

procedure TFrmBrandType.sqlGridBrandNewRecord(DataSet: TDataSet);
begin
    sqlGridBrandID_USER.AsInteger      := DBDados.varID_USER;
    sqlGridBrandADD_DATE.AsDateTime    := Now;
end;

procedure TFrmBrandType.sqlGridRoomAfterEdit(DataSet: TDataSet);
begin
  sqlGridRoomVALUE.AsString := 'ROOM';
  sqlGridRoomUPD_DATE.AsDateTime := now;
  sqlGridRoomID_USER.AsInteger   := DBDados.varID_USER;
end;

procedure TFrmBrandType.sqlGridRoomNewRecord(DataSet: TDataSet);
begin
  sqlGridRoomVALUE.AsString         := 'ROOM';
  sqlGridRoomID_USER.AsInteger      := DBDados.varID_USER;
  sqlGridRoomADD_DATE.AsDateTime    := Now;
end;

procedure TFrmBrandType.sqlGridTypeAfterEdit(DataSet: TDataSet);
begin
  sqlGridTypeCATEGORY.AsString := 'MATERIAL';
  sqlGridTypeUPD_DATE.AsDateTime := now;
  sqlGridTypeID_USER.AsInteger   := DBDados.varID_USER;
end;

procedure TFrmBrandType.sqlGridTypeNewRecord(DataSet: TDataSet);
begin
  sqlGridTypeID_USER.AsInteger      := DBDados.varID_USER;
  sqlGridTypeADD_DATE.AsDateTime    := Now;
end;

procedure TFrmBrandType.sqlServiceAfterPost(DataSet: TDataSet);
Var
  I , varNewProduct  : Integer;
  sqlSave            : TFDQuery;
  varNextKey         : TDBNextKey;
begin
{
   sqlSave     := TFDQuery.Create(Nil);


   Try
     sqlSave.Connection  := DBDados.Connection;
     sqlSave.Close;
     sqlSave.SQL.Clear;
     sqlSave.SQL.Add('Insert into TBPRODUCT (ID_PRODUCT, ID_SUPPLIER, PRODUCT_NAME, QTY, ID_USER, ADD_DATE, TAXBLE, TYPEOFPRODUCT, ID_TYPE, ACTIVE)');
     sqlSave.SQL.Add(' VALUES (:ID_PRODUCT, :ID_SUPPLIER, :PRODUCT_NAME, :QTY, :ID_USER, :ADD_DATE, :TAXBLE, :TYPEOFPRODUCT, :ID_TYPE, :ACTIVE)');
     for I := 0 to varLista.Count - 1 do
     begin
         varNextKey  := TDBNextKey.Create('TBPRODUCT');
         varNewProduct := varNextKey.Key;
         sqlSave.Params.ParamByName('ID_PRODUCT').AsInteger   := varNewProduct;
         sqlSave.Params.ParamByName('ID_SUPPLIER').AsInteger  := StrToInt(varLista[I]);
         sqlSave.Params.ParamByName('PRODUCT_NAME').AsString  := sqlServiceDESCRIPTION.AsString;
         sqlSave.Params.ParamByName('QTY').AsInteger          := 1;
         sqlSave.Params.ParamByName('ID_USER').AsInteger      := DBDados.varID_USER;
         sqlSave.Params.ParamByName('ADD_DATE').AsString      := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
         sqlSave.Params.ParamByName('TAXBLE').AsString        := 'N';
         sqlSave.Params.ParamByName('TYPEOFPRODUCT').AsString := 'SERVICE';
         sqlSave.Params.ParamByName('ID_TYPE').AsInteger      := sqlServiceID_PRODUCTTYPE.AsInteger;
         sqlSave.Params.ParamByName('ACTIVE').AsString        := 'Y';

         sqlSave.Prepare;

         Try
             sqlSave.ExecSQL;
             varNextKey.UpdateKey(varNewProduct, 'TBPRODUCT'); // atualiza a nova chave no banco
             FreeAndNil(varNextKey);
         except
            on E: EDatabaseError do
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
         end;
       end;
   Finally
     FreeAndNil(sqlSave);

   End;
 }
end;

end.
