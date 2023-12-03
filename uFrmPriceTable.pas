unit uFrmPriceTable;

interface

uses
  uClassDBGenerics,
  MensFun,
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
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxDBLookupComboBox, cxDropDownEdit,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCalendar, dxmdaset,
  dxBarBuiltInMenu, Vcl.ExtCtrls, cxPC, cxCurrencyEdit, cxButtonEdit,
  cxEditRepositoryItems, Vcl.StdCtrls, cxCheckBox;

type
  TfrmPriceTable = class(TForm)
    sqlGrid: TFDQuery;
    dsGrid: TDataSource;
    sqlGridID_PRICELIST: TFDAutoIncField;
    sqlGridID_COMPANY: TIntegerField;
    sqlGridID_LOCATION: TIntegerField;
    sqlGridNAME: TStringField;
    sqlGridSTARTDATE: TDateField;
    sqlGridEXPIREDDATE: TDateField;
    sqlGridADD_DATE: TDateField;
    sqlGridUPD_DATE: TDateField;
    sqlGridID_USER: TIntegerField;
    sqlGridACTIVE: TStringField;
    sqlCompany: TFDQuery;
    dsCompanty: TDataSource;
    sqlCompanyID_COMPANY: TIntegerField;
    sqlCompanyCOMPANYNAME: TStringField;
    sqlCompanyTRADINGNAME: TStringField;
    dxMemDataLocation: TdxMemData;
    dxMemDataLocationID_LOCATION: TIntegerField;
    dxMemDataLocationNAME: TStringField;
    dsLocation: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheetList: TcxTabSheet;
    cxTabSheetItem: TcxTabSheet;
    cxGridPriceTable: TcxGrid;
    cxTableViewPriceTable: TcxGridDBTableView;
    cxTableViewPriceTableID_COMPANY: TcxGridDBColumn;
    cxTableViewPriceTableID_LOCATION: TcxGridDBColumn;
    cxTableViewPriceTableNAME: TcxGridDBColumn;
    cxTableViewPriceTableSTARTDATE: TcxGridDBColumn;
    cxTableViewPriceTableEXPIREDDATE: TcxGridDBColumn;
    cxTableViewPriceTableACTIVE: TcxGridDBColumn;
    cxGridLevelPriceTable: TcxGridLevel;
    Panel1: TPanel;
    cxGridPriceTableItem: TcxGrid;
    cxGridDBTableViewPriceTableItem: TcxGridDBTableView;
    cxGridLevelPriceTableItem: TcxGridLevel;
    sqlPriceItem: TFDQuery;
    dsPriceItem: TDataSource;
    cxTableViewPriceTableColumn1: TcxGridDBColumn;
    sqlGridBotao: TStringField;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem;
    sqlAux: TFDQuery;
    sqlPriceItemID_PRICEITEM: TFDAutoIncField;
    sqlPriceItemID_PRICELIST: TIntegerField;
    sqlPriceItemNAMEBUSINESS: TStringField;
    sqlPriceItemTYPE: TStringField;
    sqlPriceItemQTY: TFloatField;
    sqlPriceItemCOLOR: TStringField;
    sqlPriceItemPRODUCT_NAME: TStringField;
    sqlPriceItemPRICE_MINIMUM: TBCDField;
    sqlPriceItemPRICE_FINAL: TBCDField;
    cxGridDBTableViewPriceTableItemID_PRICEITEM: TcxGridDBColumn;
    cxGridDBTableViewPriceTableItemNAMEBUSINESS: TcxGridDBColumn;
    cxGridDBTableViewPriceTableItemTYPE: TcxGridDBColumn;
    cxGridDBTableViewPriceTableItemQTY: TcxGridDBColumn;
    cxGridDBTableViewPriceTableItemCOLOR: TcxGridDBColumn;
    cxGridDBTableViewPriceTableItemPRODUCT_NAME: TcxGridDBColumn;
    cxGridDBTableViewPriceTableItemPRICE_MINIMUM: TcxGridDBColumn;
    cxGridDBTableViewPriceTableItemPRICE_FINAL: TcxGridDBColumn;
    Panel3: TPanel;
    Label11: TLabel;
    edtCompanyName: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    edtLocation: TEdit;
    Panel4: TPanel;
    Label2: TLabel;
    edtNominal: TEdit;
    Panel5: TPanel;
    Label3: TLabel;
    Panel6: TPanel;
    Label4: TLabel;
    rgActive: TRadioGroup;
    edtStatDate: TEdit;
    edtExpiredDate: TEdit;
    sqlGridDISCOUNT: TBCDField;
    cxTableViewPriceTableDISCOUNT: TcxGridDBColumn;
    sqlPriceItemTYPEOFPRODUCT: TStringField;
    cxGridDBTableViewPriceTableItemTYPEOFPRODUCT: TcxGridDBColumn;
    sqlPriceItemSTYLE: TStringField;
    cxGridDBTableViewPriceTableItemSTYLE: TcxGridDBColumn;
    sqlGridCOMISSION: TBCDField;
    cxTableViewPriceTableCOMISSION: TcxGridDBColumn;
    sqlPriceItemID_PRODUCT: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure sqlGridNewRecord(DataSet: TDataSet);
    procedure sqlGridAfterEdit(DataSet: TDataSet);
    procedure sqlPriceItemNewRecord(DataSet: TDataSet);
    procedure sqlPriceItemAfterEdit(DataSet: TDataSet);
    procedure cxEditRepository1ButtonItem1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  frmPriceTable: TfrmPriceTable;

