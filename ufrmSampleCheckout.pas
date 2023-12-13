unit ufrmSampleCheckout;

interface

uses
  uClassDBGenerics,
  uClassSalesProcess,
  uFunctions,
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
  cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit, Vcl.ComCtrls, dxCore,
  cxDateUtils, Vcl.Mask, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  EditBusca, Vcl.StdCtrls, cxPC, cxButtons, Vcl.ExtCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmSampleCheckout = class(TForm)
    Page: TcxPageControl;
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButAlterar: TcxButton;
    ButExcluir: TcxButton;
    ButImprimir: TcxButton;
    ButSair: TcxButton;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    cxSampleForm: TcxTabSheet;
    pnlTop: TPanel;
    Label9: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label57: TLabel;
    edtEmail: TEdit;
    edtCliente: TEditBusca;
    edtCustomerName: TEdit;
    edtZipCode: TEdit;
    edtAddress: TEdit;
    edtCity: TEdit;
    edtST: TEdit;
    DatePickup: TcxDateEdit;
    DateReturn: TcxDateEdit;
    spbCleanCustomer: TcxButton;
    edtPhone: TMaskEdit;
    edtCounty: TEdit;
    Panel3: TPanel;
    edtSupplier: TEditBusca;
    edtSample: TEditBusca;
    Label1: TLabel;
    Label2: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableViewItem: TcxGridDBTableView;
    cxGrid1DBTableViewItemID_PRODUCT: TcxGridDBColumn;
    cxGrid1DBTableViewItemDESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableViewItemTRADININGNAME: TcxGridDBColumn;
    cxGrid1DBTableViewItemSTYLE: TcxGridDBColumn;
    cxGrid1DBTableViewItemPRODUCT: TcxGridDBColumn;
    cxGrid1DBTableViewItemWIDTH: TcxGridDBColumn;
    cxGrid1DBTableViewItemHEIGHT: TcxGridDBColumn;
    cxGrid1DBTableViewItemTOTALAREA: TcxGridDBColumn;
    cxGrid1DBTableViewItemQTY: TcxGridDBColumn;
    cxGrid1DBTableViewItemRATE: TcxGridDBColumn;
    cxGrid1DBTableViewItemAMOUT: TcxGridDBColumn;
    cxGrid1DBTableViewItemTAXBLE: TcxGridDBColumn;
    cxGrid1DBTableViewItemROOM: TcxGridDBColumn;
    cxGrid1DBTableViewItemREQ_PURCHASE_ORDER: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    lblShippingDate: TLabel;
    Label5: TLabel;
    sqlSample: TFDQuery;
    dsSample: TDataSource;
    FDQuery2: TFDQuery;
    DataSource2: TDataSource;
    sqlSampleLAST_NAME: TStringField;
    sqlSamplePHONE1: TStringField;
    sqlSampleEMAIL: TStringField;
    sqlSampleDATE_CHECKOUT: TSQLTimeStampField;
    sqlSampleDATE_RETURN: TSQLTimeStampField;
    sqlSampleID_SAMPLECHECKOUT: TIntegerField;
    sqlSampleID_CUSTOMER: TIntegerField;
    sqlSampleID_USER: TIntegerField;
    cxGrid2DBTableView1LAST_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1PHONE1: TcxGridDBColumn;
    cxGrid2DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid2DBTableView1DATE_CHECKOUT: TcxGridDBColumn;
    cxGrid2DBTableView1DATE_RETURN: TcxGridDBColumn;
    Splitter1: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButNovoClick(Sender: TObject);
    procedure spbCleanCustomerClick(Sender: TObject);
    procedure edtClienteClick(Sender: TObject);
    procedure ButSalvarClick(Sender: TObject);
    procedure ButCancelarClick(Sender: TObject);
    procedure sqlSampleAfterScroll(DataSet: TDataSet);
    procedure ButSairClick(Sender: TObject);
  private
    { Private declarations }
    SAMPLE      : TSalesProcess;
    SALESREP    : TVendor;
    SAMPLE_ITEM : TSalesProcessItem;
    varNewKey, varNewKeyItem, varID_Company : Integer;
    varOption, varOptionItem : char;
    procedure LimpaEdits;
    procedure ButProcessOff(S: String);
    procedure SaveHeader;
    procedure AtualizaSampleGrid;
  public
    { Public declarations }
    procedure SetupTable;

  end;

var
  frmSampleCheckout: TfrmSampleCheckout;

implementation

{$R *.dfm}

uses SetParametro, MensFun, uDMConectDB, AsyncCalls;


Const

  SAMPLE_HEADER = 'TBSAMPLECHECKOUT';
  SAMPLE_ITEM   = 'TBSAMPLECHECKOUT_ITEM';

procedure TfrmSampleCheckout.LimpaEdits;
var i : integer;
begin
   cxSampleForm.Caption := 'ID: ';
   varOption := 'X';
   varOptionItem := 'X';
   for i := 0 to ComponentCount -1 do
   begin

     if (Components[i] is TMaskEdit) then
       TMaskEdit(Components[i]).Clear;


     if (Components[i] is TcxMaskEdit) then
       TcxMaskEdit(Components[i]).Clear;


     if (Components[i] is TEdit) then
        TEdit(Components[i]).Clear;

     if (Components[i] is TcxComboBox) then
        TcxComboBox(Components[i]).Clear;

     if (Components[i] is TMemo) then
        TMemo(Components[i]).Clear;

   end;

