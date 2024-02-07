unit ufrmRequestOrder;

interface

uses
  uFunctions,
  uSetupFolder,
  RLPreview,
  RLPreviewForm,
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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, Vcl.StdCtrls, cxButtons,
  Vcl.ComCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RLReport, cxImageComboBox, Vcl.ImgList, dxmdaset,
  cxCheckBox, RLFilters, RLPDFFilter;

type
  TfrmRequestOrder = class(TForm)
    StatusBar1: TStatusBar;
    Panel27: TPanel;
    ButSair: TcxButton;
    cxPage: TcxPageControl;
    cxTabSheetGrid: TcxTabSheet;
    sqlGrid: TFDQuery;
    dsGrid: TDataSource;
    sqlGridID_PROCESS: TIntegerField;
    sqlGridSTYLE: TStringField;
    sqlGridSKU: TStringField;
    sqlGridCOMPANYNAME: TStringField;
    sqlGridNAME: TStringField;
    sqlGridCOUNTNEED: TFloatField;
    sqlGridESTIMATEDCOST: TBCDField;
    sqlGridDATE_ORDERED: TSQLTimeStampField;
    sqlGridREQ_DATE: TStringField;
    sqlGridSOURCE: TStringField;
    sqlGridPRODUCT: TStringField;
    sqlGridMANUFACTORY: TStringField;
    cxTabSheetForm: TcxTabSheet;
    pnlRelatorio: TPanel;
    ReportSale: TRLReport;
    RLBand3: TRLBand;
    LblProcess: TRLLabel;
    RLDraw1: TRLDraw;
    RLDBText1: TRLDBText;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel19: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBText36: TRLDBText;
    RLBand5: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLBand6: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLBand1: TRLBand;
    RLLabel25: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    sqlGridGROUPNUMBER: TIntegerField;
    sqlGridSELECTED: TStringField;
    cxSmallImages: TcxImageList;
    sqlGridID_REQUESTORDER: TIntegerField;
    sqlEmail: TFDQuery;
    dsEmail: TDataSource;
    sqlEmailTypeAddress: TStringField;
    sqlEmailADDRESS1: TStringField;
    sqlEmailZIPCODE: TStringField;
    sqlEmailCITY: TStringField;
    sqlEmailCOUNTY: TStringField;
    sqlEmailSTATEE: TStringField;
    sqlEmailNAME: TStringField;
    sqlEmailPOSITION: TStringField;
    sqlEmailEMAIL: TStringField;
    sqlEmailPHONE1: TStringField;
    sqlEmailPHONE2: TStringField;
    sqlEmailSELECT: TStringField;
    sqlGridID_SUPPLIER: TIntegerField;
    dxMemDataEmail: TdxMemData;
    dxMemDataEmailADDRESS1: TStringField;
    dxMemDataEmailZIPODE: TStringField;
    dxMemDataEmailCITY: TStringField;
    dxMemDataEmailSELECT: TStringField;
    dxMemDataEmailCOUNTY: TStringField;
    dxMemDataEmailSTATE: TStringField;
    dxMemDataEmailNAME: TStringField;
    dxMemDataEmailPOSITION: TStringField;
    dxMemDataEmailEMAIL: TStringField;
    dxMemDataEmailPHONE1: TStringField;
    dxMemDataEmailPHONE2: TStringField;
    dxMemDataEmailTYPEOFADDRESS: TStringField;
    btnPrint: TcxButton;
    sqlGridADDRESS1: TStringField;
    sqlGridZIPCODE: TStringField;
    sqlGridCITY: TStringField;
    sqlGridCOUNTY: TStringField;
    sqlGridSTATEE: TStringField;
    sqlGridNAME_1: TStringField;
    sqlGridPOSITION: TStringField;
    sqlGridEMAIL: TStringField;
    sqlGridPHONE1: TStringField;
    sqlGridPHONE2: TStringField;
    sqlGridCOMPANY_ADDRESS: TStringField;
    sqlGridCOMPANY_ST: TStringField;
    sqlGridCOMPANY_CITY: TStringField;
    sqlGridCOMPANY_ZIPCODE: TStringField;
    sqlGridCOMPANY_PHONENUMBER: TStringField;
    sqlGridCOMPANY_COUNTY: TStringField;
    sqlGrid2: TFDQuery;
    dsGrid2: TDataSource;
    sqlAux: TFDQuery;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1SELECT: TcxGridDBColumn;
    cxGrid2DBTableView1NAME: TcxGridDBColumn;
    cxGrid2DBTableView1POSITION: TcxGridDBColumn;
    cxGrid2DBTableView1CITY: TcxGridDBColumn;
    cxGrid2DBTableView1STATEE: TcxGridDBColumn;
    cxGrid2DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid2DBTableView1PHONE1: TcxGridDBColumn;
    cxGrid2DBTableView1PHONE2: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1ID_PROCESS: TcxGridDBColumn;
    cxGridDBTableView1MANUFACTORY: TcxGridDBColumn;
    cxGridDBTableView1COUNTNEED: TcxGridDBColumn;
    cxGridDBTableView1ESTIMATEDCOST: TcxGridDBColumn;
    cxGridDBTableView1DATE_ORDERED: TcxGridDBColumn;
    cxGridDBTableView1PRODUCT: TcxGridDBColumn;
    sqlGridID_ORIGEN: TIntegerField;
    cxGridDBTableView1ID_ORIGEN: TcxGridDBColumn;
    cxGridDBTableView1SELECTED: TcxGridDBColumn;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    Splitter1: TSplitter;
    cxGridDBTableView1STYLE: TcxGridDBColumn;
    cxGridDBTableView1GROUPNUMBER: TcxGridDBColumn;
    dxMemDataEmailGROUP: TIntegerField;
    sqlGridFOLDER: TStringField;
    RLPDFFilter1: TRLPDFFilter;
    sqlGridVENDOREMAIL: TStringField;
    dxMemDataEmailID_CONTACT: TIntegerField;
    sqlEmailID_CONTACT: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButSairClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure sqlGridAfterPost(DataSet: TDataSet);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1DataControllerSummaryFooterSummaryItemsSummary(
      ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
      var OutArguments: TcxSummaryEventOutArguments);
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure dxMemDataEmailAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    varNewKey : Integer;
    varnewCount : Double;
    procedure GetSalesRep;
  public
    { Public declarations }
    procedure OpenRequestTable;
  end;

