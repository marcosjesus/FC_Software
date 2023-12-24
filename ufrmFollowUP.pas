unit ufrmFollowUP;

interface

uses
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
  cxNavigator, Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls, cxMemo, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TfrmFollowUP = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    sqlFollowup: TFDQuery;
    dsFollowup: TDataSource;
    ButCancelar: TcxButton;
    Label50: TLabel;
    Label51: TLabel;
    lblCustomer: TLabel;
    lblOrder: TLabel;
    sqlFollowupID_FOLLOWUP: TFDAutoIncField;
    sqlFollowupTABLENAME: TStringField;
    sqlFollowupID_PROCESS: TIntegerField;
    sqlFollowupCOMMENTS: TMemoField;
    sqlFollowupADD_DATE: TSQLTimeStampField;
    sqlFollowupUPD_DATE: TSQLTimeStampField;
    sqlFollowupID_USER: TIntegerField;
    cxGrid1DBTableView1ID_FOLLOWUP: TcxGridDBColumn;
    cxGrid1DBTableView1COMMENTS: TcxGridDBColumn;
    cxGrid1DBTableView1ADD_DATE: TcxGridDBColumn;
    sqlFollowupUSERNAME: TStringField;
    cxGrid1DBTableView1USERNAME: TcxGridDBColumn;
    procedure ButCancelarClick(Sender: TObject);
    procedure sqlFollowupAfterEdit(DataSet: TDataSet);
    procedure sqlFollowupBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    varID_Process : Integer;
    varTableName  : String;
  end;

var
  frmFollowUP: TfrmFollowUP;

implementation

{$R *.dfm}

uses uDMConectDB;

procedure TfrmFollowUP.ButCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFollowUP.sqlFollowupAfterEdit(DataSet: TDataSet);
begin
  sqlFollowupID_PROCESS.AsInteger := varID_Process;
  sqlFollowupTABLENAME.AsString   := varTableName;
  sqlFollowupUPD_DATE.AsDateTime  := Date;
  sqlFollowupID_USER.AsInteger    := DBDados.varID_USER;

end;

procedure TfrmFollowUP.sqlFollowupBeforePost(DataSet: TDataSet);
begin
  sqlFollowupID_PROCESS.AsInteger := varID_Process;
  sqlFollowupTABLENAME.AsString   := varTableName;
end;

end.
