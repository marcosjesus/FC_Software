unit ufrmDashSale;

interface

uses
  MensFun,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxTextEdit, cxMaskEdit, cxDropDownEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Menus, cxButtons, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCurrencyEdit, cxLabel, dxGDIPlusClasses,
  cxGroupBox, cxRadioGroup;

type
  TfrmDashSale = class(TForm)
    sqlCustomer: TFDQuery;
    dsCustomer: TDataSource;
    sqlCustomerID_CUSTOMER: TIntegerField;
    sqlCustomerNAME: TStringField;
    Panel1: TPanel;
    CustomerCombo: TcxComboBox;
    Label1: TLabel;
    pnlOrders: TPanel;
    label5: TLabel;
    pnlInvoice: TPanel;
    Label3: TLabel;
    sqlAux: TFDQuery;
    spbOrderPending: TSpeedButton;
    Edit1: TEdit;
    pnlQuotation: TPanel;
    Label2: TLabel;
    spbQuotationPending: TSpeedButton;
    spbQuotationAccepted: TSpeedButton;
    spbOrderAccepted: TSpeedButton;
    spbInvoiceAccepted: TSpeedButton;
    spbInvoicePending: TSpeedButton;
    spbCleanCustomer: TcxButton;
    pnlReceivable: TPanel;
    spbDebitorOpen: TSpeedButton;
    spbDebitorPaid: TSpeedButton;
    Label4: TLabel;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label6: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    sqlItems: TFDQuery;
    dsItems: TDataSource;
    sqlItemsDT_PROCESS: TDateField;
    sqlItemsPRODUCT_STYLE: TStringField;
    sqlItemsCOLOR_NAME: TStringField;
    sqlItemsTOTALAREA: TFloatField;
    sqlItemsRATE: TBCDField;
    sqlItemsAMOUT: TBCDField;
    cxGrid1DBTableView1DT_PROCESS: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_STYLE: TcxGridDBColumn;
    cxGrid1DBTableView1COLOR_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALAREA: TcxGridDBColumn;
    cxGrid1DBTableView1RATE: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUT: TcxGridDBColumn;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    edtRecPaid: TcxCurrencyEdit;
    edtRecPending: TcxCurrencyEdit;
    lblTotalInvoice: TLabel;
    lblTotalOrder: TLabel;
    lblTotalQuotation: TLabel;
    pnlPayable: TPanel;
    spbPayablePending: TSpeedButton;
    spbPayablePaid: TSpeedButton;
    Label7: TLabel;
    edtPayPaid: TcxCurrencyEdit;
    edtPayPending: TcxCurrencyEdit;
    pnlWorkOrder: TPanel;
    spbWordOrderPending: TSpeedButton;
    spbWordOrderCompleted: TSpeedButton;
    Label9: TLabel;
    edtWorkOrderPaid: TcxCurrencyEdit;
    edtWorkOrderPending: TcxCurrencyEdit;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edtInvoicePending: TcxCurrencyEdit;
    edtInvoiceAproved: TcxCurrencyEdit;
    edtOrderPending: TcxCurrencyEdit;
    edtQuotationPending: TcxCurrencyEdit;
    edtOrderAccepted: TcxCurrencyEdit;
    edtQuotationAccepted: TcxCurrencyEdit;
    ButCancelar: TcxButton;
    PanelSQLSplashScreen: TPanel;
    ImageSQLSplashScreen: TImage;
    cxLabelMensagem: TcxLabel;
    rgTable: TcxRadioGroup;
    edtCampo: TcxCurrencyEdit;
    btnBusca: TSpeedButton;
    btnClean: TSpeedButton;
    procedure CustomerComboKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure spbOrderPendingClick(Sender: TObject);
    procedure spbQuotationPendingClick(Sender: TObject);
    procedure spbQuotationAcceptedClick(Sender: TObject);
    procedure spbOrderAcceptedClick(Sender: TObject);
    procedure spbInvoicePendingClick(Sender: TObject);
    procedure spbInvoiceAcceptedClick(Sender: TObject);
    procedure spbCleanCustomerClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure spbDebitorOpenClick(Sender: TObject);
    procedure spbDebitorPaidClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure spbWordOrderPendingClick(Sender: TObject);
    procedure spbWordOrderCompletedClick(Sender: TObject);
    procedure spbPayablePendingClick(Sender: TObject);
    procedure spbPayablePaidClick(Sender: TObject);
    procedure ButCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBuscaClick(Sender: TObject);
    procedure edtCampoEnter(Sender: TObject);
    procedure btnCleanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    varUnique : Boolean;
    varID_Customer : Integer;
    varAccessRec, varAccessPay : Boolean;
    varSeek : Boolean;
    varQuotation, varOrder, varInvoice : String;
    varCleanCombo : Boolean;
    function PurchaseOrder(var_idcustomer : Integer; var_status : string) : String;
    function Open(var_Operation: String; var_idcustomer : Integer; var_tablename, var_status : String ): String;
    function OpenFinanceRec(var_Operation : String;var_idcustomer : Integer; var_status : String): String;
    function OpenWordOrder(var_Operation : String; var_idcustomer : Integer; var_status : String): String;
    function OpenFinancePay(var_Operation : String;var_idcustomer : Integer; var_status : String): String;
    procedure Mensagem(pMensagem: String);
    procedure SeekID;
    procedure OpenCustomer;
    procedure LoadDash;
  protected

  public
    { Public declarations }
    procedure SetupTable;
  end;

var
  frmDashSale: TfrmDashSale;

implementation

{$R *.dfm}

uses AsyncCalls, uDMConectDB, ufrmEstimate, uFrmDebitors, uFrmWorkOrder,
  uFrmCreditors;

