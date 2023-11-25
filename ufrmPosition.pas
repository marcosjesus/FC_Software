unit ufrmPosition;

interface

uses
  uClassDBGenerics,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPosition = class(TForm)
    cxGridPosition: TcxGrid;
    cxTableViewPosition: TcxGridDBTableView;
    cxGridLevelPosition: TcxGridLevel;
    sqlGrid: TFDQuery;
    dsGrid: TDataSource;
    sqlGridID_POSITION: TIntegerField;
    sqlGridNAME: TStringField;
    sqlGridADD_DATE: TDateField;
    sqlGridUPD_DATE: TDateField;
    sqlGridID_USER: TIntegerField;
    cxTableViewPositionNAME: TcxGridDBColumn;
    sqlGridPRICINGTABLEVIEW: TStringField;
    cxTableViewPositionPRICINGTABLEVIEW: TcxGridDBColumn;
    procedure sqlGridNewRecord(DataSet: TDataSet);
    procedure sqlGridAfterEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPosition: TfrmPosition;

implementation

{$R *.dfm}

uses uDMConectDB;

procedure TfrmPosition.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  sqlGrid.Close;

  FrmPosition := nil;
  Action := caFree;
end;

procedure TfrmPosition.FormShow(Sender: TObject);
begin
  sqlGrid.Close;
  sqlGrid.Open;
end;

procedure TfrmPosition.sqlGridAfterEdit(DataSet: TDataSet);
begin
  sqlGridUPD_DATE.AsDateTime := now;
  sqlGridID_USER.AsInteger      := DBDados.varID_USER;
end;

procedure TfrmPosition.sqlGridNewRecord(DataSet: TDataSet);
var
  varNexTKey : TDBNextKey;
begin
  varNexTKey := TDBNextKey.Create('TBPOSITION');
  Try
    sqlGridID_POSITION.AsInteger  := varNexTKey.Key;
    sqlGridID_USER.AsInteger      := DBDados.varID_USER;
    sqlGridADD_DATE.AsDateTime    := Now;
  Finally
     varNexTKey.UpdateKey(varNexTKey.Key, 'TBPOSITION'); // atualiza a nova chave no banco
     FreeAndNil(varNexTKey);
  End;
end;


end.
