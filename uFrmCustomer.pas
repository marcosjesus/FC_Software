unit uFrmCustomer;

interface

uses
  uSetupFolder,
  uClassDBGenerics,
  uClassCustomer,
  MensFun,
  uFunctions,
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
  cxControls, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxPC, dxStatusBar, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  Vcl.ComCtrls, Vcl.Mask, Datasnap.Provider, Datasnap.DBClient, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxImageComboBox, Vcl.ImgList;

type
  TFrmCustomer = class(TForm)
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButAlterar: TcxButton;
    ButExcluir: TcxButton;
    ButSair: TcxButton;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    ButImprimir: TcxButton;
    StatusBar: TdxStatusBar;
    cxPageControl: TcxPageControl;
    cxTabSheetList: TcxTabSheet;
    cxTabSheetForm: TcxTabSheet;
    sqlGrid: TFDQuery;
    dsGrid: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Label1: TLabel;
    PgCPrincipal: TcxPageControl;
    TbSFicha: TcxTabSheet;
    Label5: TLabel;
    Panel3: TPanel;
    cxPageControl2: TcxPageControl;
    sqlAddress: TFDQuery;
    dsAddress: TDataSource;
    sqlAddressID_ADDRESS: TIntegerField;
    sqlAddressID_CUSTOMER: TIntegerField;
    sqlAddressADDRESS1: TStringField;
    sqlAddressZIPCODE: TStringField;
    sqlAddressCOUNTRY: TStringField;
    sqlAddressSTATEE: TStringField;
    sqlAddressID_USER: TIntegerField;
    sqlAddressCITY: TStringField;
    StatusBar1: TStatusBar;
    cxGridAddress: TcxGrid;
    cxTableViewAddress: TcxGridDBTableView;
    cxGridLevelAddress: TcxGridLevel;
    cxTableViewAddressADDRESS1: TcxGridDBColumn;
    cxTableViewAddressZIPCODE: TcxGridDBColumn;
    cxTableViewAddressSTATEE: TcxGridDBColumn;
    cxTableViewAddressCITY: TcxGridDBColumn;
    sqlAddressID_SUPPLIER: TIntegerField;
    sqlAddressadd_date: TSQLTimeStampField;
    sqlAddressupd_date: TSQLTimeStampField;
    cxGrid1DBTableView1ID_CUSTOMER: TcxGridDBColumn;
    cxGrid1DBTableView1LAST_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1FIRST_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1PHONE1: TcxGridDBColumn;
    cxGrid1DBTableView1PHONE2: TcxGridDBColumn;
    Panel2: TPanel;
    Panel1010: TPanel;
    memObservacao: TMemo;
    cxGrid1DBTableView1COMPANYNAME: TcxGridDBColumn;
    Panel4: TPanel;
    Label9: TLabel;
    cxLookupComboBoxCompany: TcxLookupComboBox;
    TBCOMPANY: TFDTable;
    DsCompany: TDataSource;
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
    sqlVendor: TFDQuery;
    dsVendor: TDataSource;
    cxLookupComboBoxVendor: TcxLookupComboBox;
    Label10: TLabel;
    sqlVendorID_CONTRACTORS: TIntegerField;
    sqlVendorID_MAIN_USER: TIntegerField;
    sqlVendorNAME: TStringField;
    sqlVendorID_POSITION: TIntegerField;
    sqlVendorPHONE: TStringField;
    sqlVendorEMAIL: TStringField;
    sqlVendorDRIVER_LICENSE: TStringField;
    sqlVendorID_USER: TIntegerField;
    sqlVendorCOMISSION: TBCDField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel200: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtLastName: TEdit;
    edtMiddleName: TEdit;
    edtFirstName: TEdit;
    edtEmail: TEdit;
    edtPhone1: TMaskEdit;
    edtPhone2: TMaskEdit;
    sqlGridID_CUSTOMER: TIntegerField;
    sqlGridLAST_NAME: TStringField;
    sqlGridFIRST_NAME: TStringField;
    sqlGridEMAIL: TStringField;
    sqlGridPHONE1: TStringField;
    sqlGridPHONE2: TStringField;
    sqlGridID_USER: TIntegerField;
    sqlGridADD_DATE: TSQLTimeStampField;
    sqlGridUPD_DATE: TSQLTimeStampField;
    sqlGridID_COMPANY: TIntegerField;
    sqlGridCOMPANYNAME: TStringField;
    sqlGridLASTNAME: TStringField;
    sqlGridTYPEPERSON: TStringField;
    TBCOMPANYESTIMATEDAYS: TIntegerField;
    TBCOMPANYTAX: TBCDField;
    TBCOMPANYIMAGEM: TBlobField;
    sqlAddressCOUNTY: TStringField;
    sqlVendorADD_DATE: TDateField;
    sqlVendorUPD_DATE: TDateField;
    sqlVendorID_COMPANY: TIntegerField;
    cxTableViewAddressCOUNTY: TcxGridDBColumn;
    cxSmallImages: TcxImageList;
    sqlAddressTYPEADDRESS: TStringField;
    cxTableViewAddressTYPEADDRESS: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButNovoClick(Sender: TObject);
    procedure sqlAddressAfterEdit(DataSet: TDataSet);
    procedure sqlAddressNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ButSalvarClick(Sender: TObject);
    procedure ButAlterarClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure ButCancelarClick(Sender: TObject);
    procedure ButSairClick(Sender: TObject);
    procedure cxPageControlChange(Sender: TObject);
    procedure ButExcluirClick(Sender: TObject);
    procedure cxLookupComboBoxCompanyClick(Sender: TObject);
  private
    { Private declarations }
    varOption : char;  // I = Insert / U = Update
    varNewKey : Integer;
    Customer  : TCustomer;
  //  Pasta     : TFolder;
    procedure LimpaEdits;
    function Check : Boolean;
    procedure SetVendor;
    procedure AtualizaGrade;

  public
    { Public declarations }
  end;