procedure TfrmDashSale.btnBuscaClick(Sender: TObject);
begin

  if edtCampo.Text <> '' then
  begin
   sqlCustomer.Close;
   varUnique := True;
   SeekID;
   LoadDash;
   OpenCustomer;
   CustomerCombo.Text := sqlCustomer.FieldByName('Name').AsString;
  end
  else
  begin
    varUnique := False;
    varID_Customer := 0;
    LoadDash;
  end;
  btnBusca.Visible := False;
  btnClean.Visible := True;

end;

procedure TfrmDashSale.btnCleanClick(Sender: TObject);
begin
  edtCampo.Text := '';
  varQuotation  := '';
  varOrder      := '';
  varInvoice    := '';

  spbCleanCustomerClick(Nil);

  btnClean.Visible := False;
  btnBusca.Visible := True;

  varID_Customer   := 0;
  OpenCustomer;
end;

procedure TfrmDashSale.ButCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure  TfrmDashSale.LoadDash;
Var
 varBotao : Array of String;
begin

  if (((not sqlCustomer.IsEmpty) and (CustomerCombo.Text <> '')) OR (edtCampo.Text <> '')) then
  begin
   varCleanCombo := False;

   spbCleanCustomerClick(Nil);

   if sqlCustomer.Active = True then
      varID_Customer:=  sqlCustomer.FieldByName('ID_CUSTOMER').AsInteger;

   Mensagem( 'Loading data...' );
   SetLength(varBotao, 13);

   // QUOTATION
   varBotao[0] :=  Open('COUNT',varID_Customer, 'TBESTIMATE', 'PENDING');
   spbQuotationPending.Caption  := 'Pending   ' +  varBotao[0];
   spbQuotationPending.Enabled  :=  varBotao[0] <> '0';


   varBotao[1] :=  Open('COUNT',varID_Customer, 'TBESTIMATE', 'ACCEPTED');
   spbQuotationAccepted.Caption := 'Accepted  ' +  varBotao[1];
   spbQuotationAccepted.Enabled :=  varBotao[1] <> '0';

   lblTotalQuotation.Caption    := 'Total     ' + Open('COUNT',0, 'TBESTIMATE', 'BOTH');

   edtQuotationPending.Value    := StrToFloat(Open('SUM',varID_Customer, 'TBESTIMATE', 'PENDING'));
   edtQuotationAccepted.Value   := StrToFloat(Open('SUM',varID_Customer, 'TBESTIMATE', 'ACCEPTED'));


   // ORDER
   varBotao[2] :=  Open('COUNT',varID_Customer, 'TBORDER', 'PENDING');
   spbOrderPending.Caption      := 'Pending   ' + varBotao[2] ;
   spbOrderPending.Enabled      :=  varBotao[2] <> '0';

   varBotao[12] :=  PurchaseOrder(varID_Customer,  'PENDING');
   if varBotao[12] <> '0' then
       spbOrderPending.Font.Color := clRed;


   varBotao[3] :=   Open('COUNT',varID_Customer, 'TBORDER', 'ACCEPTED');
   spbOrderAccepted.Caption     := 'Accepted  ' +  varBotao[3];
   spbOrderAccepted.Enabled     :=  varBotao[3] <> '0';

   lblTotalOrder.Caption        := 'Total     ' + Open('COUNT',0, 'TBORDER', 'BOTH');

   edtOrderPending.Value    := StrToFloat(Open('SUM',varID_Customer, 'TBORDER', 'PENDING'));
   edtOrderAccepted.Value   := StrToFloat(Open('SUM',varID_Customer, 'TBORDER', 'ACCEPTED'));


   // INVOICE
   varBotao[4] :=  Open('COUNT',varID_Customer, 'TBINVOICE', 'PENDING');
   spbInvoicePending.Caption    := 'Pending   ' + varBotao[4] ;
   spbInvoicePending.Enabled    :=  varBotao[4] <> '0';

   varBotao[5] :=  Open('COUNT',varID_Customer, 'TBINVOICE', 'ACCEPTED');
   spbInvoiceAccepted.Caption   := 'Accepted  ' + varBotao[5];
   spbInvoiceAccepted.Enabled   :=  varBotao[5] <> '0';

   lblTotalInvoice.Caption      := 'Total     ' + Open('COUNT',0, 'TBINVOICE', 'BOTH');

   edtInvoicePending.Value      := StrToFloat(Open('SUM',varID_Customer, 'TBINVOICE', 'PENDING'));
   edtInvoiceAproved.Value      := StrToFloat(Open('SUM',varID_Customer, 'TBINVOICE', 'ACCEPTED'));

   // RECEIVABLE
   varBotao[6] :=  OpenFinanceRec('COUNT',varID_Customer,'PENDING');
   spbDebitorOpen.Caption       := 'Pending   ' +  varBotao[6];
   spbDebitorOpen.Enabled       :=  varBotao[6] <> '0';


   varBotao[7] :=   OpenFinanceRec('COUNT', varID_Customer,'RECEIVED');
   spbDebitorPaid.Caption       := 'Received  ' +  varBotao[7];
   spbDebitorPaid.Enabled       :=  varBotao[7] <> '0';

   edtRecPending.Value          := StrToFloat(OpenFinanceRec('SUM', varID_Customer,'PENDING'));
   edtRecPaid.Value             := StrToFloat(OpenFinanceRec('SUM', varID_Customer,'RECEIVED'));

    // PAYABLE
   varBotao[8] :=  OpenFinancePay('COUNT', varID_Customer,'PENDING');
   spbPayablePending.Caption    := 'Pending   ' + varBotao[8];
   spbPayablePending.Enabled    :=  varBotao[8] <> '0';

   varBotao[9] :=  OpenFinancePay('COUNT', varID_Customer,'PAID');
   spbPayablePaid.Caption       := 'Paid  ' +  varBotao[9];
   spbPayablePaid.Enabled       :=  varBotao[9] <> '0';

   edtPayPending.Value          := StrToFloat(OpenFinancePay('SUM', varID_Customer,'PENDING'));
   edtPayPaid.Value             := StrToFloat(OpenFinancePay('SUM', varID_Customer,'PAID'));

   //WORK ORDER
   varBotao[10] :=  OpenWordOrder('COUNT', varID_Customer, 'PENDING');
   spbWordOrderPending.Caption := 'Pending   ' + varBotao[10];
   spbWordOrderPending.Enabled :=  varBotao[10] <> '0';

   varBotao[11] := OpenWordOrder('COUNT', varID_Customer, 'COMPLETED');
   spbWordOrderCompleted.Caption := 'Completed ' +   varBotao[11];
   spbWordOrderCompleted.Enabled :=  varBotao[11] <> '0';

   edtWorkOrderPending.Value  := StrToFloat(OpenWordOrder('SUM', varID_Customer, 'PENDING'));
   edtWorkOrderPaid.Value     := StrToFloat(OpenWordOrder('SUM', varID_Customer, 'COMPLETED'));

   sqlItems.Close;
   sqlItems.Params.ParamByName('ID_CUSTOMER').AsInteger :=  varID_Customer;
   sqlItems.Open;
   Mensagem( EmptyStr );
  end;