implementation

{$R *.dfm}

uses uDMConectDB;

procedure TfrmPriceTable.cxEditRepository1ButtonItem1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin

  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add('Delete From TBPRICEITEM Where ID_PRICELIST = :ID_PRICELIST');
  sqlAux.Params.ParamByName('ID_PRICELIST').AsInteger :=  sqlGridID_PRICELIST.AsInteger;
  Try

    sqlAux.ExecSQL;

  except
      on E: EDatabaseError do
        Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
  end;


  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add(' INSERT INTO TBPRICEITEM (ID_PRICELIST, ID_SUPPLIER, ID_PRODUCT, PRICE_MINIMUM, PRICE_FINAL, ADD_DATE, ID_USER ) ');
  sqlAux.SQL.Add(' SELECT ' + sqlGridID_PRICELIST.AsString + ' AS ID_PRICELIST, S.ID_SUPPLIER, P.ID_PRODUCT, ');
  sqlAux.SQL.Add(' P.COST_VALUE  + ((P.COST_VALUE /100) * PROFIT_MIN ) AS PROFIT_MINIMUN,  ');
  sqlAux.SQL.Add(' P.COST_VALUE  + ((P.COST_VALUE /100) * (PROFIT_REGULAR - ' + FloatToStr(sqlGridDISCOUNT.AsFloat) + ')) AS PRICE_FINAL, GETDATE() AS ADD_DATE , ' + IntToStr(DBDados.varID_USER) + ' AS ID_USER  ');
  sqlAux.SQL.Add(' FROM TBPRODUCT P  ');
  sqlAux.SQL.Add(' INNER JOIN TBSUPPLIER S ON S.ID_SUPPLIER = P.ID_SUPPLIER ');
  sqlAux.SQL.Add(' LEFT OUTER JOIN TBTYPEBRAND A ON  A.ID_TYPEBRAND = P.ID_TYPE    ');
  sqlAux.SQL.Add(' WHERE P.ACTIVE = ''Y'' '); // ONLY PRODUCTS ACTIVE
  Try

    sqlAux.ExecSQL;

  except
      on E: EDatabaseError do
        Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
  end;

  cxPageControl1.ActivePage := cxTabSheetItem;
  sqlCompany.Locate('ID_COMPANY', sqlGridID_COMPANY.AsInteger, []);
  edtCompanyName.Text := sqlCompanyCOMPANYNAME.AsString;
  dxMemDataLocation.Locate('ID_LOCATION', sqlGridID_LOCATION.AsString, []);
  edtLocation.Text    := dxMemDataLocationNAME.AsString;
  edtNominal.Text     := sqlGridNAME.AsString;
  edtStatDate.Text    := sqlGridSTARTDATE.AsString;
  edtExpiredDate.Text := sqlGridEXPIREDDATE.AsString;

  if sqlGridACTIVE.AsString = 'Y' then
     rgActive.ItemIndex := 0
  else rgActive.ItemIndex := 1;

  rgActive.Enabled := False;

  sqlPriceItem.Close;
  sqlPriceItem.Params.ParamByName('ID_PRICELIST').AsInteger :=  sqlGridID_PRICELIST.AsInteger;
  sqlPriceItem.Open;

end;

procedure TfrmPriceTable.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmPriceTable := nil;
  Action := caFree;
end;

procedure TfrmPriceTable.FormShow(Sender: TObject);
begin
  dxMemDataLocation.Active := True;
  cxPageControl1.ActivePage := cxTabSheetList;



  sqlGrid.Close;
  sqlGrid.MacroByName( 'WHERE1' ).AsRaw := DBDados.varReturnCompanies;
  sqlGrid.Open;

  sqlCompany.Close;
  sqlCompany.MacroByName( 'WHERE1' ).AsRaw := DBDados.varReturnCompanies;
  sqlCompany.Open;

  sqlPriceItem.Close;
  sqlPriceItem.Open;


end;

procedure TfrmPriceTable.sqlGridAfterEdit(DataSet: TDataSet);
begin
  sqlGridUPD_DATE.AsDateTime := now;
  sqlGridID_USER.AsInteger   := DBDados.varID_USER;

  if sqlGridDISCOUNT.AsFloat = null then
    sqlGridDISCOUNT.AsFloat := 0;

end;

procedure TfrmPriceTable.sqlGridNewRecord(DataSet: TDataSet);
begin
    sqlGridID_USER.AsInteger     := DBDados.varID_USER;
    sqlGridADD_DATE.AsDateTime   := Now;
    sqlGridDISCOUNT.AsFloat      := 0;

end;

procedure TfrmPriceTable.sqlPriceItemAfterEdit(DataSet: TDataSet);
begin
  //sqlPriceItemUPD_DATE.AsDateTime := now;
 // sqlPriceItemID_USER.AsInteger   := DBDados.varID_USER;
end;

procedure TfrmPriceTable.sqlPriceItemNewRecord(DataSet: TDataSet);
begin
  //  sqlPriceItemID_PRICELIST.AsInteger := sqlGridID_PRICELIST.AsInteger;
 //   sqlPriceItemID_USER.AsInteger      := DBDados.varID_USER;
 //   sqlPriceItemADD_DATE.AsDateTime    := Now;
end;

end.
