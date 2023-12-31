unit uFrmDebitors;

interface

uses
  uClassFinance,
  MensFun,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxBarBuiltInMenu, cxContainer, dxCore, cxDateUtils, cxGroupBox, cxRadioGroup,
  cxCurrencyEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, EditBusca, Vcl.Mask, rsEdit,
  cxPC;

type
  TFrmDebitors = class(TForm)
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButAlterar: TcxButton;
    ButExcluir: TcxButton;
    ButSair: TcxButton;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    ButImprimir: TcxButton;
    sqlGrid: TFDQuery;
    dsGrid: TDataSource;
    sqlGridID_RECEIVABLE: TFDAutoIncField;
    sqlGridID_COMPANY: TIntegerField;
    sqlGridINVOICE_ID: TStringField;
    sqlGridINVOICE_DATE: TDateField;
    sqlGridID_CUSTOMER: TIntegerField;
    sqlGridID_EXPENSECATEGORY: TIntegerField;
    sqlGridPAYMENT_DESCRIPTION: TStringField;
    sqlGridID_TERM: TIntegerField;
    sqlGridDATE_DUE: TDateField;
    sqlGridPAYMENT_AMOUNT: TBCDField;
    sqlGridPAYMENT_STATUS: TStringField;
    sqlGridADD_DATE: TSQLTimeStampField;
    sqlGridUPD_DATE: TSQLTimeStampField;
    sqlGridID_USER: TIntegerField;
    sqlGridID_PAYMENT_METHOD: TIntegerField;
    sqlGridID_BANK: TIntegerField;
    cxPageControl: TcxPageControl;
    cxTabSheetList: TcxTabSheet;
    cxTabSheetForm: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    pnl3: TPanel;
    Label11: TLabel;
    EdiCodigo: TrsSuperEdit;
    pnl1: TPanel;
    Label2: TLabel;
    rsSuperEdit1: TrsSuperEdit;
    cxLookupComboBoxIncome: TcxLookupComboBox;
    pnl4: TPanel;
    Label3: TLabel;
    Label12: TLabel;
    rsSuperEdit2: TrsSuperEdit;
    edtInvoice: TcxTextEdit;
    InvoiceDate: TcxDateEdit;
    pnl5: TPanel;
    Label4: TLabel;
    rsSuperEdit3: TrsSuperEdit;
    InvoiceDateDue: TcxDateEdit;
    pnl6: TPanel;
    rsSuperEdit4: TrsSuperEdit;
    pnl7: TPanel;
    Label7: TLabel;
    rsSuperEdit5: TrsSuperEdit;
    edtPaymentDesc: TcxTextEdit;
    pnl2: TPanel;
    Label9: TLabel;
    rsSuperEdit6: TrsSuperEdit;
    rgStatus: TcxRadioGroup;
    Panel2: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    rsSuperEdit7: TrsSuperEdit;
    cxLookupComboBoxPaymentMethod: TcxLookupComboBox;
    cxLookupComboBoxBank: TcxLookupComboBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1ID_RECEIVABLE: TcxGridDBColumn;
    cxGrid2DBTableView1INVOICE_ID: TcxGridDBColumn;
    cxGrid2DBTableView1INVOICE_DATE: TcxGridDBColumn;
    cxGrid2DBTableView1PAYMENT_DESCRIPTION: TcxGridDBColumn;
    cxGrid2DBTableView1DATE_DUE: TcxGridDBColumn;
    cxGrid2DBTableView1PAYMENT_AMOUNT: TcxGridDBColumn;
    cxGrid2DBTableView1PAYMENT_STATUS: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    dsBank: TDataSource;
    sqlBank: TFDQuery;
    sqlBankID_BANK: TFDAutoIncField;
    sqlBankID_COMPANY: TIntegerField;
    sqlBankACCOUNT: TStringField;
    dsExpenseCategory: TDataSource;
    sqlExpenseCategory: TFDQuery;
    sqlExpenseCategoryID_EXPENSECATEGORY: TFDAutoIncField;
    sqlExpenseCategoryDESCRIPTION: TStringField;
    Label5: TLabel;
    edtAmount: TcxCurrencyEdit;
    edtDatePay: TcxDateEdit;
    Label6: TLabel;
    Label13: TLabel;
    edtAmountPaid: TcxCurrencyEdit;
    edtCliente: TEditBusca;
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
    TBCOMPANYIMAGEM: TBlobField;
    TBCOMPANYCOUNTY: TStringField;
    sqlPaymentMethod: TFDQuery;
    dsPaymentMethod: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButSairClick(Sender: TObject);
    procedure ButAlterarClick(Sender: TObject);
    procedure ButSalvarClick(Sender: TObject);
    procedure ButNovoClick(Sender: TObject);
    procedure ButCancelarClick(Sender: TObject);
  private
    { Private declarations }
    Finance : TFinance;
    varOption : char;  // I = Insert / U = Update
    procedure LimpaTela;
    procedure DisabledFields(Option : Boolean);

  public
    { Public declarations }
    procedure SetupTable;
  end;