end;


procedure TfrmDashSale.CustomerComboKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
l:Integer;
begin

  if (key=VK_BACK) or (key=VK_DELETE) or (key=VK_LEFT) or (key=VK_RIGHT)
  or (KEY=vk_home) or (key=VK_END) or (key=VK_SHIFT) or (key=VK_TAB) then exit;

  CustomerCombo.DroppedDown:=true;

  l:=Length(CustomerCombo.text);

  sqlCustomer.Locate('Name',CustomerCombo.Text,[loPartialKey]);
  if Copy(sqlCustomer.Fieldbyname('Name').asString,1,L)= Copy(CustomerCombo.Text,1,L) then
  begin
    CustomerCombo.Text:= sqlCustomer.FieldByName('Name').asString;
    CustomerCombo.SelStart:=l;
    CustomerCombo.SelLength:=Length(CustomerCombo.Text)-l;
  end;

end;

procedure TfrmDashSale.edtCampoEnter(Sender: TObject);
begin
  edtCampo.Text := '';
  varQuotation := '';
  varOrder := '';
  varInvoice := '';
end;

procedure TfrmDashSale.FormActivate(Sender: TObject);
begin
  varCleanCombo := True;

  if varID_Customer <> 0 then
      LoadDash;
end;

procedure TfrmDashSale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmDashSale := nil;
  Action := caFree;
end;

procedure TfrmDashSale.FormCreate(Sender: TObject);
begin
   varID_Customer := 0;
   OpenCustomer;
end;

procedure TfrmDashSale.OpenCustomer;
begin
   sqlCustomer.Close;
   sqlCustomer.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;

   if DBDados.varView_All_CustomersNaturalPerson = False then
     sqlCustomer.MacroByName( 'WHERE2' ).AsRaw := ' AND ID_USER = ' + IntToStr(DBDados.varID_USER)
   else sqlCustomer.MacroByName( 'WHERE2' ).AsRaw := '';

   if varID_Customer <> 0 then
     sqlCustomer.MacroByName( 'WHERE3' ).AsRaw := ' AND ID_CUSTOMER = ' + IntToStr(varID_Customer)
   else   sqlCustomer.MacroByName( 'WHERE3' ).AsRaw := '';

   sqlCustomer.Open;
end;

procedure TfrmDashSale.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmDashSale.FormShow(Sender: TObject);
begin
   spbCleanCustomer.SetFocus;
end;

procedure TfrmDashSale.Mensagem(pMensagem: String);
begin
  cxLabelMensagem.Caption := pMensagem;
  PanelSQLSplashScreen.Visible := not pMensagem.IsEmpty;
  Update;
  Application.ProcessMessages;

end;

function TfrmDashSale.Open(var_Operation: String; var_idcustomer : Integer; var_tablename, var_status : String) : String;
begin
  sqlAux.Close;
  sqlAux.SQL.Clear;
  if var_Operation = 'COUNT' then
    sqlAux.SQL.Add('SELECT ISNULL(COUNT(1),0) as TOTAL FROM TBPROCESS WHERE  TABLENAME = :TABLENAME &WHERE1  &WHERE2  &WHERE3 ')
  else if var_Operation = 'SUM' then
    sqlAux.SQL.Add('SELECT ISNULL(SUM(TOTAL),0) as TOTAL FROM TBPROCESS WHERE  TABLENAME = :TABLENAME &WHERE1  &WHERE2  &WHERE3');

  sqlAux.Params.ParamByName('TABLENAME').AsString   := var_tablename;

  if var_idcustomer <> 0 then
     sqlAux.MacroByName( 'WHERE1' ).AsRaw := ' AND ID_CUSTOMER  = ' + IntToStr(var_idcustomer);

  if var_status <>  'BOTH' then
    sqlAux.MacroByName( 'WHERE2' ).AsRaw := ' AND STATUS  = ' + QuotedStr(var_status);

  if  edtCampo.Text <> '' then
  begin
    if ((var_tablename = 'TBESTIMATE') and (varQuotation <> '')) then
       sqlAux.MacroByName( 'WHERE3' ).AsRaw := ' AND ID_PROCESS  = ' + varQuotation
    else if ((var_tablename =  'TBORDER') and (varOrder <> '')) then
       sqlAux.MacroByName( 'WHERE3' ).AsRaw := ' AND ID_PROCESS  = ' + varOrder
    else if ((var_tablename =  'TBINVOICE') and (varInvoice <> '')) then
       sqlAux.MacroByName( 'WHERE3' ).AsRaw := ' AND ID_PROCESS  = ' + varInvoice;
  end;



  sqlAux.Open;
  result :=  sqlAux.FieldByName('TOTAL').AsString;

