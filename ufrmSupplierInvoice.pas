unit ufrmSupplierInvoice;

interface

uses
  SetParametro,
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
  cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxTextEdit,
  cxDropDownEdit, cxCalendar, Vcl.StdCtrls, EditBusca, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxButtons, Vcl.ExtCtrls, cxPC, Vcl.Samples.Spin, cxCurrencyEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmSupplierInvoice = class(TForm)
    cxPage: TcxPageControl;
    cxTabSheetList: TcxTabSheet;
    cxTabSheetForm: TcxTabSheet;
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButAlterar: TcxButton;
    ButExcluir: TcxButton;
    ButImprimir: TcxButton;
    ButSair: TcxButton;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    sqlGrid: TFDQuery;
    dsGrid: TDataSource;
    Panel1: TPanel;
    edtManufactory: TEditBusca;
    Label1: TLabel;
    Label13: TLabel;
    cxDateProcess: TcxDateEdit;
    pnlTerms: TPanel;
    Label36: TLabel;
    edtDays: TEdit;
    btnTerms: TcxButton;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1DATE_DUE: TcxGridDBColumn;
    cxGrid3DBTableView1VALUE: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    edtTotal: TcxMaskEdit;
    pnlBtnLateral: TPanel;
    ButNovoItem: TcxButton;
    ButAlterarItem: TcxButton;
    ButExcluirItem: TcxButton;
    ButSalvarItem: TcxButton;
    ButCAncelarItem: TcxButton;
    Label2: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheetItem: TcxTabSheet;
    cxTabSheetItemForm: TcxTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    edtProduct: TEditBusca;
    Label5: TLabel;
    Label40: TLabel;
    edtweidth: TcxCurrencyEdit;
    edtheight: TcxCurrencyEdit;
    Label15: TLabel;
    Label41: TLabel;
    edttotalarea: TcxCurrencyEdit;
    EdtQty: TSpinEdit;
    Label16: TLabel;
    edtShipping: TcxCurrencyEdit;
    Label6: TLabel;
    procedure ButSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetupForm;
  end;

var
  frmSupplierInvoice: TfrmSupplierInvoice;

implementation

{$R *.dfm}

uses uDMConectDB;

{ TfrmSupplierInvoice }

procedure TfrmSupplierInvoice.ButSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSupplierInvoice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  FrmSupplierInvoice := nil;
  Action := caFree;
end;

procedure TfrmSupplierInvoice.SetupForm;
begin
  cxPage.ActivePage := cxTabSheetList;
  SetParametros(edtManufactory, TipoSupplier);
  SetParametros(edtProduct, TipoProduct);


end;

end.
