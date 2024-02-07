unit ufrmSampleCheckout;

interface

uses
  Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage,
  uSetupFolder,
  uClassDBGenerics,
  uClassSalesProcess,
  uClassContractor,
  uFunctions,
  uClassCustomer,
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
  FireDAC.Comp.Client, RLReport, Vcl.ExtDlgs, RLHTMLFilter, RLFilters,
  RLPDFFilter;

type
  TfrmSampleCheckout = class(TForm)
    Page: TcxPageControl;
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButExcluir: TcxButton;
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
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    lblShippingDate: TLabel;
    Label5: TLabel;
    sqlSample: TFDQuery;
    dsSample: TDataSource;
    sqlSampleCheckoutItem: TFDQuery;
    dsSampleCheckoutItem: TDataSource;
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
    Label11: TLabel;
    edtAbout: TEdit;
    sqlSampleABOUTUS: TStringField;
    btnFollowup: TcxButton;
    sqlAux: TFDQuery;
    sqlSampleCheckoutItemSAMPLECHECKOUT_ITEM: TIntegerField;
    sqlSampleCheckoutItemID_SAMPLECHECKOUT: TIntegerField;
    sqlSampleCheckoutItemID_SAMPLE: TIntegerField;
    sqlSampleCheckoutItemPRODUCT_NAME: TStringField;
    cxGrid1DBTableViewItemPRODUCT_NAME: TcxGridDBColumn;
    cxStyleRepository: TcxStyleRepository;
    cxStylePending: TcxStyle;
    cxStyleNormal: TcxStyle;
    TabReport: TcxTabSheet;
    pnlRelatorio: TPanel;
    ReportSampleBoard: TRLReport;
    RLBand3: TRLBand;
    RLImageLogo: TRLImage;
    RLBand1: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel19: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText35: TRLDBText;
    RLDBText44: TRLDBText;
    RLDBText46: TRLDBText;
    RLDBText16: TRLDBText;
    RLBand2: TRLBand;
    lblfooterAddress: TRLLabel;
    sqlSamplePRODUCT_NAME: TStringField;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLBand5: TRLBand;
    RLLabel1: TRLLabel;
    sqlSampleADDRESS1: TStringField;
    sqlSampleZIPCODE: TStringField;
    sqlSampleSTATEE: TStringField;
    sqlSampleCITY: TStringField;
    sqlSampleCOUNTY: TStringField;
    RLDBText3: TRLDBText;
    sqlSampleUSER_LASTNAME: TStringField;
    sqlSampleUSER_FIRSTNAME: TStringField;
    sqlSampleUSER_EMAIL: TStringField;
    sqlSampleUSER_PHONE: TStringField;
    RLLabel2: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel3: TRLLabel;
    LblProcess: TRLLabel;
    RLDBText1: TRLDBText;
    TBCOMPANY: TFDTable;
    TBCOMPANYID_COMPANY: TIntegerField;
    TBCOMPANYIMAGEM: TBlobField;
    TBCOMPANYESTIMATEDAYS: TIntegerField;
    TBCOMPANYTAX: TBCDField;
    TBCOMPANYCOMPANYNAME: TStringField;
    sqlSampleID_COMPANY: TIntegerField;
    OpenPictureDialog: TOpenPictureDialog;
    TBCOMPANYADD_DATE: TSQLTimeStampField;
    TBCOMPANYUPD_DATE: TSQLTimeStampField;
    TBCOMPANYTAX_ID: TStringField;
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
    TBCOMPANYCOUNTY: TStringField;
    ButImprimir: TcxButton;
    sqlSampleFOLDER: TStringField;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButNovoClick(Sender: TObject);
    procedure spbCleanCustomerClick(Sender: TObject);
    procedure edtClienteClick(Sender: TObject);
    procedure ButSalvarClick(Sender: TObject);
    procedure ButCancelarClick(Sender: TObject);
    procedure ButSairClick(Sender: TObject);
    procedure btnFollowupClick(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure edtSampleClick(Sender: TObject);
    procedure edtSupplierClick(Sender: TObject);
    procedure cxGrid2DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ReportSampleBoardBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure ButImprimirClick(Sender: TObject);
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
    procedure ShowLogo(varType: String);
  public
    { Public declarations }
    procedure SetupTable;

  end;

var
  frmSampleCheckout: TfrmSampleCheckout;

implementation

{$R *.dfm}

uses SetParametro, MensFun, uDMConectDB, AsyncCalls, ufrmFollowUP, uDMReport;


Const

  SAMPLE_HEADER = 'TBSAMPLECHECKOUT';
  SAMPLE_ITEM   = 'TBSAMPLECHECKOUT_ITEM';

procedure TfrmSampleCheckout.LimpaEdits;
var i : integer;
begin
   ButProcessOff('TTT');
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

procedure TfrmSampleCheckout.ReportSampleBoardBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin


   if TBCOMPANY.Locate('ID_COMPANY',sqlSampleID_COMPANY.AsInteger, []) Then
      ShowLogo('SALE');
end;


procedure TfrmSampleCheckout.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   lblfooterAddress.Caption := TBCOMPANYCOMPANYNAME.AsString + '   -   Address: ' +
     TBCOMPANYADDRESS1.AsString + ' ' +
     TBCOMPANYCOUNTY.AsString + ' ' +
     TBCOMPANYCITY.AsString + ' ' +
     TBCOMPANYST.AsString + ' ' +
     TBCOMPANYZIPCODE.AsString + ' - Phone: ' +
     TBCOMPANYPHONENUMBER.AsString;
end;

procedure TfrmSampleCheckout.ShowLogo(varType : String);
var
  Jpg         : TJPEGImage;
  foto        : TMemoryStream;
  S           : TMemoryStream;
  Graphic     : TGraphic;
  GraphicType : String;
begin
    foto:=TMemoryStream.Create;
    Jpg:= TJPEGImage.Create;

    S := TMemoryStream.Create;
    try
     if   TBCOMPANY.FieldByName('IMAGEM').AsVariant = Null then
     begin
        OpenPictureDialog.FileName := ExtractFilePath(Application.ExeName) + 'noimage.jpg';
        if varType = 'SALE' then
        begin
           RLImageLogo.Picture.LoadFromFile(OpenPictureDialog.FileName);
           RLImageLogo.Picture.Graphic.SaveToStream(S);
        end;
     end
     else
        TBlobField(TBCOMPANY.FieldByName('IMAGEM')).SaveToStream(S);

     S.Position := 0;

     GraphicType  := 'jpg';

    if GraphicType = 'jpg' then
      Graphic := TJPEGImage.Create
    else if GraphicType = 'png' then
      Graphic := TPNGImage.Create
//    else if GraphicType = 'gif' then
  //    Graphic := TGifImage.Create
    else if GraphicType = 'bmp' then
      Graphic := TBitmap.Create
    else
      raise Exception.Create('Cannot load unsupported image type from DB');

     try
      Graphic.LoadFromStream(S);
      if varType = 'SALE' then
         RLImageLogo.Picture.Assign(Graphic);
    finally
      Graphic.Free;
    end;

      //DBGridUsers.Canvas.Draw(Rect.left, Rect.Top, bmp);
    finally
      Jpg.Free;
      foto.Free;
    end;

end;


procedure TfrmSampleCheckout.ButCancelarClick(Sender: TObject);
begin
  LimpaEdits;
end;

procedure TfrmSampleCheckout.ButImprimirClick(Sender: TObject);
begin
   if sqlSample.IsEmpty then  Exit;



   SetLength(DMReport.SendEmail, 1);
   DMReport.SendEmail[0].ID_Process    := sqlSampleID_SAMPLECHECKOUT.AsInteger;
   DMReport.SendEmail[0].CustomerEmail := sqlSampleEMAIL.AsString;
   DMReport.SendEmail[0].Pasta         := sqlSampleFOLDER.AsString;
   DMReport.SendEmail[0].ID_Customer   := sqlSampleID_CUSTOMER.AsInteger;
   DMReport.SendEmail[0].TBHeader      := SAMPLE_HEADER;

   sqlSample.Close;
   sqlSample.MacroByName( 'WHERE1' ).AsRaw := ' AND S.ID_SAMPLECHECKOUT = ' + IntToStr(DMReport.SendEmail[0].ID_Process) ;
   sqlSample.Open;

   DBDados.TPEMAIL := SAMPLEBOARD_EMAIL;

   ReportSampleBoard.Preview;

   AtualizaSampleGrid;


end;

procedure TfrmSampleCheckout.ButNovoClick(Sender: TObject);
var
  varNextKey : TDBNextKey;
begin
  pnlTop.Enabled := True;
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
    SAMPLE.id_process := varNewKey;
    SAMPLE.tablename  := SAMPLE_HEADER;
    AtualizaSampleGrid;
  finally
    FreeAndNil(varNextKey);
  End;
  ButProcessOff('FFF');


end;

procedure TfrmSampleCheckout.ButProcessOff(S: String);
begin
  //ButAlterar.Enabled   := Copy(S,1,1) = 'T' = True;
  ButExcluir.Enabled   := Copy(S,2,1) = 'T' = True;
  ButImprimir.Enabled  := Copy(S,3,1) = 'T' = True;
end;


procedure TfrmSampleCheckout.ButSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSampleCheckout.ButSalvarClick(Sender: TObject);
begin
  SaveHeader;
  AtualizaSampleGrid;
  varOption := 'X';
  ButProcessOff('TTT');
end;

procedure TfrmSampleCheckout.btnFollowupClick(Sender: TObject);
begin
   Try
     Application.CreateForm(TfrmFollowUP, frmFollowUP);
     frmFollowUP.sqlFollowup.Close;
     frmFollowUP.sqlFollowup.Params.ParamByName('ID_PROCESS').AsInteger := SAMPLE.id_process;
     frmFollowUP.sqlFollowup.Params.ParamByName('TABLENAME').AsString   := SAMPLE_HEADER;
     frmFollowUP.sqlFollowup.Open;
     frmFollowUP.varID_Process       := SAMPLE.id_process;
     frmFollowUP.varTableName        := SAMPLE_HEADER;
     frmFollowUP.lblCustomer.Caption := edtCustomerName.Text;
     frmFollowUP.lblOrder.Caption    := IntToStr(SAMPLE.id_process);
     frmFollowUP.ShowModal;
   Finally
     FreeAndNil(frmFollowUP);
   End;
end;

procedure TfrmSampleCheckout.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
  if  not sqlSample.IsEmpty then
  begin
     varOption := 'U';
     SAMPLE.id_process := sqlSampleID_SAMPLECHECKOUT.AsInteger;
     SAMPLE.tablename  := SAMPLE_HEADER;
     DatePickup.Date   := sqlSampleDATE_CHECKOUT.AsDateTime;
     DateReturn.Date   := sqlSampleDATE_RETURN.AsDateTime;

     edtCliente.SetValue('C.ID_CUSTOMER = ' + IntToStr(sqlSample.FieldByName('ID_CUSTOMER').AsInteger));
     edtClienteClick(Self);
     edtAbout.Text := sqlSampleABOUTUS.AsString;

     sqlSampleCheckoutItem.Close;
     sqlSampleCheckoutItem.Params.ParamByName('ID_SAMPLECHECKOUT').AsInteger := sqlSampleID_SAMPLECHECKOUT.AsInteger;
     sqlSampleCheckoutItem.Open;

     pnlTop.Enabled := True;
  end;
end;

procedure TfrmSampleCheckout.cxGrid2DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  var
    varDate : TDateTime;
begin
   if AItem = nil then exit;

   varDate := ARecord.Values[4];

   if varDate > Date Then
     AStyle := cxStyleNormal
   else AStyle := cxStylePending;
end;

procedure TfrmSampleCheckout.SaveHeader;
var
 I, varNewCustomer, varNewAddress : Integer;
 Address : TAddress;
 Customer : TCustomer;
 varNextKey : TDBNextKey;
begin
   SAMPLE.id_customer := 0;
   if ((edtCliente.Text <> '') and (edtCliente.bs_KeyValues.Count > 0 ))then
   begin
         SAMPLE.id_customer := edtCliente.bs_KeyValue;
   end
   else if ((edtCliente.Text = '') and (edtCliente.bs_KeyValues.Count = 0 ))then
   begin
         if edtCustomerName.Text = '' then
         begin
            Mens_MensInf('The Customer Name field is required.');
            edtCustomerName.SetFocus;
            Exit;
         end;

         if edtCounty.Text = '' then
         begin
            Mens_MensInf('The County field is required.');
            edtCounty.SetFocus;
            Exit;
         end;


         if edtZipCode.Text = '' then
         begin
            Mens_MensInf('The ZipCode field is required.');
            edtZipCode.SetFocus;
            Exit;
         end;

         if edtCity.Text = '' then
         begin
            Mens_MensInf('The City field is required.');
            edtCity.SetFocus;
            Exit;
         end;


         if edtST.Text = '' then
         begin
            Mens_MensInf('The State field is required.');
            edtST.SetFocus;
            Exit;
         end;


         if edtEmail.Text = '' then
         begin
            Mens_MensInf('The Email field is required.');
            edtEmail.SetFocus;
            Exit;
         end;

          if edtEmail.Text <> '' then
          begin
            if IsValidEmailRegEx(edtEmail.Text) = False Then
            begin
               Mens_MensErro('Invalid Customerīs E-mail.');
               edtEmail.SetFocus ;
               Exit;
            end;
         end;

         if edtPhone.Text = '(   )   -    ' then
         begin
             Mens_MensInf('Phone # field is required.') ;
             edtPhone.SetFocus ;
             Exit;
         end;

         varNextKey  := TDBNextKey.Create('TBCUSTOMER');
         Try
            varNewCustomer              := varNextKey.Key;
            varNextKey.UpdateKey(varNewCustomer, 'TBCUSTOMER'); // atualiza a nova chave no banco
         Finally
            FreeAndNil(varNextKey);
         End;

         Customer := TCustomer.Create;
         Try
               Customer.Id_customer      := varNewCustomer;
               Customer.Id_User          := DBDados.varID_USER;
               Customer.LastName         := edtCustomerName.Text;
               Customer.Phone1           := edtPhone.Text;
               Customer.Email            := edtEmail.Text;
               Customer.Company.id_company := varID_Company;
               Customer.typeperson       := 'N'; // perpective
               Customer.folder.pasta     := Folder_Documents + '\NP_' + ZeroLeft(IntToStr(varNewCustomer),7);
               // Saving Customer
               Customer.Save;
         Finally
            FreeAndNil(Customer);
         End;

         varNextKey := TDBNextKey.Create('TBADDRESS');
         Try
              varNewAddress := varNextKey.Key;
         Finally
             varNextKey.UpdateKey(varNextKey.Key, 'TBADDRESS'); // atualiza a nova chave no banco
             FreeAndNil(varNextKey);
         End;

         Address := TAddress.Create;
         try
             Address.Id_Address :=  varNewAddress;
             Address.Id_Customer := varNewCustomer;
             Address.ID_User     := DBDados.varID_USER;
             Address.TypeAddress  := 'O';
             Address.Address  := edtAddress.Text;
             Address.zipcode  := edtZipCode.Text;
             Address.st       := edtST.Text;
             Address.city     := edtCity.Text;
             Address.County   := edtCounty.Text;
             Address.Save;

         finally
           FreeAndNil(Address);
         end;

         SAMPLE.id_customer :=  varNewCustomer;
   end;

   if SAMPLE.id_customer <> 0 then
     GenerateFolder('NP', IntToStr(SAMPLE.id_customer));

   SAMPLE.comments           := edtAbout.Text;
   SAMPLE.dt_process         := DatePickup.Date;
   SAMPLE.dt_process_valid   := DateReturn.Date;
   SAMPLE.id_user            := DBDados.varID_USER;

   if varOption = 'I' then
       SAMPLE.SaveSampleBoard
   else if varOption = 'U' then
       SAMPLE.UpdateSampleBoard;
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

procedure TfrmSampleCheckout.edtSampleClick(Sender: TObject);
begin
 If Mens_MensConf('Add Sample Board To Customer ? ') = mrOk then
 begin
    sqlAux.Close;
    sqlAux.SQL.Clear;
    sqlAux.SQL.Add('Insert into TBSAMPLECHECKOUT_ITEM(ID_SAMPLECHECKOUT, ID_SAMPLE, ADD_DATE)');
    sqlAux.SQL.Add(' Values (:ID_SAMPLECHECKOUT, :ID_SAMPLE, :ADD_DATE) ');
    sqlAux.Params.ParamByName('ID_SAMPLECHECKOUT').AsInteger := SAMPLE.id_process;
    sqlAux.Params.ParamByName('ID_SAMPLE').AsInteger         := edtSample.bs_KeyValue;
    sqlAux.Params.ParamByName('ADD_DATE').AsString           := FormatDateTime('mm/dd/yyyy hh:mm:ss', date);
    Try
       sqlAux.ExecSQL;

    except
        on E: EDatabaseError do
          Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

    end;

    sqlSampleCheckoutItem.Close;
    sqlSampleCheckoutItem.Params.ParamByName('ID_SAMPLECHECKOUT').AsInteger :=  SAMPLE.id_process;
    sqlSampleCheckoutItem.Open;
 end;

end;

procedure TfrmSampleCheckout.edtSupplierClick(Sender: TObject);
begin
  if ((edtSupplier.Text <> '') and (edtSupplier.bs_KeyValues.Count <> 0)) then
    edtSample.bs_Filter := 'S.ID_SUPPLIER = ''' + edtSupplier.bs_KeyValue + '''';
end;

procedure TfrmSampleCheckout.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(SAMPLE);
  frmSampleCheckout := nil;
  Action := caFree;
end;

procedure TfrmSampleCheckout.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmSampleCheckout.AtualizaSampleGrid;
begin
  sqlSample.Close;
  sqlSample.MacroByName( 'WHERE1' ).AsRaw := '';
  sqlSample.Open;

  sqlSampleCheckoutItem.Close;
  sqlSampleCheckoutItem.Params.ParamByName('ID_SAMPLECHECKOUT').AsInteger :=  SAMPLE.id_process;
  sqlSampleCheckoutItem.Open;

end;

procedure TfrmSampleCheckout.SetupTable;
begin
  SALESREP := TVendor.Create;
  Try
    SALESREP.Search(DBDados.varID_USER, True);
    varID_Company := SALESREP.id_company;
  Finally
    FreeAndNil(SALESREP);
  End;

  SAMPLE := TSalesProcess.Create(Self);
  SetParametros(edtCliente, TipoCustomerCompany);
  SetParametros(edtSupplier, TipoSupplier);
  SetParametros(edtSample, TipoSample);
  TBCOMPANY.Close;
  TBCOMPANY.Open;
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

end.
