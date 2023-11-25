unit ufrmBrandType;

interface

uses
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
  FireDAC.Comp.Client, dxBarBuiltInMenu, Vcl.ComCtrls, cxPC;

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
    cxGridDBTableViewBrandPROFIT_MIN: TcxGridDBColumn;
    cxGridDBTableViewBrandPROFIT_REGULAR: TcxGridDBColumn;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sqlGridTypeAfterEdit(DataSet: TDataSet);
    procedure sqlGridTypeNewRecord(DataSet: TDataSet);
    procedure sqlGridBrandNewRecord(DataSet: TDataSet);
    procedure sqlGridBrandAfterEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure sqlGridRoomNewRecord(DataSet: TDataSet);
    procedure sqlGridRoomAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBrandType: TFrmBrandType;

implementation

{$R *.dfm}

uses uDMConectDB;

procedure TFrmBrandType.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmBrandType := nil;
  Action := caFree;
end;

procedure TFrmBrandType.FormShow(Sender: TObject);
begin
  sqlGridType.Close;
  sqlGridBrand.Close;
  sqlGridRoom.Close;

  sqlGridType.Open;
  sqlGridBrand.Open;
  sqlGridRoom.Open;

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

end.
