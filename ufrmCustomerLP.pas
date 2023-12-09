unit ufrmCustomerLP;

interface

uses
  uSetupFolder,
  uClassDBGenerics,
  uClassCustomer,
  MensFun,
  uFunctions,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxSkinsCore, dxSkinBlack,
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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Mask,
  Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxPC, FireDAC.Comp.Client, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Comp.DataSet, dxSkinsdxStatusBarPainter, Vcl.Menus,
  cxButtons, dxStatusBar, Vcl.ComCtrls, cxImageComboBox, Vcl.ImgList, cxSplitter;

type
  TfrmCustomerLP = class(TForm)
    sqlAddress: TFDQuery;
    sqlAddressID_ADDRESS: TIntegerField;
    sqlAddressID_CUSTOMER: TIntegerField;
    sqlAddressADDRESS1: TStringField;
    sqlAddressZIPCODE: TStringField;
    sqlAddressCOUNTRY: TStringField;
    sqlAddressSTATEE: TStringField;
    sqlAddressID_USER: TIntegerField;
    sqlAddressCITY: TStringField;
    sqlAddressID_SUPPLIER: TIntegerField;
    dsAddress: TDataSource;
    sqlGrid: TFDQuery;
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
    sqlGridLASTNAME: TStringField;
    sqlGridCOMPANYNAME: TStringField;
    DsCompany: TDataSource;
    TBCOMPANY: TFDTable;
    TBCOMPANYID_COMPANY: TIntegerField;
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
    sqlVendorID_CONTRACTORS: TIntegerField;
    sqlVendorID_MAIN_USER: TIntegerField;
    sqlVendorNAME: TStringField;
    sqlVendorID_POSITION: TIntegerField;
    sqlVendorPHONE: TStringField;
    sqlVendorEMAIL: TStringField;
    sqlVendorDRIVER_LICENSE: TStringField;
    sqlVendorID_USER: TIntegerField;
    sqlVendorCOMISSION: TBCDField;
    dsVendor: TDataSource;
    dsGrid: TDataSource;
    cxPageControl: TcxPageControl;
    cxTabSheetList: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ID_CUSTOMER: TcxGridDBColumn;
    cxGrid1DBTableView1COMPANYNAME: TcxGridDBColumn;
    cxGrid1DBTableView1LAST_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1PHONE1: TcxGridDBColumn;
    cxGrid1DBTableView1PHONE2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheetForm: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    PgCPrincipal: TcxPageControl;
    TbSFicha: TcxTabSheet;
    Panel3: TPanel;
    cxPageControl2: TcxPageControl;
    cxGridAddress: TcxGrid;
    cxTableViewAddress: TcxGridDBTableView;
    cxTableViewAddressADDRESS1: TcxGridDBColumn;
    cxTableViewAddressZIPCODE: TcxGridDBColumn;
    cxTableViewAddressCITY: TcxGridDBColumn;
    cxTableViewAddressSTATEE: TcxGridDBColumn;
    cxGridLevelAddress: TcxGridLevel;
    Panel2: TPanel;
    Panel1010: TPanel;
    memObservacao: TMemo;
    Panel4: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    cxLookupComboBoxCompany: TcxLookupComboBox;
    cxLookupComboBoxVendor: TcxLookupComboBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel200: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtOrganization: TEdit;
    edtEmail: TEdit;
    edtPhone1: TMaskEdit;
    edtPhone2: TMaskEdit;
    Panel5: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1NAME: TcxGridDBColumn;
    cxGridDBTableView1POSITION: TcxGridDBColumn;
    cxGridDBTableView1PHONE1: TcxGridDBColumn;
    cxGridDBTableView1PHONE2: TcxGridDBColumn;
    cxGridDBTableView1EMAIL: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    sqlContact: TFDQuery;
    sqlContactID_CONTACT: TIntegerField;
    sqlContactID_ADDRESS: TIntegerField;
    sqlContactID_CUSTOMER: TIntegerField;
    sqlContactID_SUPPLIER: TIntegerField;
    sqlContactNAME: TStringField;
    sqlContactPOSITION: TStringField;
    sqlContactEMAIL: TStringField;
    sqlContactPHONE1: TStringField;
    sqlContactPHONE2: TStringField;
    sqlContactID_USER: TIntegerField;
    sqlContactADD_DATE: TSQLTimeStampField;
    sqlContactUPD_DATE: TSQLTimeStampField;
    dsContact: TDataSource;
    StatusBar1: TStatusBar;
    StatusBar: TdxStatusBar;
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButAlterar: TcxButton;
    ButExcluir: TcxButton;
    ButSair: TcxButton;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    ButImprimir: TcxButton;
    sqlGridTYPEPERSON: TStringField;
    sqlAddressadd_date: TSQLTimeStampField;
    sqlAddressupd_date: TSQLTimeStampField;
    sqlAddressCOUNTY: TStringField;
    TBCOMPANYADD_DATE: TSQLTimeStampField;
    TBCOMPANYUPD_DATE: TSQLTimeStampField;
    TBCOMPANYESTIMATEDAYS: TIntegerField;
    TBCOMPANYTAX: TBCDField;
    TBCOMPANYIMAGEM: TBlobField;
    sqlVendorADD_DATE: TDateField;
    sqlVendorUPD_DATE: TDateField;
    sqlVendorID_COMPANY: TIntegerField;
    cxTableViewAddressCOUNTY: TcxGridDBColumn;
    cxSmallImages: TcxImageList;
    sqlAddressTYPEADDRESS: TStringField;
    cxTableViewAddressTYPEADDRESS: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    DSPPRICELIST: TDataSource;
    STPPRICELIST: TFDStoredProc;
    STPPRICELISTID_PRICELIST: TFDAutoIncField;
    STPPRICELISTNAME: TStringField;
    STPPRICELISTEXPIREDDATE: TDateField;
    STPPRICELISTACTIVE: TStringField;
    Panel6: TPanel;
    Label19: TLabel;
    cxLookupComboBoxPrincing: TcxLookupComboBox;
    spbCleanCustomer: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ButNovoClick(Sender: TObject);
    procedure ButAlterarClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure ButExcluirClick(Sender: TObject);
    procedure ButSairClick(Sender: TObject);
    procedure ButSalvarClick(Sender: TObject);
    procedure ButCancelarClick(Sender: TObject);
    procedure sqlAddressAfterEdit(DataSet: TDataSet);
    procedure sqlAddressNewRecord(DataSet: TDataSet);
    procedure sqlContactBeforePost(DataSet: TDataSet);
    procedure sqlAddressAfterScroll(DataSet: TDataSet);
    procedure sqlContactNewRecord(DataSet: TDataSet);
    procedure sqlContactAfterEdit(DataSet: TDataSet);
    procedure cxLookupComboBoxCompanyClick(Sender: TObject);
    procedure spbCleanCustomerClick(Sender: TObject);
  private
    { Private declarations }
    varOption : char;  // I = Insert / U = Update
    varNewKey : Integer;
    Customer : TCustomer;
    procedure AtualizaGrade;
    procedure LimpaEdits;
    procedure SetVendor;
    function Check: Boolean;
  public
    { Public declarations }
  end;

