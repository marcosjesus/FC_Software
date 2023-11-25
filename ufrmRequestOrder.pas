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
  FireDAC.Comp.Client;

type
  TfrmRequestOrder = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButAlterar: TcxButton;
    ButExcluir: TcxButton;
    ButSair: TcxButton;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    ButImprimir: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    sqlGrid: TFDQuery;
    dsGrid: TDataSource;
    sqlGridID_PROCESS: TIntegerField;
    sqlGridNAMEBUSINESS: TStringField;
    sqlGridSTYLE: TStringField;
    sqlGridPRODUCT_STYLE: TStringField;
    sqlGridPRODUCT_STYLE_NAME: TStringField;
    sqlGridCOLOR: TStringField;
    sqlGridSKU: TStringField;
    sqlGridCOMPANYNAME: TStringField;
    sqlGridNAME: TStringField;
    sqlGridCOUNTNEED: TFloatField;
    sqlGridESTIMATEDCOST: TBCDField;
    sqlGridDATE_ORDERED: TSQLTimeStampField;
    cxGrid1DBTableView1REQ_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_PROCESS: TcxGridDBColumn;
    cxGrid1DBTableView1NAMEBUSINESS: TcxGridDBColumn;
    cxGrid1DBTableView1STYLE: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_STYLE: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_STYLE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1COLOR: TcxGridDBColumn;
    cxGrid1DBTableView1SKU: TcxGridDBColumn;
    cxGrid1DBTableView1COMPANYNAME: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1COUNTNEED: TcxGridDBColumn;
    cxGrid1DBTableView1ESTIMATEDCOST: TcxGridDBColumn;
    cxGrid1DBTableView1DATE_ORDERED: TcxGridDBColumn;
    sqlGridREQ_DATE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenRequestTable;
  end;

var
  frmRequestOrder: TfrmRequestOrder;

implementation

{$R *.dfm}

uses AsyncCalls, MensFun, SetParametro, uClassDBGenerics, uDMConectDB;

{ TfrmRequestOrder }

procedure TfrmRequestOrder.ButSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRequestOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmRequestOrder := nil;
  Action       := caFree;
end;

procedure TfrmRequestOrder.OpenRequestTable;
begin
    sqlGrid.Close;
    sqlGrid.Open;
end;

end.