var
  frmRequestOrder: TfrmRequestOrder;

Const
   TBHeader  = 'TBREQUESTORDER';

implementation

{$R *.dfm}

uses AsyncCalls, MensFun, SetParametro, uClassDBGenerics, uDMConectDB,
  uDMReport;

{ TfrmRequestOrder }

procedure TfrmRequestOrder.ButSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRequestOrder.btnPrintClick(Sender: TObject);
var
 I : Integer;
begin

   DBDados.TPEMAIL := REQUESTORDER_EMAIL;
   SetLength(DMReport.SendEmail, dxMemDataEmail.RecordCount);
   I := 0;
   if sqlGridDATE_ORDERED.AsString = '' then
   begin
     dxMemDataEmail.First;
     while not dxMemDataEmail.eof do
     begin
         if dxMemDataEmailSELECT.AsString = 'Y' then
         begin
           DMReport.SendEmail[i].ID_Process    := dxMemDataEmailGROUP.AsInteger;
           DMReport.SendEmail[i].CustomerEmail := dxMemDataEmailEMAIL.AsString;
           Inc(i);
         end;
         dxMemDataEmail.Next;
     end;
   end
   else
   begin
     sqlGrid2.Close;
     sqlGrid2.Params.ParamByName('GROUPNUMBER').AsInteger := sqlGridGROUPNUMBER.AsInteger;
     sqlGrid2.Open;

     DMReport.SendEmail[i].ID_Process    := sqlGridGROUPNUMBER.AsInteger;
     DMReport.SendEmail[i].CustomerEmail := sqlGridVENDOREMAIL.AsString;
   end;

   GenerateFolderSupplier('MANUFACTURER', sqlGridID_SUPPLIER.AsString );

   DMReport.SendEmail[i].Pasta           := sqlGridFOLDER.AsString;
   ReportSale.Preview;

   sqlGrid.Close;
   sqlGrid.Open;

end;

procedure TfrmRequestOrder.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if ACellViewInfo.Item = cxGridDBTableView1SELECTED then
    cxGridDBTableView1.DataController.Summary.CalculateFooterSummary;
