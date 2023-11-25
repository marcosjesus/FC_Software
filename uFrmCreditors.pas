unit uFrmCreditors;

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
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  Vcl.StdCtrls, EditBusca, Vcl.ExtCtrls, cxPC, Vcl.Menus, Vcl.ComCtrls,
  cxButtons, Vcl.Mask, rsEdit;

type
  TFrmCreditors = class(TForm)
    cxPageControl: TcxPageControl;
    cxTabSheetList: TcxTabSheet;
    cxTabSheetForm: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButAlterar: TcxButton;
    ButExcluir: TcxButton;
    ButSair: TcxButton;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    ButImprimir: TcxButton;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    EdiCodigo: TrsSuperEdit;
    cxButton1: TcxButton;
    edtSupplier: TEditBusca;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxPageControlChange(Sender: TObject);
    procedure ButNovoClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    varOption : char;  // I = Insert / U = Update
    varNewKey : Integer;
  public
    { Public declarations }
  end;

var
  FrmCreditors: TFrmCreditors;

implementation

{$R *.dfm}



procedure TFrmCreditors.ButNovoClick(Sender: TObject);
begin
   varOption := 'I';
   cxPageControl.ActivePage  := cxTabSheetForm;
   edtSupplier.Text;
   edtSupplier.bs_KeyValues.Clear;
   edtSupplier.SetFocus;

end;

procedure TFrmCreditors.cxButton1Click(Sender: TObject);
begin
  edtSupplier.Text;
  edtSupplier.bs_KeyValues.Clear;
  edtSupplier.SetFocus;
end;

procedure TFrmCreditors.cxPageControlChange(Sender: TObject);
begin
  if  varOption = 'X' then
    cxPageControl.ActivePage  := cxTabSheetList;
end;

procedure TFrmCreditors.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmCreditors := nil;
  Action := caFree;
end;

procedure TFrmCreditors.FormCreate(Sender: TObject);
begin
   varOption := 'X';
   cxPageControl.ActivePage := cxTabSheetList;

   SetParametros(edtSupplier, TipoSupplier);

end;

procedure TFrmCreditors.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

end.
