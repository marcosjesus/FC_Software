unit ufrmDashBoard;

interface

uses
  cxGridDBDataDefinitions,  cxCurrencyEdit,   uDMReport, MensFun,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.StdCtrls, cxPC,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.Menus,
  cxButtons, cxStyles, cxCustomData, cxDBData, cxGridLevel, cxGridChartView,
  cxGridDBChartView, cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar, cxSpinEdit, System.DateUtils, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Vcl.CategoryButtons, Vcl.Mask, Vcl.DBCtrls, cxGroupBox, cxRadioGroup,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmDashBoard = class(TForm)
    Panel1: TPanel;
    cxComboBoxOption: TcxComboBox;
    Panel8: TPanel;
    cxPageControlTop: TcxPageControl;
    cxTabSheetTopBoth: TcxTabSheet;
    cxTabSheetTopUnique: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    lblVenceFuturo: TLabel;
    btnVencidos: TSpeedButton;
    btnVenceHoje: TSpeedButton;
    btnAPagar: TSpeedButton;
    btnPGVenceHoje: TSpeedButton;
    btnuqvencidos: TSpeedButton;
    btnuqvencehoje: TSpeedButton;
    btnuqavencer: TSpeedButton;
    btnuqrecebidos: TSpeedButton;
    btnuqtotalperiodo: TSpeedButton;
    cxPageControlBody: TcxPageControl;
    cxTabSheetChart: TcxTabSheet;
    cxTabSheetDetail: TcxTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cxGridTMAQ_ApontamentoGrafico01: TcxGrid;
    cxTableViewTMAQ_ApontamentoGrafico01: TcxGridDBChartView;
    cxTableViewTMAQ_ApontamentoGrafico01DataGroup1: TcxGridDBChartDataGroup;
    cxTableViewTMAQ_ApontamentoGrafico01DataGroup2: TcxGridDBChartDataGroup;
    cxTableViewTMAQ_ApontamentoGrafico01Series1: TcxGridDBChartSeries;
    cxGridLevelTMAQ_ApontamentoGrafico01: TcxGridLevel;
    sqlSalesChart: TFDQuery;
    dsSalesChart: TDataSource;
    sqlSalesChartMonth: TStringField;
    sqlSalesChartSALES: TIntegerField;
    lblpgVenceFuturo: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblTipo: TLabel;
    Label9: TLabel;
    sqlGrid: TFDQuery;
    dsGrid: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBChartView1: TcxGridDBChartView;
    cxGridDBChartDataGroup1: TcxGridDBChartDataGroup;
    cxGridDBChartDataGroup2: TcxGridDBChartDataGroup;
    cxGridDBChartSeries1: TcxGridDBChartSeries;
    cxGridLevel1: TcxGridLevel;
    sqlIncExpChart: TFDQuery;
    dsIncExpChart: TDataSource;
    sqlIncExpChartACCOUNT: TStringField;
    sqlIncExpChartWEEKNR: TIntegerField;
    sqlIncExpChartAMOUNT: TFMTBCDField;
    Splitter1: TSplitter;
    Panel6: TPanel;
    Splitter2: TSplitter;
    cxStyleRepository: TcxStyleRepository;
    cxStyleDebito: TcxStyle;
    cxStyleCredito: TcxStyle;
    pnlFilter: TPanel;
    btnPrint: TSpeedButton;
    edtFiltro: TcxTextEdit;
    cbxFiltro: TcxComboBox;
    btnFiltro: TSpeedButton;
    btnCleanFiltro: TSpeedButton;
    rgStatus: TcxRadioGroup;
    Panel3: TPanel;
    Panel7: TPanel;
    Label10: TLabel;
    dsBank: TDataSource;
    cxLookupComboBoxBank: TcxLookupComboBox;
    sqlBank: TFDQuery;
    sqlBankID_BANK: TFDAutoIncField;
    sqlBankID_COMPANY: TIntegerField;
    sqlBankACCOUNT: TStringField;
    cxGrid5: TcxGrid;
    cxGridDBTableViewCrew: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    sqlStatement: TFDQuery;
    dsStatement: TDataSource;
    sqlStatementID_BANKSTATEMENT: TFDAutoIncField;
    sqlStatementDESCRIPTION: TStringField;
    sqlStatementDT_DEPOSIT: TDateField;
    sqlStatementAMOUNT: TBCDField;
    cxGridDBTableViewCrewDESCRIPTION: TcxGridDBColumn;
    cxGridDBTableViewCrewDT_DEPOSIT: TcxGridDBColumn;
    cxGridDBTableViewCrewAMOUNT: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStylePending: TcxStyle;
    cxStyleAprovado: TcxStyle;
    cxStyleStatusPaid: TcxStyle;
    cxStyleStatusPending: TcxStyle;
    DtStart: TcxDateEdit;
    DtEnd: TcxDateEdit;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButton3: TSpeedButton;
    sqlTempo: TFDQuery;
    sqlTempoID_TIME: TFDAutoIncField;
    sqlTempoMES: TIntegerField;
    sqlTempoANO: TIntegerField;
    sqlTempoEXTENSION: TStringField;
    dbMonthYear: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    lblFrom: TLabel;
    lblTo: TLabel;
    cxStartFilterUser: TcxDateEdit;
    cxEndFilterUser: TcxDateEdit;
    btnFilterUser: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure cxComboBoxOptionClick(Sender: TObject);
    procedure btnuqvencidosClick(Sender: TObject);
    procedure btnuqvencehojeClick(Sender: TObject);
    procedure btnuqavencerClick(Sender: TObject);
    procedure btnuqrecebidosClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dbMonthYearEnter(Sender: TObject);
    procedure btnuqtotalperiodoClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure btnCleanFiltroClick(Sender: TObject);
    procedure cxGridDBTableViewCrewStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnFilterUserClick(Sender: TObject);
    procedure btnVencidosClick(Sender: TObject);
    procedure btnAPagarClick(Sender: TObject);
    procedure btnVenceHojeClick(Sender: TObject);
    procedure btnPGVenceHojeClick(Sender: TObject);
  private
    varUserFilter : Boolean;
    varUltimoBotao : Integer;
    varFiltro : String;
    varDontDoIt : Boolean;
    varGlobalOption : Integer;
    varBody : WideString;
    ABand  : TcxGridBand;
    varSubTitle : String;
    procedure doReceivables;
    procedure doPayable;
    procedure doBoth;
    procedure OpenGrid(varOption : Integer);
    procedure AddColumns(varOption : Integer);
    procedure Colorir(Sender: TcxCustomGridTableView;
                      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
                             var ADone: Boolean);
    procedure Filter(Formulario : TForm);
    procedure LimpaFiltro(Formulario: TForm);
    procedure StatementFilter;
    procedure ShowMonths(varMesStart, varMesEnd : TDateTime);
  protected

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDashBoard: TfrmDashBoard;

