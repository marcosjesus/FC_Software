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
    sqlPaymentMethod: TFDQuery;
    dsPaymentMethod: TDataSource;
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
    Panel2: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    rsSuperEdit7: TrsSuperEdit;
    cxLookupComboBoxPaymentMethod: TcxLookupComboBox;
    cxLookupComboBoxBank: TcxLookupComboBox;
    dsBank: TDataSource;
    sqlBank: TFDQuery;
    sqlBankID_BANK: TFDAutoIncField;
    sqlBankID_COMPANY: TIntegerField;
    sqlBankACCOUNT: TStringField;
    sqlGridID_BANK: TIntegerField;
    Label5: TLabel;
    edtAmount: TcxCurrencyEdit;
    sqlGridNOTES: TMemoField;
    cxGrid2DBTableView1NOTES: TcxGridDBColumn;
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
    procedure ButExcluirClick(Sender: TObject);
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
   if sqlGridPAYMENT_STATUS.AsString = 'PENDING' Then
     rgStatus.ItemIndex := 0
   else if sqlGridPAYMENT_STATUS.AsString = 'PAID' Then
     rgStatus.ItemIndex := 1
   else if sqlGridPAYMENT_STATUS.AsString = 'OVERDUE' Then
     rgStatus.ItemIndex := 2
   else if sqlGridPAYMENT_STATUS.AsString = 'VOID' Then
     rgStatus.ItemIndex := 3;

   sqlBank.Close;
   sqlBank.Params.ParamByName('ID_COMPANY').AsInteger := sqlGridID_COMPANY.AsInteger;
   sqlBank.Open;

   cxLookupComboBoxExpense.EditValue := sqlGridID_EXPENSECATEGORY.AsInteger;
   cxLookupComboBoxBank.EditValue    := sqlGridID_BANK.AsInteger;
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

procedure TFrmCreditors.ButExcluirClick(Sender: TObject);
var
  varPAYMENT_STATUS : String;
begin
 varPAYMENT_STATUS    :=  sqlGridPAYMENT_STATUS.AsString;


 if UpperCase(varPAYMENT_STATUS) <> 'PENDING' then
 begin
    Mens_MensInf('The Document  has ' + UpperCase(varPAYMENT_STATUS)  + ' status. You can not Delete it.') ;
    Exit;
 end;

 If Mens_MensConf('Delete Document Nr� ' + sqlGridDESCRIPTION.AsString    +  '? ') <> mrOk then
    Exit;

 if not Assigned(Finance) then
 begin
   Finance := TFinance.Create;
   Finance.DeletePayable(sqlGridID_PAYABLE.AsInteger);
   FreeAndNil(Finance);
 end
 else
   Finance.DeletePayable(sqlGridID_PAYABLE.AsInteger);

 SetupTable;
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
    Finance.payment_status      := UpperCase(rgStatus.Properties.Items[rgStatus.ItemIndex].Caption);
    Finance.id_expensecategory  := cxLookupComboBoxExpense.EditValue;
    Finance.id_company          := cxLookupComboBoxCompany.EditValue;
    Finance.id_supplier         := edtSupplier.bs_KeyValue;
    Finance.invoice_id          := edtInvoice.Text;
    Finance.invoice_date        := InvoiceDate.Date;
    Finance.date_due            := InvoiceDateDue.Date;
    Finance.payment_amount      := edtAmount.Value;
    Finance.payment_description := edtPaymentDesc.Text;
    Finance.id_payment_method   := cxLookupComboBoxPaymentMethod.EditValue;
    Finance.id_bank             := cxLookupComboBoxBank.EditValue;
    Finance.date_paid           := InvoiceDateDue.Date;
    Finance.amount_paid         := edtAmount.Value;

    if varOption = 'I' then
      Finance.SavePAYABLE
    else if varOption = 'U' then
    begin
        Finance.SearchPayable(Finance.id_payable);
        Finance.UpdatePAYABLE;
    end;

 Finally
  FreeAndNil(Finance);
 End;

 SetupTable;
 varOption := 'X';
 sqlGrid.Close;
 sqlGrid.Open;
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
  sqlBank.Close;
  sqlBank.Params.ParamByName('ID_COMPANY').AsInteger :=  DBDados.varIDMAIN_COMPANY;
  sqlBank.Open;
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
