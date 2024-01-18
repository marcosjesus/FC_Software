unit ufrmSupplierInvoice;

interface

uses
  MensFun,
  uFunctions,
  uClassDBGenerics,
  uClassSupplierInvoice,
  SetParametro,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxTextEdit,
  cxDropDownEdit, cxCalendar, Vcl.StdCtrls, EditBusca, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxButtons, Vcl.ExtCtrls, cxPC, Vcl.Samples.Spin, cxCurrencyEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmSupplierInvoice = class(TForm)
    cxPageMaster: TcxPageControl;
    cxTabSheetList: TcxTabSheet;
    cxTabSheetForm: TcxTabSheet;
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButAlterar: TcxButton;
    ButExcluir: TcxButton;
    ButImprimir: TcxButton;
    ButSair: TcxButton;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    sqlGrid: TFDQuery;
    dsGrid: TDataSource;
    pnlBtnLateral: TPanel;
    ButNovoItem: TcxButton;
    ButAlterarItem: TcxButton;
    ButExcluirItem: TcxButton;
    ButSalvarItem: TcxButton;
    ButCAncelarItem: TcxButton;
    cxPageItem: TcxPageControl;
    cxTabSheetGrade: TcxTabSheet;
    cxTabSheetItemForm: TcxTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    edtProduct: TEditBusca;
    Label5: TLabel;
    Label40: TLabel;
    edtwidth: TcxCurrencyEdit;
    edtheight: TcxCurrencyEdit;
    Label15: TLabel;
    Label41: TLabel;
    edttotalarea: TcxCurrencyEdit;
    EdtQty: TSpinEdit;
    Label16: TLabel;
    edtUnitPrice: TcxCurrencyEdit;
    Label6: TLabel;
    sqlGridID: TFDAutoIncField;
    sqlGridINVOICE: TStringField;
    sqlGridMANUFACTORY: TStringField;
    sqlGridCOMPANY: TStringField;
    sqlGridINVOICEDATE: TSQLTimeStampField;
    sqlGridSALESREP: TStringField;
    sqlGridFREIGHT: TBCDField;
    sqlGridTAX: TBCDField;
    sqlGridTOTAL: TBCDField;
    sqlGridSTATUS: TStringField;
    cxGrid1DBTableView1INVOICE: TcxGridDBColumn;
    cxGrid1DBTableView1MANUFACTORY: TcxGridDBColumn;
    cxGrid1DBTableView1COMPANY: TcxGridDBColumn;
    cxGrid1DBTableView1INVOICEDATE: TcxGridDBColumn;
    cxGrid1DBTableView1SALESREP: TcxGridDBColumn;
    cxGrid1DBTableView1FREIGHT: TcxGridDBColumn;
    cxGrid1DBTableView1TAX: TcxGridDBColumn;
    cxGrid1DBTableView1SUBTOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    TBCOMPANY: TFDTable;
    TBCOMPANYID_COMPANY: TIntegerField;
    TBCOMPANYADD_DATE: TSQLTimeStampField;
    TBCOMPANYUPD_DATE: TSQLTimeStampField;
    TBCOMPANYTAX_ID: TStringField;
    TBCOMPANYCOMPANYNAME: TStringField;
    TBCOMPANYTRADINGNAME: TStringField;
    TBCOMPANYCOMPANYOWNER: TStringField;
    TBCOMPANYPHONENUMBER: TStringField;
    TBCOMPANYEMAIL: TStringField;
    TBCOMPANYADDRESS1: TStringField;
    TBCOMPANYCOUNTRY: TStringField;
    TBCOMPANYST: TStringField;
    TBCOMPANYCITY: TStringField;
    TBCOMPANYZIPCODE: TStringField;
    TBCOMPANYID_USER: TIntegerField;
    TBCOMPANYESTIMATEDAYS: TIntegerField;
    TBCOMPANYTAX: TBCDField;
    TBCOMPANYIMAGEM: TBlobField;
    DsCompany: TDataSource;
    sqlGridMERCHANDISE: TBCDField;
    Label45: TLabel;
    edtAreaSquareFeetPerBox: TcxCurrencyEdit;
    Label46: TLabel;
    Label7: TLabel;
    edtSubTotal: TcxCurrencyEdit;
    sqlItem: TFDQuery;
    dsItem: TDataSource;
    sqlItemID_SUP_INVOICEITEM: TIntegerField;
    sqlItemID_SUP_INVOICE: TIntegerField;
    sqlItemID_SUPPLIER: TIntegerField;
    sqlItemINVOICE_ID: TStringField;
    sqlItemID_PRODUCT: TIntegerField;
    sqlItemPRODUCT_NAME: TStringField;
    sqlItemWIDTH: TFloatField;
    sqlItemHEIGHT: TFloatField;
    sqlItemQTY: TIntegerField;
    sqlItemTOTALAREA: TFloatField;
    sqlItemROLLNUMBER: TStringField;
    sqlItemDYELOT: TStringField;
    sqlItemUNITPRICE: TBCDField;
    sqlItemAMOUNT: TBCDField;
    cxGrid2DBTableView1ID_SUP_INVOICEITEM: TcxGridDBColumn;
    cxGrid2DBTableView1ID_PRODUCT: TcxGridDBColumn;
    cxGrid2DBTableView1PRODUCT_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1WIDTH: TcxGridDBColumn;
    cxGrid2DBTableView1HEIGHT: TcxGridDBColumn;
    cxGrid2DBTableView1QTY: TcxGridDBColumn;
    cxGrid2DBTableView1TOTALAREA: TcxGridDBColumn;
    cxGrid2DBTableView1ROLLNUMBER: TcxGridDBColumn;
    cxGrid2DBTableView1DYELOT: TcxGridDBColumn;
    cxGrid2DBTableView1UNITPRICE: TcxGridDBColumn;
    cxGrid2DBTableView1AMOUNT: TcxGridDBColumn;
    sqlItemPRODUCTTYPE: TStringField;
    sqlItemPRODUCTSTYLE: TStringField;
    cxGrid2DBTableView1PRODUCTTYPE: TcxGridDBColumn;
    cxGrid2DBTableView1PRODUCTSTYLE: TcxGridDBColumn;
    sqlTerms: TFDQuery;
    sqlTermsID_TERMS: TFDAutoIncField;
    sqlTermsTABLENAME: TStringField;
    sqlTermsID_PROCESS: TIntegerField;
    sqlTermsDT_PROCESS: TDateField;
    sqlTermsNUM_DAYS: TIntegerField;
    sqlTermsDATE_DUE: TDateField;
    sqlTermsVALUE: TBCDField;
    sqlTermsADD_DATE: TSQLTimeStampField;
    sqlTermsUPD_DATE: TSQLTimeStampField;
    sqlTermsID_USER: TIntegerField;
    dsTerms: TDataSource;
    sqlGridID_SUPPLIER: TIntegerField;
    sqlGridID_COMPANY: TIntegerField;
    edtRoolNumber: TcxTextEdit;
    edtDyeLot: TcxTextEdit;
    Label12: TLabel;
    Label14: TLabel;
    edtLocator: TcxTextEdit;
    btnGetRequestOrder: TcxButton;
    Label18: TLabel;
    Label19: TLabel;
    edtManufactInvoice: TcxTextEdit;
    sqlPaymentMethod: TFDQuery;
    dsPaymentMethod: TDataSource;
    sqlGridID_PAYMENT_METHOD: TIntegerField;
    Panel1: TPanel;
    pnlTop: TPanel;
    Label1: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbladdress: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label37: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edtManufactory: TEditBusca;
    cxDateProcess: TcxDateEdit;
    edtInvoiceNum: TcxTextEdit;
    cxLookupComboBoxCompany: TcxLookupComboBox;
    edtSalesRep: TcxTextEdit;
    edtFreight: TcxCurrencyEdit;
    edtTax: TcxCurrencyEdit;
    edtMerchandise: TcxCurrencyEdit;
    edtTotal: TcxCurrencyEdit;
    cmbStatus: TcxComboBox;
    cxLookupComboBoxPaymentMethod: TcxLookupComboBox;
    Panel2: TPanel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1DATE_DUE: TcxGridDBColumn;
    cxGrid3DBTableView1VALUE: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    btnTerms: TcxButton;
    edtDays: TEdit;
    Label36: TLabel;
    Label17: TLabel;
    edtTermDescription: TcxTextEdit;
    sqlTermsDESCRIPTION: TStringField;
    cxGrid3DBTableView1DESCRIPTION: TcxGridDBColumn;
    lblReqOrder: TLabel;
    edtReqOrder: TcxTextEdit;
    sqlGridID_REQUESTORDER: TIntegerField;
    Label22: TLabel;
    lblqtyrequired: TLabel;
    sqlItemCOUNTNEEDED: TFloatField;
    procedure ButSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButNovoClick(Sender: TObject);
    procedure ButSalvarClick(Sender: TObject);
    procedure edtManufactoryClick(Sender: TObject);
    procedure edtMerchandiseExit(Sender: TObject);
    procedure edtFreightExit(Sender: TObject);
    procedure edtTaxExit(Sender: TObject);
    procedure edtheightEnter(Sender: TObject);
    procedure edtwidthEnter(Sender: TObject);
    procedure edtheightExit(Sender: TObject);
    procedure ButNovoItemClick(Sender: TObject);
    procedure EdtQtyChange(Sender: TObject);
    procedure edtUnitPriceExit(Sender: TObject);
    procedure ButSalvarItemClick(Sender: TObject);
    procedure ButCAncelarItemClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnTermsClick(Sender: TObject);
    procedure ButAlterarClick(Sender: TObject);
    procedure edtInvoiceNumExit(Sender: TObject);
    procedure ButCancelarClick(Sender: TObject);
    procedure ButAlterarItemClick(Sender: TObject);
    procedure btnGetRequestOrderClick(Sender: TObject);
    procedure edtProductClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ButExcluirItemClick(Sender: TObject);
  private
    { Private declarations }
    varLocateRequest : Boolean;
    varLocateID : Integer;
    Invoice   : TInvoice;
    Item      : TInvoiceItem;
    varNewKey : Integer;
    varNewKeyItem : Integer;
    varOption, varOptionItem : char;
    varTempAreaTotal : Double;
    function ValidTerms : Boolean;
    procedure SaveHeader;
    procedure AtualizaGrade;
    function CalculaValorTotal: Double;
    function ValidInvoiceHeaderFields: Boolean;
    procedure ButItensOnOff(S: String);
    procedure CleanItemFromEdition;
    procedure AtualizaGradeItem;
    function ValidTotalTerm: Boolean;
    procedure AtualizTerms;
    procedure ClearHeaderScreen;
    procedure AtualizaPreco;
  public
    { Public declarations }
    procedure SetupForm;
  end;

