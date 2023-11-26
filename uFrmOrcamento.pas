unit uFrmOrcamento;

interface

uses
  jpeg, pngimage,   bde.dbtables,
  uClassSalesProcess,
  MensFun,
  uFunctions,
  uClassDBGenerics,
  cxGridDBDataDefinitions,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.ExtDlgs, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxSplitter,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Vcl.Samples.Spin, cxCurrencyEdit, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxDropDownEdit, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmOrcamento = class(TForm)
    pnlTop: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label21: TLabel;
    Rate: TLabel;
    lblRate: TLabel;
    lblAmount: TLabel;
    SubTotal: TLabel;
    Label23: TLabel;
    lblTax: TLabel;
    lblTotal: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    Label15: TLabel;
    edtManufactory: TEdit;
    edtProdutcStyle: TEdit;
    edtProductStyleName: TEdit;
    edtStyle: TEdit;
    edtProductType: TEdit;
    cxLookupComboBoxPrincing: TcxLookupComboBox;
    cmbProduct: TcxComboBox;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lblStyle: TLabel;
    lblProductType: TLabel;
    Label16: TLabel;
    lblManufactory: TLabel;
    Label20: TLabel;
    lblProductName: TLabel;
    lblTotalSQF: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    lblEP: TLabel;
    lblOP: TLabel;
    lblAV: TLabel;
    Label22: TLabel;
    lblProductID: TLabel;
    lblRoom: TLabel;
    Label27: TLabel;
    lblSection: TLabel;
    Label28: TLabel;
    lblPosition: TLabel;
    Image1: TImage;
    btnViewCart: TcxButton;
    btnRoom: TcxButton;
    edtheight: TcxCurrencyEdit;
    edtweidth: TcxCurrencyEdit;
    edttotalarea: TcxCurrencyEdit;
    btnCart: TcxButton;
    btnCleanCart: TcxButton;
    ButCancelar: TcxButton;
    EdtQty: TSpinEdit;
    edtAreaSquareFeetPerBox: TcxCurrencyEdit;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    sqlInventoty: TFDQuery;
    dsInventory: TDataSource;
    DSPPRICELIST: TDataSource;
    STPPRICELIST: TFDStoredProc;
    STPPRICELISTID_PRICELIST: TFDAutoIncField;
    STPPRICELISTNAME: TStringField;
    STPPRICELISTEXPIREDDATE: TDateField;
    STPPRICELISTACTIVE: TStringField;
    sqlImage: TFDQuery;
    sqlImageID_IMAGE: TFDAutoIncField;
    sqlImageiD_PRODUCT: TIntegerField;
    sqlImageImagem: TBlobField;
    OpenPictureDialog: TOpenPictureDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxLookupComboBoxPrincingClick(Sender: TObject);
    procedure cmbProductClick(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
  private

    varSelectProduct : Boolean;
    varID_Supplier : Integer;
    varAcumSubTotal, varAcumTax, varAcumTotal : Double;
    varNextKey : TDBNextKey;
    ItemCount : Integer;
    CartID    : Integer;
    varTempAreaTotal : Double;
    ABand  : TcxGridBand;
    SalesRep : TVendor;

    procedure OpenInventory;
    procedure AddColumns;
    procedure CleanScreen;
    procedure ShowImagem;
    { Private declarations }
  public
    { Public declarations }
    Carrinho : TSalesProcess;
    Item     : TSalesProcessItem;
    procedure SetupPricingTable;
  end;

var
  frmOrcamento: TfrmOrcamento;

implementation

{$R *.dfm}

uses uDMConectDB, ufrmViewCart, AsyncCalls, uFrmRoom;

procedure TfrmOrcamento.AddColumns;
var
  AColumn: TcxGridDBBandedColumn;
  I, Y, X, NumCompany : Integer;
  sumItem: TcxDataSummaryItem;
begin

  cxGrid1DBBandedTableView1.BeginUpdate();
  cxGrid1DBBandedTableView1.DataController.CreateAllItems;
  cxGrid1DBBandedTableView1.OptionsView.FixedBandSeparatorWidth := 2;

   cxGrid1DBBandedTableView1.ClearItems;
   cxGrid1DBBandedTableView1.Bands.Clear;

  Try
    ABand := cxGrid1DBBandedTableView1.Bands.Add;
    ABand.Index := 0;
    ABand.HeaderAlignmentHorz := taCenter;
    ABand.Caption := 'INVENTORY';
    ABand.FixedKind :=  fkLeft;



    ABand := cxGrid1DBBandedTableView1.Bands.Add;
    ABand.Index := 1;
    ABand.HeaderAlignmentHorz := taCenter;
    ABand.Caption := 'PRINCING TABLE';

    AColumn         := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.Width   := 100;
    AColumn.Caption := 'MANUFACTORY';
    AColumn.DataBinding.FieldName := sqlInventoty.Fields[0].FieldName;
    AColumn.Position.BandIndex := 0;

    AColumn         := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.Width   := 400;
    AColumn.Caption := 'PRODUCT_NAME';
    AColumn.DataBinding.FieldName := sqlInventoty.Fields[3].FieldName;
    AColumn.Position.BandIndex := 0;


    AColumn         := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.Width   := 100;
    AColumn.Caption := 'PRODUCT TYPE';
    AColumn.DataBinding.FieldName := sqlInventoty.Fields[1].FieldName;
    AColumn.Position.BandIndex := 0;

    AColumn         := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.Width   := 100;
    AColumn.Caption := 'PRODUCT STYLE';
    AColumn.DataBinding.FieldName := sqlInventoty.Fields[2].FieldName;
    AColumn.Position.BandIndex := 0;

    AColumn         := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.Width   := 100;
    AColumn.Caption := 'SECTION';
    AColumn.DataBinding.FieldName := sqlInventoty.Fields[4].FieldName;
    AColumn.Position.BandIndex := 0;

    AColumn         := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.Width   := 100;
    AColumn.Caption := 'POSITION';
    AColumn.DataBinding.FieldName := sqlInventoty.Fields[5].FieldName;
    AColumn.Position.BandIndex := 0;

    AColumn         := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.Width   := 120;
    AColumn.Caption := 'TOTAL SQUARE FEET';
    AColumn.DataBinding.FieldName := sqlInventoty.Fields[6].FieldName;
    AColumn.Position.BandIndex := 0;
    NumCompany := DBDados.NumberofCompanyByUser;

    //for I := 10 to (10+ NumCompany)    do
    for I := 7 to 7    do
    begin


          AColumn := cxGrid1DBBandedTableView1.CreateColumn;
          AColumn.DataBinding.FieldName := sqlInventoty.Fields[I].FieldName;
          AColumn.Caption := sqlInventoty.Fields[i].FullName;
          AColumn.Width := 200;
          AColumn.Position.BandIndex := 1;
{          AColumn.PropertiesClass := TcxCurrencyEditProperties;
          TcxCurrencyEditProperties(AColumn.Properties).DisplayFormat := 'U$,0.00;(U$,0.00)';

          cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryItems.Add(AColumn, spFooter, skSum, '##,###,###.##');
 }
    end;
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

    cxGrid1DBBandedTableView1.DataController.DataSource := dsInventory;
  finally
    cxGrid1DBBandedTableView1.EndUpdate;
  end;

end;

procedure TfrmOrcamento.cmbProductClick(Sender: TObject);
begin
   CleanScreen;
   cxLookupComboBoxPrincingClick(Self);
end;

procedure TfrmOrcamento.CleanScreen;
begin
  edtweidth.Text               := '';
  edtheight.Text               := '';
  edtTotalArea.Text            := '';
  EdtQty.Value                 := 0;
  lblManufactory.Caption       := '-';
  lblStyle.Caption             := '-';
  lblProductType.Caption       := '-';
  lblProductName.Caption             := '-';
  edtAreaSquareFeetPerBox.Text := '';
  lblSection.Caption           := '-';
  lblPosition.Caption          := '-';
  lblProductID.Caption         := '0';
  lblTotalSQF.Caption          := '0';
  lblEP.Caption                := '0';
  lblOP.Caption                := '0';
  lblAV.Caption                := '0';
  lblRate.Caption              := '0.00';
  lblTax.Caption               := '0.00';
  lblAmount.Caption            := '0.00';
  Image1.Picture.Graphic       := Nil;
end;


procedure TfrmOrcamento.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
begin
 if not sqlInventoty.IsEmpty  then
 begin
       {
 0      sqlInventoty.SQL.Add('SELECT NAMEBUSINESS AS MANUFACTORY, ');
 1     sqlInventoty.SQL.Add('	   [PRODUCT TYPE],  ');
 2     sqlInventoty.SQL.Add('	   [PRODUCT STYLE], ');
 3     sqlInventoty.SQL.Add('	   (PRODUCT_STYLE + '' '' + PRODUCT_STYLE_NAME + '' '' + COLOR + '' '' + COLOR_NAME ) AS PRODUCT_NAME, ');
 4     sqlInventoty.SQL.Add('	   [SECTION],  ');
 5     sqlInventoty.SQL.Add('	   [POSITION],  ');
 6     sqlInventoty.SQL.Add(      'TOTALAREA,  ');
 7     sqlInventoty.SQL.Add( 	  '[' + cxLookupComboBoxPrincing.EditText + '],' );
 8     sqlInventoty.SQL.Add(      'ID_PRODUCT,  ');
 9     sqlInventoty.SQL.Add(      'AreaSquareFeetPerBox,  ');
 10     sqlInventoty.SQL.Add(      'ID_SUPPLIER  ');

      }
   lblManufactory.Caption       := sqlInventoty.Fields[0].AsString;
   lblProductName.Caption       := sqlInventoty.Fields[3].AsString;

   lblStyle.Caption             := sqlInventoty.Fields[2].AsString;
   lblProductType.Caption       := sqlInventoty.Fields[1].AsString;
   lblTotalSQF.Caption          := sqlInventoty.Fields[6].AsString;

   lblProductID.Caption         := ZeroLeft(sqlInventoty.Fields[8].AsString,7);
   lblRate.Caption              := sqlInventoty.Fields[7].AsString;
   if cmbProduct.ItemIndex = 0 then
   begin
     lblEP.Caption                := Item.ProductPending('TBESTIMATE', sqlInventoty.Fields[8].AsInteger);
     lblOP.Caption                := Item.ProductPending('TBORDER', sqlInventoty.Fields[8].AsInteger);
     edtAreaSquareFeetPerBox.Text := sqlInventoty.Fields[9].AsString;
     lblSection.Caption           := sqlInventoty.Fields[4].AsString;
     lblPosition.Caption          := sqlInventoty.Fields[5].AsString;
     if lblTotalSQF.Caption <> '0' then
       lblAV.Caption             := FloatToStr(  StrToFloat(lblTotalSQF.Caption) - (StrToFloat(lblEP.Caption) + strTofloat(lblOP.Caption)) );
    end;

   if ((edtweidth.EditValue <> Null) and (edtheight.EditValue <> Null)) then
     edtheightExit(Self);
   varSelectProduct := True;

   sqlImage.Close;
   sqlImage.Params.ParamByName('ID_PRODUCT').AsInteger := sqlInventoty.Fields[8].AsInteger;
   sqlImage.Open;
   ShowImagem;

   edtweidth.SetFocus;

 end;
end;

procedure TfrmOrcamento.ShowImagem;
var
  Jpg         : TJPEGImage;
  foto        : TMemoryStream;
  S           : TMemoryStream;
  Graphic     : TGraphic;
  GraphicType : String;
begin
    foto:=TMemoryStream.Create;
    Jpg:= TJPEGImage.Create;

    S := TMemoryStream.Create;
    try

     if sqlimage.FieldByName('IMAGEM').AsVariant = Null then
     begin
        OpenPictureDialog.FileName := ExtractFilePath(Application.ExeName) + 'noimage.jpg';
        Image1.Picture.LoadFromFile(OpenPictureDialog.FileName);
        Image1.Picture.Graphic.SaveToStream(S);
     end
     else
        TBlobField(sqlimage.FieldByName('IMAGEM')).SaveToStream(S);
     S.Position := 0;

     GraphicType  := 'jpg';

    if GraphicType = 'jpg' then
      Graphic := TJPEGImage.Create
    else if GraphicType = 'png' then
      Graphic := TPNGImage.Create
//    else if GraphicType = 'gif' then
  //    Graphic := TGifImage.Create
    else if GraphicType = 'bmp' then
      Graphic := TBitmap.Create
    else
      raise Exception.Create('Cannot load unsupported image type from DB');

     try
      Graphic.LoadFromStream(S);
      Image1.Picture.Assign(Graphic);
    finally
      Graphic.Free;
    end;

      //DBGridUsers.Canvas.Draw(Rect.left, Rect.Top, bmp);
    finally
      Jpg.Free;
      foto.Free;
    end;

end;


procedure TfrmOrcamento.cxLookupComboBoxPrincingClick(Sender: TObject);
begin
 if cxLookupComboBoxPrincing.EditValue <> -1 then
    OpenInventory;
end;

procedure TfrmOrcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmOrcamento := nil;
  Action       := caFree;
end;

procedure TfrmOrcamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmOrcamento.SetupPricingTable;
begin
 if not Assigned(Carrinho) then
  begin
    SalesRep := TVendor.Create;
    SalesRep.Search(DBDados.varID_USER);

    Carrinho  := TSalesProcess.Create(Self);
    Item      := TSalesProcessItem.Create(Self);

    ItemCount := 0;
    STPPRICELIST.Close;
    STPPRICELIST.Prepare;
    STPPRICELIST.ParamByName( '@ID_CONTRACTOR' ).AsInteger := SalesRep.id_contractor;
    STPPRICELIST.Open;

    while not STPPRICELIST.Eof do
    begin
        if STPPRICELISTACTIVE.AsString = 'Y' then
           cxLookupComboBoxPrincing.EditValue := STPPRICELISTID_PRICELIST.AsInteger;
        STPPRICELIST.Next;
    end;
    cxLookupComboBoxPrincingClick(Self);


    CartID               := 1;
    Carrinho.tablename   := 'TBESTIMATE';
    Carrinho.id_process  :=  CartID;
    Carrinho.Contractors.id_contractor := SalesRep.id_contractor;
    Carrinho.Company.id_company        := SalesRep.Company.id_company;

    cxGrid1.SetFocus;

  end;
end;

procedure TfrmOrcamento.OpenInventory;
begin

  if cmbProduct.ItemIndex = 0 then
  begin
      sqlInventoty.Close;
      sqlInventoty.SQL.Clear;
      sqlInventoty.SQL.Add('SELECT NAMEBUSINESS AS MANUFACTORY, ');
      sqlInventoty.SQL.Add('	   [PRODUCT TYPE],  ');
      sqlInventoty.SQL.Add('	   [PRODUCT STYLE], ');
      sqlInventoty.SQL.Add('	   (PRODUCT_STYLE + '' '' + PRODUCT_STYLE_NAME + '' '' + COLOR + '' '' + COLOR_NAME ) AS PRODUCT_NAME, ');
      sqlInventoty.SQL.Add('	   [SECTION],  ');
      sqlInventoty.SQL.Add('	   [POSITION],  ');
      sqlInventoty.SQL.Add(      'TOTALAREA,  ');
      sqlInventoty.SQL.Add( 	  '[' + cxLookupComboBoxPrincing.EditText + '],' );
      sqlInventoty.SQL.Add(      'ID_PRODUCT,  ');
      sqlInventoty.SQL.Add(      'AreaSquareFeetPerBox,  ');
      sqlInventoty.SQL.Add(      'ID_SUPPLIER  ');
      sqlInventoty.SQL.Add('FROM (  ');
      sqlInventoty.SQL.Add('		SELECT  A.NAME AS PRICETABLE, PRICE_FINAL, B.ID_PRODUCT, C.PRODUCT_STYLE_NAME, ISNULL(SUM(D.TOTALAREA),0) as TOTALAREA, ');
      sqlInventoty.SQL.Add('	  	E.NAMEBUSINESS,');
      sqlInventoty.SQL.Add('	  	C.PRODUCT_STYLE,');
      sqlInventoty.SQL.Add('	    C.COLOR, ');
      sqlInventoty.SQL.Add('	    C.COLOR_NAME, ');
      sqlInventoty.SQL.Add('		  F.DESCRIPTION AS [PRODUCT TYPE], ');
      sqlInventoty.SQL.Add('		  G.DESCRIPTION AS [PRODUCT STYLE],');
      sqlInventoty.SQL.Add('		  C.LOC_SECTION AS [SECTION], ');
      sqlInventoty.SQL.Add('		  C.LOC_POSITION AS [POSITION], ');
      sqlInventoty.SQL.Add('      C.AreaSquareFeetPerBox,  ');
      sqlInventoty.SQL.Add('      C.ID_SUPPLIER  ');
      sqlInventoty.SQL.Add('		FROM TBPRICELIST A ');
      sqlInventoty.SQL.Add('		  INNER JOIN TBPRICEITEM B ON B.ID_PRICELIST = A.ID_PRICELIST');
      sqlInventoty.SQL.Add('		  INNER JOIN TBPRODUCT C ON C.ID_PRODUCT = B.ID_PRODUCT  AND C.TYPEOFPRODUCT = ''PRODUCT'' ');
      sqlInventoty.SQL.Add('		  INNER JOIN TBINVENTORY D ON D.ID_PRODUCT = B.ID_PRODUCT ');
      sqlInventoty.SQL.Add('		  INNER JOIN TBSUPPLIER E ON E.ID_SUPPLIER = C.ID_SUPPLIER ');
      sqlInventoty.SQL.Add('	    LEFT OUTER JOIN TBTYPEBRAND F ON F.ID_TYPEBRAND = C.ID_TYPE ');
      sqlInventoty.SQL.Add('      LEFT OUTER JOIN TBTYPEBRAND G ON G.ID_TYPEBRAND = C.STYLE  ');
      sqlInventoty.SQL.Add('	   	WHERE C.ACTIVE = ''Y'' AND A.' + DBDados.varReturnCompanies  );
      sqlInventoty.SQL.Add('		GROUP BY C.LOC_SECTION,  ');
      sqlInventoty.SQL.Add('             C.LOC_POSITION, ');
      sqlInventoty.SQL.Add('             F.DESCRIPTION,  ');
      sqlInventoty.SQL.Add('		         G.DESCRIPTION,   ');
      sqlInventoty.SQL.Add('	           C.PRODUCT_STYLE, ');
      sqlInventoty.SQL.Add('	           C.COLOR, ');
      sqlInventoty.SQL.Add('	           C.COLOR_NAME,  ');
      sqlInventoty.SQL.Add('             E.NAMEBUSINESS, ');
      sqlInventoty.SQL.Add('             D.ID_PRODUCT, ');
      sqlInventoty.SQL.Add('             A.NAME ,');
      sqlInventoty.SQL.Add('             PRICE_FINAL, ');
      sqlInventoty.SQL.Add('             B.ID_PRODUCT, ');
      sqlInventoty.SQL.Add('             C.AreaSquareFeetPerBox, ');
      sqlInventoty.SQL.Add('             C.ID_SUPPLIER,  ');
      sqlInventoty.SQL.Add('             C.PRODUCT_STYLE_NAME ');
      sqlInventoty.SQL.Add('             ) SQ   ');
      sqlInventoty.SQL.Add('             PIVOT  ');
      sqlInventoty.SQL.Add('             (  ');
      sqlInventoty.SQL.Add('               SUM(PRICE_FINAL) ') ;
      sqlInventoty.SQL.Add('               FOR PRICETABLE IN ( [' + cxLookupComboBoxPrincing.EditText + ']) ');
      sqlInventoty.SQL.Add('             ) AS PIVOTTABLE ') ;
      sqlInventoty.Open;
  end
  else
  if cmbProduct.ItemIndex = 1 then
  begin
      sqlInventoty.Close;
      sqlInventoty.SQL.Clear;
      sqlInventoty.SQL.Add('SELECT NAMEBUSINESS AS MANUFACTORY, ');
      sqlInventoty.SQL.Add('	   [PRODUCT TYPE],  ');
      sqlInventoty.SQL.Add('	   [PRODUCT STYLE], ');
      sqlInventoty.SQL.Add('	   PRODUCT_NAME, ');
      sqlInventoty.SQL.Add('	   [SECTION],  ');
      sqlInventoty.SQL.Add('	   [POSITION],  ');
      sqlInventoty.SQL.Add(      'TOTALAREA,  ');
      sqlInventoty.SQL.Add( 	  '[' + cxLookupComboBoxPrincing.EditText + '],' );
      sqlInventoty.SQL.Add(      'ID_PRODUCT,  ');
      sqlInventoty.SQL.Add(      'AreaSquareFeetPerBox,  ');
      sqlInventoty.SQL.Add(      'ID_SUPPLIER  ');
      sqlInventoty.SQL.Add('FROM (  ');
      sqlInventoty.SQL.Add('		SELECT  A.NAME AS PRICETABLE, PRICE_FINAL, B.ID_PRODUCT, C.PRODUCT_STYLE_NAME, ISNULL(SUM(D.TOTALAREA),0) as TOTALAREA, ');
      sqlInventoty.SQL.Add('	  	E.NAMEBUSINESS,');
      sqlInventoty.SQL.Add('	  	C.PRODUCT_STYLE,');
      sqlInventoty.SQL.Add('	    C.COLOR, ');
      sqlInventoty.SQL.Add('	    C.COLOR_NAME, ');
      sqlInventoty.SQL.Add('		  F.DESCRIPTION AS [PRODUCT TYPE], ');
      sqlInventoty.SQL.Add('		  G.DESCRIPTION AS [PRODUCT STYLE],');
      sqlInventoty.SQL.Add('		  C.LOC_SECTION AS [SECTION], ');
      sqlInventoty.SQL.Add('		  C.LOC_POSITION AS [POSITION], ');
      sqlInventoty.SQL.Add('      C.AreaSquareFeetPerBox,  ');
      sqlInventoty.SQL.Add('      C.ID_SUPPLIER,  ');
      sqlInventoty.SQL.Add('      C.PRODUCT_NAME  ');
      sqlInventoty.SQL.Add('		FROM TBPRICELIST A ');
      sqlInventoty.SQL.Add('		  INNER JOIN TBPRICEITEM B ON B.ID_PRICELIST = A.ID_PRICELIST');
      sqlInventoty.SQL.Add('		  INNER JOIN TBPRODUCT C ON C.ID_PRODUCT = B.ID_PRODUCT  AND C.TYPEOFPRODUCT = ''SERVICE'' ');
      sqlInventoty.SQL.Add('		  LEFT OUTER JOIN TBINVENTORY D ON D.ID_PRODUCT = B.ID_PRODUCT ');
      sqlInventoty.SQL.Add('		  INNER JOIN TBSUPPLIER E ON E.ID_SUPPLIER = C.ID_SUPPLIER ');
      sqlInventoty.SQL.Add('	    LEFT OUTER JOIN TBTYPEBRAND F ON F.ID_TYPEBRAND = C.ID_TYPE ');
      sqlInventoty.SQL.Add('      LEFT OUTER JOIN TBTYPEBRAND G ON G.ID_TYPEBRAND = C.STYLE  ');
      sqlInventoty.SQL.Add('	   	WHERE C.ACTIVE = ''Y'' AND A.' + DBDados.varReturnCompanies  );
      sqlInventoty.SQL.Add('		GROUP BY C.LOC_SECTION,  ');
      sqlInventoty.SQL.Add('             C.LOC_POSITION, ');
      sqlInventoty.SQL.Add('             F.DESCRIPTION,  ');
      sqlInventoty.SQL.Add('		         G.DESCRIPTION,   ');
      sqlInventoty.SQL.Add('	           C.PRODUCT_STYLE, ');
      sqlInventoty.SQL.Add('	           C.COLOR, ');
      sqlInventoty.SQL.Add('	           C.COLOR_NAME,  ');
      sqlInventoty.SQL.Add('             E.NAMEBUSINESS, ');
      sqlInventoty.SQL.Add('             D.ID_PRODUCT, ');
      sqlInventoty.SQL.Add('             A.NAME ,');
      sqlInventoty.SQL.Add('             PRICE_FINAL, ');
      sqlInventoty.SQL.Add('             B.ID_PRODUCT, ');
      sqlInventoty.SQL.Add('             C.AreaSquareFeetPerBox, ');
      sqlInventoty.SQL.Add('             C.ID_SUPPLIER,  ');
      sqlInventoty.SQL.Add('             C.PRODUCT_STYLE_NAME, ');
      sqlInventoty.SQL.Add('             C.PRODUCT_NAME  ');
      sqlInventoty.SQL.Add('             ) SQ   ');
      sqlInventoty.SQL.Add('             PIVOT  ');
      sqlInventoty.SQL.Add('             (  ');
      sqlInventoty.SQL.Add('               SUM(PRICE_FINAL) ') ;
      sqlInventoty.SQL.Add('               FOR PRICETABLE IN ( [' + cxLookupComboBoxPrincing.EditText + ']) ');
      sqlInventoty.SQL.Add('             ) AS PIVOTTABLE ') ;
      sqlInventoty.Open;
  end;


 // DBDados.GetComando(sqlInventoty, true);
  AddColumns;
  pnlTop.Enabled := True;
  varSelectProduct := False;
end;


end.