var
  frmCustomerLP: TfrmCustomerLP;

implementation

{$R *.dfm}

uses uDMConectDB;

procedure TfrmCustomerLP.AtualizaGrade;
begin
  sqlGrid.Close;
  sqlGrid.Params.ParamByName('TYPEPERSON').AsString := 'L';
  sqlGrid.MacroByName( 'WHERE1' ).AsRaw := ' AND C.' + DBDados.varReturnCompanies;
  if DBDados.varView_All_CustomersLegalPerson = False then
     sqlGrid.MacroByName( 'WHERE2' ).AsRaw := ' AND C.ID_USER = ' + IntToStr(DBDados.varID_USER);
  sqlGrid.Open;
end;


procedure  TfrmCustomerLP.SetVendor;
var
 Vendor : TVendor;
begin

   Vendor := TVendor.Create;
   Try
    Vendor.Search(DBDados.varID_USER);
    cxLookupComboBoxVendor.EditValue := Vendor.id_contractor;
    STPPRICELIST.Close;
    STPPRICELIST.Prepare;
    STPPRICELIST.ParamByName( '@ID_CONTRACTOR' ).AsInteger := Vendor.id_contractor;
    STPPRICELIST.Open;
    cxLookupComboBoxPrincing.EditValue := -1;

   { while not STPPRICELIST.Eof do
    begin
        if STPPRICELISTACTIVE.AsString = 'Y' then
           cxLookupComboBoxPrincing.EditValue := STPPRICELISTID_PRICELIST.AsInteger;
        STPPRICELIST.Next;
    end;
    }
   Finally
    FreeAndNil(Vendor);
   End;

end;

procedure TfrmCustomerLP.spbCleanCustomerClick(Sender: TObject);
begin
 cxLookupComboBoxPrincing.EditValue := -1;
 cxLookupComboBoxPrincing.SetFocus;
