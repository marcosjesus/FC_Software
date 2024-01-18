unit uFrmVendorsContractors;

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
  cxDBLookupComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxEditRepositoryItems, dxBarBuiltInMenu, cxButtonEdit,
  cxPC, Vcl.Menus, Vcl.StdCtrls, cxButtons, EditBusca, Vcl.ExtCtrls,
  cxImageComboBox;

type
  TFrmVendorsContractors = class(TForm)
    sqlVendor: TFDQuery;
    dsVendor: TDataSource;
    sqlGrid: TFDQuery;
    dsGrid: TDataSource;
    sqlUser: TFDQuery;
    dsUser: TDataSource;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem;
    cxPageControl1: TcxPageControl;
    cxTabSheetVendor: TcxTabSheet;
    cxTabSheetPricing: TcxTabSheet;
    cxGridPosition: TcxGrid;
    cxTableViewPosition: TcxGridDBTableView;
    cxTableViewPositionID_MAIN_USER: TcxGridDBColumn;
    cxTableViewPositionNAME: TcxGridDBColumn;
    cxTableViewPositionID_POSITION: TcxGridDBColumn;
    cxGridLevelPosition: TcxGridLevel;
    sqlGridBotao: TStringField;
    cxTableViewPositionBotao: TcxGridDBColumn;
    Panel1: TPanel;
    edtPricingTable: TEditBusca;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ButSalvar: TcxButton;
    ButDelete: TcxButton;
    Label1: TLabel;
    sqlVendorPricingTable: TFDQuery;
    dsVendorPricingTable: TDataSource;
    cxGrid1DBTableView1COMPANYNAME: TcxGridDBColumn;
    cxGrid1DBTableView1NOMINAL: TcxGridDBColumn;
    cxGrid1DBTableView1LOCATION: TcxGridDBColumn;
    cxGrid1DBTableView1VENDOR: TcxGridDBColumn;
    cxGrid1DBTableView1STARTDATE: TcxGridDBColumn;
    cxGrid1DBTableView1EXPIREDDATE: TcxGridDBColumn;
    cxGrid1DBTableView1ACTIVE: TcxGridDBColumn;
    sqlAux: TFDQuery;
    sqlSupplier: TFDQuery;
    dsSupplier: TDataSource;
    cxTableViewPositionPHONE: TcxGridDBColumn;
    cxTableViewPositionEMAIL: TcxGridDBColumn;
    sqlGridID_CONTRACTORS: TIntegerField;
    sqlGridID_MAIN_USER: TIntegerField;
    sqlGridNAME: TStringField;
    sqlGridID_POSITION: TIntegerField;
    sqlGridPHONE: TStringField;
    sqlGridEMAIL: TStringField;
    sqlGridDRIVER_LICENSE: TStringField;
    sqlGridID_USER: TIntegerField;
    sqlGridCOMISSION: TBCDField;
    sqlGridID_COMPANY: TIntegerField;
    sqlGridADD_DATE: TDateField;
    sqlGridUPD_DATE: TDateField;
    sqlGridID_SUPPLIER: TIntegerField;
    cxTableViewPositionID_SUPPLIER: TcxGridDBColumn;
    sqlSupplierID_SUPPLIER: TIntegerField;
    sqlSupplierNAMEBUSINESS: TStringField;
    sqlSupplierTRADININGNAME: TStringField;
    sqlSupplierCOUNTRY: TStringField;
    sqlSupplierSTATEE: TStringField;
    sqlSupplierADDRESS1: TStringField;
    sqlSupplierADDRESS2: TStringField;
    sqlSupplierPHONENUMBER: TStringField;
    sqlSupplierZIPCODE: TStringField;
    sqlSupplierINDUSTRY: TStringField;
    sqlSupplierPRODUCT_SERVICE: TStringField;
    sqlSupplierCONTACTNAME1: TStringField;
    sqlSupplierCONTACTEMAIL1: TStringField;
    sqlSupplierCONTACTPOSITION1: TStringField;
    sqlSupplierCONTACTPHONENUMBER1: TStringField;
    sqlSupplierCONTACTNAME2: TStringField;
    sqlSupplierCONTACTEMAIL2: TStringField;
    sqlSupplierCONTACTPOSITION2: TStringField;
    sqlSupplierCONTACTPHONENUMBER2: TStringField;
    sqlSupplierWEBSITE: TStringField;
    sqlSupplierADDITIONINFO: TStringField;
    sqlSupplierID_USER: TIntegerField;
    sqlSuppliercity: TStringField;
    sqlSupplieradd_date: TSQLTimeStampField;
    sqlSupplierupd_date: TSQLTimeStampField;
    sqlUserID_USER: TFDAutoIncField;
    sqlUserNAME: TStringField;
    sqlUserPHONE_NUMBER: TStringField;
    sqlUserEMAIL: TStringField;
    sqlUserID_COMPANY: TIntegerField;
    sqlGridBUYER: TStringField;
    cxTableViewPositionBUYER: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure sqlGridNewRecord(DataSet: TDataSet);
    procedure sqlGridAfterEdit(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxEditRepository1ButtonItem1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ButSalvarClick(Sender: TObject);
    procedure ButDeleteClick(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure sqlGridBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    varID_CONTRACTORS : Integer;
    varID_PriceList   : Integer;
  public
    { Public declarations }
  end;

var
  FrmVendorsContractors: TFrmVendorsContractors;

implementation

{$R *.dfm}

uses uDMConectDB, SetParametro;

procedure TFrmVendorsContractors.ButDeleteClick(Sender: TObject);
begin

  if not sqlVendorPricingTable.IsEmpty then
  begin
    If ( Mens_MensConf('Delete Pricing Table ' + sqlVendorPricingTable.FieldByName('NOMINAL').AsString + ' ?') = mrOk ) Then
    Begin
       sqlAux.Close;
       sqlAux.SQL.Clear;
       sqlAux.SQL.Add('DELETE FROM TBVENDOR_PRICINGTABLE WHERE ID_VENDOR_PRICINGTABLE = :ID_VENDOR_PRICINGTABLE');
       sqlAux.Params.ParamByName('ID_VENDOR_PRICINGTABLE').AsInteger := sqlVendorPricingTable.FieldByName('ID_VENDOR_PRICINGTABLE').AsInteger;
       Try
            sqlAux.ExecSQL;

        except
             on E: EDatabaseError do
                Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
        end;

       sqlVendorPricingTable.Close;
       sqlVendorPricingTable.Params.ParamByName('ID_CONTRACTORS').AsInteger := varID_CONTRACTORS;
       sqlVendorPricingTable.Open;
    End;
  end;
end;

procedure TFrmVendorsContractors.ButSalvarClick(Sender: TObject);
begin
 varID_PriceList := 0;

 if ((edtPricingTable.Text <> '') and (edtPricingTable.bs_KeyValues.Count > 0)) Then
 begin
   varID_PriceList := StrToInt(VarToStr(edtPricingTable.bs_KeyValue));

   if ((varID_PriceList <> 0) and (varID_CONTRACTORS <> 0)) then
   begin
       sqlAux.Close;
       sqlAux.SQL.Clear;
       sqlAux.SQL.Add('Insert into TBVENDOR_PRICINGTABLE(ID_PRICELIST, ID_CONTRACTORS, ADD_DATE, ID_USER) ');
       sqlAux.SQL.Add(' Values ( ' + IntToStr(varID_PriceList) + ',' + IntToStr(varID_CONTRACTORS) + ', GetDate() ,' + IntToStr(DBDados.varID_USER)+ ')' );
       Try
          sqlAux.ExecSQL;

       except
           on E: EDatabaseError do
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
       end;
   end;
 end;

 sqlVendorPricingTable.Close;
 sqlVendorPricingTable.Params.ParamByName('ID_CONTRACTORS').AsInteger := varID_CONTRACTORS;
 sqlVendorPricingTable.Open;
 varID_CONTRACTORS := 0;
 edtPricingTable.Text := '';
 edtPricingTable.bs_KeyValues.Clear;
 cxPageControl1.ActivePage := cxTabSheetVendor;
end;

procedure TFrmVendorsContractors.cxEditRepository1ButtonItem1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   varID_CONTRACTORS := 0;
   sqlVendor.IndexFieldNames := 'ID_POSITION';
   sqlVendor.Locate('ID_POSITION', sqlGrid.FieldByName('ID_POSITION').AsInteger);

   if sqlVendor.FieldByName('PRICINGTABLEVIEW').AsString = 'Y' then
   begin
    varID_CONTRACTORS := sqlGridID_CONTRACTORS.AsInteger;
    sqlVendorPricingTable.Close;
    sqlVendorPricingTable.Params.ParamByName('ID_CONTRACTORS').AsInteger := varID_CONTRACTORS;
    sqlVendorPricingTable.Open;

    edtPricingTable.bs_Filter := 'P.' + DBDados.CompanyFilter(sqlGridID_MAIN_USER.AsInteger);
    cxPageControl1.ActivePage := cxTabSheetPricing;

   end
   else Mens_MensInf('View Not Authorized for this Position.') ;
end;

procedure TFrmVendorsContractors.cxPageControl1Change(Sender: TObject);
begin
  if  ((varID_CONTRACTORS = 0) or (sqlGrid.IsEmpty)) then
    cxPageControl1.ActivePage  := cxTabSheetVendor;
end;

procedure TFrmVendorsContractors.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  sqlGrid.Close;
  sqlVendor.Close;
  sqlUser.Close;

  FrmVendorsContractors := nil;
  Action := caFree;
end;

procedure TFrmVendorsContractors.FormCreate(Sender: TObject);
begin
   SetParametros(edtPricingTable, TipoPricingTable);
end;

procedure TFrmVendorsContractors.FormShow(Sender: TObject);

begin
  sqlGrid.Close;
  sqlVendor.Close;
  sqlGrid.Open;
  sqlVendor.Open;
  sqlUser.Close;
  sqlUser.Open;

  sqlSupplier.Close;
  sqlSupplier.MacroByName( 'WHERE1' ).AsRaw := 'INDUSTRY = ''SERVICE SUPPLIER''';
  sqlSupplier.Open;

  sqlVendorPricingTable.Close;
  sqlVendorPricingTable.Params.ParamByName('ID_CONTRACTORS').AsInteger := -1;
  sqlVendorPricingTable.Open;

  cxPageControl1.ActivePage := cxTabSheetVendor;
end;

procedure TFrmVendorsContractors.sqlGridAfterEdit(DataSet: TDataSet);
begin
  sqlGrid.FieldByName('UPD_DATE').AsDateTime := now;
  sqlGridID_USER.AsInteger   := DBDados.varID_USER;

end;

procedure TFrmVendorsContractors.sqlGridBeforePost(DataSet: TDataSet);
begin
  if sqlGrid.Active = True then
  begin
    if sqlUser.Active = True then
    begin
      if sqlGridID_MAIN_USER.AsString <> '' then
      begin
        sqlUser.Locate('ID_USER', sqlGrid.FieldByName('ID_MAIN_USER').AsString);
        sqlGridPHONE.AsString       := sqlUser.FieldByName('PHONE_NUMBER').AsString;
        sqlGridEMAIL.AsString       := sqlUser.FieldByName('EMAIL').AsString;
        sqlGridID_COMPANY.AsInteger := sqlUserID_COMPANY.AsInteger;
       end;
    end;
  end;
end;

procedure TFrmVendorsContractors.sqlGridNewRecord(DataSet: TDataSet);
var
  varNexTKey : TDBNextKey;
begin
  varNexTKey := TDBNextKey.Create('TBCONTRACTORS');
  Try
    sqlGrid.FieldByName('ID_CONTRACTORS').AsInteger := varNexTKey.Key;
    sqlGrid.FieldByName('ID_USER').AsInteger        := DBDados.varID_USER;
    sqlGrid.FieldByName('ADD_DATE').AsDateTime      := Now;
  Finally
     varNexTKey.UpdateKey(varNexTKey.Key, 'TBCONTRACTORS'); // atualiza a nova chave no banco
     FreeAndNil(varNexTKey);
  End;

end;

end.