end;

function TfrmDashSale.OpenFinancePay(var_Operation: String;
  var_idcustomer: Integer; var_status: String): String;
var
  varSQL : String;
begin
  varSQL := '';
  if var_Operation = 'COUNT' then
  begin
    varSQL := 'SELECT ISNULL(COUNT(1),0) AS TOTAL FROM TBPAYABLE A ';
    varSQL :=  varSQL + ' INNER JOIN TBPROCESS B ON B.ID_PROCESS = A.INVOICE_ID AND  B.TABLENAME = ''TBINVOICE'' ';
    varSQL :=  varSQL + ' WHERE A.PAYMENT_STATUS = :STATUS ' ;
    varSQL :=  varSQL + ' AND B.ID_CUSTOMER = :ID_CUSTOMER &WHERE1 ';
  end
  else
  if var_Operation = 'SUM' then
  begin
    varSQL := 'SELECT ISNULL(SUM(PAYMENT_AMOUNT),0)  AS TOTAL FROM TBPAYABLE A ';
    varSQL :=  varSQL + ' INNER JOIN TBPROCESS B ON B.ID_PROCESS = A.INVOICE_ID AND  B.TABLENAME = ''TBINVOICE'' ';
    varSQL :=  varSQL + ' WHERE A.PAYMENT_STATUS = :STATUS ' ;
    varSQL :=  varSQL + ' AND B.ID_CUSTOMER = :ID_CUSTOMER &WHERE1 ';
  end;



  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add(varSQL);
  if  ((edtCampo.Text <> '') AND (varInvoice <> '')) then
     sqlAux.MacroByName( 'WHERE1' ).AsRaw := ' AND A.INVOICE_ID  = ' + varInvoice
  else sqlAux.MacroByName( 'WHERE1' ).AsRaw := '';

  sqlAux.Params.ParamByName('ID_CUSTOMER').AsInteger := var_idcustomer;
  sqlAux.Params.ParamByName('STATUS').AsString       := var_status;

  sqlAux.Open;
  result :=  sqlAux.FieldByName('TOTAL').AsString;

end;

function TfrmDashSale.OpenFinanceRec(var_Operation : String; var_idcustomer: Integer; var_status: String): String;
var
  varSQL : String;
begin
  if var_Operation = 'COUNT' then
    varSQL :=   'SELECT ISNULL(COUNT(1),0) as TOTAL FROM TBRECEIVABLE WHERE ID_CUSTOMER = :ID_CUSTOMER AND PAYMENT_STATUS = :STATUS &WHERE1 '
  else if var_Operation = 'SUM' then
    varSQL := 'SELECT ISNULL(SUM(PAYMENT_AMOUNT),0) AS TOTAL   FROM TBRECEIVABLE WHERE PAYMENT_STATUS = :STATUS AND ID_CUSTOMER = :ID_CUSTOMER &WHERE1 ';

  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add(varSQL);
  sqlAux.Params.ParamByName('ID_CUSTOMER').AsInteger := var_idcustomer;
  sqlAux.Params.ParamByName('STATUS').AsString       := var_status;

  if  ((edtCampo.Text <> '') AND (varInvoice <> '')) then
  begin
     sqlAux.MacroByName( 'WHERE1' ).AsRaw := ' AND INVOICE_ID  = ' + varInvoice;
  end;


  sqlAux.Open;
  result :=  sqlAux.FieldByName('TOTAL').AsString;

end;

function TfrmDashSale.OpenWordOrder(var_Operation : String; var_idcustomer: Integer;
  var_status: String): String;
var
  varSQL : String;
begin
  if var_Operation = 'COUNT' then
  begin

    varSQL :=   'SELECT  ISNULL(COUNT(1),0) as TOTAL ';
    varSQL := varSQL + 'FROM TBSERVICE A  ';
    varSQL := varSQL + 'INNER JOIN TBPROCESS B ON B.ID_PROCESS = A.ID_PROCESS AND B.TABLENAME = A.TABLENAME AND A.TABLENAME = ''TBINVOICE'' ';
    varSQL := varSQL + 'WHERE B.ID_CUSTOMER = :ID_CUSTOMER AND A.STATUS = :STATUS &WHERE1 ';

  end
  else if var_Operation = 'SUM' then
  begin

    varSQL :=   '    SELECT ISNULL(SUM(C.TOTAL),0) AS TOTAL FROM TBSERVICE A  ';
    varSQL := varSQL + 'INNER JOIN TBPROCESS B ON B.ID_PROCESS = A.ID_PROCESS AND  B.TABLENAME = A.TABLENAME  AND A.TABLENAME = ''TBINVOICE''  ';
    varSQL := varSQL + 'LEFT OUTER JOIN TBSERVICE_CREW C ON A.TABLENAME = C.TABLENAME AND A.ID_PROCESS = C.ID_PROCESS  ';
    varSQL := varSQL + 'WHERE A.STATUS = :STATUS AND B.ID_CUSTOMER = :ID_CUSTOMER &WHERE1 ';

  end;

  if ((edtCampo.Text <> '') and (varInvoice <> '')) then
     sqlAux.MacroByName( 'WHERE1' ).AsRaw := ' AND B.ID_PROCESS  = ' + varInvoice;

  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add(varSQL);
  sqlAux.Params.ParamByName('ID_CUSTOMER').AsInteger := var_idcustomer;
  sqlAux.Params.ParamByName('STATUS').AsString       := var_status;

  sqlAux.Open;
  result :=  sqlAux.FieldByName('TOTAL').AsString;


