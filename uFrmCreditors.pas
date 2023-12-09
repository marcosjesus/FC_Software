unit uFrmCreditors;

interface

uses
  uClassFinance,
  MensFun,
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
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  Vcl.StdCtrls, EditBusca, Vcl.ExtCtrls, cxPC, Vcl.Menus, Vcl.ComCtrls,
  cxButtons, Vcl.Mask, rsEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxCore, cxDateUtils, cxGroupBox, cxCheckGroup,
  cxCurrencyEdit, cxCalendar, cxSpinEdit, cxRadioGroup, cxInplaceContainer,
  cxVGrid, cxOI;

type
  TFrmCreditors = class(TForm)
    cxPageControl: TcxPageControl;
    cxTabSheetList: TcxTabSheet;
    cxTabSheetForm: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButAlterar: TcxButton;
    ButExcluir: TcxButton;
    ButSair: TcxButton;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    ButImprimir: TcxButton;
    StatusBar1: TStatusBar;
    pnl3: TPanel;
    EdiCodigo: TrsSuperEdit;
    btnLimpaSupplier: TcxButton;
    edtSupplier: TEditBusca;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    sqlGrid: TFDQuery;
    sqlGridID_PAYABLE: TFDAutoIncField;
    sqlGridINVOICE_ID: TStringField;
    sqlGridINVOICE_DATE: TDateField;
    sqlGridNAMEBUSINESS: TStringField;
    sqlGridINTERNALCOD: TStringField;
    sqlGridEXPENSECATEGORY: TStringField;
    sqlGridDESCRIPTION: TStringField;
    sqlGridDATE_DUE: TDateField;
    sqlGridPAYMENT_AMOUNT: TBCDField;
    sqlGridPAYMENT_STATUS: TStringField;
    sqlGridMETHOD: TStringField;
    sqlGridDBUSER: TStringField;
    sqlGridID_SUPPLIER: TIntegerField;
    sqlGridID_EXPENSECATEGORY: TIntegerField;
    sqlGridID_USER: TIntegerField;
    cxGrid2DBTableView1ID_PAYABLE: TcxGridDBColumn;
    cxGrid2DBTableView1INVOICE_ID: TcxGridDBColumn;
    cxGrid2DBTableView1INVOICE_DATE: TcxGridDBColumn;
    cxGrid2DBTableView1NAMEBUSINESS: TcxGridDBColumn;
    cxGrid2DBTableView1INTERNALCOD: TcxGridDBColumn;
    cxGrid2DBTableView1EXPENSECATEGORY: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid2DBTableView1DATE_DUE: TcxGridDBColumn;
    cxGrid2DBTableView1PAYMENT_AMOUNT: TcxGridDBColumn;
    cxGrid2DBTableView1PAYMENT_STATUS: TcxGridDBColumn;
    cxGrid2DBTableView1METHOD: TcxGridDBColumn;
    cxGrid2DBTableView1DBUSER: TcxGridDBColumn;
    pnl1: TPanel;
    rsSuperEdit1: TrsSuperEdit;
    Label2: TLabel;
    pnl4: TPanel;
    Label3: TLabel;
    rsSuperEdit2: TrsSuperEdit;
    pnl5: TPanel;
    Label4: TLabel;
    rsSuperEdit3: TrsSuperEdit;
    pnl6: TPanel;
    Label5: TLabel;
    rsSuperEdit4: TrsSuperEdit;
    pnl7: TPanel;
    rsSuperEdit5: TrsSuperEdit;
    cxLookupComboBoxExpense: TcxLookupComboBox;
    sqlExpenseCategory: TFDQuery;
    dsExpenseCategory: TDataSource;
    sqlExpenseCategoryID_EXPENSECATEGORY: TFDAutoIncField;
    sqlExpenseCategoryDESCRIPTION: TStringField;
    Label11: TLabel;
    edtInvoice: TcxTextEdit;
    InvoiceDateDue: TcxDateEdit;
    Label12: TLabel;
    InvoiceDate: TcxDateEdit;
    edtAmount: TcxCurrencyEdit;
    sqlPaymentMethod: TFDQuery;
    dsPaymentMethod: TDataSource;
    Label6: TLabel;
    cxLookupComboBoxPaymentMethod: TcxLookupComboBox;
    dsGrid: TDataSource;
    edtPaymentDesc: TcxTextEdit;
    Label7: TLabel;
    pnl2: TPanel;
    Label9: TLabel;
    rsSuperEdit6: TrsSuperEdit;
    cxLookupComboBoxCompany: TcxLookupComboBox;
    DsCompany: TDataSource;
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
    sqlAux: TFDQuery;
    rgStatus: TcxRadioGroup;
    sqlGridID_PAYMENT_METHOD: TIntegerField;
    sqlGridID_COMPANY: TIntegerField;
    sqlGridADD_DATE: TSQLTimeStampField;
    sqlGridUPD_DATE: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxPageControlChange(Sender: TObject);
    procedure ButNovoClick(Sender: TObject);
    procedure btnLimpaSupplierClick(Sender: TObject);
    procedure ButSalvarClick(Sender: TObject);
    procedure ButCancelarClick(Sender: TObject);
    procedure ButSairClick(Sender: TObject);
    procedure ButAlterarClick(Sender: TObject);
  private
    { Private declarations }
    Finance : TFinance;
    varOption : char;  // I = Insert / U = Update
    varNewKey : Integer;
    procedure LimpaTela;
    function ValidFields : Boolean;
    procedure Save;
  public
    { Public declarations }
    procedure SetupTable;

  end;