var
  frmSupplierInvoice: TfrmSupplierInvoice;

Const

  SUP_INVOICE_HEADER = 'TBSUP_INVOICE';
  SUP_INVOICE_ITEM   = 'TBSUP_INVOICEITEM';


implementation

{$R *.dfm}

uses uDMConectDB;

{ TfrmSupplierInvoice }

procedure TfrmSupplierInvoice.ButNovoClick(Sender: TObject);
var
  varNextKey : TDBNextKey;
begin


  varNextKey               := TDBNextKey.Create(SUP_INVOICE_HEADER);
  Try
    varNewKey              := varNextKey.Key;
    Caption                := Caption + '  -  ' + ZeroLeft(IntToStr(varNewKey),7);
    varNextKey.UpdateKey(varNewKey, SUP_INVOICE_HEADER); // atualiza a nova chave no banco
    varNewKeyItem          := 0;
    Invoice                := TInvoice.Create(Self);
    Invoice.id_sup_invoice := varNewKey;
    AtualizaGradeItem;
    AtualizTerms;
  finally
    FreeAndNil(varNextKey);
  End;

  ClearHeaderScreen;
  varOption                         := 'I';
  cxPageMaster.ActivePage           := cxTabSheetForm;
  cxPageItem.ActivePage             := cxTabSheetGrade;
  cxLookupComboBoxCompany.EditValue := DBDados.varIDMAIN_COMPANY;
  cmbStatus.ItemIndex               := 0;

end;

procedure TfrmSupplierInvoice.ButNovoItemClick(Sender: TObject);
var
  varNextKey : TDBNextKey;