end;

function TfrmDashSale.PurchaseOrder(var_idcustomer: Integer; var_status : string): String;
begin
  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add('SELECT ISNULL(COUNT(1),0) as TOTAL  FROM TBPROCESS_ITEM X ');
  sqlAux.SQL.Add(' INNER JOIN TBPROCESS A ON   X.TABLENAME = RTRIM(A.TABLENAME)+ ''_ITEM'' AND X.ID_PROCESS = A.ID_PROCESS ');
  sqlAux.SQL.Add(' WHERE X.REQ_PURCHASE_ORDER = ''Y'' AND X.TABLENAME = ''TBORDER_ITEM'' and A.STATUS = :STATUS AND A.ID_CUSTOMER = :ID_CUSTOMER ');
  sqlAux.Params.ParamByName('ID_CUSTOMER').AsInteger := var_idcustomer;
  sqlAux.Params.ParamByName('STATUS').AsString       := var_status;

  sqlAux.Open;
  result :=  sqlAux.FieldByName('TOTAL').AsString;

end;

procedure TfrmDashSale.SeekID;
begin
   if edtCampo.Text <> '' then
   begin
     varID_Customer := 0;
     varQuotation := '';
     varOrder     := '';
     varInvoice   := '';
     sqlAux.Close;
     sqlAux.SQL.Clear;
     sqlAux.SQL.Add('Select ID_Process , ID_CUSTOMER FROM TBProcess where ID_Process = :ID_Process &WHERE0 &WHERE1 ');
     sqlAux.Params.ParamByName('ID_Process').AsInteger  := StrToInt(edtCampo.Text);

     if sqlCustomer.Active then
       sqlAux.MacroByName( 'WHERE0' ).AsRaw := ' AND ID_Customer  = ' + sqlCustomerID_CUSTOMER.AsString;

     if rgTable.ItemIndex = 0 then
       sqlAux.MacroByName( 'WHERE1' ).AsRaw := ' AND TABLENAME  = ''TBESTIMATE'''
     else if  rgTable.ItemIndex = 1 then
       sqlAux.MacroByName( 'WHERE1' ).AsRaw := ' AND TABLENAME  = ''TBORDER'''
     else if  rgTable.ItemIndex = 2 then
       sqlAux.MacroByName( 'WHERE1' ).AsRaw := ' AND TABLENAME  = ''TBINVOICE''';

     sqlAux.Open;
     if not sqlAux.IsEmpty then
     begin
         varID_Customer := sqlAux.FieldByName('ID_CUSTOMER').AsInteger;
         if rgTable.ItemIndex = 0 then
         begin
           varQuotation := sqlAux.FieldByName('ID_Process').AsString;
           sqlAux.Close;
           sqlAux.SQL.Clear;
           sqlAux.SQL.Add('Select ID_Process FROM TBProcess where ID_ORIGEN = :ID_ORIGEN AND TABLENAME = ''TBORDER''');
           sqlAux.Params.ParamByName('ID_ORIGEN').AsInteger  := StrToInt(varQuotation);
           sqlAux.Open;
           if not sqlAux.IsEmpty then
           begin
             varOrder :=  sqlAux.FieldByName('ID_Process').AsString;
             if varOrder <> '' then
             BEGIN
                 sqlAux.Close;
                 sqlAux.SQL.Clear;
                 sqlAux.SQL.Add('Select ID_Process FROM TBProcess where ID_ORIGEN = :ID_ORIGEN AND TABLENAME = ''TBINVOICE''');
                 sqlAux.Params.ParamByName('ID_ORIGEN').AsInteger  := StrToInt(varOrder);
                 sqlAux.Open;
                 if not sqlAux.IsEmpty then
                   varInvoice :=  sqlAux.FieldByName('ID_Process').AsString;
             END;
           end;
         end
         else if  rgTable.ItemIndex = 1 then
         begin
           varOrder :=   sqlAux.FieldByName('ID_Process').AsString;
           if varOrder <> '' then
           begin

             sqlAux.Close;
             sqlAux.SQL.Clear;
             sqlAux.SQL.Add('Select ID_ORIGEN FROM TBProcess where ID_Process = :ID_Process AND TABLENAME = ''TBORDER''');
             sqlAux.Params.ParamByName('ID_Process').AsInteger  := StrToInt(varOrder);
             sqlAux.Open;
             if not sqlAux.IsEmpty then
               varQuotation := sqlAux.FieldByName('ID_ORIGEN').AsString;

             sqlAux.Close;
             sqlAux.SQL.Clear;
             sqlAux.SQL.Add('Select ID_Process FROM TBProcess where ID_ORIGEN = :ID_ORIGEN AND TABLENAME = ''TBINVOICE''');
             sqlAux.Params.ParamByName('ID_ORIGEN').AsInteger  := StrToInt(varOrder);
             sqlAux.Open;
             if not sqlAux.IsEmpty then
               varInvoice :=  sqlAux.FieldByName('ID_Process').AsString;

           end;

         end
         else if  rgTable.ItemIndex = 2 then
         begin
           varInvoice  :=   sqlAux.FieldByName('ID_Process').AsString;
           if varInvoice <> '' then
           begin
             sqlAux.Close;
             sqlAux.SQL.Clear;
             sqlAux.SQL.Add('Select ID_ORIGEN FROM TBProcess where ID_Process = :ID_Process AND TABLENAME = ''TBINVOICE''');
             sqlAux.Params.ParamByName('ID_Process').AsInteger  := StrToInt(varInvoice);
             sqlAux.Open;
             if not sqlAux.IsEmpty then
               varOrder := sqlAux.FieldByName('ID_ORIGEN').AsString;

             sqlAux.Close;
             sqlAux.SQL.Clear;
             sqlAux.SQL.Add('Select ID_ORIGEN FROM TBProcess where ID_Process = :ID_Process AND TABLENAME = ''TBORDER''');
             sqlAux.Params.ParamByName('ID_Process').AsInteger  := StrToInt(varOrder);
             sqlAux.Open;
             if not sqlAux.IsEmpty then
               varQuotation := sqlAux.FieldByName('ID_ORIGEN').AsString;

           end;
         end;
     end;
   end;
