unit ufrmGrossProfit;

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
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.Menus, dxBarBuiltInMenu, Vcl.ExtCtrls, cxPC, Vcl.StdCtrls, cxButtons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxContainer, cxTextEdit, cxCurrencyEdit;

type
  TfrmGrossProfit = class(TForm)
    Panel27: TPanel;
    ButCancelar: TcxButton;
    cxPageControl1: TcxPageControl;
    cxPageControl2: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Splitter1: TSplitter;
    cxTabSheet2: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableViewExpense: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    sqlIncome: TFDQuery;
    sqlExpense: TFDQuery;
    dsIncome: TDataSource;
    dsExpense: TDataSource;
    sqlIncomeDESCRIPTION: TStringField;
    sqlIncomeID_PROCESS: TIntegerField;
    sqlIncomeSALES: TFMTBCDField;
    sqlExpenseDESCRIPTION: TStringField;
    sqlExpenseID_PROCESS: TIntegerField;
    sqlExpenseEXPENSE: TFloatField;
    cxGridDBTableViewExpenseDESCRIPTION: TcxGridDBColumn;
    cxGridDBTableViewExpenseEXPENSE: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableViewIncome: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableViewIncomeDESCRIPTION: TcxGridDBColumn;
    cxGridDBTableViewIncomeSALES: TcxGridDBColumn;
    edtIncome: TcxCurrencyEdit;
    edtExpense: TcxCurrencyEdit;
    edtTotal: TcxCurrencyEdit;
    edtMargem: TcxCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure ButCancelarClick(Sender: TObject);
  private
    { Private declarations }
    varTotalIncome, varTotalExpense : Double;
    procedure CalculaTotalIncome;
    procedure CalculaTotalExpense;
  public
    { Public declarations }
    varTable, varTableItem : String;
    varID_Process : Integer;
    procedure Setup;
  end;

var
  frmGrossProfit: TfrmGrossProfit;

implementation

{$R *.dfm}

uses uDMConectDB;

