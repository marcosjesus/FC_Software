unit uFrmCompany;

interface

uses
  jpeg, pngimage,   bde.dbtables,
  uClassDBGenerics,
  uClassCompany,
  MensFun,
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
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxPC, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, cxButtons,cxGridExportLink,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtDlgs, cxCurrencyEdit;

type
  TfrmCompany = class(TForm)
    cxPageControl: TcxPageControl;
    cxTabSheetList: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheetForm: TcxTabSheet;
    PanFundo: TPanel;
    PanTitulo: TPanel;
    ImaBarraSup: TImage;
    LabCadTit: TLabel;
    EdiDatabaseName: TEdit;
    Panel1: TPanel;
    CBXTipo1Int: TComboBox;
    CBXTipo2Int: TComboBox;
    PgCPrincipal: TcxPageControl;
    TbSFicha: TcxTabSheet;
    Panel200: TPanel;
    edtCompanyName: TEdit;
    edtTradingName: TEdit;
    Panel300: TPanel;
    edtState: TEdit;
    cbxCountry: TcxComboBox;
    Panel500: TPanel;
    edtZipCode: TEdit;
    Panel2: TPanel;
    edtTaxID: TEdit;
    Panel400: TPanel;
    edtAddress: TEdit;
    Label1: TLabel;
    Panel700: TPanel;
    Label3: TLabel;
    edtCompanyOwner: TEdit;
    Panel800: TPanel;
    Label2: TLabel;
    edtCompanyEmail: TEdit;
    StatusBar1: TStatusBar;
    sqlGrid: TFDQuery;
    dsCompany: TDataSource;
    sqlGridID_COMPANY: TIntegerField;
    sqlGridADD_DATE: TSQLTimeStampField;
    sqlGridUPD_DATE: TSQLTimeStampField;
    sqlGridTAX_ID: TStringField;
    sqlGridCOMPANYNAME: TStringField;
    sqlGridTRADINGNAME: TStringField;
    sqlGridCOMPANYOWNER: TStringField;
    sqlGridEMAIL: TStringField;
    sqlGridADDRESS1: TStringField;
    sqlGridCOUNTRY: TStringField;
    sqlGridST: TStringField;
    sqlGridCITY: TStringField;
    sqlGridZIPCODE: TStringField;
    sqlGridID_USER: TIntegerField;
    cxGrid1DBTableView1COMPANYNAME: TcxGridDBColumn;
    cxGrid1DBTableView1TRADINGNAME: TcxGridDBColumn;
    cxGrid1DBTableView1COMPANYOWNER: TcxGridDBColumn;
    cxGrid1DBTableView1PHONENUMBER: TcxGridDBColumn;
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButAlterar: TcxButton;
    ButExcluir: TcxButton;
    ButSair: TcxButton;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    ButImprimir: TcxButton;
    edtCity: TEdit;
    SaveDialog: TSaveDialog;
    edtCompanyPhone: TMaskEdit;
    sqlGridPHONENUMBER: TStringField;
    Panel3: TPanel;
    Label4: TLabel;
    edtEstimates: TcxMaskEdit;
    Label5: TLabel;
    EdtTax: TEdit;
    Image1: TImage;
    sqlImage: TFDQuery;
    OpenPictureDialog: TOpenPictureDialog;
    SavePictureDialog: TSavePictureDialog;
    btnSaveImage: TcxButton;
    edtCodigo: TcxCurrencyEdit;
    sqlImageID_COMPANY: TIntegerField;
    sqlImageIMAGEM: TBlobField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButNovoClick(Sender: TObject);
    procedure ButCancelarClick(Sender: TObject);
    procedure ButSalvarClick(Sender: TObject);
    procedure ButAlterarClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ButSairClick(Sender: TObject);
    procedure ButImprimirClick(Sender: TObject);
    procedure ButExcluirClick(Sender: TObject);
    procedure cxPageControlChange(Sender: TObject);
    procedure EdtTaxKeyPress(Sender: TObject; var Key: Char);
    procedure edtEstimatesKeyPress(Sender: TObject; var Key: Char);
    procedure btnSaveImageClick(Sender: TObject);
  private
    { Private declarations }
    varOption : char;  // I = Insert / U = Update
    varNewKey : Integer;
    Company : TCompany;
    procedure LimpaEdits;
    function Check : Boolean;
    procedure SaveImage;
    procedure SaveNoImagem;
    procedure ShowImagem;

  public
    { Public declarations }
  end;