end;

procedure TfrmRequestOrder.cxGridDBTableView1DataControllerSummaryFooterSummaryItemsSummary(
  ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
  var OutArguments: TcxSummaryEventOutArguments);
var
  si: TcxGridDBTableSummaryItem;
  AValue: Variant;
begin
  AValue := cxGridDBTableView1.DataController.Values[Arguments.RecordIndex, cxGridDBTableView1SELECTED.Index];
  si := Arguments.SummaryItem as TcxGridDBTableSummaryItem;
  if si.Column = cxGridDBTableView1COUNTNEED then
    OutArguments.Done := AValue = 'N';   //not OutArguments.Value;
end;

procedure TfrmRequestOrder.dxMemDataEmailAfterPost(DataSet: TDataSet);
var
 sqlDados : TFDQuery;
begin

  sqlDados := TFDQuery.Create(Nil);
  Try
    sqlDados.Connection := DBDados.Connection;


    sqlDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Add('Update TBCONTACT ');
    sqlDados.SQL.Add('SET SELECTED = ''Y''');
    sqlDados.SQL.Add(' WHERE ID_CONTACT = :ID_CONTACT');
    sqlDados.Params.ParamByName('ID_CONTACT').AsInteger := dxMemDataEmailID_CONTACT.AsInteger;
    Try
         sqlDados.ExecSQL;
             except
          on E: EDatabaseError do
            Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

    end;

  Finally
    FreeAndNil(sqlDados);
  End;

end;

procedure TfrmRequestOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmRequestOrder := nil;
  Action          := caFree;
end;

procedure TfrmRequestOrder.GetSalesRep;
var
 varSupplier   : String;
 varOK         : Boolean;
 varCount      : Integer;
 varIDSupplier : Integer;
 varNextKey    : TDBNextKey;
begin
   varCount      := 0;
   varOK         := True;
   varSupplier   := '';
   varIDSupplier := 0;

  varNextKey                := TDBNextKey.Create(TBHeader);
  Try
    varNewKey               := varNextKey.Key;
    varNextKey.UpdateKey(varNewKey, TBHeader); // atualiza a nova chave no banco
  finally
    FreeAndNil(varNextKey);
  End;

   sqlGrid.First;
   while not sqlGrid.Eof do
   begin

     if sqlGridSELECTED.AsString = 'Y' then
     begin
         if ((varSupplier <> '') and (varSupplier <> sqlGridMANUFACTORY.AsString)) then
         begin
            Mens_MensInf('You have selected different manufactorer. Action is not allowed.') ;
            varOK         := False;
            varCount      := 0;
            varIDSupplier := 0;
            Exit;
           { sqlGrid.Edit;
            sqlGridSELECTED.AsString := 'N';
            sqlGrid.Post;
            }
         end;
         sqlAux.Close;
         sqlAux.SQL.Clear;
         sqlAux.SQL.Add('Update TBREQUESTORDER');
         sqlAux.SQL.Add('Set GROUPNUMBER = :GROUPNUMBER');
  //       sqlAux.SQL.Add(', SELECTED = :SELECTED');
         sqlAux.SQL.Add(', COUNTNEED = :COUNTNEED');
         sqlAux.SQL.Add(' Where ID_REQUESTORDER = :ID_REQUESTORDER');
         sqlAux.Params.ParamByName('GROUPNUMBER').AsInteger     :=  varNewKey;