end;

procedure TfrmCustomerLP.sqlAddressAfterEdit(DataSet: TDataSet);
begin
  sqlAddress.FieldByName('upd_date').AsDateTime := now;
  sqlAddress.FieldByName('ID_USER').AsInteger   := DBDados.varID_USER;
end;

procedure TfrmCustomerLP.sqlAddressAfterScroll(DataSet: TDataSet);
begin
    sqlContact.Close;
    sqlContact.Params.ParamByName('ID_ADDRESS').AsInteger  :=  sqlAddress.FieldByName('ID_ADDRESS').AsInteger;
    sqlContact.Params.ParamByName('ID_CUSTOMER').AsInteger :=  sqlGrid.FieldByName('ID_CUSTOMER').AsInteger;
    sqlContact.Open;
end;

procedure TfrmCustomerLP.sqlAddressNewRecord(DataSet: TDataSet);
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

procedure TfrmCustomerLP.sqlContactAfterEdit(DataSet: TDataSet);
begin
  if not sqlContact.IsEmpty  then
  begin
    sqlContact.FieldByName('UPD_DATE').AsDateTime := now;
    sqlContact.FieldByName('ID_USER').AsInteger   := DBDados.varID_USER;
  end;
end;

procedure TfrmCustomerLP.sqlContactBeforePost(DataSet: TDataSet);
begin
 if sqlContact.State in [dsEdit, dsInsert] then
  begin


    if   sqlContact.FieldByName('NAME').AsString = '' then
    begin
       Mens_MensInf('Contact Name is missing.') ;
       sqlContact.Cancel;
    end;

    if   sqlContact.FieldByName('PHONE1').AsString = '' then
    begin
       Mens_MensInf('Contact Phone # 1 is missing.') ;
       sqlContact.Cancel;
    end;


    if sqlContact.FieldByName('EMAIL').AsString <> '' then
    begin
      if IsValidEmailRegEx(sqlContact.FieldByName('EMAIL').AsString) = False Then
      begin
         Mens_MensInf('Invalid Contact E-mail.');
         sqlContact.Cancel;
      end;
    end;
  end;
end;

procedure TfrmCustomerLP.sqlContactNewRecord(DataSet: TDataSet);
var
  varNextAddressKey : TDBNextKey;
begin

  if varOption = 'X' then
  begin
     Mens_MensInf('The Customer Table not in edit or insert mode.') ;
     Exit;
  end;

  if  sqlAddress.IsEmpty then
  begin
    Mens_MensInf('Enter 1 Address at least.') ;
    exit;
  end;

  if not sqlAddress.IsEmpty then
  begin
    varNextAddressKey := TDBNextKey.Create('TBCONTACT');
    Try
      sqlContact.FieldByName('ID_CONTACT').AsInteger  := varNextAddressKey.Key;
      sqlContact.FieldByName('ID_ADDRESS').AsInteger  := sqlAddress.FieldByName('ID_ADDRESS').AsInteger;
      sqlContact.FieldByName('ID_USER').AsInteger     := DBDados.varID_USER;
      sqlContact.FieldByName('ID_SUPPLIER').AsInteger := varNewKey;
      sqlContact.FieldByName('ADD_DATE').AsDateTime   := Now;
    Finally
       varNextAddressKey.UpdateKey(varNextAddressKey.Key, 'TBCONTACT'); // atualiza a nova chave no banco
       FreeAndNil(varNextAddressKey);
    End;
  end;
end;

procedure TfrmCustomerLP.LimpaEdits;
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

procedure TfrmCustomerLP.ButAlterarClick(Sender: TObject);
begin
    varOption := 'U';
    if  sqlGrid.IsEmpty  then exit;
    cxGrid1DBTableView1DblClick(self);
end;

procedure TfrmCustomerLP.ButCancelarClick(Sender: TObject);
begin
  cxPageControl.ActivePage := cxTabSheetList;
  LimpaEdits;
end;

procedure TfrmCustomerLP.ButExcluirClick(Sender: TObject);
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

procedure TfrmCustomerLP.ButNovoClick(Sender: TObject);
var
  varNextKey : TDBNextKey;
begin
  varOption := 'I';
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
    sqlAddress.Params.ParamByName('ID_CUSTOMER').AsInteger := varNewKey;
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
  edtOrganization.SetFocus;

end;

procedure TfrmCustomerLP.ButSairClick(Sender: TObject);
begin
     Close;
end;