var
  FrmCustomer: TFrmCustomer;

implementation

{$R *.dfm}

uses uDMConectDB;

procedure TFrmCustomer.ButAlterarClick(Sender: TObject);
begin
    varOption := 'U';
    if  sqlGrid.IsEmpty  then exit;
    cxGrid1DBTableView1DblClick(self);
end;

procedure TFrmCustomer.ButCancelarClick(Sender: TObject);
begin
  cxPageControl.ActivePage := cxTabSheetList;
  LimpaEdits;
end;

procedure TFrmCustomer.ButExcluirClick(Sender: TObject);
begin
 if  sqlGrid.IsEmpty  then exit;

 cxGrid1DBTableView1DblClick(self);
 varOption := 'X';
  If ( Mens_MensConf('Delete record ?') = mrOk ) Then
  Begin
     Customer.Delete;
     AtualizaGrade;
     cxPageControl.ActivePage := cxTabSheetList;
  End;
end;

procedure TFrmCustomer.ButNovoClick(Sender: TObject);
var
  varNextKey : TDBNextKey;
begin
  varOption   := 'I';
  cxPageControl.ActivePage := cxTabSheetForm;
  LimpaEdits;
  varOption := 'I';
  varNextKey               := TDBNextKey.Create('TBCUSTOMER');
  Try
    varNewKey              := varNextKey.Key;
    Panel1.caption         := 'ID: ' + IntToStr(varNewKey);
    varNextKey.UpdateKey(varNewKey, 'TBCUSTOMER'); // atualiza a nova chave no banco

    Customer := TCustomer.Create;
    sqlAddress.Close;
    sqlAddress.Params.ParamByName('ID_Customer').AsInteger := varNewKey;
    sqlAddress.Open;

    cxLookupComboBoxCompany.EditValue := DBDados.varIDMAIN_COMPANY;

    sqlVendor.Close;
    sqlVendor.Params.ParamByName('ID_COMPANY').AsInteger := DBDados.varIDMAIN_COMPANY;
    sqlVendor.Open;

    SetVendor;

  finally
    FreeAndNil(varNextKey);
  End;
  cxPageControl.ActivePage     := cxTabSheetForm;
  edtLastName.SetFocus;

end;