var
  frmCompany: TfrmCompany;

implementation

{$R *.dfm}

uses uDMConectDB;


procedure TfrmCompany.ShowImagem;
var
  Jpg : TJPEGImage;
  foto : TMemoryStream;
  S : TMemoryStream;
  Graphic: TGraphic;
  GraphicType : String;
begin
    foto:=TMemoryStream.Create;
    Jpg:= TJPEGImage.Create;

    S := TMemoryStream.Create;
    try
     TBlobField(sqlimage.FieldByName('IMAGEM')).SaveToStream(S);
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
      Image1.Picture.Assign(Graphic);
    finally
      Graphic.Free;
    end;

      //DBGridUsers.Canvas.Draw(Rect.left, Rect.Top, bmp);
    finally
      Jpg.Free;
      foto.Free;
    end;

end;

procedure TfrmCompany.SaveNoImagem;
begin
   if Image1.Picture.Graphic = Nil Then
   begin
     OpenPictureDialog.FileName := ExtractFilePath(Application.ExeName) + 'noimage.jpg';
     SaveImage;
   end;
end;


procedure TfrmCompany.btnSaveImageClick(Sender: TObject);
begin
  if not OpenPictureDialog.Execute then
    Exit;

  SaveImage;

end;



procedure  TfrmCompany.SaveImage;
var
  S : TMemoryStream;
  ikode : integer;
begin

  Image1.Picture.LoadFromFile(OpenPictureDialog.FileName);

  S := TMemoryStream.Create;
  try
    Image1.Picture.Graphic.SaveToStream(S);
    S.Position := 0;

    sqlImage.Close;
    sqlImage.SQL.Clear;
    sqlImage.SQL.Add('SELECT * FROM TBCOMPANY WHERE ID_COMPANY  = :ID_COMPANY');
    sqlImage.Params.ParamByName('ID_COMPANY').AsInteger := StrToInt(edtCodigo.Text);
    sqlImage.Open;

    sqlImage.edit;
    try
      TBlobField(sqlImage.FieldByName('IMAGEM')).LoadFromStream(S);
      sqlImage.Post;
    except
      sqlImage.Cancel;
      raise;
    end;


  finally
    S.Free;
  end;
end;

procedure TfrmCompany.ButAlterarClick(Sender: TObject);
begin
    varOption := 'U';
    if  sqlGrid.IsEmpty then exit;
    cxGrid1DBTableView1DblClick(self);
end;

procedure TfrmCompany.ButCancelarClick(Sender: TObject);
begin
  LimpaEdits;
  cxPageControl.ActivePage := cxTabSheetList;
end;

procedure TfrmCompany.ButExcluirClick(Sender: TObject);
begin
 if  sqlGrid.IsEmpty  then exit;

 cxGrid1DBTableView1DblClick(self);
 varOption := 'X';
  If ( Mens_MensConf('Delete record ?') = mrOk ) Then
  Begin
     Company.Delete;
     sqlGrid.Close;
     sqlGrid.Open;
     cxPageControl.ActivePage := cxTabSheetList;
  End;
end;