begin
  if  varOption = 'X' then
  begin
    Mens_MensInf('The Estimate Form not in insert or edit mode.') ;
    Exit;
  end;

  if ((edtManufactory.Text = '') or (edtManufactory.bs_KeyValues.Count = 0)) then
  begin
    Mens_MensInf('The Manufactory field is required.');
    edtManufactory.SetFocus;
    Exit;
  end;


  if edtInvoiceNum.Text = '' then
  begin
    Mens_MensInf('The Invoice Number field is required.');
    edtInvoiceNum.SetFocus;
    Exit;
  end;

  if cxDateProcess.Text = '12/30/1899' then
  begin
      Mens_MensInf('The Invoice Date is required.') ;
      cxDateProcess.SetFocus;
      exit;
  end;

  if cxLookupComboBoxCompany.EditValue = Null then
  begin
    Mens_MensInf('The Company name field is required.') ;
    cxLookupComboBoxCompany.SetFocus;
    Exit;
  end;

  if cxLookupComboBoxPaymentMethod.EditValue = Null then
  begin
    Mens_MensInf('The payment method field is required.') ;
    cxLookupComboBoxPaymentMethod.SetFocus;
    Exit;
  end;



  varOptionItem := 'I';
  pnlTop.Enabled := False;
  cxPageItem.ActivePage := cxTabSheetItemForm;
  CleanItemFromEdition;

  Invoice.id_supplier := edtManufactory.bs_KeyValue;
  Invoice.invoice_id  := edtInvoiceNum.Text;

  varNextKey      := TDBNextKey.Create(SUP_INVOICE_ITEM);
  Try
    varNewKeyItem := varNextKey.Key;
    varNextKey.UpdateKey(varNewKeyItem, SUP_INVOICE_ITEM); // atualiza a nova chave no bancO

    Item := TInvoiceItem.Create(Self);
    Item.id_sup_invoiceitem := varNewKeyItem;

  finally
    FreeAndNil(varNextKey);
  End;

  Item.id_sup_invoice     := Invoice.id_sup_invoice;
  Item.id_supplier        := Invoice.id_supplier;
  Item.invoice_id         := Invoice.invoice_id;

  edtProduct.bs_Filter := 'P.TYPEOFPRODUCT = ''PRODUCT''  AND P.ID_SUPPLIER = ' + QuotedStr(IntToStr(Invoice.id_supplier));

  ButItensOnOff('FFFTTFFF');
  edtProduct.SetFocus;

end;

procedure TfrmSupplierInvoice.ButAlterarClick(Sender: TObject);
begin
   ClearHeaderScreen;
   varOption               := 'U';

   edtManufactory.SetValue('S.ID_SUPPLIER = ' + sqlGridID_SUPPLIER.AsString);
   edtManufactoryClick(Self);
   edtInvoiceNum.Text     := sqlGridINVOICE.AsString;

   Invoice                := TInvoice.Create(Self);
   Invoice.Search(sqlGridID.AsInteger);
   lblReqOrder.Visible := True;
   edtReqOrder.Visible := True;
   edtReqOrder.EditValue := sqlGridID_REQUESTORDER.AsInteger;
   if edtReqOrder.EditValue  <> 0 then
      edtReqOrder.Enabled := False
   else edtReqOrder.Enabled := True;


   Invoice.id_sup_invoice := sqlGridID.AsInteger;
   Invoice.id_supplier    := sqlGridID_SUPPLIER.AsInteger;
   Invoice.invoice_id     := sqlGridINVOICE.AsString;
   Invoice.total          := sqlGridTOTAL.AsFloat;

   cxDateProcess.Date     := sqlGridINVOICEDATE.AsDateTime;
   cxLookupComboBoxCompany.EditValue := sqlGridID_COMPANY.AsInteger;
   edtSalesRep.Text      := sqlGridSALESREP.AsString;
   cmbStatus.ItemIndex   := cmbStatus.Properties.Items.IndexOf(sqlGridSTATUS.AsString);
   edtMerchandise.Value  := sqlGridMERCHANDISE.AsFloat;
   cxLookupComboBoxPaymentMethod.EditValue := sqlGridID_PAYMENT_METHOD.AsInteger;

   edtFreight.Value      := sqlGridFREIGHT.AsFloat;
   edtTax.Value          := sqlGridTAX.AsFloat;
   edtTotal.Value        := sqlGridTOTAL.AsFloat;
   edtMerchandiseExit(Self);

   AtualizTerms;
   AtualizaGradeItem;

   ButItensOnOff('TTTFFTTT');
   cxPageMaster.ActivePage := cxTabSheetForm;
   cxPageItem.ActivePage   := cxTabSheetGrade;
end;

procedure TfrmSupplierInvoice.ButAlterarItemClick(Sender: TObject);
begin

  if sqlItem.IsEmpty then
  begin
    Mens_MensInf('There is no Data to Edit.') ;
    Exit;
  end;

  CleanItemFromEdition;
  if  varOption = 'X' then
  begin
    Mens_MensInf('The Invoice Form not in insert or edit mode.') ;
    Exit;
  end;

  if ((edtManufactory.Text = '') or (edtManufactory.bs_KeyValues.Count = 0)) then
  begin
    Mens_MensInf('The Manufactory field is required.');
    edtManufactory.SetFocus;
    Exit;
  end;


  if edtInvoiceNum.Text = '' then
  begin
    Mens_MensInf('The Invoice Number field is required.');
    edtInvoiceNum.SetFocus;
    Exit;
  end;

  if cxDateProcess.Text = '' then
  begin
      Mens_MensInf('The Invoice Date is required.') ;
      cxDateProcess.SetFocus;
      exit;
  end;

  if cxLookupComboBoxCompany.EditValue = Null then
  begin
    Mens_MensInf('The Company name field is required.') ;
    cxLookupComboBoxCompany.SetFocus;
    Exit;
  end;

  varOptionItem := 'U';
  ButItensOnOff('FFFTTFFF');
  Item := TInvoiceItem.Create(Self);
  Item.id_sup_invoiceitem := sqlItemID_SUP_INVOICEITEM.AsInteger;
  Item.id_sup_invoice := sqlItemID_SUP_INVOICE.AsInteger;
  Item.id_supplier    := sqlItemID_SUPPLIER.AsInteger;
  Item.invoice_id     := sqlItemINVOICE_ID.AsString;
  pnlTop.Enabled := False;
  cxPageItem.ActivePage := cxTabSheetItemForm;
  edtProduct.SetValue('P.ID_PRODUCT = ' + IntToStr(sqlItemID_PRODUCT.AsInteger));
  edtProductClick(Self);
  edtRoolNumber.Text := sqlItemROLLNUMBER.AsString;
  edtDyeLot.Text     := sqlItemDYELOT.AsString;
  edtwidth.Value     := sqlItemWIDTH.AsFloat;
  edtheight.Value    := sqlItemHEIGHT.AsFloat;
  edttotalarea.Value := sqlItemTOTALAREA.AsFloat;
  EdtQty.Value       := sqlItemQTY.AsInteger;
  edtUnitPrice.Value := sqlItemUNITPRICE.AsFloat;
  edtSubTotal.Value  := sqlItemAMOUNT.AsFloat;
  lblqtyrequired.Caption := sqlItemCOUNTNEEDED.AsString;
  edtheightExit(Self);
  edtProduct.SetFocus;