procedure TFrmCustomer.ButSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCustomer.ButSalvarClick(Sender: TObject);
begin
  if varOption = 'X' then
  begin
     Mens_MensInf('The Customer Table not in edit or insert mode.') ;
     Exit;
  end;


  if Check = False then exit;

  if Customer = Nil then exit;


  Try
   Try
      Customer.Id_customer          := varNewKey;
      Customer.id_user              := DBDados.varID_USER;
      Customer.LastName             := edtLastName.Text;
      Customer.MiddleName           := edtMiddleName.Text;
      Customer.FirstName            := edtFirstName.Text;
      Customer.Phone1               := edtPhone1.Text;
      Customer.Phone2               := edtPhone2.Text;
      Customer.Email                := edtEmail.Text;
      Customer.AdditionInformation  := memObservacao.Lines.Text;
      Customer.Company.id_company   := cxLookupComboBoxCompany.EditValue;
      Customer.id_contractors       := cxLookupComboBoxVendor.EditValue;

      GenerateFolder('NP', IntToStr(varNewKey));
      Customer.folder.pasta := Folder_Documents + '\NP_' + ZeroLeft(IntToStr(varNewKey),7);
      {
      Customer.folder.pasta         := 'NP_' + ZeroLeft(IntToStr(varNewKey),7);
      Customer.folder.CreateFolder;

      Customer.folder.subpasta      := 'Quotation';
      Customer.folder.CreateSubPasta;

      Customer.folder.subpasta      := 'Order';
      Customer.folder.CreateSubPasta;

      Customer.folder.subpasta      := 'Invoice';
      Customer.folder.CreateSubPasta;

      Customer.folder.subpasta      := 'Service';
      Customer.folder.CreateSubPasta;
       }

      Customer.typeperson           := 'N'; // Natural Person





      if varOption = 'I' then
        Customer.Save
      else if varOption = 'U' then
        Customer.Update;
   except
      on E : Exception do
        Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
   end;

    varOption := 'X';


  finally
      FreeAndNil(Customer);
  end;

  cxPageControl.ActivePage := cxTabSheetList;
  AtualizaGrade;


end;

function TFrmCustomer.Check: Boolean;
var
  Retorno : Boolean;
begin
  Retorno := True;

  if cxLookupComboBoxCompany.ItemIndex = -1 then
  begin
     Retorno := False;
     Mens_MensInf('Select the Company Name.') ;
     cxLookupComboBoxCompany.SetFocus ;
     Exit;
  end;

  if cxLookupComboBoxVendor.ItemIndex = -1 then
  begin
     Retorno := False;
     Mens_MensInf('Select the Vendor name.') ;
     cxLookupComboBoxVendor.SetFocus ;
     Exit;
  end;

  if edtLastName.Text = '' then
  begin
     Retorno := False;
     Mens_MensInf('Last Name is missing.') ;
     edtLastName.SetFocus ;
     Exit;
  end;

  if edtFirstName.Text = '' then
  begin
     Retorno := False;
     Mens_MensInf('First Name is missing.') ;
     edtFirstName.SetFocus ;
     Exit;
  end;

  if edtPhone1.Text = '(   )   -    ' then
  begin
     Retorno := False;
     Mens_MensInf('Phone #1 is missing.') ;
     edtPhone1.SetFocus ;
     Exit;
  end;

  if edtEmail.Text <> '' then
  begin
    if IsValidEmailRegEx(edtEmail.Text) = False Then
    begin
       Retorno := False;
       Mens_MensInf('Invalid Customerīs E-mail.');
       edtEmail.SetFocus ;
       Exit;
    end;
  end;

  Result := Retorno;

end;

procedure TFrmCustomer.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  User : TUser;
begin
    Customer := TCustomer.Create;

    Customer.Search(sqlGrid.FieldByName('ID_CUSTOMER').AsInteger);

    sqlAddress.Close;
    sqlAddress.Params.ParamByName('ID_CUSTOMER').AsInteger :=  sqlGrid.fieldByName('ID_CUSTOMER').AsInteger;
    sqlAddress.Open;

   User := TUser.Create;
   Try
     User.Search(sqlGrid.FieldByName('ID_USER').AsInteger);
     StatusBar1.Panels[0].Text    := 'User ' + User.lastname + ',' + User.firstname;
     StatusBar1.Panels[1].Text    := 'Date Created ' + sqlGrid.FieldByName('ADD_DATE').AsString;
     StatusBar1.Panels[2].Text    := 'Date Modified ' + sqlGrid.fieldByName('UPD_DATE').AsString;
   Finally
     FreeAndNil(User);
   End;

    sqlVendor.Close;
    sqlVendor.Params.ParamByName('ID_COMPANY').AsInteger := Customer.Company.id_company;
    sqlVendor.Open;

    LimpaEdits;

    varOption := 'U';

    varNewKey                    := Customer.Id_customer;
    Panel1.Caption               := ' ID ' + IntToStr(varNewKey);
    StatusBar1.Panels[0].Text    := 'User ' + DBDados.varUsuario;
    StatusBar1.Panels[1].Text    := 'Date Created ' + Customer.add_date;
    StatusBar1.Panels[2].Text    := 'Date Modified ' + Customer.upd_date;

    edtLastName.Text             := Customer.LastName;
    edtMiddleName.Text           := Customer.MiddleName;
    edtFirstName.Text            := Customer.FirstName;
    edtEmail.Text                := Customer.Email;
    edtPhone1.Text               := Customer.Phone1;
    edtPhone2.Text               := Customer.Phone2;
    cxLookupComboBoxCompany.EditValue  := Customer.Company.id_company;
    memObservacao.Lines.Text           := Customer.AdditionInformation;
    cxLookupComboBoxVendor.EditValue   := Customer.id_contractors;
    cxLookupComboBoxVendor.Enabled     := Customer.id_contractors = DBDados.varID_USER;
    cxPageControl.ActivePage           := cxTabSheetForm;
    edtLastName.SetFocus;