procedure TfrmCompany.ButImprimirClick(Sender: TObject);
begin
 if sqlGrid.IsEmpty Then Exit;

  if cxPageControl.ActivePage = cxTabSheetList  then
  begin
        if sqlGrid.IsEmpty then
            raise Exception.Create('There is no dadta do be printed');

      //  SaveDialog.InitialDir := GetCurrentDir;
        //Mensagem('Wait, Saving spreadsheet...');
        if SaveDialog.Execute then
        begin
           Screen.Cursor := crHourGlass;
           ExportGridToExcel(SaveDialog.FileName, cxGrid1, True, True);
           //Mensagem( pChar( 'Planilha exportada em  ' + ExtractFilePath(SaveDialog.FileName) ) );

        end;
        Screen.Cursor := crDefault;
        //Mensagem( EmptyStr );
  end;
end;

procedure TfrmCompany.ButNovoClick(Sender: TObject);
var
  varNextKey : TDBNextKey;
begin
  LimpaEdits;
  varOption := 'I';
  cxPageControl.ActivePage := cxTabSheetForm;
  varNextKey               := TDBNextKey.Create('TBCOMPANY');
  Try
    varNewKey              := varNextKey.Key;
    edtCodigo.TextHint     := IntToStr(varNewKey);
    varNextKey.UpdateKey(varNewKey, 'TBCOMPANY'); // atualiza a nova chave no banco

    Company := TCompany.Create;
  finally
    FreeAndNil(varNextKey);
  End;
  btnSaveImage.Visible := False;
  edtTaxID.SetFocus;

end;

procedure TfrmCompany.ButSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCompany.ButSalvarClick(Sender: TObject);
begin
  if varOption = 'X' then
  begin
     Mens_MensInf('The Company Table not in edit or insert mode.') ;
     Exit;
  end;


  if Check = False then exit;

  if Company = Nil then exit;


  Try

    Company.id_company          := varNewKey;
    Company.tax_id              := edtTaxID.Text;
    Company.companyname         := edtCompanyName.Text;
    Company.tradiningname       := edtTradingName.Text;
    Company.country             := cbxCountry.Text;
    Company.st                  := edtState.Text;
    Company.address1            := edtAddress.Text;
    Company.city                := edtCity.Text;
    Company.companyphonenumber1 := edtCompanyPhone.Text;
    Company.zipcode             := edtZipCode.Text;
    Company.companyowner        := edtCompanyOwner.Text;
    Company.companyemail1       := edtCompanyEmail.Text;
    Company.id_user             := DBDados.varID_USER;
    Company.estimateDays        := StrToInt(edtEstimates.Text);
    Company.Tax                 := StrToFloat(EdtTax.Text);

    if varOption = 'I' then
    begin
      Company.add_date            := DateToStr(Now);
      Company.Save;
    end
    else
    if varOption = 'U' then
    begin
      Company.upd_date            := DateToStr(Now);
      Company.Update;
    end;
    varOption := 'X';


  finally
      FreeAndNil(Company);
  end;

  LimpaEdits;

  cxPageControl.ActivePage := cxTabSheetList;
  sqlGrid.Close;
  sqlGrid.Open;

end;

function TfrmCompany.Check: Boolean;
var
 Retorno : Boolean;
begin
  Retorno := True;

  if edtCompanyName.Text = '' then
  begin
     Mens_MensInf('Company Name is missing.') ;
     edtCompanyName.SetFocus ;
     Retorno := False;
     Exit ;
  end;


  if edtCompanyEmail.Text <> '' then
  begin
    if IsValidEmailRegEx(edtCompanyEmail.Text) = False Then
    begin
       Mens_MensInf('Invalid Costumer E-mail.');
       edtCompanyEmail.SetFocus ;
       Retorno := False;
       Exit ;
    end;
  end;

  result := Retorno;

end;

