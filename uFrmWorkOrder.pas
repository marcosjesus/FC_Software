unit uFrmWorkOrder;

interface

uses
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ComCtrls, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxContainer, cxGroupBox, cxRadioGroup, cxDropDownEdit;

type
  TfrmWorkOrder = class(TForm)
    Panel27: TPanel;
    ButSair: TcxButton;
    StatusBar1: TStatusBar;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    ButImprimir: TcxButton;
    sqlGrid: TFDQuery;
    dsGrid: TDataSource;
    rgStatus: TcxRadioGroup;
    sqlGridID_SERVICE: TFDAutoIncField;
    sqlGridDT_SERVICE: TSQLTimeStampField;
    sqlGridNAMEBUSINESS: TStringField;
    sqlGridNAME: TStringField;
    sqlGridTYPEJOB: TStringField;
    sqlGridTOTALHOUR: TFloatField;
    sqlGridSTATUS: TStringField;
    sqlGridDT_FINISH: TSQLTimeStampField;
    sqlGridLAST_NAME: TStringField;
    sqlGridFIRST_NAME: TStringField;
    sqlGridADDRESS1: TStringField;
    sqlGridCOUNTY: TStringField;
    sqlGridID_PROCESS: TIntegerField;
    cxGrid2DBTableView1ID_SERVICE: TcxGridDBColumn;
    cxGrid2DBTableView1DT_SERVICE: TcxGridDBColumn;
    cxGrid2DBTableView1NAMEBUSINESS: TcxGridDBColumn;
    cxGrid2DBTableView1NAME: TcxGridDBColumn;
    cxGrid2DBTableView1TYPEJOB: TcxGridDBColumn;
    cxGrid2DBTableView1TOTALHOUR: TcxGridDBColumn;
    cxGrid2DBTableView1STATUS: TcxGridDBColumn;
    cxGrid2DBTableView1DT_FINISH: TcxGridDBColumn;
    cxGrid2DBTableView1LAST_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1FIRST_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1ADDRESS1: TcxGridDBColumn;
    cxGrid2DBTableView1COUNTY: TcxGridDBColumn;
    cxGrid2DBTableView1ID_PROCESS: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButSairClick(Sender: TObject);
    procedure rgStatusClick(Sender: TObject);
    procedure sqlGridBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetupTable;
  end;

var
  frmWorkOrder: TfrmWorkOrder;

implementation

{$R *.dfm}

uses uDMConectDB;

procedure TfrmWorkOrder.ButSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmWorkOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmWorkOrder := nil;
  Action := caFree;
end;

procedure TfrmWorkOrder.rgStatusClick(Sender: TObject);
begin
  SetupTable;
end;

procedure TfrmWorkOrder.SetupTable;
begin
  sqlGrid.Close;
  if rgStatus.ItemIndex = 0 then
  begin
    sqlGrid.Params.ParamByName('STATUS').AsString := 'PENDING';
    cxGrid2.Enabled := True;
  end
  else if rgStatus.ItemIndex = 1 then
  begin
    sqlGrid.Params.ParamByName('STATUS').AsString := 'DONE';
    cxGrid2.Enabled := False;
  end
  else
  begin
    sqlGrid.Params.ParamByName('STATUS').AsString := 'CANCELED';
    cxGrid2.Enabled := False;
  end;
  sqlGrid.Open;

end;

procedure TfrmWorkOrder.sqlGridBeforePost(DataSet: TDataSet);
var
 sqlDados : TFDQuery;
begin
   sqlDados := TFDQuery.Create(Nil);
   Try
     sqlDados.Connection := DBDados.Connection;
     sqlDados.Close;
     sqlDados.SQL.Clear;
     sqlDados.SQL.Add('Select STATUS from TBProcess where RTRIM(TableName) = :TABLENAME and ID_PROCESS = :ID_PROCESS');
     sqlDados.Params.ParamByName('TABLENAME').AsString  := 'TBINVOICE';
     sqlDados.Params.ParamByName('ID_PROCESS').AsInteger := sqlGridID_PROCESS.AsInteger;
     sqlDados.Open;
     if UpperCase(sqlDados.FieldByName('STATUS').AsString) = 'PENDING' then
     begin
        Mens_MensInf('The invoice is still pending status.');
        sqlGrid.Cancel;
     end;

   Finally
     FreeAndNil(sqlDados);
   End;

end;

end.