end;

procedure TFrmCustomer.cxLookupComboBoxCompanyClick(Sender: TObject);
begin
  sqlVendor.Close;
  sqlVendor.Params.ParamByName('ID_COMPANY').AsInteger := cxLookupComboBoxCompany.EditValue;
  sqlVendor.Open;
end;

procedure TFrmCustomer.cxPageControlChange(Sender: TObject);
begin
  if  varOption = 'X' then
    cxPageControl.ActivePage  := cxTabSheetList;
end;

procedure TFrmCustomer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  sqlAddress.Close;

  FrmCustomer := nil;
  Action := caFree;
end;

procedure TFrmCustomer.FormCreate(Sender: TObject);
begin
   varOption := 'X';
   cxPageControl.ActivePage := cxTabSheetList;
end;

procedure TFrmCustomer.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmCustomer.AtualizaGrade;
begin
  sqlGrid.Close;
  sqlGrid.Params.ParamByName('TYPEPERSON').AsString := 'N';
  sqlGrid.MacroByName( 'WHERE1' ).AsRaw := ' AND C.' + DBDados.varReturnCompanies;
  if DBDados.varView_All_CustomersNaturalPerson = False then
     sqlGrid.MacroByName( 'WHERE2' ).AsRaw := ' AND C.ID_USER = ' + IntToStr(DBDados.varID_USER);
  sqlGrid.Open;
end;

procedure TFrmCustomer.FormShow(Sender: TObject);
begin

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

end;

procedure  TFrmCustomer.SetVendor;
var
 Vendor : TVendor;
begin

   Vendor := TVendor.Create;
   Try
    Vendor.Search(DBDados.varID_USER);
    cxLookupComboBoxVendor.EditValue := Vendor.id_contractor;
   Finally
    FreeAndNil(Vendor);
   End;

end;

procedure TFrmCustomer.LimpaEdits;
var i : integer;
begin
   Panel1.caption  := 'ID: ';
   varOption       := 'X';
   if cxPageControl.ActivePageIndex = 1 then   // TABSHEET = 2
   begin
     for i := 0 to ComponentCount -1 do
     begin

       if (Components[i] is TMaskEdit) then
          TMaskEdit(Components[i]).Clear;

       if (Components[i] is TEdit) then
          TEdit(Components[i]).Clear;

       if (Components[i] is TcxComboBox) then
          TcxComboBox(Components[i]).Clear;

       if (Components[i] is TMemo) then
          TMemo(Components[i]).Clear;
     end;
   end;

end;

procedure TFrmCustomer.sqlAddressAfterEdit(DataSet: TDataSet);
begin
  sqlAddressupd_date.AsDateTime := now;
  sqlAddressID_USER.AsInteger   := DBDados.varID_USER;
end;

procedure TFrmCustomer.sqlAddressNewRecord(DataSet: TDataSet);
var
  varNextAddressKey : TDBNextKey;
begin
  varNextAddressKey := TDBNextKey.Create('TBADDRESS');
  Try
    sqlAddress.FieldByName('ID_ADDRESS').AsInteger  := varNextAddressKey.Key;
    sqlAddress.FieldByName('ID_USER').AsInteger     := DBDados.varID_USER;
    sqlAddress.FieldByName('ID_CUSTOMER').AsInteger := varNewKey;
    sqlAddress.FieldByName('add_date').AsDateTime   := Now;
  Finally
     varNextAddressKey.UpdateKey(varNextAddressKey.Key, 'TBADDRESS'); // atualiza a nova chave no banco
     FreeAndNil(varNextAddressKey);
  End;
end;

end.
