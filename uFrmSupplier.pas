unit uFrmSupplier;

interface

uses
  uClassImportPrice,
  ComObj,OleCtrls,
  uClassSupplier,  MensFun, uClassDBGenerics,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxStatusBarPainter, Vcl.Menus, cxContainer, Data.FMTBcd, Data.SqlExpr,
  Vcl.ExtCtrls, Vcl.StdCtrls, cxGroupBox, Vcl.Mask, Vcl.DBCtrls, cxButtons,
  dxStatusBar, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridExportLink, Vcl.ComCtrls,
  cxSplitter, cxImageComboBox, Vcl.ImgList, frxClass, frxExportPDF,
  AcroPDFLib_TLB, cxLabel, dxGDIPlusClasses;

type
  TfrmSupplier = class(TForm)
    cxPageControl: TcxPageControl;
    cxTabSheetList: TcxTabSheet;
    cxTabSheetForm: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
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
    TimerPerfil: TTimer;
    Label1: TLabel;
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButAlterar: TcxButton;
    ButExcluir: TcxButton;
    ButSair: TcxButton;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    StatusBar: TdxStatusBar;
    sqlGrid: TFDQuery;
    dsGrid: TDataSource;
    ButImprimir: TcxButton;
    SaveDialog: TSaveDialog;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    Panel200: TPanel;
    edtBusiness: TEdit;
    Panel600: TPanel;
    MemoProductService: TMemo;
    Panel1000: TPanel;
    edtWebSite: TEdit;
    Panel1010: TPanel;
    memObservacao: TMemo;
    Panel5: TPanel;
    Label3: TLabel;
    edtTradingName: TEdit;
    Label2: TLabel;
    Panel6: TPanel;
    Label4: TLabel;
    cbxIndustry: TcxComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel3: TPanel;
    cxPageControl2: TcxPageControl;
    cxGridAddress: TcxGrid;
    cxTableViewAddress: TcxGridDBTableView;
    cxTableViewAddressADDRESS1: TcxGridDBColumn;
    cxTableViewAddressZIPCODE: TcxGridDBColumn;
    cxTableViewAddressCITY: TcxGridDBColumn;
    cxTableViewAddressSTATEE: TcxGridDBColumn;
    cxGridLevelAddress: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    Panel4: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsAddress: TDataSource;
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
    sqlAddressadd_date: TSQLTimeStampField;
    sqlAddressupd_date: TSQLTimeStampField;
    sqlContact: TFDQuery;
    dsContact: TDataSource;
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
    cxGridDBTableView1NAME: TcxGridDBColumn;
    cxGridDBTableView1POSITION: TcxGridDBColumn;
    cxGridDBTableView1EMAIL: TcxGridDBColumn;
    cxGridDBTableView1PHONE1: TcxGridDBColumn;
    cxGridDBTableView1PHONE2: TcxGridDBColumn;
    sqlGridID_SUPPLIER: TIntegerField;
    sqlGridNAMEBUSINESS: TStringField;
    sqlGridTRADININGNAME: TStringField;
    sqlGridADDRESS1: TStringField;
    sqlGridCITY: TStringField;
    sqlGridSTATEE: TStringField;
    sqlGridNAME: TStringField;
    sqlGridPOSITION: TStringField;
    sqlGridPHONE1: TStringField;
    sqlGridPHONE2: TStringField;
    sqlGridEMAIL: TStringField;
    sqlGridID_USER: TIntegerField;
    sqlGridadd_date: TSQLTimeStampField;
    sqlGridupd_date: TSQLTimeStampField;
    cxGrid1DBTableView1NAMEBUSINESS: TcxGridDBColumn;
    cxGrid1DBTableView1TRADININGNAME: TcxGridDBColumn;
    cxGrid1DBTableView1ADDRESS1: TcxGridDBColumn;
    cxGrid1DBTableView1CITY: TcxGridDBColumn;
    cxGrid1DBTableView1STATEE: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1POSITION: TcxGridDBColumn;
    cxGrid1DBTableView1PHONE1: TcxGridDBColumn;
    cxGrid1DBTableView1PHONE2: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    sqlAddressCOUNTY: TStringField;
    cxTableViewAddressCOUNTY: TcxGridDBColumn;
    sqlAddressTYPEADDRESS: TStringField;
    cxTableViewAddressTYPEADDRESS: TcxGridDBColumn;
    cxSmallImages: TcxImageList;
    sqlGridTYPEADDRESS: TStringField;
    cxGrid1DBTableView1TYPEADDRESS: TcxGridDBColumn;
    frxPDFExport1: TfrxPDFExport;
    OpenDialog1: TOpenDialog;
    PanelSQLSplashScreen: TPanel;
    ImageSQLSplashScreen: TImage;
    cxLabelMensagem: TcxLabel;
    cxButton1: TcxButton;
    sqlGridINDUSTRY: TStringField;
    cxGrid1DBTableView1INDUSTRY: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButNovoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ButSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure ButCancelarClick(Sender: TObject);
    procedure edtZipCodeKeyPress(Sender: TObject; var Key: Char);
    procedure edtBusinessPhoneNumberKeyPress(Sender: TObject; var Key: Char);
    procedure ButExcluirClick(Sender: TObject);
    procedure ButAlterarClick(Sender: TObject);
    procedure ButSairClick(Sender: TObject);
    procedure ButImprimirClick(Sender: TObject);
    procedure sqlGridAfterScroll(DataSet: TDataSet);
    procedure cxPageControlChange(Sender: TObject);
    procedure sqlAddressAfterEdit(DataSet: TDataSet);
    procedure sqlAddressNewRecord(DataSet: TDataSet);
    procedure sqlContactAfterEdit(DataSet: TDataSet);
    procedure sqlContactNewRecord(DataSet: TDataSet);
    procedure sqlAddressAfterScroll(DataSet: TDataSet);
    procedure sqlContactBeforePost(DataSet: TDataSet);
    procedure sqlAddressBeforePost(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    Price : TImportPrice;
    varOption : char;  // I = Insert / U = Update
    varNewKey : Integer;
    Supplier : TSupplier;
    procedure LimpaEdits;
    function Check : Boolean;
    procedure Mensagem(pMensagem: String);
  public
    { Public declarations }
  end;

var
  frmSupplier: TfrmSupplier;

implementation

{$R *.dfm}


uses uFunctions, uDMConectDB;

procedure TfrmSupplier.ButAlterarClick(Sender: TObject);
begin
   varOption := 'U';
   if  sqlGrid.IsEmpty  then exit;
      cxGrid1DBTableView1DblClick(self);
end;

procedure TfrmSupplier.ButCancelarClick(Sender: TObject);
begin
  cxPageControl.ActivePage := cxTabSheetList;
  LimpaEdits;
end;

procedure TfrmSupplier.ButExcluirClick(Sender: TObject);
begin
 if  sqlGrid.IsEmpty  then exit;

 cxGrid1DBTableView1DblClick(self);
 varOption := 'X';
  If ( Mens_MensConf('Delete record ?') = mrOk ) Then
  Begin
     Supplier.Delete;
     sqlGrid.Close;
     sqlGrid.Open;
     cxPageControl.ActivePage := cxTabSheetList;
  End;
end;

procedure TfrmSupplier.ButImprimirClick(Sender: TObject);
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

procedure TfrmSupplier.ButNovoClick(Sender: TObject);
var
  varNextKey : TDBNextKey;
begin
  varOption := 'I';
  cxPageControl.ActivePage := cxTabSheetForm;
  LimpaEdits;
  varOption := 'I';
  edtBusiness.SetFocus;

  varNextKey               := TDBNextKey.Create('TBSUPPLIER');
  Try
    varNewKey              := varNextKey.Key;
    Panel1.caption         := 'ID: ' + IntToStr(varNewKey);
    varNextKey.UpdateKey(varNewKey, 'TBSUPPLIER'); // atualiza a nova chave no banco

    Supplier := TSupplier.Create;
    sqlAddress.Close;
    sqlAddress.Params.ParamByName('ID_SUPPLIER').AsInteger := varNewKey;
    sqlAddress.Open;

    sqlContact.Close;
    sqlContact.Params.ParamByName('ID_ADDRESS').AsInteger  :=  sqlAddress.FieldByName('ID_ADDRESS').AsInteger;
    sqlContact.Params.ParamByName('ID_SUPPLIER').AsInteger :=  varNewKey;
    sqlContact.Open;


  finally
    FreeAndNil(varNextKey);
  End;
end;

procedure TfrmSupplier.ButSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSupplier.ButSalvarClick(Sender: TObject);
begin
  if varOption = 'X' then
  begin
     Mens_MensInf('The Supplier Table not in edit or insert mode.') ;
     Exit;
  end;


  if Check = False then exit;

  if Supplier = Nil then exit;


  Try

    Try
        Supplier.id_supplier         := varNewKey;
        Supplier.id_user             := DBDados.varID_USER;
        Supplier.namebusiness        := edtBusiness.Text;
        Supplier.tradiningname       := edtTradingName.Text;
        Supplier.industry            := cbxIndustry.Text;
        Supplier.product_service     := MemoProductService.Text;
        Supplier.website             := edtWebSite.Text;
        Supplier.additioninfo        := memObservacao.Text;

        if varOption = 'I' then
          Supplier.SaveSupplier
        else if varOption = 'U' then
          Supplier.UpdateSupplier;

    except
      on E : Exception do
        Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
    end;

    varOption := 'X';
  finally
      FreeAndNil(Supplier);
  end;

  cxPageControl.ActivePage := cxTabSheetList;
  sqlGrid.Close;
  sqlGrid.Open;

end;

function TfrmSupplier.Check : Boolean;
var
  Retorno : Boolean;
begin
  Retorno := True;
  if edtBusiness.Text = '' then
  begin
     Mens_MensInf('The Business Name is missing.') ;
     edtBusiness.SetFocus ;
     Exit ;
  end;
{
  if edtContactName1.Text = '' then
  begin
     Mens_MensInf('Type the Contact Name 1 at least.') ;
     edtContactName1.SetFocus ;
     Retorno := False;
     Exit ;
  end;

  if edtContactPhoneNumber1.Text = '' then
  begin
     Mens_MensInf('Type the Contact Phone Number 1.') ;
     edtContactPhoneNumber1.SetFocus ;
     Retorno := False;
     Exit ;
  end;

  if edtContactEmail1.Text <> '' then
  begin
    if IsValidEmailRegEx(edtContactEmail1.Text) = False Then
    begin
       Mens_MensInf('Invalid Contact E-mail 1.');
       edtContactEmail1.SetFocus ;
       Retorno := False;
       Exit ;
    end;
  end;

  if edtContactEmail2.Text <> '' then
  begin
    if IsValidEmailRegEx(edtContactEmail2.Text) = False Then
    begin
       Mens_MensInf('Invalid Contact E-mail 2.');
       edtContactEmail2.SetFocus ;
       Retorno := False;
       Exit ;
    end;
  end;
      }
  Result := Retorno;

end;



procedure TfrmSupplier.Mensagem(pMensagem: String);
begin

  cxLabelMensagem.Caption := pMensagem;
  PanelSQLSplashScreen.Visible := not pMensagem.IsEmpty;
  Update;
  Application.ProcessMessages;

end;

procedure TfrmSupplier.cxButton1Click(Sender: TObject);
var
 Arq : TextFile;
 I   : Integer;
 linha: string;
 varRollPrice, varStd_roll, varCutPrice : String;
 FileName, NewFile : String;
begin

  Price := TImportPrice.Create;
  FileName := '';
  NewFile  := '';
  I := 0;
  Try
   if OpenDialog1.Execute then
   begin

    FileName := OpenDialog1.fileName;
    NewFile  := ExtractFilePath(Application.ExeName) +  ExtractFileName(FileName);
    CopyFile(pchar(FileName), pChar(NewFile), True);

    try
       Mensagem( 'Reading PDF File' );
       Try
          WinExec('Import_PricingTable.bat', 1);
          Sleep(6000);
       except
          on E : Exception do
            Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
       end;
    finally
       Mensagem( EmptyStr );
    end;

    FileName := StringReplace(NewFile, '.pdf','.txt',[rfReplaceAll, rfIgnoreCase]);

    AssignFile(arq,  FileName);
    {$I-}
    Reset(arq);
    {$I+}

    if (IOResult <> 0) then
        Mensagem('Open File Error !!!')
    else
    begin
         while (not eof(arq)) do
         begin
           readln(arq, linha);
           Inc(I);
           Mensagem( 'Reading PDF File line ' + IntTostr(I) );

           if linha = '' then
             Continue;

           if length(linha) < 163 then
              Continue;

           if Copy( Linha, 162, 2) = 'UM' then
               Continue;

             varRollPrice := '';
             varCutPrice  := '';
             varStd_roll  := '';

             Price.id_supplier  := sqlGridID_SUPPLIER.AsInteger;
             Price.style_code   := Trim(Copy( Linha, 1,7));

             Price.style_description := Trim(Copy( Linha, 8,22));
             Price.size              := Trim(Copy( Linha, 30,10));
             if ((Pos('ACT', Price.size) > 0) OR
                 (Pos('NEX', Price.size) > 0) OR
                 (Pos('MOD', Price.size) > 0) OR
                 (Pos('FLO', Price.size) > 0)) then
             begin
               Price.size       := Trim(Copy( Linha, 25,10));
               Price.back       := Trim(Copy( Linha, 35,12));
             end
             else
             begin
               Price.back       := Trim(Copy( Linha, 38,12));
             end;

             Try
                 varStd_roll    := Trim(Copy(Linha,52,8));
                 if varStd_roll <> '' then
                   Price.std_roll        := StrToFloat(varStd_roll)
                 else Price.std_roll     := 0;

                 Price.fiber    := Trim(Copy( Linha, 60, 45));
                 Price.brand    := Trim(Copy( Linha, 105, 10));

                 varRollPrice            := StringReplace(Trim(Copy( Linha, 115, 9)),'$','',[rfReplaceAll, rfIgnoreCase]);
                 if varRollPrice <> '' then
                   Price.rollprice       := StrToFloat( varRollPrice )
                 else Price.rollprice    := 0;

                 varCutPrice    := StringReplace(Trim(Copy( Linha, 124, 38)),'$','',[rfReplaceAll, rfIgnoreCase]);

                 if varCutPrice <> ''  then
                   Price.cutprice        := StrToFloat(varCutPrice )
                 else Price.cutprice     := 0;

                 Price.um       := Trim(Copy( Linha, 162, 2));

             Except

                 Price.style_description := Trim(Copy( Linha, 8,20));
                 Price.size              := Trim(Copy( Linha, 28,10));
                 if ((Pos('ACT', Price.size) > 0) OR
                     (Pos('NEX', Price.size) > 0) OR
                     (Pos('MOD', Price.size) > 0) OR
                     (Pos('FLO', Price.size) > 0)) then
                 begin
                   Price.size            := Trim(Copy( Linha, 25,10));
                   Price.back            := Trim(Copy( Linha, 35,12));
                 end
                 else
                 begin
                   Price.back            := Trim(Copy( Linha, 38,12));
                 end;

                 varStd_roll             := Trim(Copy(Linha,50,8));

                 if varStd_roll <> '' then
                   Price.std_roll        := StrToFloat(varStd_roll)
                 else Price.std_roll     := 0;

                 Price.fiber             := Trim(Copy( Linha, 58, 45));
                 Price.brand             := Trim(Copy( Linha, 103, 10));

                 varRollPrice            := StringReplace(Trim(Copy( Linha, 113, 9)),'$','',[rfReplaceAll, rfIgnoreCase]);
                 if varRollPrice <> '' then
                   Price.rollprice       := StrToFloat( varRollPrice )
                 else Price.rollprice    := 0;

                 varCutPrice             := StringReplace(Trim(Copy( Linha, 122, 38)),'$','',[rfReplaceAll, rfIgnoreCase]);

                 if varCutPrice <> ''  then
                   Price.cutprice        := StrToFloat(varCutPrice )
                 else Price.cutprice     := 0;

                 Price.um                := Trim(Copy( Linha, 162, 2));
             End;

             Price.Save;

         end;
         Mensagem('End of Process!');
     end;
    end;
  Finally
    FreeAndNil(Price);
    Mensagem( EmptyStr );
    CloseFile(arq);
    DeleteFile(NewFile);
    DeleteFile(FileName);
  End;

end;

procedure TfrmSupplier.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
    Supplier := TSupplier.Create;
    Supplier.SearchSupplier(sqlGridID_SUPPLIER.AsInteger);

    sqlAddress.Close;
    sqlAddress.Params.ParamByName('ID_SUPPLIER').AsInteger :=  sqlGridID_SUPPLIER.AsInteger;
    sqlAddress.Open;

    sqlContact.Close;
    sqlContact.Params.ParamByName('ID_ADDRESS').AsInteger  :=  sqlAddress.FieldByName('ID_ADDRESS').AsInteger;
    sqlContact.Params.ParamByName('ID_SUPPLIER').AsInteger :=  sqlGridID_SUPPLIER.AsInteger;
    sqlContact.Open;

    LimpaEdits;

    varOption := 'U';

    varNewKey                    := Supplier.id_supplier;
    Panel1.Caption               := ' ID ' + IntToStr(varNewKey);

    StatusBar1.Panels[0].Text    := 'User ' + Supplier.User.lastname + ',' + Supplier.User.firstname;
    StatusBar1.Panels[1].Text    := 'Date Created ' + Supplier.add_date;
    StatusBar1.Panels[2].Text    := 'Date Modified ' + Supplier.upd_date;

    edtBusiness.Text             := Supplier.namebusiness;
    edtTradingName.Text          := Supplier.tradiningname;
    cbxIndustry.Text             := Supplier.industry;
    MemoProductService.Text      := Supplier.product_service;
    edtWebSite.Text              := Supplier.website;
    memObservacao.Text           := Supplier.additioninfo;
    cxPageControl.ActivePage     := cxTabSheetForm;
    edtBusiness.SetFocus;
end;

procedure TfrmSupplier.cxPageControlChange(Sender: TObject);
begin
  if  varOption = 'X' then
    cxPageControl.ActivePage  := cxTabSheetList;
end;

procedure TfrmSupplier.edtBusinessPhoneNumberKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#8, '0'..'9', '-']) then
    Key := #0;
end;

procedure TfrmSupplier.edtZipCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9']) then
    Key := #0;
end;

procedure TfrmSupplier.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  sqlAddress.Close;
  sqlContact.Close;

  FrmSupplier := nil;
  Action := caFree;
end;

procedure TfrmSupplier.FormCreate(Sender: TObject);
begin
   varOption := 'X';
   cxPageControl.ActivePage := cxTabSheetList;
end;

procedure TfrmSupplier.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmSupplier.FormShow(Sender: TObject);
begin
  sqlGrid.Close;
  sqlGrid.Open;
  sqlAddress.Close;
  sqlAddress.Params.ParamByName('ID_SUPPLIER').AsInteger := sqlGridID_SUPPLIER.AsInteger;
  sqlAddress.Open;

  sqlContact.Close;
  sqlContact.Params.ParamByName('ID_ADDRESS').AsInteger  :=  sqlAddress.FieldByName('ID_ADDRESS').AsInteger;
  sqlContact.Params.ParamByName('ID_SUPPLIER').AsInteger :=  sqlGridID_SUPPLIER.AsInteger;
  sqlContact.Open;


end;

procedure TfrmSupplier.LimpaEdits;
var i : integer;
begin
   Panel1.caption         := 'ID: ';
   varOption := 'X';
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


procedure TfrmSupplier.sqlAddressAfterEdit(DataSet: TDataSet);
begin
  sqlAddressupd_date.AsDateTime := now;
  sqlAddressID_USER.AsInteger   := DBDados.varID_USER;
end;

procedure TfrmSupplier.sqlAddressAfterScroll(DataSet: TDataSet);
begin
    sqlContact.Close;
    sqlContact.Params.ParamByName('ID_ADDRESS').AsInteger  :=  sqlAddress.FieldByName('ID_ADDRESS').AsInteger;
    sqlContact.Params.ParamByName('ID_SUPPLIER').AsInteger :=  sqlGridID_SUPPLIER.AsInteger;
    sqlContact.Open;
end;

procedure TfrmSupplier.sqlAddressBeforePost(DataSet: TDataSet);
begin
  if sqlAddress.State in [dsEdit, dsInsert] then
  begin

    if sqlAddressADDRESS1.AsString = '' then
    begin
       Mens_MensInf('Address is missing.') ;
       sqlAddress.Cancel;
    end;

    if sqlAddressCITY.AsString = '' then
    begin
       Mens_MensInf('City name is missing.') ;
       sqlAddress.Cancel;
    end;

  end;
end;

procedure TfrmSupplier.sqlAddressNewRecord(DataSet: TDataSet);
var
  varNextAddressKey : TDBNextKey;
begin
  if varOption = 'X' then
  begin
     Mens_MensInf('The Supplier Table not in edit or insert mode.') ;
     Exit;
  end;

  varNextAddressKey := TDBNextKey.Create('TBADDRESS');
  Try
    sqlAddressID_ADDRESS.AsInteger  := varNextAddressKey.Key;
    sqlAddressID_USER.AsInteger     := DBDados.varID_USER;
    sqlAddressID_SUPPLIER.AsInteger := varNewKey;
    sqlAddressadd_date.AsDateTime   := Now;

    sqlContact.Close;
    sqlContact.Params.ParamByName('ID_ADDRESS').AsInteger  :=  varNextAddressKey.Key;
    sqlContact.Params.ParamByName('ID_SUPPLIER').AsInteger :=  sqlGridID_SUPPLIER.AsInteger;
    sqlContact.Open;


  Finally
     varNextAddressKey.UpdateKey(varNextAddressKey.Key, 'TBADDRESS'); // atualiza a nova chave no banco
     FreeAndNil(varNextAddressKey);
  End;

end;

procedure TfrmSupplier.sqlContactAfterEdit(DataSet: TDataSet);
begin
  if not sqlContact.IsEmpty  then
  begin
    sqlContactUPD_DATE.AsDateTime := now;
    sqlContactID_USER.AsInteger   := DBDados.varID_USER;
  end;
end;

procedure TfrmSupplier.sqlContactBeforePost(DataSet: TDataSet);
begin
  if sqlContact.State in [dsEdit, dsInsert] then
  begin


    if   sqlContactNAME.AsString = '' then
    begin
       Mens_MensInf('Contact Name is missing.') ;
       sqlContact.Cancel;
    end;

    if   sqlContactPHONE1.AsString = '' then
    begin
       Mens_MensInf('Contact Phone # 1 is missing.') ;
       sqlContact.Cancel;
    end;


    if sqlContactEMAIL.AsString <> '' then
    begin
      if IsValidEmailRegEx(sqlContactEMAIL.AsString) = False Then
      begin
         Mens_MensInf('Invalid Contact E-mail.');
         sqlContact.Cancel;
      end;
    end;
  end;
end;

procedure TfrmSupplier.sqlContactNewRecord(DataSet: TDataSet);
var
  varNextAddressKey : TDBNextKey;
begin

  if varOption = 'X' then
  begin
     Mens_MensInf('The Supplier Table not in edit or insert mode.') ;
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
      sqlContactID_CONTACT.AsInteger  := varNextAddressKey.Key;
      sqlContactID_ADDRESS.AsInteger  := sqlAddressID_ADDRESS.AsInteger;
      sqlContactID_USER.AsInteger     := DBDados.varID_USER;
      sqlContactID_SUPPLIER.AsInteger := varNewKey;
      sqlContactADD_DATE.AsDateTime   := Now;
    Finally
       varNextAddressKey.UpdateKey(varNextAddressKey.Key, 'TBCONTACT'); // atualiza a nova chave no banco
       FreeAndNil(varNextAddressKey);
    End;
  end;
end;

procedure TfrmSupplier.sqlGridAfterScroll(DataSet: TDataSet);
//var
 // User : TUser;
begin
   {
   sqlAddress.Close;
   sqlAddress.Params.ParamByName('ID_SUPPLIER').AsInteger :=  sqlGridID_SUPPLIER.AsInteger;
   sqlAddress.Open;

   sqlContact.Close;
   sqlContact.Params.ParamByName('ID_ADDRESS').AsInteger  :=  sqlAddress.FieldByName('ID_ADDRESS').AsInteger;
   sqlContact.Params.ParamByName('ID_SUPPLIER').AsInteger :=  sqlGridID_SUPPLIER.AsInteger;
   sqlContact.Open;



   User := TUser.Create;
   Try
    User.Search(sqlGridID_USER.AsInteger);
    StatusBar1.Panels[0].Text    := 'User ' + User.lastname + ',' + User.firstname;
    StatusBar1.Panels[1].Text    := 'Date Created ' + sqlGridADD_DATE.AsString;
    StatusBar1.Panels[2].Text    := 'Date Modified ' + sqlGridUPD_DATE.AsString;
   Finally
     FreeAndNil(User);
   End;
   }
end;

end.