var
  FrmDebitors: TFrmDebitors;

implementation

{$R *.dfm}

uses uDMConectDB, AsyncCalls, SetParametro;

procedure TFrmDebitors.ButAlterarClick(Sender: TObject);
begin
   varOption := 'U';
   LimpaTela;

   Finance := TFinance.Create;
   Finance.id_user    := DBDados.varID_USER;
   Finance.id_payable := sqlGridID_RECEIVABLE.AsInteger;
   if sqlGridPAYMENT_STATUS.AsString = 'PENDING' Then
     rgStatus.ItemIndex := 0
   else if sqlGridPAYMENT_STATUS.AsString = 'PAID' Then
     rgStatus.ItemIndex := 1
   else if sqlGridPAYMENT_STATUS.AsString = 'OVERDUE' Then
     rgStatus.ItemIndex := 2
   else if sqlGridPAYMENT_STATUS.AsString = 'VOID' Then
     rgStatus.ItemIndex := 3;
   cxLookupComboBoxCompany.EditValue := sqlGridID_COMPANY.AsInteger;
   edtCliente.SetValue('C.ID_CUSTOMER = ' + sqlGridID_CUSTOMER.AsString);
   edtInvoice.Text     := sqlGridINVOICE_ID.AsString;
   InvoiceDate.Date    := sqlGridINVOICE_DATE.AsDateTime;
   InvoiceDateDue.Date := sqlGridDATE_DUE.AsDateTime;
   edtAmount.Value     := sqlGridPAYMENT_AMOUNT.AsFloat;
   edtDatePay.Date     := Now;
   edtPaymentDesc.Text := sqlGridPAYMENT_DESCRIPTION.AsString;
   sqlBank.Close;
   sqlBank.Params.ParamByName('ID_COMPANY').AsInteger := sqlGridID_COMPANY.AsInteger;
   sqlBank.Open;

   cxLookupComboBoxPaymentMethod.EditValue := sqlGridID_PAYMENT_METHOD.AsInteger;

   DisabledFields(False);


   cxPageControl.ActivePage          := cxTabSheetForm;

end;

procedure TFrmDebitors.ButCancelarClick(Sender: TObject);
begin
   LimpaTela;
   DisabledFields(True);
   cxPageControl.ActivePage          := cxTabSheetList;
end;

procedure TFrmDebitors.ButNovoClick(Sender: TObject);
begin
   LimpaTela;
   DisabledFields(True);
   cxPageControl.ActivePage          := cxTabSheetForm;
end;