end;

procedure TfrmSupplierInvoice.ButCancelarClick(Sender: TObject);
begin
  if Assigned(Invoice) then
     FreeAndNil(Invoice);

  ClearHeaderScreen;
  Caption   := 'Manufactory Invoice';
  varOption := 'X';
  ButItensOnOff('TTTFFTTT');
  pnlTop.Enabled := True;
  cxPageMaster.ActivePage := cxTabSheetList;
end;


procedure TfrmSupplierInvoice.ButCAncelarItemClick(Sender: TObject);
begin
  if Item <> Nil then
      FreeAndNil(Item);

  CleanItemFromEdition;
  pnlTop.Enabled := True;
  cxPageItem.ActivePage := cxTabSheetGrade;
  ButItensOnOff('TTTFFTTT');
end;

procedure TfrmSupplierInvoice.ButExcluirItemClick(Sender: TObject);
var
  varProcessName : String;
begin
  if sqlItem.IsEmpty then
  begin
    Mens_MensInf('There is no Data to Delete.') ;
    Exit;
  end;

  cmbStatus.ItemIndex     :=  cmbStatus.Properties.Items.IndexOf(cmbStatus.text);

  varProcessName := 'Invoice Item  #: ' + sqlItemID_PRODUCT.AsString;

  if cmbStatus.ItemIndex = 1 then
  begin
    Mens_MensInf(varProcessName + ' has ' + cmbStatus.Text + ' status. You can not Delete it.') ;
    Exit;
  end;

  If Mens_MensConf('Delete ' + varProcessName +  '? ') <> mrOk then
    Exit;


  Item := TInvoiceItem.Create(Self);
  Try
    Item.id_sup_invoiceitem :=  sqlItemID_SUP_INVOICEITEM.AsInteger;
    Item.id_sup_invoice     :=  sqlItemID_SUP_INVOICE.AsInteger;
    Item.invoice_id         :=  sqlItemINVOICE_ID.AsString;
    Item.id_supplier        :=  sqlItemID_SUPPLIER.AsInteger;
    Item.id_product         :=  sqlItemID_PRODUCT.AsInteger;
    Item.Delete;
    AtualizaGradeItem;
  Finally
    FreeAndNil(Item);
  End;


end;

procedure  TfrmSupplierInvoice.CleanItemFromEdition;
begin
  edtProduct.bs_KeyValues.Clear;
  edtProduct.Text   := '';
  EdtQty.Text       := '';
  edtwidth.Text     := '';
  edtheight.Text    := '';
  edttotalarea.Text := '';
  edtUnitPrice.Text := '';
  edtSubTotal.Text  := '';
  edtAreaSquareFeetPerBox.Text := '';
  varTempAreaTotal  := 0;
  lbladdress.Caption := '-';
  edtRoolNumber.Text := '';
  edtDyeLot.Text     := '';
  lblqtyrequired.Caption := '0';
end;


procedure TfrmSupplierInvoice.ClearHeaderScreen;
begin
 edtManufactory.Text := '';
 edtManufactory.bs_KeyValues.Clear;
 edtInvoiceNum.Text := '';
 cxDateProcess.Text := '';
 cxLookupComboBoxCompany.ItemIndex := -1;
 edtSalesRep.Text := '';
 cmbStatus.ItemIndex := 0;
 edtMerchandise.Text := '';
 edtFreight.Text := '';
 edtTax.Text := '';
 edtTotal.Text := '';
 edtDays.Text := '';
end;



procedure TfrmSupplierInvoice.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if not sqlGrid.IsEmpty then
    ButAlterarClick(Self);
end;

procedure TfrmSupplierInvoice.ButItensOnOff(S: String);
begin
  ButNovoItem.Enabled     := Copy(S,1,1) = 'T' = True;
  ButAlterarItem.Enabled  := Copy(S,2,1) = 'T' = True;
  ButExcluirItem.Enabled  := Copy(S,3,1) = 'T' = True;
  ButSalvarItem.Enabled   := Copy(S,4,1) = 'T' = True;
  ButCancelarItem.Enabled := Copy(S,5,1) = 'T' = True;

end;


procedure TfrmSupplierInvoice.ButSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSupplierInvoice.ButSalvarClick(Sender: TObject);
begin

   if ValidInvoiceHeaderFields = False then Exit;

   if varOption = 'X' then
   begin
     Mens_MensInf('The Estimate Form not in edit or insert mode.') ;
     Exit;
   end;

   Invoice.total := edtTotal.Value;

   if ValidTerms = False then Exit;

   if varOption = 'U' then
   begin
      if Invoice.id_requestorder <> edtReqOrder.EditValue then
      begin
          cmbStatus.ItemIndex     :=  cmbStatus.Properties.Items.IndexOf(cmbStatus.Text);
          if cmbStatus.ItemIndex = 1 then
          begin
             Mens_MensInf('The field Request Order ID can not blank') ;
             edtReqOrder.SetFocus;
          end;
      end;
   end;

   SaveHeader;




   lblReqOrder.Visible := False;
   edtReqOrder.Text := '';
   edtReqOrder.Visible := False;

   pnlTop.Enabled := True;
   cxPageMaster.ActivePage := cxTabSheetList;



   AtualizaGrade;

   if Assigned(Invoice) then
       FreeAndNil(Invoice);
end;

procedure   TfrmSupplierInvoice.AtualizaPreco;
var
 I : Integer;
begin
   for I := 0 to Invoice.ItensNF.Count do
   begin
       ShowMessage(FloatToStr(Invoice.ItensNF[I].unitprice ));

   end;


end;