implementation

{$R *.dfm}

uses uDMConectDB, ufrmRelDashBoard;

procedure TfrmDashBoard.AddColumns(varOption: Integer);
var
  AColumn: TcxGridDBBandedColumn;
  I, Y, X, NumCompany : Integer;
  sumItem: TcxDataSummaryItem;
begin

  cxGrid1DBBandedTableView1.BeginUpdate();
  cxGrid1DBBandedTableView1.DataController.CreateAllItems;
  cxGrid1DBBandedTableView1.OptionsView.FixedBandSeparatorWidth := 1;

   cxGrid1DBBandedTableView1.ClearItems;
   cxGrid1DBBandedTableView1.Bands.Clear;

  Try
    ABand := cxGrid1DBBandedTableView1.Bands.Add;
    ABand.Index := 0;
   // ABand.HeaderAlignmentHorz := taCenter;
    if varOption = 0 then
     ABand.Caption := 'RECEIVABLE'
    else   ABand.Caption := 'PAYABLE';
    ABand.FixedKind :=  fkLeft;

  // P.ID_PAYABLE, P.INVOICE_DATE, P.DATE_DUE, P.PAYMENT_DESCRIPTION, S.NAMEBUSINESS AS NAME, P.PAYMENT_AMOUNT, P.PAYMENT_STATUS
{
    ABand := cxGrid1DBBandedTableView1.Bands.Add;
    ABand.Index := 1;
    ABand.HeaderAlignmentHorz := taCenter;
    ABand.Caption := 'PRINCING TABLE U$';
 }

    AColumn         := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.Width   := 60;
    AColumn.Caption := 'ID';
    AColumn.DataBinding.FieldName := sqlGrid.Fields[0].FieldName;
    AColumn.Position.BandIndex := 0;


    AColumn         := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.Width   := 100;
    AColumn.Caption := 'INVOICE_DATE';
    AColumn.DataBinding.FieldName := sqlGrid.Fields[1].FieldName;
    AColumn.Position.BandIndex := 0;

    AColumn         := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.Width   := 100;
    AColumn.Caption := 'DATE_DUE';
    AColumn.DataBinding.FieldName := sqlGrid.Fields[2].FieldName;
    AColumn.Position.BandIndex := 0;


    AColumn         := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.Width   := 250;
    AColumn.Caption := 'PAYMENT_DESCRIPTION';
    AColumn.DataBinding.FieldName := sqlGrid.Fields[3].FieldName;
    AColumn.Position.BandIndex := 0;

    AColumn         := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.Width   := 250;
    AColumn.Caption := 'NAME';
    AColumn.DataBinding.FieldName := sqlGrid.Fields[4].FieldName;
    AColumn.Position.BandIndex := 0;
    {
    AColumn         := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.Width   := 100;
    AColumn.Caption := 'PAYMENT_AMOUNT';
    AColumn.DataBinding.FieldName := sqlGrid.Fields[5].FieldName;
    AColumn.Position.BandIndex := 0;
     }



    //for I := 10 to (10+ NumCompany)    do
    for I := 5 to 5    do
    begin


          AColumn := cxGrid1DBBandedTableView1.CreateColumn;
          AColumn.DataBinding.FieldName := sqlGrid.Fields[I].FieldName;
          AColumn.Caption := sqlGrid.Fields[i].FullName;
          AColumn.Width := 150;
          AColumn.Position.BandIndex := 0;
          AColumn.PropertiesClass := TcxCurrencyEditProperties;
          TcxCurrencyEditProperties(AColumn.Properties).DisplayFormat := 'U$,0.00;(U$,0.00)';

          cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryItems.Add(AColumn, spFooter, skSum, '##,###,###.##');

    end;

    AColumn         := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.Width   := 100;
    AColumn.Caption := 'PAYMENT_STATUS';
    AColumn.DataBinding.FieldName := sqlGrid.Fields[6].FieldName;
    AColumn.OnCustomDrawCell:=Colorir;
    AColumn.Position.BandIndex := 0;

            {

    for I := 20 to 33  do
    begin

          AColumn := cxGrid1DBBandedTableView1.CreateColumn;
          AColumn.DataBinding.FieldName := FDQueryForecast.Fields[I].FieldName;
          if I >= 21 then
            AColumn.Styles.Content := cxStyleFamilia;
          if I <= 32 then
            AColumn.Caption := FormatDateTime('mmm',varMesesArrayF[i-20]) + '-' + IntToStr(Yearof(varMesesArrayF[i-20]))
          else   AColumn.Caption := 'Total';

          AColumn.PropertiesClass := TcxCurrencyEditProperties;
          TcxCurrencyEditProperties(AColumn.Properties).DisplayFormat := 'R$,0.00;(R$,0.00)';

          AColumn.Width := 80;
          AColumn.Position.BandIndex := 2;

          cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryItems.Add(AColumn, spFooter, skSum,  '##.###.###,##');
    end;
             }
             {
    AColumn := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.DataBinding.FieldName := FDQueryForecast.Fields[34].FieldName;
    AColumn.Caption := 'DATAPROC';
    AColumn.Width := 80;
    AColumn.Visible := False;
    AColumn.Position.BandIndex := 1;
              }
    cxGrid1DBBandedTableView1.OptionsView.Footer := True;
    cxGrid1DBBandedTableView1.OptionsView.GroupFooters := gfVisibleWhenExpanded;
    cxGrid1DBBandedTableView1.OptionsView.GroupFooterMultiSummaries := True;

    cxGrid1DBBandedTableView1.DataController.DataSource := dsGrid;
  finally
    cxGrid1DBBandedTableView1.EndUpdate;
  end;

end;