var
  FrmCreditors: TFrmCreditors;

implementation

{$R *.dfm}

uses uDMConectDB;



procedure TFrmCreditors.ButAlterarClick(Sender: TObject);
begin
   varOption := 'U';
   LimpaTela;

   Finance := TFinance.Create;
   Finance.id_user    := DBDados.varID_USER;
   Finance.id_payable := sqlGridID_PAYABLE.AsInteger;

   cxLookupComboBoxCompany.EditValue := DBDados.varIDMAIN_COMPANY;
   if sqlGridPAYMENT_STATUS.AsString = 'Open' Then
     rgStatus.ItemIndex := 0
   else if sqlGridPAYMENT_STATUS.AsString = 'Paid' Then
     rgStatus.ItemIndex := 1
   else if sqlGridPAYMENT_STATUS.AsString = 'Overdue' Then
     rgStatus.ItemIndex := 2
   else if sqlGridPAYMENT_STATUS.AsString = 'Void' Then
     rgStatus.ItemIndex := 3;

   cxLookupComboBoxExpense.EditValue := sqlGridID_EXPENSECATEGORY.AsInteger;

   cxLookupComboBoxCompany.EditValue := sqlGridID_COMPANY.AsInteger;

   edtSupplier.SetValue( 'S.ID_SUPPLIER = ' + sqlGridID_SUPPLIER.AsString);

   edtInvoice.Text :=  sqlGridINVOICE_ID.AsString;
   InvoiceDate.Date := sqlGridINVOICE_DATE.AsDateTime;
   InvoiceDateDue.Date := sqlGridDATE_DUE.AsDateTime;
   edtAmount.Value := sqlGridPAYMENT_AMOUNT.AsFloat;
   edtPaymentDesc.Text := sqlGridDESCRIPTION.AsString;
   cxLookupComboBoxPaymentMethod.EditValue := sqlGridID_PAYMENT_METHOD.AsInteger;
   cxPageControl.ActivePage          := cxTabSheetForm;

   StatusBar1.Panels[0].Text := 'User: ' + sqlGridDBUSER.AsString;
   StatusBar1.Panels[1].Text := 'Date created: ' + sqlGridADD_DATE.AsString;
   StatusBar1.Panels[2].Text := 'Date modified: ' + sqlGridUPD_DATE.AsString;


   edtSupplier.SetFocus;
end;

procedure TFrmCreditors.ButCancelarClick(Sender: TObject);
begin
  varOption := 'X';
  LimpaTela;
  FreeAndNil(Finance);
  cxPageControl.ActivePage := cxTabSheetList;
end;

procedure TFrmCreditors.ButNovoClick(Sender: TObject);
begin
   varOption := 'I';
   Finance := TFinance.Create;
   Finance.id_user := DBDados.varID_USER;
   LimpaTela;
   cxPageControl.ActivePage          := cxTabSheetForm;
   cxLookupComboBoxCompany.EditValue := DBDados.varIDMAIN_COMPANY;
   edtSupplier.SetFocus;
end;