procedure TfrmSupplierInvoice.ButSalvarItemClick(Sender: TObject);
begin

  if ((edtProduct.Text = '') or (edtProduct.bs_KeyValues.Count = 0)) then
  begin
    Mens_MensInf('The Product name field is required.') ;
    edtProduct.SetFocus;
    Exit;
  end;

  if edtwidth.Text = '' then
  begin
     Mens_MensInf('The Width field is required.') ;
     edtwidth.SetFocus;
     Exit;
  end;

  if edtheight.Text = '' then
  begin
     Mens_MensInf('The Height field is required.') ;
     edtheight.SetFocus;
     Exit;
  end;

  if edttotalarea.Text = '' then
  begin
     Mens_MensInf('The Total Area field is required.') ;
     edttotalarea.SetFocus;
     Exit;
  end;


  if edtUnitPrice.Text = '' then
  begin
     Mens_MensInf('The Unit Price field is required.') ;
     edtUnitPrice.SetFocus;
     Exit;
  end;

  if edtSubTotal.Text = '' then
  begin
     Mens_MensInf('The Subtotal field is required.') ;
     edtSubTotal.SetFocus;
     Exit;
  end;

  Item.id_sup_invoice := Invoice.id_sup_invoice;
  Item.invoice_id     := Invoice.invoice_id;
  Item.id_supplier    := Invoice.id_supplier;

  Item.id_product     := edtProduct.bs_KeyValue;
  item.width          := edtwidth.Value;
  Item.height         := edtheight.Value;
  Item.totalarea      := edttotalarea.Value;
  Item.qty            := EdtQty.Value;
  Item.unitprice      := edtUnitPrice.Value;
  Item.amount         := edtSubTotal.Value;
  Item.id_user        := DBDados.varID_USER;
  item.upd_date       := Date;
  Item.rollnumber     := edtRoolNumber.Text;
  Item.dyelot         := edtDyeLot.Text;
                                                                                                                           if varOptionItem <> 'U' Then
   if Item.SearchProductonSale = False then
   begin
     Mens_MensInf('check whether Product has already been entered under id ' + edtProduct.bs_KeyValue);
     edtProduct.SetFocus;
     Exit;
   end;

  if varOption = 'I' then
  begin
    SaveHeader;
    varOption := 'U';
  end;


  Invoice.ItensNF.Add(Invoice, Item);

   if varOptionItem = 'I' then
      Item.Save
   else if varOptionItem = 'U' then
      Item.Update;

  AtualizaGradeItem;

  sqlItem.First;
  Invoice.total := 0;
  sqlItem.DisableControls;
  while not sqlItem.Eof do
  begin
     Invoice.total := Invoice.total + sqlItemAMOUNT.AsFloat;
     sqlItem.Next;
  end;
  sqlItem.EnableControls;

  CleanItemFromEdition;

  edtMerchandise.Value := Invoice.total;

  edtMerchandiseExit(Self);

  ButItensOnOff('TTTFFTTT');

  if Assigned(Item) then
     FreeAndNil(Item);
  pnlTop.Enabled := True;
  cxPageItem.ActivePage := cxTabSheetGrade;

end;


procedure TfrmSupplierInvoice.AtualizaGradeItem;
begin
  if not Assigned(Invoice) then exit;

  sqlItem.Close;
  sqlItem.Params.ParamByName('ID_SUP_INVOICE').AsInteger := Invoice.id_sup_invoice;
  sqlItem.Params.ParamByName('ID_SUPPLIER').AsInteger    := Invoice.id_supplier;
  sqlItem.Params.ParamByName('INVOICE_ID').AsString      := Invoice.invoice_id;
  sqlItem.Open;

  sqlPaymentMethod.Close;
  sqlPaymentMethod.Open;
end;

function TfrmSupplierInvoice.ValidTotalTerm: Boolean;
var
   sqlDados : TFDQuery;
   bRetorno : Boolean;
begin
   bRetorno := True;
   sqlDados := TFDQuery.Create(Nil);
   Try
     sqlDados.Connection := DBDados.Connection;
     sqlDados.Close;
     sqlDados.SQL.Clear;
     sqlDados.SQL.Add(' Select ISNULL(SUM(Value),0) as Total From TBTERMS With (NOLOCK) Where TableName = :tablename and ID_Process = :Id_process ');
     sqlDados.Params.ParamByName('TABLENAME').AsString   := SUP_INVOICE_HEADER;
     sqlDados.Params.ParamByName('ID_PROCESS').AsInteger := Invoice.id_sup_invoice;
     sqlDados.Open;
     if sqlDados.FieldByName('Total').AsFloat > 0 then
     begin
       if (sqlDados.FieldByName('Total').AsFloat  + edtTotal.EditValue ) > Invoice.total then
       begin
          bRetorno := False;
          Mens_MensInf('The Terms is incorrect.') ;
          edtTotal.EditValue := Invoice.total - sqlDados.FieldByName('Total').AsFloat;
          edtDays.SetFocus;
       end;
     end;
   Finally
     FreeAndNil(sqlDados);
   End;

   Result := bRetorno;

end;

procedure TfrmSupplierInvoice.btnTermsClick(Sender: TObject);
var
  sqlDados : TFDQuery;
  varDateDue : TDateTime;
