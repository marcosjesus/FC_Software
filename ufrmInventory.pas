unit ufrmInventory;

interface

uses
  jpeg, pngimage,   bde.dbtables,
  uClassSalesProcess,
  MensFun,
  uFunctions,
  cxGridDBDataDefinitions, uClassDBGenerics, cxCurrencyEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Controls, System.Classes, Vcl.ExtCtrls,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,  Vcl.Forms, Vcl.Dialogs,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.Menus, cxButtons, Vcl.Samples.Spin,
  Vcl.DBCtrls, Vcl.ExtDlgs, cxSplitter;



type
  TfrmInventory = class(TForm)
    pnlTop: TPanel;
    Panel2: TPanel;
    sqlInventoty: TFDQuery;
    dsInventory: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    DSPPRICELIST: TDataSource;
    STPPRICELIST: TFDStoredProc;
    STPPRICELISTID_PRICELIST: TFDAutoIncField;
    STPPRICELISTNAME: TStringField;
    STPPRICELISTEXPIREDDATE: TDateField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    edtManufactory: TEdit;
    edtProdutcStyle: TEdit;
    edtProductType: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label19: TLabel;
    cxLookupComboBoxPrincing: TcxLookupComboBox;
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
    Label21: TLabel;
    edtheight: TcxCurrencyEdit;
    edtweidth: TcxCurrencyEdit;
    edttotalarea: TcxCurrencyEdit;
    Label22: TLabel;
    lblProductID: TLabel;
    Rate: TLabel;
    lblRate: TLabel;
    lblAmount: TLabel;
    SubTotal: TLabel;
    Label23: TLabel;
    lblTax: TLabel;
    btnViewCart: TcxButton;
    lblTotal: TLabel;
    Label24: TLabel;
    lblRoom: TLabel;
    lblInfoQuant: TLabel;
    lblUnidadeMedida: TLabel;
    Label27: TLabel;
    lblSection: TLabel;
    Label28: TLabel;
    lblPosition: TLabel;
    EdtQty: TSpinEdit;
    edtAreaSquareFeetPerBox: TcxCurrencyEdit;
    STPPRICELISTACTIVE: TStringField;
    Image1: TImage;
    sqlImage: TFDQuery;
    sqlImageID_IMAGE: TFDAutoIncField;
    sqlImageiD_PRODUCT: TIntegerField;
    sqlImageImagem: TBlobField;
    OpenPictureDialog: TOpenPictureDialog;
    cxSplitter1: TcxSplitter;
    cmbProduct: TcxComboBox;
    Label3: TLabel;
    edtProductID: TEdit;
    btnRoom: TcxButton;
    btnCart: TcxButton;
    btnCleanCart: TcxButton;
    ButCancelar: TcxButton;
    procedure edtManufactoryEnter(Sender: TObject);
    procedure edtManufactoryChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButCancelarClick(Sender: TObject);
    procedure cxLookupComboBoxPrincingClick(Sender: TObject);
    procedure edtProdutcStyleEnter(Sender: TObject);
    procedure edtProdutcStyleChange(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure edtheightExit(Sender: TObject);
    procedure edtProductTypeEnter(Sender: TObject);
    procedure edtProductTypeChange(Sender: TObject);
    procedure btnCartClick(Sender: TObject);
    procedure btnCleanCartClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnViewCartClick(Sender: TObject);
    procedure btnRoomClick(Sender: TObject);
    procedure EdtQtyChange(Sender: TObject);
    procedure edtweidthKeyPress(Sender: TObject; var Key: Char);
    procedure edtheightEnter(Sender: TObject);
    procedure edtweidthEnter(Sender: TObject);
    procedure cmbProductClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtProductIDEnter(Sender: TObject);
    procedure edtProductIDChange(Sender: TObject);
    procedure edtProductIDKeyPress(Sender: TObject; var Key: Char);
    procedure edtweidthExit(Sender: TObject);
  private
    { Private declarations }
    varSelectProduct : Boolean;
    varID_Supplier : Integer;
    varAcumSubTotal, varAcumTax, varAcumTotal : Double;
    varNextKey : TDBNextKey;
    ItemCount : Integer;
    CartID    : Integer;
    varTempAreaTotal : Double;
    ABand  : TcxGridBand;
    SalesRep : TVendor;
    procedure AddColumns;
    procedure OpenInventory;
    procedure CleanScreen;
    procedure ShowImagem;
    procedure LimpaEdit(Sender: TObject);
  public
    { Public declarations }
    Carrinho : TSalesProcess;
    Item     : TSalesProcessItem;
    procedure SetupPricingTable;
  end;

var
  frmInventory: TfrmInventory;

implementation

{$R *.dfm}

uses uDMConectDB, ufrmViewCart, AsyncCalls, uFrmRoom,  Vcl.Graphics;

procedure TfrmInventory.AddColumns;
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
    ABand.Caption := 'PRINCING TABLE U$';

    AColumn         := cxGrid1DBBandedTableView1.CreateColumn;
    AColumn.Width   := 60;
    AColumn.Caption := 'ID';
    AColumn.DataBinding.FieldName := sqlInventoty.Fields[8].FieldName;
    AColumn.Position.BandIndex := 0;


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
          AColumn.PropertiesClass := TcxCurrencyEditProperties;
          TcxCurrencyEditProperties(AColumn.Properties).DisplayFormat := 'U$,0.00;(U$,0.00)';
{
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

procedure TfrmInventory.btnCartClick(Sender: TObject);
var
 I : integer;
 varExist  : Boolean;
begin
  if sqlInventoty.IsEmpty then Exit;

  if not Assigned(Carrinho) then Exit;


  if edttotalarea.Value < varTempAreaTotal then
  begin
     If Mens_MensConf(' This amount is not enough to meet this job. Cotinue? ') <> mrOk then
       Exit;
  end;


  if cxLookupComboBoxPrincing.Text = '' Then
  begin
    Mens_MensErro('The Pricing Table field is required.');
    cxLookupComboBoxPrincing.SetFocus;
    exit;
  end;

  if (lblProductID.Caption = '0') then
  begin
    Mens_MensInf('Product name is not Selected!') ;
    Exit;
  end;

  if edtweidth.Text = '' then
  begin
     Mens_MensInf('Width fiels is required.') ;
     edtweidth.SetFocus;
     Exit;
  end;

  if edtheight.Text = '' then
  begin
     Mens_MensInf('Length fiels is required.') ;
     edtheight.SetFocus;
     Exit;
  end;

  if item.room = '' then
  begin
     Mens_MensInf('Room field is required.') ;
     btnRoom.SetFocus;
    Exit;
  end;

  if edttotalarea.Text = '' then
  begin
     Mens_MensInf('Total Area fiels is required.') ;
     edttotalarea.SetFocus;
     Exit;
 end;

 varExist := False;
 for I := 0 to Carrinho.ItensNF.Count - 1 do
 begin
   if Carrinho.ItensNF.Items[i].id_product = StrToInt(lblProductID.Caption) then
   begin
      varExist := True;
   end;
 end;
 if varExist then
 begin
      Mens_MensInf('Item already added to the Cart!') ;
      Exit;
 end;

 Try
    Inc(ItemCount);
    item.tablename       := 'TBESTIMATE_ITEM';
    Item.id_process_item := ItemCount;
    Item.id_pricelist    := cxLookupComboBoxPrincing.EditValue;
    Item.id_product      := StrToInt(lblProductID.Caption);
    if cmbProduct.ItemIndex = 0 then
    begin
      Item.qty          := StrToFloat(EdtQty.Text);
      item.tax          := StrToFloat(lblTax.Caption);
    end
    else
    begin
      Item.qty          := 0;
      item.tax          := 0;
    end;

    Item.rate           := StrToFloat(lblRate.Caption);
    Item.amout          := StrToFloat(lblAmount.Caption);

    Carrinho.ItensNF.Add(Carrinho, Item);
 Finally
     varAcumTotal       := 0;
     varAcumSubTotal    := 0;
     varAcumTax         := 0;

     for I := 0 to Carrinho.ItensNF.Count - 1 do
     begin
        varAcumTotal    := varAcumTotal + (Carrinho.ItensNF.Items[i].tax +  Carrinho.ItensNF.Items[i].amout);
        varAcumSubTotal := varAcumSubTotal + Carrinho.ItensNF.Items[i].amout;
        varAcumTax      := varAcumTax +  Carrinho.ItensNF.Items[i].tax;
     end;

     Carrinho.tax      := varAcumTax;
     Carrinho.subtotal := varAcumSubTotal;
     Carrinho.total    := varAcumTotal;
     lblTotal.Caption  := FormatFloat('0.00',varAcumTotal);
     btnCart.Caption   := IntToStr(Carrinho.ItensNF.Count);

 End;
 varSelectProduct := False;
 edtweidth.SetFocus;

end;

procedure TfrmInventory.btnCleanCartClick(Sender: TObject);
begin

  if not Assigned(Carrinho) then Exit;

  if Carrinho.ItensNF.Count > 0  then
  begin
     If Mens_MensConf('Do you really want to empty the Cart?') = mrOk then
     begin
        if Assigned(Carrinho) then
           FreeAndNil(Carrinho);

        if Assigned(Item) then
           FreeAndNil(Item);

        Carrinho  := TSalesProcess.Create(Self);
        Item      := TSalesProcessItem.Create(Self);
        CartID    := 1;
        Try
          ItemCount := 0;
          lblUnidadeMedida.Caption     := '';
          lblInfoQuant.Caption         := '';
          Carrinho.tablename  := 'TBESTIMATE';
          Carrinho.id_process :=  CartID;
          btnCart.Caption     := '0';
          lblTotal.Caption    := '0.00';
          Mens_MensInf('The Cart has been Deleted.') ;
        finally
          lblRoom.Caption     := '';
          CleanScreen;
          varSelectProduct    := False
        End;
     end;

  end
  else
    Mens_MensInf('The Cart is Empty!') ;
end;

procedure TfrmInventory.btnRoomClick(Sender: TObject);

  procedure LoadRoom;
  var
    varRoom2, varRoom : String;
    J, I, Y : Integer;
  begin

     frmRoom.LoadRoom;
     varRoom2 :=  Item.room + ';';
     J := Occurrences(';',varRoom2);
     for I := 0 to J do
     begin
       varRoom := Str_Pal(varRoom2 , I, ';');
       for Y:= 0 to frmRoom.chklistRoom.Items.Count - 1 do
          if frmRoom.chklistRoom.Items[Y] =  varRoom then
             frmRoom.chklistRoom.Checked[Y] := True;
  end;


  end;
var
 I : Integer;
begin
  if sqlInventoty.IsEmpty then Exit;

  if Carrinho <> Nil then
  begin
    try
       Application.CreateForm(TfrmRoom,  frmRoom);
       LocalAsyncVclCall( @LoadRoom );
       lblRoom.Caption := '';
       frmRoom.ShowModal;
    finally
       lblRoom.Caption := '';
       Item.room       := '';
       for i := 0 to frmRoom.chklistRoom.Items.Count -1 do
       begin
         if frmRoom.chklistRoom.Checked[I] then
            Item.room := Item.room + frmRoom.chklistRoom.Items[i] + ';';
       end;

        Item.room := Copy(Item.room, 1, Length(Item.room)-1);
        lblRoom.Caption := Item.room;
        FreeAndNil(frmRoom);
    end;
  end;
end;

procedure TfrmInventory.btnViewCartClick(Sender: TObject);

  procedure LoadCarrinho;
  var
    Y : Integer;
  begin
    if Carrinho <> Nil then
    begin
       if Carrinho.ItensNF.Count > 0  then
       begin
          frmViewCart.CreateCart;
          for Y := 0 to Carrinho.ItensNF.Count  -1 do
          begin
            frmViewCart.CartViewItem.Assign(Carrinho.ItensNF[Y]);
            frmViewCart.Cart.ItensNF.Add(frmViewCart.Cart, frmViewCart.CartViewItem);
          end;
       end;
    end;
  end;

Var
 I : Integer;
begin
  if sqlInventoty.IsEmpty then Exit;

  if not Assigned(Carrinho) then Exit;

  if Carrinho.ItensNF.Count > 0  then
  begin
      try
         Application.CreateForm(TfrmViewCart,  frmViewCart);
         LocalAsyncVclCall( @LoadCarrinho );
         frmViewCart.ShowModal;
      finally
          FreeAndNil(Carrinho);
          Item.Inicializar;
          Carrinho := TSalesProcess.Create(Self);

          if frmViewCart.Cart <> Nil then
          begin
             if frmViewCart.Cart.ItensNF.Count > 0  then
             begin
                ItemCount := 0;
                for I := 0 to frmViewCart.Cart.ItensNF.Count  -1 do
                begin
                  Inc(ItemCount);
                  frmViewCart.Cart.ItensNF[I].id_process_item := ItemCount;
                  Item.Assign(frmViewCart.Cart.ItensNF[I]);
                  Carrinho.ItensNF.Add(Carrinho, Item);
                end;

                varAcumTotal := 0;
                for I := 0 to Carrinho.ItensNF.Count - 1 do
                   varAcumTotal := varAcumTotal + (Carrinho.ItensNF.Items[i].tax + Carrinho.ItensNF.Items[i].amout);
                lblTotal.Caption   := FormatFloat('0.00',varAcumTotal);
                btnCart.Caption    := IntToStr(ItemCount);
                CleanScreen;
             end
             else
             begin
               CleanScreen;
               ItemCount           := 0;
               btnCart.Caption     := '0';
               lblTotal.Caption    := '0.00';
             end;
          end;

          FreeAndNil(frmViewCart.Cart);
          FreeAndNil(frmViewCart.CartViewItem);
          FreeAndNil(frmViewCart.Product);
          FreeAndNil(frmViewCart);
      end;
  end
  else
      Mens_MensInf('The Cart is Empty.') ;


end;

procedure TfrmInventory.ButCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmInventory.cmbProductClick(Sender: TObject);
begin
   CleanScreen;
   cxLookupComboBoxPrincingClick(Self);
end;

procedure TfrmInventory.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
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
   lblUnidadeMedida.Caption     := '';
   lblInfoQuant.Caption         := '';
   lblManufactory.Caption       := sqlInventoty.Fields[0].AsString;
   lblProductName.Caption       := sqlInventoty.Fields[3].AsString;

   lblStyle.Caption             := sqlInventoty.Fields[2].AsString;
   lblProductType.Caption       := sqlInventoty.Fields[1].AsString;
   lblTotalSQF.Caption          := sqlInventoty.Fields[6].AsString;

   lblProductID.Caption         := ZeroLeft(sqlInventoty.Fields[8].AsString,7);
   lblRate.Caption              := FormatFloat('0.00', sqlInventoty.Fields[7].AsFloat);
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

procedure TfrmInventory.cxLookupComboBoxPrincingClick(Sender: TObject);
begin
  if cxLookupComboBoxPrincing.EditValue <> -1 then
    OpenInventory;

end;

procedure TfrmInventory.edtProductIDChange(Sender: TObject);
begin
  if sqlInventoty.IsEmpty Then Exit;
  sqlInventoty.FindNearest([edtProductID.Text]);
end;

procedure TfrmInventory.LimpaEdit(Sender: TObject);
var i : integer;
begin
     for i := 0 to ComponentCount -1 do
     begin

       if (Components[i] is TEdit) then
          TEdit(Components[i]).Clear;

     end;
end;

procedure TfrmInventory.edtProductIDEnter(Sender: TObject);
begin
  if sqlInventoty.IsEmpty Then Exit;

  //'Product ID';
  sqlInventoty.IndexFieldNames :=  sqlInventoty.FieldList.fields[8].fieldname;
  LimpaEdit(Self);
end;

procedure TfrmInventory.edtProductIDKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in [#8, '0'..'9', FFormatoBR.DecimalSeparator]) then begin
    ShowMessage('Invalid key: ' + Key);
    Key := #0;
  end
  else if ((Key = FFormatoBR.DecimalSeparator) or (Key = '-')) and
      (Pos(Key, edtProductID.Text) > 0) then begin
    ShowMessage('Invalid Key: twice ' + Key);
    Key := #0;
  end
  else if (Key = '-') and (edtProductID.SelStart <> 0) then begin
    ShowMessage('Only allowed at beginning of number: ' + Key);
    Key := #0;
  end;
end;

procedure TfrmInventory.edtProductTypeChange(Sender: TObject);
begin
  if sqlInventoty.IsEmpty Then Exit;
  sqlInventoty.FindNearest([edtProductType.Text]);
end;

procedure TfrmInventory.edtProductTypeEnter(Sender: TObject);
begin

  if sqlInventoty.IsEmpty Then Exit;

  sqlInventoty.IndexFieldNames :=  sqlInventoty.FieldList.fields[1].fieldname;
    LimpaEdit(Self);
end;

procedure TfrmInventory.edtweidthEnter(Sender: TObject);
begin
  if Assigned(Item) then
    Item.req_purchase_order := 'N';
  EdtQty.Value            := 0;
  varTempAreaTotal         := 0;
end;

procedure TfrmInventory.edtweidthExit(Sender: TObject);
begin
  if ((UpperCase(sqlInventoty.Fields[1].AsString) = 'CARPET') OR (UpperCase(sqlInventoty.Fields[1].AsString) = 'VINYL')) Then
  begin
    if ((edtweidth.Value <> 6) AND
        (edtweidth.Value <> 12) AND
        (edtweidth.Value <> 15) AND
        (edtweidth.Value <> 16)) then
       begin
         Mens_MensInf('Invalid feet value! Try again.') ;
         edtweidth.Value := 0;
         edtweidth.SetFocus;
       end;
  end;
end;

procedure TfrmInventory.edtweidthKeyPress(Sender: TObject; var Key: Char);
begin
   if  varSelectProduct = False then
   begin
     Mens_MensInf('Please select an item in the list.') ;
     Exit;
   end;
end;

procedure TfrmInventory.edtProdutcStyleChange(Sender: TObject);
begin
  if sqlInventoty.IsEmpty Then Exit;
  sqlInventoty.FindNearest([edtProdutcStyle.Text]);
end;

procedure TfrmInventory.edtProdutcStyleEnter(Sender: TObject);
begin
  if sqlInventoty.IsEmpty Then Exit;

  // 'PRODUCT STYLE'
  sqlInventoty.IndexFieldNames :=  sqlInventoty.FieldList.fields[2].fieldname;
  LimpaEdit(Self);
end;

procedure TfrmInventory.edtheightEnter(Sender: TObject);
begin
  if Assigned(Item) then
    Item.req_purchase_order := 'N';
  EdtQty.Value := 0;
  varTempAreaTotal := 0;
end;

procedure TfrmInventory.edtheightExit(Sender: TObject);
begin
  
  if not sqlInventoty.IsEmpty then
  begin
      if (lblProductID.Caption <> '0') then
      begin
        if ((edtweidth.EditValue <> 0) and (edtheight.EditValue <> 0)) then
        begin
          Item.width           := edtweidth.Value;
          Item.height          := edtheight.Value;

          if ((UpperCase(sqlInventoty.Fields[1].AsString) <> 'CARPET') AND (UpperCase(sqlInventoty.Fields[1].AsString) <> 'VINYL')) Then
          begin
              if cmbProduct.ItemIndex = 0 then
              begin
                  if EdtQty.Text = '0' then
                  begin
                    EdtQty.Text        := FormatFloat('0.00',  (  Item.width * Item.height ) / sqlInventoty.Fields[9].AsFloat  );
                    edttotalarea.value := Item.width * Item.height;
                    varTempAreaTotal   := edttotalarea.Value;
                  end
                  else
                  begin
                    edttotalarea.Value := EdtQty.Value * edtAreaSquareFeetPerBox.Value;
                    lblInfoQuant.Caption     := 'Quantity Per Carton';
                    lblUnidadeMedida.Caption := 'sqft';
                  end;
                  lblTax.Caption      := FormatFloat('0.00',(((edttotalarea.Value *  sqlInventoty.Fields[7].AsFloat) / 100) *  SalesRep.Company.Tax));
                  item.tax            := StrToFloat(lblTax.Caption);
              end;
          end else
          begin
           edttotalarea.value       := Item.height * 1.334;
           lblInfoQuant.Caption     := 'Quantity Per Roll';
           lblUnidadeMedida.Caption := 'yds';
          end;


          if cmbProduct.ItemIndex = 0 then
          begin
             lblAmount.Caption   := FormatFloat('0.00',(edttotalarea.Value  *  sqlInventoty.Fields[7].AsFloat));
             item.totalarea      := edttotalarea.EditValue;
          end
          else
          begin
             edttotalarea.value  := Item.width * Item.height;
             lblAmount.Caption   := FormatFloat('0.00',(edttotalarea.Value  *  sqlInventoty.Fields[7].AsFloat));
          end;

          item.amout          := StrToFloat(lblAmount.Caption);

          if cmbProduct.ItemIndex = 0 then
          begin
            if edttotalarea.Text <> '' then
            begin
              if edttotalarea.Value > StrToFloat(lblAV.Caption) then
              begin
                 Mens_MensInf('Not enough stock!.') ;
                If Mens_MensConf('Not enough stock! Add it to a Purchase Order ? ') = mrOk then
                begin
                     Item.req_purchase_order := 'Y';
                end;
              end;
            end;
          end;
        end;
     end;
  end;
end;

procedure TfrmInventory.edtManufactoryChange(Sender: TObject);
begin
  if sqlInventoty.IsEmpty Then Exit;
  sqlInventoty.FindNearest([edtManufactory.Text]);
end;

procedure TfrmInventory.edtManufactoryEnter(Sender: TObject);
begin
  if sqlInventoty.IsEmpty Then Exit;

  //'MANUFACTORY';
  sqlInventoty.IndexFieldNames :=  sqlInventoty.FieldList.fields[0].fieldname;
    LimpaEdit(Self);
end;

procedure TfrmInventory.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if Carrinho <> Nil then
     FreeAndNil(Carrinho);

  if Item <> Nil then
     FreeAndNil(Item);

  if SalesRep <> Nil then
    FreeAndNil(SalesRep);

  frmInventory := nil;
  Action       := caFree;
end;

procedure TfrmInventory.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  buttonSelected: integer;
begin
  if not Assigned(Carrinho) then Exit;

  if  (Carrinho.ItensNF.Count > 0) then
  begin
     If Mens_MensConf('The Cart is not empty. Do you really want to close the window?') <> mrOk then
          CanClose:=false
     else   CanClose:=true;
  end;

end;

procedure TfrmInventory.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmInventory.OpenInventory;
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
      sqlInventoty.SQL.Add('      LEFT OUTER JOIN TBTYPEBRAND G ON G.ID_TYPEBRAND = C.STYLE ');
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
      sqlInventoty.SQL.Add('	    LEFT OUTER JOIN TBTYPEBRAND F ON F.ID_TYPEBRAND = C.ID_TYPE  ');
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

procedure TfrmInventory.SetupPricingTable;
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

procedure TfrmInventory.EdtQtyChange(Sender: TObject);
begin
   if EdtQty.Value > 0 then
   begin

     edtheightExit(Self);

     if edttotalarea.Value < varTempAreaTotal then
        edttotalarea.Style.Font.Color := RGB(255, 0, 0)
     else  edttotalarea.Style.Font.Color :=  RGB(0, 0, 255)


   end;
end;

procedure TfrmInventory.ShowImagem;
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


procedure TfrmInventory.CleanScreen;
begin
  edtweidth.Text               := '';
  edtheight.Text               := '';
  edtTotalArea.Text            := '';
  EdtQty.Value                 := 0;
  lblManufactory.Caption       := '-';
  lblStyle.Caption             := '-';
  lblProductType.Caption       := '-';
  lblProductName.Caption       := '-';
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

end.