end;

procedure TfrmSampleCheckout.ButCancelarClick(Sender: TObject);
begin
  LimpaEdits;

end;

procedure TfrmSampleCheckout.ButNovoClick(Sender: TObject);
var
  varNextKey : TDBNextKey;
begin

  DatePickup.Date := Date;
  DateReturn.Date := Date + 7;
  LimpaEdits;
  varOption := 'I';
  Page.ActivePage := cxSampleForm;

  varNextKey             := TDBNextKey.Create(SAMPLE_HEADER);
  Try
    varNewKey            := varNextKey.Key;
    cxSampleForm.Caption := 'ID: ' + ZeroLeft(IntToStr(varNewKey),7);
    varNextKey.UpdateKey(varNewKey, SAMPLE_HEADER); // atualiza a nova chave no banco
    varNewKeyItem := 0;

    SAMPLE := TSalesProcess.Create(Self);
    SAMPLE.id_process := varNewKey;
    SAMPLE.tablename  := SAMPLE_HEADER;

  finally
    FreeAndNil(varNextKey);
  End;
  ButProcessOff('FFF');


end;

procedure TfrmSampleCheckout.ButProcessOff(S: String);
begin
  ButAlterar.Enabled   := Copy(S,1,1) = 'T' = True;
  ButExcluir.Enabled   := Copy(S,2,1) = 'T' = True;
  ButImprimir.Enabled  := Copy(S,3,1) = 'T' = True;
end;


procedure TfrmSampleCheckout.ButSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSampleCheckout.ButSalvarClick(Sender: TObject);
begin
  varOption := 'I';
  SaveHeader;
  AtualizaSampleGrid;

end;

procedure TfrmSampleCheckout.SaveHeader;
var
 I : Integer;
 Address : TAddress;
begin

   SAMPLE.dt_process                := DatePickup.Date;
   SAMPLE.dt_process_valid          := DateReturn.Date;
   SAMPLE.User.id_user              := DBDados.varID_USER;

   SAMPLE.Customer.LastName         := edtCustomerName.Text;
   SAMPLE.Customer.Phone1           := edtPhone.Text;
   SAMPLE.Customer.Email            := edtEmail.Text;
   SAMPLE.Customer.Company.id_company := varID_Company;
   SAMPLE.Customer.typeperson       := 'P'; // perpective

   Address := TAddress.Create;
   try
       Address.Address  := edtAddress.Text;
       Address.zipcode  := edtZipCode.Text;
       Address.st       := edtST.Text;
       Address.city     := edtCity.Text;
       Address.County   := edtCounty.Text;
       SAMPLE.Customer.Address.Add(Address);

   if varOption = 'I' then
       SAMPLE.SaveSampleBoard;

   finally
     FreeAndNil(Address);
   end;

end;

procedure TfrmSampleCheckout.edtClienteClick(Sender: TObject);
begin
  if ((edtCliente.Text <> '') and (edtCliente.bs_KeyValues.Count > 0 )) then
  begin
    edtCustomerName.Text := edtCliente.bs_KeyValues[1] + ',' +  edtCliente.bs_KeyValues[2];
    edtPhone.Text        := edtCliente.bs_KeyValues[3];
    edtEmail.Text        := edtCliente.bs_KeyValues[4];
    edtAddress.Text      := edtCliente.bs_KeyValues[5];
    edtAddress.Hint      := edtCliente.bs_KeyValues[0];
    edtZipCode.Text      := edtCliente.bs_KeyValues[6];
    edtCounty.Text       := edtCliente.bs_KeyValues[15];
    edtCity.Text         := edtCliente.bs_KeyValues[7];
    edtST.Text           := edtCliente.bs_KeyValues[8];
  end;
end;

procedure TfrmSampleCheckout.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmSampleCheckout := nil;
  Action := caFree;
end;

procedure TfrmSampleCheckout.AtualizaSampleGrid;
begin
  sqlSample.Close;
  sqlSample.Open;
end;

procedure TfrmSampleCheckout.SetupTable;
begin
  SALESREP := TVendor.Create;
  Try
    SALESREP.Search(DBDados.varID_USER, True);
    varID_Company := SALESREP.Company.id_company;
  Finally
    FreeAndNil(SALESREP);
  End;
  SetParametros(edtCliente, TipoCustomerCompany);
  SetParametros(edtSupplier, TipoSupplier);
  AtualizaSampleGrid;
end;

procedure TfrmSampleCheckout.spbCleanCustomerClick(Sender: TObject);
begin
 edtCliente.Clear;
 edtCliente.bs_KeyValues.Clear;
 edtCustomerName.Text := '';
 edtAddress.Text      := '';
 edtZipCode.Text      := '';
 edtCounty.Text       := '';
 edtCity.Text         := '';
 edtST.Text           := '';
 edtEmail.Text        := '';
 edtPhone.Text        := '';
 edtCustomerName.SetFocus;
end;

procedure TfrmSampleCheckout.sqlSampleAfterScroll(DataSet: TDataSet);
begin
  if  not sqlSample.IsEmpty then
  begin
     edtCliente.SetValue('C.ID_CUSTOMER = ' + IntToStr(sqlSample.FieldByName('ID_CUSTOMER').AsInteger));
     edtClienteClick(Self);
  end;
end;

end.