begin

   if edtTermDescription.Text = '' then
   begin
    Mens_MensInf('The Description field is required.') ;
    edtTermDescription.SetFocus;
    Exit;
   end;

   if sqlItem.IsEmpty then
   begin
     Mens_MensInf('Data not found.') ;
     exit;
   end;

   if edtDays.Text = '' then
   begin
    Mens_MensInf('The Terms field is required.') ;
    edtDays.SetFocus;
    Exit;
   end;

   if edtTotal.EditValue <= 0 then
   begin
    Mens_MensInf('The Total field is required.') ;
    edtTotal.EditValue := Invoice.total;
    edtTotal.SetFocus;
    Exit;
   end;

   if cxDateProcess.Text = '12/30/1899' then
   begin
    Mens_MensInf('The Invoice Date is incorrect.') ;
    cxDateProcess.SetFocus;
    Exit;
   end;



   if ValidTotalTerm then
   begin
       varDateDue := cxDateProcess.Date + StrToInt(edtDays.Text);


       sqlDados := TFDQuery.Create(Nil);
       Try
         sqlDados.Connection := DBDados.Connection;
         sqlDados.Close;
         sqlDados.SQL.Clear;
         sqlDados.SQL.Add('Insert into TBTERMS (');
         sqlDados.SQL.Add('TABLENAME');
         sqlDados.SQL.Add(',ID_PROCESS');
         sqlDados.SQL.Add(',DT_PROCESS');
         sqlDados.SQL.Add(',DESCRIPTION');
         sqlDados.SQL.Add(',NUM_DAYS');
         sqlDados.SQL.Add(',DATE_DUE');
         sqlDados.SQL.Add(',VALUE');
         sqlDados.SQL.Add(',ADD_DATE');
         sqlDados.SQL.Add(',ID_EXPENSECATEGORY');
         sqlDados.SQL.Add(',ID_USER)');

         sqlDados.SQL.Add('VALUES (');
         sqlDados.SQL.Add(':TABLENAME');
         sqlDados.SQL.Add(',:ID_PROCESS');
         sqlDados.SQL.Add(',:DT_PROCESS');
         sqlDados.SQL.Add(',:DESCRIPTION');
         sqlDados.SQL.Add(',:NUM_DAYS');
         sqlDados.SQL.Add(',:DATE_DUE');
         sqlDados.SQL.Add(',:VALUE');
         sqlDados.SQL.Add(',:ADD_DATE');
         sqlDados.SQL.Add(',:ID_EXPENSECATEGORY');
         sqlDados.SQL.Add(',:ID_USER)');


         sqlDados.Params.ParamByName('TABLENAME').AsString   := SUP_INVOICE_HEADER;
         sqlDados.Params.ParamByName('ID_PROCESS').AsInteger := Invoice.id_sup_invoice;
         sqlDados.Params.ParamByName('DT_PROCESS').AsString  := FormatDateTime('mm/dd/yyyy hh:mm:ss', cxDateProcess.Date);
         sqlDados.Params.ParamByName('DESCRIPTION').AsString := edtTermDescription.Text;
         sqlDados.Params.ParamByName('NUM_DAYS').AsInteger   := StrToInt(edtDays.Text);
         sqlDados.Params.ParamByName('DATE_DUE').AsString    := FormatDateTime('mm/dd/yyyy hh:mm:ss', varDateDue);
         sqlDados.Params.ParamByName('VALUE').AsFloat        := edtTotal.EditValue;
         sqlDados.Params.ParamByName('ADD_DATE').AsString    := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
         sqlDados.Params.ParamByName('ID_EXPENSECATEGORY').AsInteger := 14;
         sqlDados.Params.ParamByName('ID_USER').AsInteger    := DBDados.varID_USER;

         Try
           sqlDados.ExecSQL;

         except
            on E: EDatabaseError do
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

         end;

         AtualizTerms;

       Finally
         FreeAndNil(sqlDados);
       End;
   end;

end;


procedure TfrmSupplierInvoice.AtualizTerms;
begin
  if not Assigned(Invoice) then exit;

  sqlTerms.Close;
  sqlTerms.Params.ParamByName('ID_PROCESS').AsInteger := Invoice.id_sup_invoice;
  sqlTerms.Params.ParamByName('TABLENAME').AsString   := SUP_INVOICE_HEADER;
  sqlTerms.Open;
end;


function  TfrmSupplierInvoice.ValidInvoiceHeaderFields : Boolean;
var
 varRetorno : Boolean;
begin
  varRetorno := True;
   if ((edtManufactory.Text = '') or (edtManufactory.bs_KeyValues.Count = 0)) then
   begin
      Mens_MensInf('The Manufactorer field is required.');
      edtManufactory.SetFocus;
      Exit;
   end;


   if edtInvoiceNum.Text = '' then
   begin
      Mens_MensInf('The Invoice Number field is required.');
      edtInvoiceNum.SetFocus;
      Exit;
   end;

  if cxDateProcess.Text = '' then
  begin
      Mens_MensInf('The Invoice Date is required.') ;
      cxDateProcess.SetFocus;
      exit;
  end;

  if cxLookupComboBoxCompany.EditValue = Null then
  begin
    Mens_MensInf('The Company name field is required.') ;
    cxLookupComboBoxCompany.SetFocus;
    Exit;
  end;


  if edtMerchandise.Text = '' then
  begin
      Mens_MensInf('The Merchandise field is required.') ;
      edtMerchandise.SetFocus;
      exit;
  end;

  if edtTax.Text = '' then
  begin
      Mens_MensInf('The Tax field is required.') ;
      edtTax.SetFocus;
      exit;
  end;

  if edtTotal.Text = '' then
  begin
      Mens_MensInf('The Total field is required.') ;
      edtTotal.SetFocus;
      exit;
  end;

  Result := varRetorno;

end;

procedure TfrmSupplierInvoice.edtFreightExit(Sender: TObject);
begin
  CalculaValorTotal;
end;

procedure TfrmSupplierInvoice.edtheightEnter(Sender: TObject);
begin
  varTempAreaTotal := 0;
  EdtQty.Value := 0;
end;

procedure TfrmSupplierInvoice.edtheightExit(Sender: TObject);
begin
  if ((edtProduct.Text <> '') and (edtProduct.bs_KeyValues.Count > 0)) then
  begin
    if ((edtwidth.EditValue <> 0) and (edtheight.EditValue <> 0)) then
    begin
      Item.width          := edtwidth.Value;
      Item.height         := edtheight.Value;
      if ((UpperCase(edtProduct.bs_KeyValues[1]) <> 'CARPET') AND (UpperCase(edtProduct.bs_KeyValues[1]) <> 'VINYL')) then
      begin
          if EdtQty.Value = 0 then
          begin
            EdtQty.Text        := FormatFloat('0.00',  (  Item.width * Item.height ) / StrToFloat(edtProduct.bs_KeyValues[6]) );
            edttotalarea.value := Item.width * Item.height;
            varTempAreaTotal   := edttotalarea.Value;
          end
          else
          begin
            edttotalarea.Value := EdtQty.Value * StrToFloat(edtProduct.bs_KeyValues[6])
          end;
      end
      else
      begin
       edtAreaSquareFeetPerBox.text := FormatFloat('0.00', (Item.width * Item.height) / 9);
       edttotalarea.value := Item.width * Item.height;
      end;

    end;
  end;
end;



procedure TfrmSupplierInvoice.edtInvoiceNumExit(Sender: TObject);
begin

 Invoice.invoice_id := edtInvoiceNum.Text;
 if ((edtManufactory.Text <> '') and (edtManufactory.bs_KeyValues.Count > 0)) then
 begin
    Invoice.id_supplier := edtManufactory.bs_KeyValue;
    if Invoice.ValidInvoiceDuplicty = False Then
    begin
      Mens_MensInf('check whether document has already been entered under number ' + edtInvoiceNum.Text);
      edtInvoiceNum.Text := '';
      edtInvoiceNum.SetFocus;
    end;
 end;