function TfrmCustomerLP.Check: Boolean;
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

  if edtOrganization.Text = '' then
  begin
     Retorno := False;
     Mens_MensInf('Orgnazition Name is missing.') ;
     edtOrganization.SetFocus ;
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


procedure TfrmCustomerLP.ButSalvarClick(Sender: TObject);
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
      Customer.LastName             := edtOrganization.Text;
      Customer.Phone1               := edtPhone1.Text;
      Customer.Phone2               := edtPhone2.Text;
      Customer.Email                := edtEmail.Text;
      Customer.AdditionInformation  := memObservacao.Lines.Text;
      Customer.Company.id_company   := cxLookupComboBoxCompany.EditValue;
      Customer.id_contractors       := cxLookupComboBoxVendor.EditValue;
      GenerateFolder('LP', IntToStr(varNewKey));
      Customer.folder.pasta := Folder_Documents + '\LP_' + ZeroLeft(IntToStr(varNewKey),7);
      Customer.id_pricelist    := cxLookupComboBoxPrincing.EditValue;
     {
      Customer.folder.pasta         := 'LP_' + ZeroLeft(IntToStr(varNewKey),7);
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

      Customer.typeperson           := 'L'; // Legal Person

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

procedure TfrmCustomerLP.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  User : TUser;

begin
    Customer := TCustomer.Create;
    Customer.Search(sqlGrid.FieldByName('ID_CUSTOMER').AsInteger);
    sqlAddress.Close;
    sqlAddress.Params.ParamByName('ID_CUSTOMER').AsInteger :=  sqlGrid.FieldByName('ID_CUSTOMER').AsInteger;
    sqlAddress.Open;

    sqlContact.Close;
    sqlContact.Params.ParamByName('ID_ADDRESS').AsInteger  :=  sqlAddress.FieldByName('ID_ADDRESS').AsInteger;
    sqlContact.Params.ParamByName('ID_CUSTOMER').AsInteger :=  sqlGrid.FieldByName('ID_CUSTOMER').AsInteger;
    sqlContact.Open;

   User := TUser.Create;
   Try
     User.Search(sqlGrid.FieldByName('ID_USER').AsInteger);
     StatusBar1.Panels[0].Text    := 'User ' + User.lastname + ',' + User.firstname;
     StatusBar1.Panels[1].Text    := 'Date Created ' + sqlGrid.FieldByName('ADD_DATE').AsString;
     StatusBar1.Panels[2].Text    := 'Date Modified ' + sqlGrid.FieldByName('UPD_DATE').AsString;
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

    edtOrganization.Text         := Customer.LastName;
    edtEmail.Text                := Customer.Email;
    edtPhone1.Text               := Customer.Phone1;
    edtPhone2.Text               := Customer.Phone2;
    cxLookupComboBoxCompany.EditValue  := Customer.Company.id_company;
    memObservacao.Lines.Text     := Customer.AdditionInformation;
    cxLookupComboBoxVendor.EditValue := Customer.id_contractors;
    cxLookupComboBoxVendor.Enabled     := Customer.id_contractors = DBDados.varID_USER;
    STPPRICELIST.Close;
    STPPRICELIST.Prepare;
    STPPRICELIST.ParamByName( '@ID_CONTRACTOR' ).AsInteger := Customer.id_contractors;
    STPPRICELIST.Open;

    cxLookupComboBoxPrincing.EditValue := Customer.id_pricelist;
    cxPageControl.ActivePage     := cxTabSheetForm;
    edtOrganization.SetFocus;

end;

procedure TfrmCustomerLP.cxLookupComboBoxCompanyClick(Sender: TObject);
begin
  sqlVendor.Close;
  sqlVendor.Params.ParamByName('ID_COMPANY').AsInteger := cxLookupComboBoxCompany.EditValue;
  sqlVendor.Open;
end;

procedure TfrmCustomerLP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  sqlAddress.Close;
  sqlContact.Close;

  FrmCustomerLP := nil;
  Action := caFree;
end;

procedure TfrmCustomerLP.FormCreate(Sender: TObject);
begin
   varOption := 'X';
   cxPageControl.ActivePage := cxTabSheetList;
end;

procedure TfrmCustomerLP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCustomerLP.FormShow(Sender: TObject);
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

  sqlContact.Close;
  sqlContact.Params.ParamByName('ID_ADDRESS').AsInteger  :=  sqlAddress.FieldByName('ID_ADDRESS').AsInteger;
  sqlContact.Params.ParamByName('ID_CUSTOMER').AsInteger :=  sqlGrid.FieldByName('ID_CUSTOMER').AsInteger;
  sqlContact.Open;

end;

end.