procedure TfrmCompany.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
    Company := TCompany.Create;
    Company.Search(sqlGridID_COMPANY.AsInteger);
    varOption := 'U';

    varNewKey                    := Company.id_company;
    edtCodigo.Text               := IntToStr(varNewKey);
    StatusBar1.Panels[0].Text    := 'User ' + IntToStr(Company.id_user);
    StatusBar1.Panels[1].Text    := 'Date Created ' + Company.add_date;
    StatusBar1.Panels[2].Text    := 'Date Modified ' + Company.upd_date;

    edtTaxID.Text                := Company.tax_id;
    edtCompanyName.Text          := Company.companyname;
    edtTradingName.Text          := Company.tradiningname;
    cbxCountry.Text              := Company.country;
    edtState.Text                := Company.st;
    edtAddress.Text              := Company.address1;
    edtCity.Text                 := Company.city;
    edtCompanyPhone.Text         := Company.companyphonenumber1;
    edtZipCode.Text              := Company.zipcode;
    edtCompanyOwner.Text         := Company.companyowner;
    edtCompanyEmail.Text         := Company.companyemail1;
    edtZipCode.Text              := Company.zipcode;
    cbxCountry.Text              := Company.country;
    edtEstimates.Text            := IntToStr(Company.estimateDays);
    EdtTax.Text                  := FloatToStr(Company.Tax);
    btnSaveImage.Visible         := True;
    sqlImage.Close;
    sqlImage.Params.ParamByName('ID_COMPANY').AsInteger := Company.id_company;
    sqlImage.Open;
    if sqlImage.FieldByName('IMAGEM').AsVariant = Null then
       SaveNoImagem
    else ShowImagem;

    cxPageControl.ActivePage     := cxTabSheetForm;
    edtCompanyName.SetFocus;
end;

procedure TfrmCompany.cxPageControlChange(Sender: TObject);
begin
  if  varOption = 'X' then
    cxPageControl.ActivePage  := cxTabSheetList;
end;

procedure TfrmCompany.edtEstimatesKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in [#8, '0'..'9', FFormatoBR.DecimalSeparator]) then begin
    ShowMessage('Invalid key: ' + Key);
    Key := #0;
  end
  else if ((Key = FFormatoBR.DecimalSeparator) or (Key = '-')) and
      (Pos(Key, edtEstimates.Text) > 0) then begin
    ShowMessage('Invalid Key: twice ' + Key);
    Key := #0;
  end
  else if (Key = '-') and (edtEstimates.SelStart <> 0) then begin
    ShowMessage('Only allowed at beginning of number: ' + Key);
    Key := #0;
  end;
end;

procedure TfrmCompany.EdtTaxKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in [#8, '0'..'9', FFormatoBR.DecimalSeparator]) then begin
    ShowMessage('Invalid key: ' + Key);
    Key := #0;
  end
  else if ((Key = FFormatoBR.DecimalSeparator) or (Key = '-')) and
      (Pos(Key, EdtTax.Text) > 0) then begin
    ShowMessage('Invalid Key: twice ' + Key);
    Key := #0;
  end
  else if (Key = '-') and (EdtTax.SelStart <> 0) then begin
    ShowMessage('Only allowed at beginning of number: ' + Key);
    Key := #0;
  end;
end;

procedure TfrmCompany.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmCompany := nil;
  Action := caFree;
end;

procedure TfrmCompany.FormCreate(Sender: TObject);
begin
   varOption := 'X';
   cxPageControl.ActivePage := cxTabSheetList;
end;

procedure TfrmCompany.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCompany.FormShow(Sender: TObject);
begin
  sqlGrid.Close;
  sqlGrid.Open;
end;

procedure TfrmCompany.LimpaEdits;
var i : integer;
begin
   Panel1.caption         := 'ID: ';
   varOption := 'X';
   Image1.Picture.Graphic := Nil;
   if cxPageControl.ActivePageIndex = 1 then   // TABSHEET = 2
   begin
     for i := 0 to ComponentCount -1 do
     begin

       if (Components[i] is TcxMaskEdit) then
         TcxMaskEdit(Components[i]).Clear;

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



end.