end;

procedure TfrmSupplierInvoice.edtManufactoryClick(Sender: TObject);
begin
  if ((edtManufactory.Text <> '') and (edtManufactory.bs_KeyValues.Count > 0)) then
    lbladdress.Caption := edtManufactory.bs_KeyValues[4] + '-' + edtManufactory.bs_KeyValues[1] +  '-' +
      edtManufactory.bs_KeyValues[5] + '-' + edtManufactory.bs_KeyValues[3] +  '-' +
      edtManufactory.bs_KeyValues[2];

end;

procedure TfrmSupplierInvoice.edtTaxExit(Sender: TObject);
begin
   CalculaValorTotal;
end;

procedure TfrmSupplierInvoice.edtUnitPriceExit(Sender: TObject);
begin
   if ((edttotalarea.Text  <> '') and  (edtUnitPrice.Text <> '')) Then
     edtSubTotal.Value := edttotalarea.Value * edtUnitPrice.Value;
end;

procedure TfrmSupplierInvoice.edtwidthEnter(Sender: TObject);
begin
  varTempAreaTotal := 0;
  EdtQty.Value := 0;
end;

function TfrmSupplierInvoice.CalculaValorTotal : Double;
begin
   edtTotal.Value := edtMerchandise.Value + edtFreight.Value + edtTax.Value;
end;

procedure TfrmSupplierInvoice.edtMerchandiseExit(Sender: TObject);
begin
   CalculaValorTotal;
end;

procedure TfrmSupplierInvoice.edtProductClick(Sender: TObject);
begin
     if ((edtProduct.Text <> '') and (edtProduct.bs_KeyValues.Count > 0)) then
     begin
        edtAreaSquareFeetPerBox.EditValue := edtProduct.bs_KeyValues[6];
     end;
end;

procedure TfrmSupplierInvoice.EdtQtyChange(Sender: TObject);
begin
   if EdtQty.Value > 0 then
   begin
      edtheightExit(Self);
     if edttotalarea.Value <= varTempAreaTotal then
        edttotalarea.Style.Font.Color := RGB(255, 0, 0)
     else  edttotalarea.Style.Font.Color :=  RGB(0, 0, 255)
   end;
end;

procedure TfrmSupplierInvoice.SaveHeader;
begin
   if varOption = 'I' then
     Invoice.id_sup_invoice := varNewKey;

   Invoice.id_supplier    := edtManufactory.bs_KeyValue;
   Invoice.id_company     := cxLookupComboBoxCompany.EditValue;
   Invoice.date_invoice   := cxDateProcess.Date;
   Invoice.invoice_id     := edtInvoiceNum.Text;
   Invoice.salesrep       := edtSalesRep.Text;
   Invoice.freight        := edtFreight.Value;
   Invoice.tax            := edtTax.Value;
   Invoice.total          := edtTotal.Value;
   Invoice.merchandise    := edtMerchandise.Value;
   Invoice.id_user        := DBDados.varID_USER;
   Invoice.status         := cmbStatus.Text;
   Invoice.id_payment_method  := cxLookupComboBoxPaymentMethod.EditValue;

   if varOption = 'I' then
     Invoice.Save
   else if varOption = 'U' then
        Invoice.Update;
end;

procedure TfrmSupplierInvoice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(Invoice) then
     FreeAndNil(Invoice);

  FrmSupplierInvoice := nil;
  Action := caFree;
end;

procedure TfrmSupplierInvoice.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmSupplierInvoice.SetupForm;
begin
  cxPageMaster.ActivePage := cxTabSheetList;
  SetParametros(edtManufactory, TipoSupplier);
  SetParametros(edtProduct, TipoProduct);

  if DBDados.varReturnCompanies <> 'Company not Found' then
  begin
     AtualizaGrade;
  end
  else
  begin
     Mens_MensInf('There is no Company set for the current User.');
     Exit;
  end;
  TBCOMPANY.Close;
  TBCOMPANY.Filter   := DBDados.varReturnCompanies ;
  TBCOMPANY.Filtered := True;
  TBCOMPANY.Open;
  varLocateRequest := False;
  varLocateID := -1;
end;

procedure TfrmSupplierInvoice.AtualizaGrade;
begin
  sqlGrid.Close;
  sqlGrid.MacroByName( 'WHERE1' ).AsRaw := ' AND A.' + DBDados.varReturnCompanies;

  if DBDados.varView_All_CustomersNaturalPerson = False then
     sqlGrid.MacroByName( 'WHERE2' ).AsRaw := ' AND A.ID_USER = ' + QuotedStr(IntToStr(DBDados.varID_USER));

  if varLocateRequest then
     sqlGrid.MacroByName( 'WHERE3' ).AsRaw := ' AND A.ID_SUP_INVOICE = ' + QuotedStr(IntToStr(varLocateID));


  sqlGrid.Open;

end;



function TfrmSupplierInvoice.ValidTerms: Boolean;
var
   sqlDados : TFDQuery;
   bRetorno : Boolean;
begin
   bRetorno := True;
   sqlDados := TFDQuery.Create(Nil);
   Try
     sqlDados.Connection := DBDados.Connection;
     sqlDados.Close;
     sqlDados.SQL.Clear;
     sqlDados.SQL.Add(' Select ISNULL(SUM(Value),0) as Total From TBTERMS With (NOLOCK) Where TableName = :tablename and ID_Process = :Id_process ');
     sqlDados.Params.ParamByName('TABLENAME').AsString   := SUP_INVOICE_HEADER;
     sqlDados.Params.ParamByName('ID_PROCESS').AsInteger := Invoice.id_sup_invoice;
     sqlDados.Open;

    if sqlDados.FieldByName('Total').AsFloat > 0 then
     begin
       if ((Round(sqlDados.FieldByName('Total').AsFloat*100)/100) < (Round(Invoice.Total*100)/100))    then
       begin
          bRetorno := False;
          Mens_MensInf('The Terms definition is incomplete.') ;
          edtTotal.EditValue :=  Invoice.total  - sqlDados.FieldByName('Total').AsFloat;
          edtDays.SetFocus;
       end;
     end;


   Finally
     FreeAndNil(sqlDados);
   End;

   Result := bRetorno;

end;


procedure TfrmSupplierInvoice.btnGetRequestOrderClick(Sender: TObject);
var
 sqlAbre, sqlSave : TFDQuery;
 varNextKey : TDBNextKey;
