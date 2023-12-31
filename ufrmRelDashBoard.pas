unit ufrmRelDashBoard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport;

type
  TfrmRelDashBoard = class(TForm)
    ReportFinance: TRLReport;
    RLBand1: TRLBand;
    lblTitle: TRLLabel;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLBand3: TRLBand;
    RLBand5: TRLBand;
    sqlGrid: TFDQuery;
    sqlGridINVOICE_DATE: TDateField;
    sqlGridDATE_DUE: TDateField;
    sqlGridPAYMENT_DESCRIPTION: TStringField;
    sqlGridNAME: TStringField;
    sqlGridPAYMENT_AMOUNT: TBCDField;
    sqlGridPAYMENT_STATUS: TStringField;
    dsGrid: TDataSource;
    RLDBText1: TRLDBText;
    sqlGridID: TFDAutoIncField;
    RLDBText2: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    v: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel6: TRLLabel;
    lblSubTitle: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure ReportFinanceBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    varTitle    : String;
    varSubTitle : String;
  end;

var
  frmRelDashBoard: TfrmRelDashBoard;

implementation

{$R *.dfm}

uses uDMConectDB;

procedure TfrmRelDashBoard.FormActivate(Sender: TObject);
begin
  if ReportFinance = Nil then
    Close;
end;

procedure TfrmRelDashBoard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmRelDashBoard  := nil;
  Action          := caFree;
end;

procedure TfrmRelDashBoard.ReportFinanceBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lblTitle.Caption    := varTitle;
  lblSubTitle.Caption := varSubTitle;
end;

end.