//         sqlAux.Params.ParamByName('SELECTED').AsString         :=  'Y';
         sqlAux.Params.ParamByName('ID_REQUESTORDER').AsInteger := sqlGridID_REQUESTORDER.AsInteger;
         sqlAux.Params.ParamByName('COUNTNEED').AsFloat         := sqlGridCOUNTNEED.AsFloat;
         Try
             sqlAux.ExecSQL;
                 except
              on E: EDatabaseError do
                Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

         end;
         varIDSupplier := sqlGridID_SUPPLIER.AsInteger;
         varSupplier   := sqlGridMANUFACTORY.AsString;
         Inc(varCount);
     end;
     if varOK = False then
       Exit;
     sqlGrid.Next;
   end;

   if varCount > 0 then
   begin
       if varOK Then
       begin
          sqlEmail.Close;
          sqlEmail.Params.ParamByName('ID_SUPPLIER').AsInteger := varIDSupplier;
          sqlEmail.Open;
          sqlEmail.First;
          dxMemDataEmail.Close;
          dxMemDataEmail.Open;
          While not sqlEmail.Eof do
          begin
              dxMemDataEmail.Insert;
              dxMemDataEmailSELECT.AsString        := 'N';
              dxMemDataEmailID_CONTACT.AsInteger   := sqlEmailID_CONTACT.AsInteger;
              dxMemDataEmailTYPEOFADDRESS.AsString := sqlEmailTypeAddress.AsString;
              dxMemDataEmailADDRESS1.AsString      := sqlEmailADDRESS1.AsString;
              dxMemDataEmailZIPODE.AsString        := sqlEmailZIPCODE.AsString;
              dxMemDataEmailCITY.AsString          := sqlEmailCITY.AsString;
              dxMemDataEmailCOUNTY.AsString        := sqlEmailCOUNTY.AsString;
              dxMemDataEmailSTATE.AsString         := sqlEmailSTATEE.AsString;
              dxMemDataEmailNAME.AsString          := sqlEmailNAME.AsString;
              dxMemDataEmailPOSITION.AsString      := sqlEmailPOSITION.AsString;
              dxMemDataEmailEMAIL.AsString         := sqlEmailEMAIL.AsString;
              dxMemDataEmailPHONE1.AsString        := sqlEmailPHONE1.AsString;
              dxMemDataEmailPHONE2.AsString        := sqlEmailPHONE2.AsString;
              dxMemDataEmailGROUP.AsInteger        := varNewKey;
              dxMemDataEmail.Post;
              sqlEmail.Next;
          end;
          dxMemDataEmail.Refresh;

          sqlGrid2.Close;
          sqlGrid2.Params.ParamByName('GROUPNUMBER').AsInteger := varNewKey;
          sqlGrid2.Open;


         // cxPage.ActivePage := cxTabSheetForm;
       end;
   end;
end;

procedure TfrmRequestOrder.OpenRequestTable;
begin
    sqlGrid.Close;
    sqlGrid.Open;
    cxPage.ActivePage := cxTabSheetGrid;
end;

procedure TfrmRequestOrder.RLPreviewSetup1Send(Sender: TObject);

begin
{
 dxMemDataEmail.First;
 varLocal := ExtractFilePath(Application.ExeName);

 varArquivo := varLocal +  varPastaBaseSupplier + '\' + Folder_RequestOrder + '\RQ_' + dxMemDataEmailGROUP.AsString + '.PDF';
 if FileExists(varArquivo) Then
     DeleteFile(varArquivo);

 Prev := TRLPreviewForm(Sender).Preview;
 Filt := TRLCustomSaveFilter(SelectedFilter);
 Filt := SaveFilterByFileName(varArquivo);
 Filt.FileName := varArquivo;
 Filt.FilterPages(Prev.Pages, 1, Prev.Pages.PageCount,'',PrintOddAndEvenPages);

 varGlobalFromEmail := DBDados.varUsuario;
 varGlobalFromName  := DBDados.varUsuarioEmail;
 varGlobalArquivo   := varArquivo;

 if EnviarEmail(varGlobalEmailDestino, 'This is your File') Then
 begin
     while not dxMemDataEmail.Eof do
     begin
        ShowMessage(dxMemDataEmailEMAIL.AsString);

        sqlAux.Close;
        sqlAux.SQL.Clear;
        sqlAux.SQL.Add('Update TBREQUESTORDER  ');
        sqlAux.SQL.Add(' set DATE_ORDERED = :DATE_ORDERED ');
        sqlAux.SQL.Add(' where GROUPNUMBER = :GROUPNUMBER');
        sqlAux.Params.ParamByName('DATE_ORDERED').AsString  := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
        sqlAux.Params.ParamByName('GROUPNUMBER').AsInteger :=  dxMemDataEmailGROUP.AsInteger;
        Try
           sqlAux.ExecSQL;
               except
            on E: EDatabaseError do
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

        end;

        dxMemDataEmail.Next;
     end;
 end;
 }
end;

procedure TfrmRequestOrder.sqlGridAfterPost(DataSet: TDataSet);
begin

   GetSalesRep;
end;

end.