begin
    if edtManufactInvoice.Text = '' then
    begin
        Mens_MensInf('The Manufactorer Invoice Number is required.') ;
        edtManufactInvoice.SetFocus;
        exit;
    end;

    if edtLocator.Text = '' then
    begin
        Mens_MensInf('The Request Order Number is required.') ;
        edtLocator.SetFocus;
        exit;
    end;

    sqlAbre := TFDQuery.Create(Nil);
    sqlSave  := TFDQuery.Create(Nil);

    Try
      sqlAbre.Connection := DBDados.FDConnection;
      sqlSave.Connection := DBDados.FDConnection;

      sqlAbre.Close;
      sqlAbre.SQL.Clear;
      sqlAbre.SQL.Add('SELECT  A.ID_COMPANY ,A.ID_SUPPLIER, A.ID_PRODUCT, SUM(B.AREASQUAREFEETPERBOX) as AREASQUAREFEETPERBOX, SUM(COUNTNEED) AS COUNTNEED FROM TBREQUESTORDER A ');
      sqlAbre.SQL.Add(' LEFT OUTER JOIN TBPRODUCT B ON B.ID_PRODUCT = A.ID_PRODUCT ');
      sqlAbre.SQL.Add(' WHERE A.GROUPNUMBER = :GROUPNUMBER ');
      sqlAbre.SQL.Add(' GROUP BY A.ID_COMPANY ,A.ID_SUPPLIER, A.ID_PRODUCT ');

      sqlAbre.Params.ParamByName('GROUPNUMBER').AsInteger := edtLocator.EditValue;
      sqlAbre.Open;
      if not sqlAbre.IsEmpty then
      begin
        sqlAbre.First;
        varNextKey               := TDBNextKey.Create(SUP_INVOICE_HEADER);
        Try
          varNewKey              := varNextKey.Key;
          varLocateID            := varNewKey;
          varNextKey.UpdateKey(varNewKey, SUP_INVOICE_HEADER); // atualiza a nova chave no banco
        finally
          FreeAndNil(varNextKey);
        End;

        sqlSave.Close;
        sqlSave.SQL.Clear;
        sqlSave.SQL.Add('Insert Into TBSUP_INVOICE (ID_SUP_INVOICE, ID_SUPPLIER, ID_COMPANY, STATUS, ID_USER, INVOICE_ID, ID_REQUESTORDER, DATE_INVOICE)');
        sqlSave.SQL.Add('Values (:ID_SUP_INVOICE, :ID_SUPPLIER, :ID_COMPANY, :STATUS, :ID_USER, :INVOICE_ID, :ID_REQUESTORDER, :DATE_INVOICE)');
        sqlSave.Params.ParamByName('ID_SUP_INVOICE').AsInteger := varNewKey;
        sqlSave.Params.ParamByName('ID_SUPPLIER').AsInteger    := sqlAbre.FieldByName('ID_SUPPLIER').AsInteger;
        sqlSave.Params.ParamByName('ID_COMPANY').AsInteger     := sqlAbre.FieldByName('ID_COMPANY').AsInteger;
        sqlSave.Params.ParamByName('STATUS').AsString          := 'Pending';
        sqlSave.Params.ParamByName('ID_USER').AsInteger        := DBDados.varID_USER;
        sqlSave.Params.ParamByName('INVOICE_ID').AsString      := edtManufactInvoice.Text;
        sqlSave.Params.ParamByName('ID_REQUESTORDER').AsString := edtLocator.EditValue;
        sqlSave.Params.ParamByName('DATE_INVOICE').AsDate      := 0;


        Try
           sqlSave.ExecSQL;


        except
            on E: EDatabaseError do
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

        end;

        while not sqlAbre.Eof do
        begin

          varNextKey      := TDBNextKey.Create(SUP_INVOICE_ITEM);
          Try
            varNewKeyItem := varNextKey.Key;
            varNextKey.UpdateKey(varNewKeyItem, SUP_INVOICE_ITEM); // atualiza a nova chave no bancO
          finally
            FreeAndNil(varNextKey);
          End;

          sqlSave.Close;
          sqlSave.SQL.Clear;
          sqlSave.SQL.Add('Insert Into TBSUP_INVOICEITEM (ID_SUP_INVOICEITEM, ID_SUP_INVOICE, ID_SUPPLIER, ID_PRODUCT, ID_USER, INVOICE_ID, AREASQUAREFEET, COUNTNEEDED)');
          sqlSave.SQL.Add(' Values (:ID_SUP_INVOICEITEM, :ID_SUP_INVOICE, :ID_SUPPLIER, :ID_PRODUCT, :ID_USER, :INVOICE_ID, :AREASQUAREFEET, :COUNTNEEDED)');
          sqlSave.Params.ParamByName('ID_SUP_INVOICEITEM').AsInteger := varNewKeyItem;
          sqlSave.Params.ParamByName('ID_SUP_INVOICE').AsInteger     := varNewKey;
          sqlSave.Params.ParamByName('ID_SUPPLIER').AsInteger        := sqlAbre.FieldByName('ID_SUPPLIER').AsInteger;
          sqlSave.Params.ParamByName('ID_PRODUCT').AsInteger         := sqlAbre.FieldByName('ID_PRODUCT').AsInteger;
          sqlSave.Params.ParamByName('ID_USER').AsInteger            := DBDados.varID_USER;
          sqlSave.Params.ParamByName('INVOICE_ID').AsString          := edtManufactInvoice.Text;
          sqlSave.Params.ParamByName('AREASQUAREFEET').AsFloat       := sqlAbre.FieldByName('AREASQUAREFEETPERBOX').AsFloat;
          sqlSave.Params.ParamByName('COUNTNEEDED').AsFloat          := sqlAbre.FieldByName('COUNTNEED').AsFloat;


          Try
             sqlSave.ExecSQL;
             Mens_MensInf('The Request Order and The Manufacturer Invoice has been linked.') ;

          except
              on E: EDatabaseError do
                Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

          end;
          sqlAbre.Next;
        end;
      end;

    Finally
      sqlAbre.Close;
      sqlSave.Close;
      FreeAndNil(sqlAbre);
      FreeAndNil(sqlSave);
    End;

    edtManufactInvoice.Text := '';
    edtLocator.Text := '';
    varLocateRequest := True;
    AtualizaGrade;
    varLocateRequest := False;
    varLocateID := -1;

end;

end.