procedure TfrmGrossProfit.ButCancelarClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmGrossProfit.Setup;
begin
  sqlIncome.Close;
  sqlIncome.SQL.Clear;
  sqlIncome.SQL.Add('	SELECT ''SALES REVENUE'' AS DESCRIPTION,  P.ID_PROCESS, (P.TOTAL - SUM(AMOUT)) AS SALES FROM TBPROCESS P ');
  sqlIncome.SQL.Add('		LEFT OUTER JOIN TBSERVICE_ITEM I ON I.TABLENAME = :TABLEITEM AND I.ID_PROCESS = :ID_PROCESS ');
  sqlIncome.SQL.Add('		 WHERE P.ID_PROCESS = :ID_PROCESS AND RTRIM(P.TableName) = :TABLE ');
  sqlIncome.SQL.Add('		 GROUP BY P.ID_PROCESS, P.TOTAL ');
  sqlIncome.SQL.Add('	 UNION ALL   ');
  sqlIncome.SQL.Add('	SELECT ''LABOR SERVICE'' AS DESCRIPTION,  P.ID_PROCESS, SUM(AMOUT) AS LABOR FROM TBPROCESS P ');
  sqlIncome.SQL.Add('	LEFT OUTER JOIN TBSERVICE_ITEM I ON I.TABLENAME = :TABLEITEM AND I.ID_PROCESS = :ID_PROCESS ');
  sqlIncome.SQL.Add('	 WHERE P.ID_PROCESS = 3 AND RTRIM(P.TableName) = :TABLE ');
  sqlIncome.SQL.Add('	 GROUP BY P.ID_PROCESS, P.TOTAL ');
  sqlIncome.Params.ParamByName('TABLE').AsString :=   varTable;
  sqlIncome.Params.ParamByName('TABLEITEM').AsString :=  varTableItem;
  sqlIncome.Params.ParamByName('ID_PROCESS').ASInteger :=  varID_Process;
  sqlIncome.Open;


  sqlExpense.Close;
  sqlExpense.SQL.Clear;
  sqlExpense.SQL.Add(' SELECT ''TAX COST OF GOODS'' AS DESCRIPTION, ID_PROCESS, -1 * TAX  AS EXPENSE FROM TBPROCESS WHERE RTRIM(TABLENAME) = :TABLE AND ID_PROCESS = :ID_PROCESS ');
  sqlExpense.SQL.Add('	 UNION ALL  ');

  sqlExpense.SQL.Add('SELECT ''MANUFACTURING OR RAW MATERIALS'', H.ID_PROCESS, SUM(I.TOTALAREA * P.COST_VALUE) * -1 AS PURCHASE_COST ');
  sqlExpense.SQL.Add('FROM TBPROCESS_ITEM I ' );
  sqlExpense.SQL.Add('INNER JOIN TBPROCESS H ON H.ID_PROCESS = I.ID_PROCESS AND  RTRIM(H.TABLENAME) + ''_ITEM'' = I.TABLENAME  ');
  sqlExpense.SQL.Add('INNER JOIN TBPRODUCT P ON P.ID_PRODUCT = I.ID_PRODUCT  ');
  sqlExpense.SQL.Add('WHERE I.TABLENAME = :TABLEITEM AND I.ID_PROCESS = :ID_PROCESS ');
  sqlExpense.SQL.Add('GROUP BY H.ID_PROCESS, I.ID_PRODUCT ');
  sqlExpense.SQL.Add(' UNION ALL  ');

  sqlExpense.SQL.Add(' SELECT ''LABOR SERVICE '' + V.NAME, C.ID_PROCESS, -1 * C.AMOUNT ');
  sqlExpense.SQL.Add(' FROM TBSERVICE_CREW C ');
  sqlExpense.SQL.Add(' INNER JOIN TBCONTRACTORS V ON V.ID_CONTRACTORS = C.ID_CONTRACTOR ');
  sqlExpense.SQL.Add(' WHERE C.ID_PROCESS = :ID_PROCESS AND C.TABLENAME = :TABLE ');

  sqlExpense.SQL.Add(' UNION ALL ');
  sqlExpense.SQL.Add('	SELECT ''COMISSION'' AS DESCRIPTION,  P.ID_PROCESS, -1* (P.SUBTOTAL/100) * (SELECT TOP 1 COMISSION FROM TBPRICELIST L ' );
  sqlExpense.SQL.Add(' WHERE L.ID_PRICELIST = I.ID_PRICELIST) AS TAX FROM TBPROCESS P ');
  sqlExpense.SQL.Add('	LEFT OUTER JOIN TBPROCESS_ITEM I ON I.TABLENAME = RTRIM(P.TABLENAME) + ''_ITEM'' AND I.ID_PROCESS = :ID_PROCESS ');
  sqlExpense.SQL.Add('	 WHERE P.ID_PROCESS = :ID_PROCESS AND RTRIM(P.TABLENAME) = :TABLE ');
  sqlExpense.SQL.Add('	 GROUP BY P.ID_PROCESS, P.SUBTOTAL, I.ID_PRICELIST ');

  sqlExpense.Params.ParamByName('TABLE').AsString :=   varTable;
  sqlExpense.Params.ParamByName('TABLEITEM').AsString :=  varTableItem;
  sqlExpense.Params.ParamByName('ID_PROCESS').ASInteger :=  varID_Process;
  sqlExpense.Open;

  if varTable = 'TBORDER' then
     Caption :=  Caption + '[ Order N� ' + IntToStr(varId_Process)  + ']'
  else if varTable = 'TBINVOICE' then
     Caption :=  Caption + '[ Invoice N� ' + IntToStr(varId_Process) + ']';


  CalculaTotalIncome;
  CalculaTotalExpense;
  edtIncome.Value  := varTotalIncome;
  edtExpense.Value := varTotalExpense;
  edtTotal.Value   := varTotalIncome + varTotalExpense;
  varTotalExpense  := varTotalExpense * -1;

 // edtMargem.Value  := ( varTotalIncome / edtTotal.Value  ) * 100 ;
  edtMargem.Value  := ( varTotalIncome - varTotalExpense  ) * 100;
  edtMargem.Value  :=  (edtMargem.Value / varTotalExpense) - 100;


end;

procedure TfrmGrossProfit.CalculaTotalExpense;
var
  AIndex      : Integer;
  Value       : Variant;

begin
  varTotalExpense := 0;

  with cxGrid4 do
  begin
       with cxGridDBTableViewExpense.DataController.Summary do
       begin
          AIndex :=  FooterSummaryItems.IndexOfItemLink(cxGridDBTableViewExpenseEXPENSE);
          Value :=  FooterSummaryValues[AIndex]
       end;
       if Value <> Null then
         varTotalExpense  := Value;
  end;
end;

procedure TfrmGrossProfit.CalculaTotalIncome;
var
  AIndex      : Integer;
  Value       : Variant;

begin
  varTotalIncome := 0;

  with cxGrid1 do
  begin
       with cxGridDBTableViewIncome.DataController.Summary do
       begin
          AIndex :=  FooterSummaryItems.IndexOfItemLink(cxGridDBTableViewIncomeSALES);
          Value :=  FooterSummaryValues[AIndex]
       end;
       if Value <> Null then
         varTotalIncome  := Value;
  end;
end;


end.