procedure TFrmCreditors.ButSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmCreditors.ButSalvarClick(Sender: TObject);
begin

 if ValidFields = False then Exit;

 Try
    Finance.payment_status      := rgStatus.Properties.Items[rgStatus.ItemIndex].Caption;
    Finance.id_expensecategory  := cxLookupComboBoxExpense.EditValue;
    Finance.id_company          := cxLookupComboBoxCompany.EditValue;
    Finance.id_supplier         := edtSupplier.bs_KeyValue;
    Finance.invoice_id          := edtInvoice.Text;
    Finance.invoice_date        := InvoiceDate.Date;
    Finance.date_due            := InvoiceDateDue.Date;
    Finance.payment_amount      := edtAmount.Value;
    Finance.payment_description := edtPaymentDesc.Text;
    Finance.id_payment_method   := cxLookupComboBoxPaymentMethod.EditValue;

    if varOption = 'I' then
      Finance.SavePAYABLE
    else if varOption = 'U' then
         Finance.UpdatePAYABLE;

 Finally
  FreeAndNil(Finance);
 End;

 SetupTable;
 varOption := 'X';

 cxPageControl.ActivePage := cxTabSheetList;


end;

procedure TFrmCreditors.btnLimpaSupplierClick(Sender: TObject);
begin
  edtSupplier.Text := '';
  edtSupplier.bs_KeyValues.Clear;
  edtSupplier.SetFocus;
end;

procedure TFrmCreditors.cxPageControlChange(Sender: TObject);
begin
  if  varOption = 'X' then
    cxPageControl.ActivePage  := cxTabSheetList;
end;

procedure TFrmCreditors.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(Finance) then
     FreeAndNil(Finance);

  FrmCreditors := nil;
  Action := caFree;
end;

procedure TFrmCreditors.FormCreate(Sender: TObject);
begin
   varOption := 'X';
   cxPageControl.ActivePage := cxTabSheetList;

   SetParametros(edtSupplier, TipoSupplier);

end;

procedure TFrmCreditors.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmCreditors.LimpaTela;
begin
  rgStatus.ItemIndex := 0;
  cxLookupComboBoxCompany.EditValue := DBDados.varIDMAIN_COMPANY;
  edtSupplier.Text := '';
  edtSupplier.bs_KeyValues.Clear;
  edtInvoice.Text := '';
  InvoiceDateDue.Date := 0;
  InvoiceDate.Date := 0;
  edtAmount.EditValue := 0;
  edtPaymentDesc.Text := '';
  cxLookupComboBoxExpense.ItemIndex := -1;
  StatusBar1.Panels[0].Text := 'User';
  StatusBar1.Panels[1].Text := 'Date created';
  StatusBar1.Panels[2].Text := 'Date modified';
end;

procedure TFrmCreditors.Save;
begin

end;

procedure TFrmCreditors.SetupTable;
begin
  sqlGrid.Close;
  sqlGrid.Open;

  if sqlExpenseCategory.Active = False then
  begin
    sqlExpenseCategory.Close;
    sqlExpenseCategory.Open;
  end;

  if sqlPaymentMethod.Active = False then
  begin
   sqlPaymentMethod.Close;
   sqlPaymentMethod.Open;
  end;

  if TBCOMPANY.Active = False then
  begin
   TBCOMPANY.Close;
   TBCOMPANY.Open;
  end;
end;

function TFrmCreditors.ValidFields: Boolean;
var
  varRetorno : Boolean;
begin
   varRetorno := True;

   if cxLookupComboBoxExpense.EditValue = Null then
   begin
      varRetorno := False;
      Mens_MensInf('The Expense Category field is required.');
      cxLookupComboBoxExpense.SetFocus;
      Exit;
   end;

   if ((edtSupplier.Text = '') or (edtSupplier.bs_KeyValues.Count = 0)) then
   begin
      varRetorno := False;
      Mens_MensInf('The Manufacturer field is required.');
      edtSupplier.SetFocus;
      Exit;
   end;

   if edtInvoice.Text = '' then
   begin
      varRetorno := False;
      Mens_MensInf('The Invoice Number field is required.');
      edtInvoice.SetFocus;
      Exit;
   end;

  if InvoiceDate.Text = '' then
  begin
      varRetorno := False;
      Mens_MensInf('The Invoice Date is required.') ;
      InvoiceDate.SetFocus;
      exit;
  end;

  if InvoiceDatedue.Text = '' then
  begin
      varRetorno := False;
      Mens_MensInf('The Invoice Date Due is required.') ;
      InvoiceDatedue.SetFocus;
      exit;
  end;

  if edtAmount.Text = '' then
  begin
      varRetorno := False;
      Mens_MensInf('The Amount field is required.') ;
      edtAmount.SetFocus;
      exit;
  end;

  if cxLookupComboBoxPaymentMethod.EditValue = Null then
  begin
      varRetorno := False;
      Mens_MensInf('The Payment Method field is required.') ;
      cxLookupComboBoxPaymentMethod.SetFocus;
      exit;
  end;

  Result := varRetorno;
end;

end.