end;

procedure TfrmDashSale.SetupTable;
begin
 sqlAux.Close;
 sqlAux.SQL.Clear;
 sqlAux.SQL.Add('SELECT M.Menus, M.Groups, M.Screens, M.Actions ');
 sqlAux.SQL.Add('FROM TBPOSITION_ACCESS A  ');
 sqlAux.SQL.Add('INNER JOIN TBMENU M ON M.ID_MENU = A.ID_MENU  ');
 sqlAux.SQL.Add('where A.ID_POSITION = :ID_POSITION and screens = ''dxBarLargeButtonDebitors''');
 sqlAux.Params.ParamByName('ID_POSITION').AsInteger :=  DBDados.varID_POSITION;
 sqlAux.Open;


 varAccessRec := not sqlAux.IsEmpty;

 sqlAux.Close;
 sqlAux.SQL.Clear;
 sqlAux.SQL.Add('SELECT M.Menus, M.Groups, M.Screens, M.Actions ');
 sqlAux.SQL.Add('FROM TBPOSITION_ACCESS A  ');
 sqlAux.SQL.Add('INNER JOIN TBMENU M ON M.ID_MENU = A.ID_MENU  ');
 sqlAux.SQL.Add('where A.ID_POSITION = :ID_POSITION and screens = ''dxBarLargeButtonCreditors''');
 sqlAux.Params.ParamByName('ID_POSITION').AsInteger :=  DBDados.varID_POSITION;
 sqlAux.Open;

 varAccessPay  := not sqlAux.IsEmpty;

end;

procedure TfrmDashSale.spbCleanCustomerClick(Sender: TObject);
begin
  if varCleanCombo <> False then
  begin
   CustomerCombo.Text := '';
   CustomerCombo.ItemIndex := -1;
  end;
  varCleanCombo := True;

  spbQuotationPending.Caption := '0';
  spbQuotationAccepted.Caption := '0';
  spbOrderPending.Caption := '0';
  spbOrderAccepted.Caption := '0';
  spbInvoicePending.Caption := '0';
  spbInvoiceAccepted.Caption := '0';
  spbDebitorOpen.Caption := '0';
  spbDebitorPaid.Caption := '0';
  edtRecPending.Text := '';
  edtRecPaid.Text := '';
  lblTotalInvoice.Caption := '0';
  lblTotalOrder.Caption := '0';
  lblTotalQuotation.Caption := '0';
  spbWordOrderPending.Caption := '0';
  spbWordOrderCompleted.Caption := '0';
  spbPayablePending.Caption := '0';
  edtPayPaid.Text := '';
  spbPayablePaid.Caption  := '0';
  edtPayPending.Text := '';
  edtInvoicePending.Text := '';
  edtInvoiceAproved.Text := '';
  edtWorkOrderPending.Text := '';
  edtWorkOrderPaid.Text := '';
  edtQuotationPending.Text := '';
  edtQuotationAccepted.Text := '';
  edtOrderPending.Text := '';
  edtOrderAccepted.Text := '';
  sqlItems.Close;
end;

procedure TfrmDashSale.spbDebitorOpenClick(Sender: TObject);
  procedure SetuTable(ID : Integer; var_Invoice : Integer=0);
  begin

    FrmDebitors.SetupTable('PENDING',  IntToStr(ID));  // Estimate

  end;

begin
  if spbDebitorOpen.Caption <> '0' then
  begin

  if DBDados.varLogado = False  then Exit;

  if not Assigned(FrmDebitors) then
    FrmDebitors := TFrmDebitors.Create(Self);
    FrmDebitors.ButNovo.Enabled := varAccessRec;
    FrmDebitors.ButExcluir.Enabled := varAccessRec;
    if varUnique then
        FrmDebitors.varInvoiceExterna := StrToInt(varInvoice)
    else  FrmDebitors.varInvoiceExterna  := 0;

    FrmDebitors.Show;

    FrmDebitors.Visible := True;
    FrmDebitors.BringToFront;
    FrmDebitors.Update;

    LocalAsyncVclCall( @SetuTable , varID_Customer );

 end;

end;

procedure TfrmDashSale.spbDebitorPaidClick(Sender: TObject);
  procedure SetuTable(ID : Integer);
  begin

    FrmDebitors.SetupTable('RECEIVED',  IntToStr(ID));  // Estimate

  end;

begin

  if spbDebitorPaid.Caption <> '0' then
  begin

    if DBDados.varLogado = False  then Exit;

    if not Assigned(FrmDebitors) then
      FrmDebitors := TFrmDebitors.Create(Self);
      FrmDebitors.ButNovo.Enabled := varAccessRec;
      FrmDebitors.ButExcluir.Enabled := varAccessRec;
      if varUnique then
          FrmDebitors.varInvoiceExterna := StrToInt(varInvoice)
      else  FrmDebitors.varInvoiceExterna  := 0;

      FrmDebitors.Show;

      FrmDebitors.Visible := True;
      FrmDebitors.BringToFront;
      FrmDebitors.Update;

      LocalAsyncVclCall( @SetuTable, varID_Customer );
   end;

