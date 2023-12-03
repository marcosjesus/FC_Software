unit ufrmRequestOrder;

interface

uses
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
  cxCheckBox;

type
  TfrmRequestOrder = class(TForm)
    StatusBar1: TStatusBar;
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButAlterar: TcxButton;
    ButExcluir: TcxButton;
    ButSair: TcxButton;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    cxPage: TcxPageControl;
    cxTabSheetGrid: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
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
    cxGrid1DBTableView1REQ_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_PROCESS: TcxGridDBColumn;
    cxGrid1DBTableView1NAMEBUSINESS: TcxGridDBColumn;
    cxGrid1DBTableView1SKU: TcxGridDBColumn;
    cxGrid1DBTableView1COMPANYNAME: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1COUNTNEED: TcxGridDBColumn;
    cxGrid1DBTableView1ESTIMATEDCOST: TcxGridDBColumn;
    cxGrid1DBTableView1DATE_ORDERED: TcxGridDBColumn;
    sqlGridREQ_DATE: TStringField;
    sqlGridSOURCE: TStringField;
    cxGrid1DBTableView1SOURCE: TcxGridDBColumn;
    sqlGridPRODUCT: TStringField;
    cxGrid1DBTableView1PRODUCT: TcxGridDBColumn;
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
    cxGrid1DBTableView1SELECTED: TcxGridDBColumn;
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
    cxButton1: TcxButton;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButSairClick(Sender: TObject);
    procedure ButNovoClick(Sender: TObject);
    procedure sqlGridBeforePost(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    varNewKey : Integer;
    varnewCount : Double;
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

uses AsyncCalls, MensFun, SetParametro, uClassDBGenerics, uDMConectDB;

{ TfrmRequestOrder }

procedure TfrmRequestOrder.ButNovoClick(Sender: TObject);
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
            Mens_MensInf('You have selected diffrent Manufactory. Action not alloewd.') ;
            varOK         := False;
            varCount      := 0;
            varIDSupplier := 0;
            sqlGrid.Edit;
            sqlGridSELECTED.AsString := 'N';
            sqlGrid.Post;
         end;
         sqlAux.Close;
         sqlAux.SQL.Clear;
         sqlAux.SQL.Add('Update TBREQUESTORDER');
         sqlAux.SQL.Add('Set GROUPNUMBER = :GROUPNUMBER');
         sqlAux.SQL.Add(', SELECTED = :SELECTED');
         sqlAux.SQL.Add(', COUNTNEED = :COUNTNEED');
         sqlAux.SQL.Add(' Where ID_REQUESTORDER = :ID_REQUESTORDER');
         sqlAux.Params.ParamByName('GROUPNUMBER').AsInteger     :=  varNewKey;
         sqlAux.Params.ParamByName('SELECTED').AsString         :=  'Y';
         sqlAux.Params.ParamByName('ID_REQUESTORDER').AsInteger := sqlGridID_REQUESTORDER.AsInteger;
         sqlAux.Params.ParamByName('COUNTNEED').AsFloat         := sqlGridCOUNTNEED.AsFloat;

         sqlAux.ExecSQL;

         varIDSupplier := sqlGridID_SUPPLIER.AsInteger;
         varSupplier   := sqlGridMANUFACTORY.AsString;
         Inc(varCount);
     end;

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

procedure TfrmRequestOrder.ButSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRequestOrder.cxButton1Click(Sender: TObject);
begin
   ReportSale.Preview;
end;

procedure TfrmRequestOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmRequestOrder := nil;
  Action          := caFree;
end;

procedure TfrmRequestOrder.OpenRequestTable;
begin
    sqlGrid.Close;
    sqlGrid.Open;
end;

procedure TfrmRequestOrder.sqlGridBeforePost(DataSet: TDataSet);
begin
  if  sqlGridSOURCE.AsString = 'QUOTATION' then
  begin
     Mens_MensInf('Only Order Allowed to Select.') ;
     sqlGrid.Cancel;
  end;

end;

end.