procedure TfrmDashBoard.Colorir(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
 Cor : String;
begin

  Cor := UpperCase(AViewInfo.Value);

  if Cor = 'PENDING' then
  begin
    ACanvas.Brush.Color := clInfoBk;
    ACanvas.Font.Color  := clBlack;
  end
  else if Cor = 'PAID' then
  begin
    ACanvas.Brush.Color := clTeal;
    ACanvas.Font.Color  := clWhite;
  end;

end;

procedure  TfrmDashBoard.LimpaFiltro(Formulario : TForm);
begin
   with Formulario do
   begin
     sqlGrid.Filtered := False;
     sqlGrid.Filter := '';
     sqlGrid.Filtered := True;
     cbxFiltro.ItemIndex := 0;
     edtFiltro.Text := '';
     varFiltro := '';
     btnCleanFiltro.Visible := False;
     btnFiltro.Visible := True;
   end;
end;
procedure TfrmDashBoard.btnAPagarClick(Sender: TObject);
begin
   cxPageControlTop.ActivePage := cxTabSheetTopUnique;
   cxComboBoxOption.ItemIndex := 1;
   btnuqvencidosClick(Self);
{
   rgStatus.Properties.Items[1].Caption := 'Paid';
   cxPageControlTop.ActivePage := cxTabSheetTopUnique;
   cxPageControlBody.ActivePage := cxTabSheetDetail;
   lblTipo.Caption := 'Paid';
   sqlGrid.Close;
   doPayable;
 }


end;

procedure TfrmDashBoard.btnCleanFiltroClick(Sender: TObject);
begin
  LimpaFiltro(frmDashBoard);
end;

procedure TfrmDashBoard.Filter(Formulario : TForm);
var
 varStatusFiltro : String;
 varTipo : String;
begin
  varFiltro       := '';
  varStatusFiltro := '';
  varTipo := '';


  if sqlGrid.IsEmpty = True then Exit;

  if cxComboBoxOption.ItemIndex = 0 then
    varTipo := 'RECEIVED'
  else varTipo := 'PAID';

  if (edtFiltro.Text <> '')  then
  begin

   if rgStatus.ItemIndex = 0 then
      varStatusFiltro := ' AND PAYMENT_STATUS = ''PENDING'' '
   else if rgStatus.ItemIndex = 1 then
      varStatusFiltro := ' AND PAYMENT_STATUS = ''' + varTipo + '''';
   with Formulario do
   begin
     sqlGrid.Filtered := False;
     sqlGrid.Filter   := '';
     sqlGrid.Filtered := True;
    {
     if varGlobalOption = 5 Then
     begin
         if rgStatus.ItemIndex = 0 then
          varFiltro :=  'PAYMENT_STATUS = ''PENDING'' '
         else if rgStatus.ItemIndex =  1 then
          varFiltro :=  'PAYMENT_STATUS = ' + varTipo;
     end
     else
     begin
     }
         if cbxFiltro.ItemIndex = 0 then
          varFiltro :=  'PAYMENT_DESCRIPTION LIKE ' + QuotedStr(edtFiltro.Text+ '%') + Trim(varStatusFiltro)
         else if cbxFiltro.ItemIndex = 1 then
             varFiltro := 'NAME LIKE ' + QuotedStr(edtFiltro.Text + '%')  + Trim(varStatusFiltro)
         else  if cbxFiltro.ItemIndex = 2 then
             varFiltro := 'PAYMENT_AMOUNT = ' + QuotedStr(edtFiltro.Text) + Trim(varStatusFiltro);

  //   end;
     btnCleanFiltro.Visible := True;
     btnFiltro.Visible      := False;

     sqlGrid.Filtered := False;
     sqlGrid.Filter   := varFiltro;
     sqlGrid.Filtered := True;

   end;

  end;
end;

procedure TfrmDashBoard.btnFilterUserClick(Sender: TObject);
begin
  if sqlGrid.IsEmpty  then Exit;
  
  varUserFilter := True;
  OpenGrid(varUltimoBotao);
end;

procedure TfrmDashBoard.btnFiltroClick(Sender: TObject);
begin
  Filter(frmDashBoard);
end;

procedure TfrmDashBoard.btnPGVenceHojeClick(Sender: TObject);
begin
   cxPageControlTop.ActivePage := cxTabSheetTopUnique;
   cxComboBoxOption.ItemIndex := 1;
   btnuqvencehojeClick(Self);
end;

procedure TfrmDashBoard.btnPrintClick(Sender: TObject);
var
  myDate   : TDateTime;
  ano, mes, dia : word;
begin

 if sqlGrid.IsEmpty = True  then  Exit;

 varDontDoIt := False;
 DecodeDate(Date, ano, mes, dia);

 myDate := EncodeDate(sqlTempoANO.AsInteger, sqlTempoMES.AsInteger, dia);
 Try
    Application.CreateForm(TfrmRelDashBoard, frmRelDashBoard);

      with frmRelDashBoard do
      begin
           sqlGrid.Close;
           sqlGrid.SQL.Clear;
           // RECEIVABLE
           if cxComboBoxOption.ItemIndex = 0 then
           begin
             sqlGrid.SQL.Add('SELECT R.ID_RECEIVABLE as ID, R.INVOICE_DATE, R.DATE_DUE, R.PAYMENT_DESCRIPTION, ');
             sqlGrid.SQL.Add('C.LAST_NAME + '' '' + C.FIRST_NAME AS NAME, R.PAYMENT_AMOUNT, R.PAYMENT_STATUS  ');
             sqlGrid.SQL.Add('FROM TBRECEIVABLE R  ');
             sqlGrid.SQL.Add('INNER JOIN TBCUSTOMER C ON C.ID_CUSTOMER = R.ID_CUSTOMER ');
             if varGlobalOption = 1 then     // Overdue
             begin
              sqlGrid.SQL.Add('WHERE R.PAYMENT_STATUS = ''PENDING'' ');
              sqlGrid.SQL.Add('AND R.DATE_DUE >= :DT_INI AND R.DATE_DUE < :DT_FIM');
              sqlGrid.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
              sqlGrid.ParamByName( 'DT_FIM' ).AsDate := myDate;
             end
             else if varGlobalOption = 2 then // Due Date
             begin
              sqlGrid.SQL.Add('WHERE R.PAYMENT_STATUS = ''PENDING'' ');
              sqlGrid.SQL.Add('AND R.DATE_DUE = :DT_INI ');
              sqlGrid.ParamByName( 'DT_INI' ).AsDate := myDate;
             end
             else if varGlobalOption = 3 then  // To be Due
             begin
              sqlGrid.SQL.Add('WHERE R.PAYMENT_STATUS = ''PENDING'' ');
              sqlGrid.SQL.Add('AND R.DATE_DUE > :DT_INI AND R.DATE_DUE <= :DT_FIM ');
              sqlGrid.ParamByName( 'DT_INI' ).AsDate := MyDate;
              sqlGrid.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
             end
             else if varGlobalOption = 4 then // Received
             begin
              sqlGrid.SQL.Add('WHERE R.PAYMENT_STATUS = ''PAID'' ');
              sqlGrid.SQL.Add('AND R.DATE_DUE >= :DT_INI AND R.DATE_DUE <= :DT_FIM ');
              sqlGrid.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
              sqlGrid.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
             end
             else if varGlobalOption = 5 then // Total
             begin
              sqlGrid.SQL.Add('WHERE R.DATE_DUE >= :DT_INI AND R.DATE_DUE <= :DT_FIM ');
              sqlGrid.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
              sqlGrid.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
             end;

           end
           else if cxComboBoxOption.ItemIndex = 1 then
           begin
             sqlGrid.SQL.Add('SELECT P.ID_PAYABLE as ID, P.INVOICE_DATE, P.DATE_DUE, P.PAYMENT_DESCRIPTION, S.NAMEBUSINESS AS NAME, P.PAYMENT_AMOUNT, P.PAYMENT_STATUS ');
             sqlGrid.SQL.Add('FROM TBPAYABLE P ');
             sqlGrid.SQL.Add('INNER JOIN TBSUPPLIER S ON S.ID_SUPPLIER = P.ID_SUPPLIER ');
             if varGlobalOption = 1 then     // Overdue
             begin
              sqlGrid.SQL.Add('WHERE P.PAYMENT_STATUS = ''PENDING'' ');
              sqlGrid.SQL.Add('AND P.DATE_DUE >= :DT_INI and P.DATE_DUE < :DT_FIM');
              sqlGrid.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
              sqlGrid.ParamByName( 'DT_FIM' ).AsDate := myDate;

             end
             else if varGlobalOption = 2 then // Due Date
             begin
              sqlGrid.SQL.Add('WHERE P.PAYMENT_STATUS = ''PENDING'' ');
              sqlGrid.SQL.Add('AND P.DATE_DUE = :DT_INI ');
              sqlGrid.ParamByName( 'DT_INI' ).AsDate := myDate;
             end
             else if varGlobalOption = 3 then  // To be Due
             begin
              sqlGrid.SQL.Add('WHERE P.PAYMENT_STATUS = ''PENDING'' ');
              sqlGrid.SQL.Add('AND P.DATE_DUE > :DT_INI AND P.DATE_DUE <= :DT_FIM ');
              sqlGrid.ParamByName( 'DT_INI' ).AsDate := MyDate;
              sqlGrid.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
             end
             else if varGlobalOption = 4 then // Received
             begin
              sqlGrid.SQL.Add('WHERE P.PAYMENT_STATUS = ''PAID'' ');
              sqlGrid.SQL.Add('AND P.DATE_DUE >= :DT_INI AND DATE_DUE <= :DT_FIM ');
              sqlGrid.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
              sqlGrid.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
             end
             else if varGlobalOption = 5 then // Total
             begin
              sqlGrid.SQL.Add('WHERE P.DATE_DUE >= :DT_INI AND P.DATE_DUE <= :DT_FIM ');
              sqlGrid.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
              sqlGrid.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
             end;

           end;
           sqlGrid.SQL.Add(' &WHERE1 ');
           sqlGrid.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;

           sqlGrid.Open;
           if varFiltro <> '' then
           begin
              sqlGrid.Filtered := False;
              sqlGrid.Filter   := varFiltro;
              sqlGrid.Filtered := True;
           end;
      end;


    frmRelDashBoard.varSubTitle := varSubTitle;
    frmRelDashBoard.varTitle := 'Account ' + cxComboBoxOption.Text;

    FrmRelDashBoard.ReportFinance.Preview;
 Finally
    FreeAndNil(FrmRelDashBoard);
 end

end;

procedure TfrmDashBoard.btnuqavencerClick(Sender: TObject);
begin
   // To be Due
   varUltimoBotao := btnuqavencer.Tag;
   varUserFilter := False;
   varSubTitle := Label7.Caption;
   OpenGrid(3);
end;

procedure TfrmDashBoard.btnuqrecebidosClick(Sender: TObject);
begin
   // Received
   varUltimoBotao := btnuqrecebidos.Tag;
   varUserFilter := False;
   varSubTitle := lblTipo.Caption;
   OpenGrid(4);
end;

procedure TfrmDashBoard.btnuqtotalperiodoClick(Sender: TObject);
begin
   // Total
   varUltimoBotao := btnuqtotalperiodo.Tag;
   varUserFilter := False;
   varSubTitle := Label9.Caption;
   OpenGrid(5);
end;

procedure TfrmDashBoard.btnuqvencehojeClick(Sender: TObject);
begin
   // Due Date
   varUltimoBotao := btnuqvencehoje.Tag;
   varUserFilter := False;
   varSubTitle := Label6.Caption;
   OpenGrid(2);
end;

procedure TfrmDashBoard.btnuqvencidosClick(Sender: TObject);
begin
   // Overdue
   varUltimoBotao := btnuqvencidos.Tag;
   varUserFilter := False;
   varSubTitle := Label5.Caption;
   OpenGrid(1);
end;

procedure TfrmDashBoard.btnVenceHojeClick(Sender: TObject);
begin
   cxPageControlTop.ActivePage := cxTabSheetTopUnique;
   cxComboBoxOption.ItemIndex := 1;
   btnuqvencehojeClick(Self);
end;

procedure TfrmDashBoard.btnVencidosClick(Sender: TObject);
begin
   cxPageControlTop.ActivePage := cxTabSheetTopUnique;

   cxComboBoxOption.ItemIndex := 0;
   {
   rgStatus.Properties.Items[1].Caption := 'Received';
   cxPageControlTop.ActivePage := cxTabSheetTopUnique;
   cxPageControlBody.ActivePage := cxTabSheetDetail;
   lblTipo.Caption := 'Received';
   sqlGrid.Close;
   doReceivables;
   }
   btnuqvencidosClick(Self);
end;

procedure TfrmDashBoard.cxComboBoxOptionClick(Sender: TObject);
begin
     if cxComboBoxOption.ItemIndex = 0 then
     begin
       rgStatus.Properties.Items[1].Caption := 'Received';
       cxPageControlTop.ActivePage := cxTabSheetTopUnique;
       cxPageControlBody.ActivePage := cxTabSheetDetail;
       lblTipo.Caption := 'Received';
       sqlGrid.Close;
       doReceivables;
     end
     else if cxComboBoxOption.ItemIndex = 1 then
     begin
       rgStatus.Properties.Items[1].Caption := 'Paid';
       cxPageControlTop.ActivePage := cxTabSheetTopUnique;
       cxPageControlBody.ActivePage := cxTabSheetDetail;
       lblTipo.Caption := 'Paid';
       sqlGrid.Close;
       doPayable;
     end
     else if cxComboBoxOption.ItemIndex = 2 then
     begin
       sqlGrid.Close;
       cxPageControlTop.ActivePage := cxTabSheetTopBoth;
       cxPageControlBody.ActivePage := cxTabSheetChart;
       doBoth;
     end;
end;

procedure TfrmDashBoard.cxGridDBTableViewCrewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
   if AItem = nil then exit;

     if ARecord.Values[2] > 0 then
       AStyle := cxStyleCredito
     else if  ARecord.Values[2]  < 0 then
       AStyle := cxStyleDebito;
end;

procedure  TfrmDashBoard.StatementFilter;
begin
  if DtStart.Date > DtEnd.Date then
  begin
     Mens_MensInf(' Start Date cannot be greater than End Date');
     DtStart.SetFocus;
     Exit;
  end;

  if cxLookupComboBoxBank.ItemIndex <> -1 then
  begin
   sqlStatement.Close;
   sqlStatement.Params.ParamByName('ID_BANK').AsInteger := cxLookupComboBoxBank.EditValue;
   sqlStatement.Params.ParamByName('DTSTART').AsString  := FormatDateTime('mm/dd/yyyy hh:mm:ss', DtStart.Date);
   sqlStatement.Params.ParamByName('DTEND').AsString    := FormatDateTime('mm/dd/yyyy hh:mm:ss', DtEnd.Date);
   sqlStatement.Open;
  end;
end;

procedure  TfrmDashBoard.doReceivables;
var
  sqlDados : TFDQuery;
  varTotal : Double;
  myDate   : TDateTime;
  ano, mes, dia : word;
  myCurrentDate : TDateTime;
begin

  DecodeDate(Date, ano, mes, dia);

  myDate := EncodeDate(sqlTempoANO.AsInteger, sqlTempoMES.AsInteger, dia);

  sqlDados := TFDQuery.Create(Nil);
  varTotal := 0;
  Try
    sqlDados.Connection := DBDados.Connection;
    sqlDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Add('SELECT SUM(PAYMENT_AMOUNT) as PAYMENT_AMOUNT FROM TBRECEIVABLE ');
    sqlDados.SQL.Add('WHERE PAYMENT_STATUS = ''PENDING'' ');
    sqlDados.SQL.Add('AND  DATE_DUE >= :DT_INI AND  DATE_DUE <= :DT_FIM &WHERE1 ');
    sqlDados.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
    sqlDados.ParamByName( 'DT_FIM' ).AsDate := myDate-1;
    sqlDados.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlDados.Open;

    varTotal :=   sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat;
    btnuqvencidos.Font.Color := clTeal;
    btnuqvencidos.Caption :=  FormatFloat('0.00', sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat);

    sqlDados.Connection := DBDados.Connection;
    sqlDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Add('SELECT SUM(PAYMENT_AMOUNT) as PAYMENT_AMOUNT FROM TBRECEIVABLE ');
    sqlDados.SQL.Add('WHERE PAYMENT_STATUS = ''PENDING'' ');
    sqlDados.SQL.Add('AND DATE_DUE = :DT_INI  &WHERE1  ');
    sqlDados.ParamByName( 'DT_INI' ).AsDate := myDate;
    sqlDados.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlDados.Open;
    varTotal :=  varTotal + sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat;
    btnuqvencehoje.Font.Color := clTeal;
    btnuqvencehoje.Caption :=  FormatFloat('0.00', sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat);

    sqlDados.Connection := DBDados.Connection;
    sqlDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Add('SELECT SUM(PAYMENT_AMOUNT) as PAYMENT_AMOUNT FROM TBRECEIVABLE ');
    sqlDados.SQL.Add('WHERE PAYMENT_STATUS = ''PENDING'' ');
    sqlDados.SQL.Add('AND  DATE_DUE >= :DT_INI AND DATE_DUE <= :DT_FIM &WHERE1 ');
    sqlDados.ParamByName( 'DT_INI' ).AsDate := MyDate+1;
    sqlDados.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
    sqlDados.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlDados.Open;
    varTotal :=  varTotal + sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat;
    btnuqavencer.Font.Color := clTeal;
    btnuqavencer.Caption :=  FormatFloat('0.00', sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat);

    sqlDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Add('SELECT SUM(PAYMENT_AMOUNT) as PAYMENT_AMOUNT FROM TBRECEIVABLE ');
    sqlDados.SQL.Add('WHERE PAYMENT_STATUS = ''RECEIVED'' ');
    sqlDados.SQL.Add('AND DATE_DUE >= :DT_INI AND DATE_DUE <= :DT_FIM &WHERE1 ');
    sqlDados.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
    sqlDados.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
    sqlDados.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlDados.Open;

    varTotal :=  varTotal + sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat;
    btnuqrecebidos.Font.Color := clTeal;
    btnuqrecebidos.Caption :=  FormatFloat('0.00', sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat);

    btnuqtotalperiodo.Font.Color := clTeal;
    btnuqtotalperiodo.Caption  := FormatFloat('0.00',varTotal);

  Finally
    FreeAndNil(sqlDados);
  End;
end;

procedure  TfrmDashBoard.doPayable;
var
  sqlDados : TFDQuery;
  varTotal : Double;
  myDate   : TDateTime;
  ano, mes, dia : word;
begin

  DecodeDate(Date, ano, mes, dia);

  myDate := EncodeDate(sqlTempoANO.AsInteger, sqlTempoMES.AsInteger, dia);

  sqlDados := TFDQuery.Create(Nil);
  varTotal := 0;
  Try
    sqlDados.Connection := DBDados.Connection;
    sqlDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Add('SELECT SUM(PAYMENT_AMOUNT) as PAYMENT_AMOUNT FROM TBPAYABLE ');
    sqlDados.SQL.Add('WHERE PAYMENT_STATUS = ''PENDING'' ');
    sqlDados.SQL.Add('AND  DATE_DUE >= :DT_INI AND  DATE_DUE < :DT_FIM &WHERE1 ');
    sqlDados.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
    sqlDados.ParamByName( 'DT_FIM' ).AsDate := myDate;
    sqlDados.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlDados.Open;
    varTotal :=   sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat;
    btnuqvencidos.Font.Color := clRed;
    btnuqvencidos.Caption :=  FormatFloat('0.00', sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat);

    sqlDados.Connection := DBDados.Connection;
    sqlDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Add('SELECT SUM(PAYMENT_AMOUNT) as PAYMENT_AMOUNT FROM TBPAYABLE ');
    sqlDados.SQL.Add('WHERE PAYMENT_STATUS = ''PENDING'' ');
    sqlDados.SQL.Add('AND DATE_DUE = :DT_INI &WHERE1 ');
    sqlDados.ParamByName( 'DT_INI' ).AsDate := myDate;
    sqlDados.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlDados.Open;
    varTotal :=  varTotal + sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat;
    btnuqvencehoje.Font.Color := clRed;
    btnuqvencehoje.Caption :=  FormatFloat('0.00', sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat);

    sqlDados.Connection := DBDados.Connection;
    sqlDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Add('SELECT SUM(PAYMENT_AMOUNT) as PAYMENT_AMOUNT FROM TBPAYABLE ');
    sqlDados.SQL.Add('WHERE PAYMENT_STATUS = ''PENDING'' ');
    sqlDados.SQL.Add('AND  DATE_DUE > :DT_INI AND DATE_DUE <= :DT_FIM &WHERE1');
    sqlDados.ParamByName( 'DT_INI' ).AsDate := MyDate;
    sqlDados.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
    sqlDados.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlDados.Open;
    varTotal :=  varTotal + sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat;
    btnuqavencer.Font.Color := clRed;
    btnuqavencer.Caption :=  FormatFloat('0.00', sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat);

    sqlDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Add('SELECT SUM(PAYMENT_AMOUNT) as PAYMENT_AMOUNT FROM TBPAYABLE ');
    sqlDados.SQL.Add('WHERE PAYMENT_STATUS = ''PAID'' ');
    sqlDados.SQL.Add('AND DATE_DUE >= :DT_INI AND DATE_DUE <= :DT_FIM &WHERE1 ');
    sqlDados.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
    sqlDados.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
    sqlDados.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlDados.Open;
    varTotal :=  varTotal + sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat;
    btnuqrecebidos.Font.Color := clRed;
    btnuqrecebidos.Caption :=  FormatFloat('0.00', sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat);
    btnuqtotalperiodo.Font.Color := clRed;
    btnuqtotalperiodo.Caption  := FormatFloat('0.00',varTotal);

  Finally
    FreeAndNil(sqlDados);
  End;

end;

procedure TfrmDashBoard.dbMonthYearEnter(Sender: TObject);
var
 Ano, Mes, Dia : word;
begin
  sqlGrid.Close;
  DecodeDate(Date, Ano,Mes, Dia);
  sqlTempo.Locate('ANO;MES', VarArrayOf([ANO,MES]), []);
  cxComboBoxOptionClick(Nil);
end;

procedure TfrmDashBoard.doBoth;
var
  sqlDados : TFDQuery;
  myDate   : TDateTime;
  ano, mes, dia : word;
begin

  DecodeDate(Date, ano, mes, dia);

  myDate := EncodeDate(sqlTempoANO.AsInteger, sqlTempoMES.AsInteger, dia);

  sqlDados := TFDQuery.Create(Nil);
  Try
    sqlDados.Connection := DBDados.Connection;
    sqlDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Add('SELECT SUM(PAYMENT_AMOUNT) as PAYMENT_AMOUNT FROM TBRECEIVABLE ');
    sqlDados.SQL.Add('WHERE PAYMENT_STATUS = ''PENDING'' ');
    sqlDados.SQL.Add('AND DATE_DUE <= :DT_INI &WHERE1 ');
    sqlDados.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlDados.Params.ParamByName('DT_INI').AsDate := MyDate-1;
    sqlDados.Open;
    btnVencidos.Caption :=  FormatFloat('0.00', sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat);

    sqlDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Add('SELECT SUM(PAYMENT_AMOUNT) as PAYMENT_AMOUNT FROM TBRECEIVABLE ');
    sqlDados.SQL.Add('WHERE PAYMENT_STATUS = ''PENDING'' ');
    sqlDados.SQL.Add('AND DATE_DUE = :DT_INI &WHERE1 ');
    sqlDados.Params.ParamByName('DT_INI').AsDate := MyDate;
    sqlDados.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlDados.Open;
    btnVenceHoje.Caption := FormatFloat('0.00',sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat);

    sqlDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Add('SELECT SUM(PAYMENT_AMOUNT) as PAYMENT_AMOUNT FROM TBRECEIVABLE ');
    sqlDados.SQL.Add('WHERE PAYMENT_STATUS = ''PENDING'' ');
    sqlDados.SQL.Add('AND  DATE_DUE <= EOMONTH(DATE_DUE)  &WHERE1 ');
    sqlDados.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlDados.Open;
    lblVenceFuturo.Caption := 'UP To End of the Month U$ ' +  FormatFloat('0.00',sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat);


    // PAYABLE
    sqlDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Add('SELECT SUM(PAYMENT_AMOUNT) as PAYMENT_AMOUNT FROM TBPAYABLE ');
    sqlDados.SQL.Add('WHERE PAYMENT_STATUS = ''PENDING'' ');
    sqlDados.SQL.Add('AND DATE_DUE <=  :DT_INI &WHERE1 ');
    sqlDados.Params.ParamByName('DT_INI').AsDate := MyDate-1;
    sqlDados.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlDados.Open;
    btnAPagar.Caption := FormatFloat('0.00',sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat);


    sqlDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Add('SELECT SUM(PAYMENT_AMOUNT) as PAYMENT_AMOUNT FROM TBPAYABLE ');
    sqlDados.SQL.Add('WHERE PAYMENT_STATUS = ''PENDING'' ');
    sqlDados.SQL.Add('AND DATE_DUE =  :DT_INI &WHERE1 ');
    sqlDados.Params.ParamByName('DT_INI').AsDate := MyDate;
    sqlDados.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlDados.Open;
    btnPGVenceHoje.Caption :=  FormatFloat('0.00',sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat);


    sqlDados.Close;
    sqlDados.SQL.Clear;
    sqlDados.SQL.Add('SELECT SUM(PAYMENT_AMOUNT) as PAYMENT_AMOUNT FROM TBPAYABLE ');
    sqlDados.SQL.Add('WHERE PAYMENT_STATUS = ''PENDING'' ');
    sqlDados.SQL.Add('AND  DATE_DUE <= EOMONTH(DATE_DUE)  &WHERE1 ');
    sqlDados.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlDados.Open;
    lblpgVenceFuturo.Caption := 'UP To End of the Month U$ ' +  FormatFloat('0.00',sqlDados.FieldByName('PAYMENT_AMOUNT').AsFloat);


  Finally
    FreeAndNil(sqlDados);
  End;


end;


procedure TfrmDashBoard.FormActivate(Sender: TObject);
var
 Ano, Mes, Dia : Word;
begin
   if varDontDoIt then
   begin
    sqlTempo.Close;
    sqlTempo.Open;

    DecodeDate(Date, Ano,Mes, Dia);
    sqlTempo.Locate('ANO;MES', VarArrayOf([ANO,MES]), []);


    cxComboBoxOptionClick(Nil);

    sqlSalesChart.Close;
    sqlSalesChart.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlSalesChart.Open;

    sqlIncExpChart.Close;
    sqlIncExpChart.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlIncExpChart.MacroByName( 'WHERE2' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlIncExpChart.Params.ParamByName('ANO').AsInteger := Ano;
    sqlIncExpChart.Open;

    sqlBank.Close;
    sqlBank.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlBank.Open;

    DtStart.Date := Date;
    DtEnd.Date := Date + 7;
   end;
end;

procedure TfrmDashBoard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmDashBoard := nil;
  Action          := caFree;
end;

procedure TfrmDashBoard.FormCreate(Sender: TObject);
begin
 varDontDoIt := True;
end;

procedure TfrmDashBoard.OpenGrid(varOption: Integer);
var
  myDate   : TDateTime;
  ano, mes, dia : word;
begin


 DecodeDate(Date, ano, mes, dia);
 myDate := EncodeDate(sqlTempoANO.AsInteger, sqlTempoMES.AsInteger, dia);



 varGlobalOption := varOption;
 sqlGrid.Close;
 sqlGrid.SQL.Clear;
 // RECEIVABLE
 if cxComboBoxOption.ItemIndex = 0 then
 begin
   sqlGrid.SQL.Add('SELECT R.ID_RECEIVABLE as ID, R.INVOICE_DATE, R.DATE_DUE, R.PAYMENT_DESCRIPTION, ');
   sqlGrid.SQL.Add('C.LAST_NAME + '' '' + C.FIRST_NAME AS NAME, R.PAYMENT_AMOUNT, R.PAYMENT_STATUS  ');
   sqlGrid.SQL.Add('FROM TBRECEIVABLE R  ');
   sqlGrid.SQL.Add('INNER JOIN TBCUSTOMER C ON C.ID_CUSTOMER = R.ID_CUSTOMER ');
   if varOption = 1 then     // Overdue
   begin

    if varUserFilter = False then
    begin
      sqlGrid.SQL.Add('WHERE R.PAYMENT_STATUS = ''PENDING'' ');
      sqlGrid.SQL.Add('AND R.DATE_DUE >= :DT_INI AND R.DATE_DUE <= :DT_FIM');

      sqlGrid.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := myDate-1;
      ShowMonths(System.DateUtils.StartOfTheMonth(myDate), myDate-1);
    end
    else
    begin
      sqlGrid.SQL.Add('WHERE R.PAYMENT_STATUS = ''PENDING'' ');
      sqlGrid.SQL.Add('AND R.DATE_DUE >= :DT_INI AND R.DATE_DUE <= :DT_FIM');

      sqlGrid.ParamByName( 'DT_INI' ).AsDate := cxStartFilterUser.Date;
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := cxEndFilterUser.Date-1;
    end;
   end
   else if varOption = 2 then // Due Date
   begin
      sqlGrid.SQL.Add('WHERE R.PAYMENT_STATUS = ''PENDING'' ');
      sqlGrid.SQL.Add('AND R.DATE_DUE = :DT_INI ');
      sqlGrid.ParamByName( 'DT_INI' ).AsDate := myDate;
      ShowMonths(myDate, myDate);
   end
   else if varOption = 3 then  // To be Due
   begin
    if varUserFilter = False then
    begin
      sqlGrid.SQL.Add('WHERE R.PAYMENT_STATUS = ''PENDING'' ');
      sqlGrid.SQL.Add('AND R.DATE_DUE >= :DT_INI AND R.DATE_DUE <= :DT_FIM ');
      sqlGrid.ParamByName( 'DT_INI' ).AsDate := MyDate+1;
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
      ShowMonths(myDate+1, System.DateUtils.EndOfTheMonth(myDate));
    end
    else
    begin
      sqlGrid.SQL.Add('WHERE R.PAYMENT_STATUS = ''PENDING'' ');
      sqlGrid.SQL.Add('AND R.DATE_DUE >= :DT_INI AND R.DATE_DUE <= :DT_FIM ');
      sqlGrid.ParamByName( 'DT_INI' ).AsDate := cxStartFilterUser.Date;
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := cxEndFilterUser.Date;
    end;
   end
   else if varOption = 4 then // Received
   begin
    if varUserFilter = False then
    begin
      sqlGrid.SQL.Add('WHERE R.PAYMENT_STATUS = ''RECEIVED'' ');
      sqlGrid.SQL.Add('AND R.DATE_DUE >= :DT_INI AND R.DATE_DUE <= :DT_FIM ');
      sqlGrid.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
      ShowMonths(System.DateUtils.StartOfTheMonth(myDate), System.DateUtils.EndOfTheMonth(myDate));
    end
    else
    begin
      sqlGrid.SQL.Add('WHERE R.PAYMENT_STATUS = ''RECEIVED'' ');
      sqlGrid.SQL.Add('AND R.DATE_DUE >= :DT_INI AND R.DATE_DUE <= :DT_FIM ');
      sqlGrid.ParamByName( 'DT_INI' ).AsDate := cxStartFilterUser.Date;
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := cxEndFilterUser.Date;
    end;
   end
   else if varOption = 5 then // Total
   begin
    if varUserFilter = False then
    begin
     sqlGrid.SQL.Add('WHERE R.DATE_DUE >= :DT_INI AND R.DATE_DUE <= :DT_FIM ');

      sqlGrid.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
      ShowMonths(System.DateUtils.StartOfTheMonth(myDate), System.DateUtils.EndOfTheMonth(myDate));
    end
    else
    begin
      sqlGrid.SQL.Add('WHERE R.DATE_DUE >= :DT_INI AND R.DATE_DUE <= :DT_FIM ');

      sqlGrid.ParamByName( 'DT_INI' ).AsDate := cxStartFilterUser.Date;
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := cxEndFilterUser.Date;
    end;
   end;
   sqlGrid.SQL.Add(' &WHERE1 ');
   sqlGrid.MacroByName( 'WHERE1' ).AsRaw := ' AND R.' + DBDados.varReturnCompanies;

 end
 else if cxComboBoxOption.ItemIndex = 1 then
 begin
   sqlGrid.SQL.Add('SELECT P.ID_PAYABLE as ID, P.INVOICE_DATE, P.DATE_DUE, P.PAYMENT_DESCRIPTION, S.NAMEBUSINESS AS NAME, P.PAYMENT_AMOUNT, P.PAYMENT_STATUS ');
   sqlGrid.SQL.Add('FROM TBPAYABLE P ');
   sqlGrid.SQL.Add('INNER JOIN TBSUPPLIER S ON S.ID_SUPPLIER = P.ID_SUPPLIER ');
   if varOption = 1 then     // Overdue
   begin
    if varUserFilter = False then
    begin
      sqlGrid.SQL.Add('WHERE P.PAYMENT_STATUS = ''PENDING'' ');
      sqlGrid.SQL.Add('AND P.DATE_DUE >= :DT_INI and P.DATE_DUE <= :DT_FIM');

      sqlGrid.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := myDate-1;
      ShowMonths(System.DateUtils.StartOfTheMonth(myDate), myDate-1);
    end
    else
    begin
      sqlGrid.SQL.Add('WHERE P.PAYMENT_STATUS = ''PENDING'' ');
      sqlGrid.SQL.Add('AND P.DATE_DUE >= :DT_INI and P.DATE_DUE <= :DT_FIM');

      sqlGrid.ParamByName( 'DT_INI' ).AsDate := cxStartFilterUser.Date-1;
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := cxEndFilterUser.Date;
    end;
   end
   else if varOption = 2 then // Due Date
   begin
      sqlGrid.SQL.Add('WHERE P.PAYMENT_STATUS = ''PENDING'' ');
      sqlGrid.SQL.Add('AND P.DATE_DUE = :DT_INI ');
      sqlGrid.ParamByName( 'DT_INI' ).AsDate := myDate;
      ShowMonths(myDate, myDate);
   end
   else if varOption = 3 then  // To be Due
   begin
    if varUserFilter = False then
    begin
      sqlGrid.SQL.Add('WHERE P.PAYMENT_STATUS = ''PENDING'' ');
      sqlGrid.SQL.Add('AND P.DATE_DUE > :DT_INI AND P.DATE_DUE <= :DT_FIM ');

      sqlGrid.ParamByName( 'DT_INI' ).AsDate := MyDate+1;
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
      ShowMonths( myDate+1, System.DateUtils.EndOfTheMonth(myDate));
    end
    else
    begin
      sqlGrid.SQL.Add('WHERE P.PAYMENT_STATUS = ''PENDING'' ');
      sqlGrid.SQL.Add('AND P.DATE_DUE > :DT_INI AND P.DATE_DUE <= :DT_FIM ');

      sqlGrid.ParamByName( 'DT_INI' ).AsDate := cxStartFilterUser.Date;
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := cxEndFilterUser.Date;
    end;

   end
   else if varOption = 4 then // Received
   begin
    if varUserFilter = False then
    begin
      sqlGrid.SQL.Add('WHERE P.PAYMENT_STATUS = ''PAID'' ');
      sqlGrid.SQL.Add('AND P.DATE_DUE >= :DT_INI AND DATE_DUE <= :DT_FIM ');

      sqlGrid.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
      ShowMonths(  System.DateUtils.StartOfTheMonth(myDate), System.DateUtils.EndOfTheMonth(myDate));
    end
    else
    begin
      sqlGrid.SQL.Add('WHERE P.PAYMENT_STATUS = ''PAID'' ');
      sqlGrid.SQL.Add('AND P.DATE_DUE >= :DT_INI AND DATE_DUE <= :DT_FIM ');

      sqlGrid.ParamByName( 'DT_INI' ).AsDate := cxStartFilterUser.Date;
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := cxEndFilterUser.Date;
    end;

   end
   else if varOption = 5 then // Total
   begin
    if varUserFilter = False then
    begin
      sqlGrid.SQL.Add('WHERE P.DATE_DUE >= :DT_INI AND P.DATE_DUE <= :DT_FIM ');

      sqlGrid.ParamByName( 'DT_INI' ).AsDate := System.DateUtils.StartOfTheMonth(myDate);
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := System.DateUtils.EndOfTheMonth(myDate);
      ShowMonths(  System.DateUtils.StartOfTheMonth(myDate), System.DateUtils.EndOfTheMonth(myDate));
    end
    else
    begin
      sqlGrid.SQL.Add('WHERE P.DATE_DUE >= :DT_INI AND P.DATE_DUE <= :DT_FIM ');

      sqlGrid.ParamByName( 'DT_INI' ).AsDate := cxStartFilterUser.Date;
      sqlGrid.ParamByName( 'DT_FIM' ).AsDate := cxEndFilterUser.Date;
    end;

   end;
   sqlGrid.SQL.Add(' &WHERE1 ');
   sqlGrid.MacroByName( 'WHERE1' ).AsRaw := ' AND P.' + DBDados.varReturnCompanies;
 end;


 sqlGrid.Open;

 AddColumns(cxComboBoxOption.ItemIndex);

end;

procedure TfrmDashBoard.ShowMonths(varMesStart, varMesEnd : TDateTime);
begin
    cxStartFilterUser.Date  := varMesStart;
    cxEndFilterUser.Date    := varMesEnd;
end;

procedure TfrmDashBoard.SpeedButton1Click(Sender: TObject);
begin
  if not sqlTempo.bof then
    sqlTempo.Prior
 else sqlTempo.First;

 cxComboBoxOptionClick(Nil);

end;

procedure TfrmDashBoard.SpeedButton2Click(Sender: TObject);
begin
  if not sqlTempo.eof then
    sqlTempo.Next
 else sqlTempo.Last;

 cxComboBoxOptionClick(Nil);
end;

procedure TfrmDashBoard.SpeedButton3Click(Sender: TObject);
begin
 StatementFilter;
end;

end.