end;

procedure TfrmDashSale.spbInvoiceAcceptedClick(Sender: TObject);
  procedure SetuTable(ID : Integer);
  begin

    frmEstimate.SetupTable(3, 'ACCEPTED',  IntToStr(ID)); // Invoice

  end;
begin
 if DBDados.varLogado = False  then Exit;

  if not Assigned(frmEstimate) then
    frmEstimate := TfrmEstimate.Create(Self);
    frmEstimate.Caption := 'Invoice';
    frmEstimate.lblProcessName.Caption := frmEstimate.Caption;
    frmEstimate.varFilter := True;
    if varUnique then
         frmEstimate.varIDExterna   := StrToInt(varInvoice)
    else  frmEstimate.varIDExterna  := 0;
    frmEstimate.Show;

    frmEstimate.Visible := True;
    frmEstimate.BringToFront;
    frmEstimate.Update;

    LocalAsyncVclCall( @SetuTable, varID_Customer );
end;

procedure TfrmDashSale.spbInvoicePendingClick(Sender: TObject);
  procedure SetuTable(ID : Integer);
  begin

    frmEstimate.SetupTable(3, 'PENDING',  IntToStr(ID)); // Invoice

  end;
begin


  if DBDados.varLogado = False  then Exit;

  if spbInvoicePending.Caption <> '0' Then
  begin
    if not Assigned(frmEstimate) then
      frmEstimate := TfrmEstimate.Create(Self);
      frmEstimate.Caption := 'Invoice';
      frmEstimate.lblProcessName.Caption := frmEstimate.Caption;
      frmEstimate.varFilter := True;
      if varUnique then
          frmEstimate.varIDExterna := StrToInt(varInvoice)
      else  frmEstimate.varIDExterna  := 0;
      frmEstimate.Show;

      frmEstimate.Visible := True;
      frmEstimate.BringToFront;
      frmEstimate.Update;

      LocalAsyncVclCall( @SetuTable, varID_Customer );
  end;

end;

procedure TfrmDashSale.spbOrderAcceptedClick(Sender: TObject);
  procedure SetuTable(ID : Integer);
  begin

    frmEstimate.SetupTable(2, 'ACCEPTED',  IntToStr(ID)); // Order

  end;
begin
  if DBDados.varLogado = False  then Exit;

  if spbInvoiceAccepted.Caption <> '0' then
  begin

    if not Assigned(frmEstimate) then
      frmEstimate := TfrmEstimate.Create(Self);
      frmEstimate.Caption := 'Order';
      frmEstimate.lblProcessName.Caption := frmEstimate.Caption;
      frmEstimate.varFilter := True;
      if varUnique then
            frmEstimate.varIDExterna := StrToInt(varOrder)
      else  frmEstimate.varIDExterna  := 0;
      frmEstimate.Show;

      frmEstimate.Visible := True;
      frmEstimate.BringToFront;
      frmEstimate.Update;

      LocalAsyncVclCall( @SetuTable, varID_Customer );
  end;

end;

procedure TfrmDashSale.spbOrderPendingClick(Sender: TObject);
 var
   ID : string;
  procedure SetuTable(ID: Integer);
  begin

    frmEstimate.SetupTable(2, 'PENDING' , IntToStr(ID) ); // Order

  end;
begin
  if DBDados.varLogado = False  then Exit;

  if spbInvoicePending.Caption <> '0' then
  begin
      if not Assigned(frmEstimate) then
        frmEstimate := TfrmEstimate.Create(Self);
        frmEstimate.Caption := 'Order';
        frmEstimate.lblProcessName.Caption := frmEstimate.Caption;
        frmEstimate.varFilter := True;
        if varUnique then
            frmEstimate.varIDExterna := StrToInt(varOrder)
        else  frmEstimate.varIDExterna  := 0;
        frmEstimate.Show;

        frmEstimate.Visible := True;
        frmEstimate.BringToFront;
        frmEstimate.Update;

        LocalAsyncVclCall( @SetuTable, varID_Customer );
    end;
end;


procedure TfrmDashSale.spbPayablePaidClick(Sender: TObject);
  procedure SetuTable(ID : Integer);
  begin

    FrmCreditors.SetupTable('PAID' ,  IntToStr(ID)); // Payable

  end;

begin
  if DBDados.varLogado = False  then Exit;

  if not Assigned(FrmCreditors) then
    FrmCreditors := TFrmCreditors.Create(Self);
    FrmCreditors.ButNovo.Enabled := varAccessPay;
    FrmCreditors.ButExcluir.Enabled := varAccessPay;
    if varUnique then
        FrmCreditors.varInvoiceExterna := StrToInt(varInvoice)
    else  FrmCreditors.varInvoiceExterna  := 0;
    FrmCreditors.Show;

    FrmCreditors.Visible := True;
    FrmCreditors.BringToFront;
    FrmCreditors.Update;

    LocalAsyncVclCall( @SetuTable, varID_Customer );
end;

procedure TfrmDashSale.spbPayablePendingClick(Sender: TObject);
  procedure SetuTable(ID : Integer);
  begin

    FrmCreditors.SetupTable('PENDING' ,  IntToStr(ID)); // Payable

  end;

begin
  if DBDados.varLogado = False  then Exit;

  if not Assigned(FrmCreditors) then
    FrmCreditors := TFrmCreditors.Create(Self);
    FrmCreditors.ButNovo.Enabled := varAccessPay;
    FrmCreditors.ButExcluir.Enabled := varAccessPay;
    if varUnique then
        FrmCreditors.varInvoiceExterna := StrToInt(varInvoice)
    else  FrmCreditors.varInvoiceExterna  := 0;

    FrmCreditors.Show;

    FrmCreditors.Visible := True;
    FrmCreditors.BringToFront;
    FrmCreditors.Update;

    LocalAsyncVclCall( @SetuTable , varID_Customer);