procedure TFrmDebitors.ButSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDebitors.ButSalvarClick(Sender: TObject);
begin
   if rgStatus.ItemIndex <> 0  then
   begin

      if  rgStatus.ItemIndex <> 3  then
      begin
          if cxLookupComboBoxIncome.EditValue = Null then
          begin
            Mens_MensInf('The Income Category field is required.') ;
            cxLookupComboBoxIncome.SetFocus;
            Exit;
          end;

          if edtDatePay.EditValue = Null then
          begin
            Mens_MensInf('The Payment Date field is required.') ;
            edtDatePay.SetFocus;
            Exit;
          end;

          if edtDatePay.Date < InvoiceDateDue.Date then
          begin
            Mens_MensInf('The Payment Date is invalid.') ;
            edtDatePay.SetFocus;
            Exit;
          end;

          if edtAmountPaid.Value = 0 then
          begin
            Mens_MensInf('The Payment Amount is required.') ;
            edtDatePay.SetFocus;
            Exit;
          end;

          if cxLookupComboBoxPaymentMethod.EditValue = Null then
          begin
            Mens_MensInf('The payment method field is required.') ;
            cxLookupComboBoxPaymentMethod.SetFocus;
            Exit;
          end;


          if cxLookupComboBoxBank.EditValue = Null then
          begin
            Mens_MensInf('The Bank Account field is required.') ;
            cxLookupComboBoxBank.SetFocus;
            Exit;
          end;
      end;

      if varOption = 'U' then
        If Mens_MensConf('Confirm changing of invoice status N� ' + Finance.invoice_id +  '? ') <> mrOk then
          Exit;


      Finance.payment_status      := UpperCase(rgStatus.Properties.Items[rgStatus.ItemIndex].Caption);
      Finance.id_expensecategory  := cxLookupComboBoxIncome.EditValue;
      Finance.id_company          := cxLookupComboBoxCompany.EditValue;
      Finance.id_customer         := edtCliente.bs_KeyValue;
      Finance.invoice_id          := edtInvoice.Text;
      Finance.invoice_date        := InvoiceDate.Date;
      Finance.date_due            := InvoiceDateDue.Date;
      Finance.payment_amount      := edtAmount.Value;
      Finance.payment_description := edtPaymentDesc.Text;
      Finance.id_payment_method   := cxLookupComboBoxPaymentMethod.EditValue;
      Finance.id_bank             := cxLookupComboBoxBank.EditValue;
      Finance.date_paid           := edtDatePay.Date;
      Finance.amount_paid         := edtAmountPaid.Value;

      if varOption = 'I' then
        Finance.SaveRECEIVABLE
      else if varOption = 'U' then
      begin
         Finance.id_receivable := sqlGridID_RECEIVABLE.AsInteger;
         Finance.SearchReceivable(Finance.id_receivable);
         Finance.UpdateRECEIVABLE;
      end;

   end;

   varOption := 'X';
   LimpaTela;
   DisabledFields(True);
   sqlGrid.Close;
   sqlGrid.Open;
   cxPageControl.ActivePage          := cxTabSheetList;
end;

procedure TFrmDebitors.DisabledFields(Option : Boolean);
begin
  cxLookupComboBoxCompany.Enabled := Option;
  edtCliente.Enabled := Option;
  edtInvoice.Enabled := Option;
  InvoiceDate.Enabled := Option;
  InvoiceDateDue.Enabled := Option;
  edtAmount.Enabled := Option;
  edtPaymentDesc.Enabled := Option;

end;

procedure TFrmDebitors.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(Finance) then
     FreeAndNil(Finance);

  FrmDebitors := nil;
  Action := caFree;
end;

procedure TFrmDebitors.LimpaTela;
begin
  rgStatus.ItemIndex := 0;
  cxLookupComboBoxCompany.EditValue := DBDados.varIDMAIN_COMPANY;
  sqlBank.Close;
  sqlBank.Params.ParamByName('ID_COMPANY').AsInteger :=  DBDados.varIDMAIN_COMPANY;
  sqlBank.Open;
  edtCliente.Text := '';
  edtCliente.bs_KeyValues.Clear;
  edtInvoice.Text := '';
  InvoiceDateDue.Date := 0;
  InvoiceDate.Date := 0;
  edtAmount.EditValue := 0;
  edtPaymentDesc.Text := '';
  cxLookupComboBoxIncome.ItemIndex := -1;
  edtDatePay.Text := '';
  edtAmountPaid.EditValue := 0;
  cxLookupComboBoxPaymentMethod.EditValue := -1;
  cxLookupComboBoxBank.EditValue := -1;

end;

procedure TFrmDebitors.SetupTable;
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

   SetParametros(edtCliente, TipoCustomerCompany);

end;

end.