end;

procedure TfrmDashSale.spbQuotationAcceptedClick(Sender: TObject);
  procedure SetuTable(ID : Integer);
  begin

    frmEstimate.SetupTable(1, 'ACCEPTED',  IntToStr(ID)); // Quotation

  end;
begin
  if DBDados.varLogado = False  then Exit;

  if spbQuotationAccepted.Caption <> '0' then
  begin

    if not Assigned(frmEstimate) then
      frmEstimate := TfrmEstimate.Create(Self);
      frmEstimate.Caption := 'Quotation';
      frmEstimate.lblProcessName.Caption := frmEstimate.Caption;
      frmEstimate.varFilter := True;
      if varUnique then
          frmEstimate.varIDExterna := StrToInt(varQuotation)
      else  frmEstimate.varIDExterna  := 0;
      frmEstimate.Show;

      frmEstimate.Visible := True;
      frmEstimate.BringToFront;
      frmEstimate.Update;

      LocalAsyncVclCall( @SetuTable, varID_Customer );
  end;
end;

procedure TfrmDashSale.spbQuotationPendingClick(Sender: TObject);
  procedure SetuTable(ID : Integer);
  begin

    frmEstimate.SetupTable(1, 'PENDING', IntToStr(ID) ); // Quotation

  end;
begin
  if DBDados.varLogado = False  then Exit;

  if spbQuotationPending.Caption <> '0' then
  begin

      if not Assigned(frmEstimate) then
        frmEstimate := TfrmEstimate.Create(Self);
        frmEstimate.Caption := 'Quotation';
        frmEstimate.lblProcessName.Caption := frmEstimate.Caption;
        frmEstimate.varFilter := True;
        if varUnique then
            frmEstimate.varIDExterna := StrToInt(varQuotation)
        else  frmEstimate.varIDExterna  := 0;
        frmEstimate.Show;

        frmEstimate.Visible := True;
        frmEstimate.BringToFront;
        frmEstimate.Update;

        LocalAsyncVclCall( @SetuTable , varID_Customer );
   end;


end;

procedure TfrmDashSale.spbWordOrderCompletedClick(Sender: TObject);
 procedure SetuTable(ID : Integer);
  begin

    frmWorkOrder.SetupTable('COMPLETED', IntToStr(ID));

  end;
begin
 if DBDados.varLogado = False  then Exit;

  if not Assigned(frmWorkOrder) then
    frmWorkOrder := TfrmWorkOrder.Create(Self);
    if varUnique then
        frmWorkOrder.varIDExterna := StrToInt(varInvoice)
    else  frmWorkOrder.varIDExterna  := 0;

    frmWorkOrder.Show;

    frmWorkOrder.Visible := True;
    frmWorkOrder.BringToFront;
    frmWorkOrder.Update;

    LocalAsyncVclCall( @SetuTable, varID_Customer );

end;

procedure TfrmDashSale.spbWordOrderPendingClick(Sender: TObject);
 procedure SetuTable(ID : Integer);
  begin

    frmWorkOrder.SetupTable('PENDING', IntToStr(ID));

  end;
begin
 if DBDados.varLogado = False  then Exit;

  if not Assigned(frmWorkOrder) then
    frmWorkOrder := TfrmWorkOrder.Create(Self);
    if varUnique then
        frmWorkOrder.varIDExterna := StrToInt(varInvoice)
    else  frmWorkOrder.varIDExterna  := 0;

    frmWorkOrder.Show;

    frmWorkOrder.Visible := True;
    frmWorkOrder.BringToFront;
    frmWorkOrder.Update;

    LocalAsyncVclCall( @SetuTable, varID_Customer );


end;

procedure TfrmDashSale.SpeedButton3Click(Sender: TObject);
  procedure SetuTable;
  begin

    frmEstimate.SetupTable(1, 'NEW', sqlCustomerID_CUSTOMER.AsString); // Quotation

  end;
begin
  if DBDados.varLogado = False  then Exit;

  if CustomerCombo.Text  <> '' then
  begin

      if not Assigned(frmEstimate) then
        frmEstimate := TfrmEstimate.Create(Self);
        frmEstimate.Caption := 'Quotation';
        frmEstimate.lblProcessName.Caption := frmEstimate.Caption;
        frmEstimate.varFilter := True;
        frmEstimate.Show;

        frmEstimate.Visible := True;
        frmEstimate.BringToFront;
        frmEstimate.Update;

        LocalAsyncVclCall( @SetuTable );
   end
   else Mens_MensInf( 'Customer name is required!' );

end;

procedure TfrmDashSale.SpeedButton4Click(Sender: TObject);
 procedure SetuTable;
  begin

    frmEstimate.SetupTable(2, 'NEW', sqlCustomerID_CUSTOMER.AsString); // Quotation

  end;
begin
  if DBDados.varLogado = False  then Exit;

  if CustomerCombo.Text  <> '' then
  begin

      if not Assigned(frmEstimate) then
        frmEstimate := TfrmEstimate.Create(Self);
        frmEstimate.Caption := 'Order';
        frmEstimate.lblProcessName.Caption := frmEstimate.Caption;
        frmEstimate.varFilter := True;
        frmEstimate.Show;

        frmEstimate.Visible := True;
        frmEstimate.BringToFront;
        frmEstimate.Update;

        LocalAsyncVclCall( @SetuTable );
  end
  else Mens_MensInf( 'Customer name is required!' );

end;

end.
