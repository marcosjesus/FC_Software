unit uFrmProduct;

interface

uses
  jpeg, pngimage,   bde.dbtables,
  MensFun, uClassDBGenerics, uClassProduct,SetParametro,
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
  cxLookAndFeelPainters, Vcl.Menus, cxPC, Vcl.ComCtrls, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, EditBusca, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, cxGridExportLink,
  Vcl.DBCtrls, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, Vcl.ExtDlgs, dxGDIPlusClasses, cxImage, Data.Win.ADODB,
  Datasnap.DBClient;

type
  TfrmProduct = class(TForm)
    cxPageControl: TcxPageControl;
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButAlterar: TcxButton;
    ButExcluir: TcxButton;
    ButSair: TcxButton;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    ButImprimir: TcxButton;
    StatusBar1: TStatusBar;
    cxTabSheetList: TcxTabSheet;
    cxTabSheetForm: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    PgCPrincipal: TcxPageControl;
    TbSFicha: TcxTabSheet;
    Panel2: TPanel;
    Label10: TLabel;
    edtSupplier: TEditBusca;
    Panel3: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    memProduct: TMemo;
    sqlGrid: TFDQuery;
    dsGrid: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    rgTaxable: TRadioGroup;
    SaveDialog: TSaveDialog;
    DSPRODUCTSTYLE: TDataSource;
    dsType: TDataSource;
    TBPRODUCTSTYLE: TFDTable;
    TBTYPE: TFDTable;
    Panel9: TPanel;
    Label13: TLabel;
    edtSupplierItem: TEdit;
    rgActive: TRadioGroup;
    Label18: TLabel;
    Label6: TLabel;
    edProductStyle: TEdit;
    Label11: TLabel;
    edtSKU: TEdit;
    Label12: TLabel;
    edtProductStyleName: TEdit;
    Panel7: TPanel;
    Panel4: TPanel;
    Label14: TLabel;
    edtMskQty: TcxMaskEdit;
    edtAreaSquareFeetPerBox: TEdit;
    edtCostValue: TcxMaskEdit;
    Panel8: TPanel;
    Label5: TLabel;
    cxLookupComboBoxType: TcxLookupComboBox;
    Label9: TLabel;
    Panel10: TPanel;
    Label15: TLabel;
    Label20: TLabel;
    edtColor: TEdit;
    edtColorName: TEdit;
    cxLookupComboBoxStyle: TcxLookupComboBox;
    GroupBox1: TGroupBox;
    Label24: TLabel;
    edtSection: TEdit;
    Label25: TLabel;
    edtPosition: TEdit;
    cxGrid1DBTableView1manufactore: TcxGridDBColumn;
    cxGrid1DBTableView1MATERIAL: TcxGridDBColumn;
    cxGrid1DBTableView1STYLE: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_STYLE: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_STYLE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1COLOR: TcxGridDBColumn;
    cxGrid1DBTableView1COLOR_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1COST_VALUE: TcxGridDBColumn;
    cxGrid1DBTableView1CostValuePerFeet: TcxGridDBColumn;
    cxGrid1DBTableView1AreaSquareFeetPerBox: TcxGridDBColumn;
    cxGrid1DBTableView1TotalAreaSquareFeet: TcxGridDBColumn;
    cxGrid1DBTableView1LOC_SECTION: TcxGridDBColumn;
    cxGrid1DBTableView1LOC_POSITION: TcxGridDBColumn;
    sqlGridMATERIAL: TStringField;
    sqlGridSTYLE: TStringField;
    sqlGridMANUFACTURE: TStringField;
    sqlGridPRODUCT_STYLE: TStringField;
    sqlGridPRODUCT_STYLE_NAME: TStringField;
    sqlGridCOLOR: TStringField;
    sqlGridCOLOR_NAME: TStringField;
    sqlGridLOC_SECTION: TStringField;
    sqlGridLOC_POSITION: TStringField;
    sqlGridAreaSquareFeetPerBox: TFloatField;
    sqlGridQTY: TFloatField;
    sqlGridTOTALAREASQUAREFEET: TFloatField;
    sqlGridCOST_VALUE: TBCDField;
    sqlGridCostValuePerFeet: TFloatField;
    sqlGridSKU: TStringField;
    sqlGridID_TYPE: TIntegerField;
    sqlGridTYPEOFPRODUCT: TStringField;
    sqlGridACTIVE: TStringField;
    sqlGridADD_DATE: TSQLTimeStampField;
    sqlGridUPD_DATE: TSQLTimeStampField;
    sqlGridAreaSquareYardPerBox: TFloatField;
    sqlGridTotalAreaSquareYard: TFloatField;
    sqlGridrollnumber: TStringField;
    sqlGridrollnumberdialog: TStringField;
    sqlGridID_USER: TIntegerField;
    sqlGridID_PRODUCT: TIntegerField;
    sqlGridID_SUPPLIER: TIntegerField;
    sqlGridSUPPLIER_ITEM: TStringField;
    sqlGridTAXBLE: TStringField;
    TBPRODUCTSTYLEID_TYPEBRAND: TFDAutoIncField;
    TBPRODUCTSTYLECATEGORY: TStringField;
    TBPRODUCTSTYLEDESCRIPTION: TStringField;
    TBPRODUCTSTYLEADD_DATE: TDateField;
    TBPRODUCTSTYLEUPD_DATE: TDateField;
    TBPRODUCTSTYLEID_USER: TIntegerField;
    TBPRODUCTSTYLEPROFIT_MIN: TFloatField;
    TBPRODUCTSTYLEPROFIT_REGULAR: TFloatField;
    TBTYPEID_TYPEBRAND: TFDAutoIncField;
    TBTYPECATEGORY: TStringField;
    TBTYPEDESCRIPTION: TStringField;
    TBTYPEADD_DATE: TDateField;
    TBTYPEUPD_DATE: TDateField;
    TBTYPEID_USER: TIntegerField;
    TBTYPEPROFIT_MIN: TFloatField;
    TBTYPEPROFIT_REGULAR: TFloatField;
    Label3: TLabel;
    OpenPictureDialog: TOpenPictureDialog;
    btnSaveImage: TcxButton;
    edtCodigo: TcxCurrencyEdit;
    SavePictureDialog: TSavePictureDialog;
    sqlImage: TFDQuery;
    sqlImageID_IMAGE: TFDAutoIncField;
    sqlImageiD_PRODUCT: TIntegerField;
    sqlImageImagem: TBlobField;
    Image1: TImage;
    cxGrid1DBTableView1ID_PRODUCT: TcxGridDBColumn;
    edtCostValuePerFeet: TcxCurrencyEdit;
    Label8: TLabel;
    edtTotalAreaSquareFeet: TEdit;
    Label21: TLabel;
    edtrollnumber: TEdit;
    edtdyelot: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label19: TLabel;
    Shape1: TShape;
    edtWidth: TcxCurrencyEdit;
    edtHeight: TcxCurrencyEdit;
    Label4: TLabel;
    Label7: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label16: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxPageControlChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ButNovoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure edtSupplierClick(Sender: TObject);
    procedure ButSalvarClick(Sender: TObject);
    procedure ButAlterarClick(Sender: TObject);
    procedure ButExcluirClick(Sender: TObject);
    procedure ButImprimirClick(Sender: TObject);
    procedure ButSairClick(Sender: TObject);
    procedure ButCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCostValueExit(Sender: TObject);
    procedure edtCostValueKeyPress(Sender: TObject; var Key: Char);
    procedure edtMskQtyKeyPress(Sender: TObject; var Key: Char);
    procedure edtAreaSquareFeetPerBoxKeyPress(Sender: TObject; var Key: Char);
    procedure cxLookupComboBoxTypePropertiesChange(Sender: TObject);
    procedure btnSaveImageClick(Sender: TObject);
    procedure edtHeightExit(Sender: TObject);
  private
    { Private declarations }
    myBlobField : TBlobField;
    Product : TProduct;
    varOption : char;  // I = Insert / U = Update
    varNewKey : Integer;
    procedure LimpaEdits;
    function check : Boolean;
    procedure ShowImagem;
    procedure ConvertToJPEGx;
    procedure SaveNoImagem;
    procedure SaveImage;
    procedure EnabledRollFields(varStatus : Boolean);
  public
    { Public declarations }
  end;

var
  frmProduct: TfrmProduct;

implementation

{$R *.dfm}

uses uFunctions, uDMConectDB;


procedure TfrmProduct.LimpaEdits;
var i : integer;
begin
   Panel1.caption := 'ID: ';
   varOption      := 'X';
   if cxPageControl.ActivePageIndex = 1 then   // TABSHEET = 2
   begin
     for i := 0 to ComponentCount -1 do
     begin

       if (Components[i] is TcxCurrencyEdit) then
          TcxCurrencyEdit(Components[i]).Clear;

       if (Components[i] is TcxLookupComboBox) then
          TcxLookupComboBox(Components[i]).Clear;



       if (Components[i] is TcxMaskEdit) then
          TcxMaskEdit(Components[i]).Clear;

       if (Components[i] is TEdit) then
          TEdit(Components[i]).Clear;

       if (Components[i] is TEditBusca) then
          TEditBusca(Components[i]).Clear;

       if (Components[i] is TMemo) then
          TMemo(Components[i]).Clear;

     end;
   end;

end;



procedure TfrmProduct.SaveNoImagem;
begin
   if Image1.Picture.Graphic = Nil Then
   begin
     OpenPictureDialog.FileName := ExtractFilePath(Application.ExeName) + 'noimage.jpg';
     SaveImage;
   end;
end;

procedure TfrmProduct.ShowImagem;
var
  Jpg : TJPEGImage;
  foto : TMemoryStream;
  S : TMemoryStream;
  Graphic: TGraphic;
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

procedure TfrmProduct.ButAlterarClick(Sender: TObject);
begin
    varOption := 'U';
    if  sqlGrid.IsEmpty  then exit;
    cxGrid1DBTableView1DblClick(self);
end;

procedure TfrmProduct.ButCancelarClick(Sender: TObject);
begin
  cxPageControl.ActivePage := cxTabSheetList;
  LimpaEdits;
end;

procedure TfrmProduct.ButExcluirClick(Sender: TObject);
begin
 if  sqlGrid.IsEmpty  then exit;

 cxGrid1DBTableView1DblClick(self);
 varOption := 'X';
  If ( Mens_MensConf('Delete record ?') = mrOk ) Then
  Begin
     Product.Delete;
     sqlGrid.Close;
     sqlGrid.Open;
     cxPageControl.ActivePage := cxTabSheetList;
  End;
end;

procedure TfrmProduct.ButImprimirClick(Sender: TObject);
begin
 if sqlGrid.IsEmpty Then Exit;

  if cxPageControl.ActivePage = cxTabSheetList  then
  begin
        if sqlGrid.IsEmpty then
            raise Exception.Create('There is no dadta do be printed');

      //  SaveDialog.InitialDir := GetCurrentDir;
        //Mensagem('Wait, Saving spreadsheet...');
        if SaveDialog.Execute then
        begin
           Screen.Cursor := crHourGlass;
           ExportGridToExcel(SaveDialog.FileName, cxGrid1, True, True);
           //Mensagem( pChar( 'Planilha exportada em  ' + ExtractFilePath(SaveDialog.FileName) ) );

        end;
        Screen.Cursor := crDefault;
        //Mensagem( EmptyStr );
  end;
end;

procedure TfrmProduct.ButNovoClick(Sender: TObject);
var
  varNextKey : TDBNextKey;
begin
  LimpaEdits;
  cxPageControl.ActivePage := cxTabSheetForm;
  varOption := 'I';
  varNextKey               := TDBNextKey.Create('TBPRODUCT');
  Try
    varNewKey              := varNextKey.Key;
    edtCodigo.Value        := varNewKey;
    varNextKey.UpdateKey(varNewKey, 'TBPRODUCT'); // atualiza a nova chave no banco

    Product := TProduct.Create;
    cxPageControl.ActivePage     := cxTabSheetForm;
    edtSupplier.SetFocus;
    Image1.Picture.Graphic := Nil;

  finally
    FreeAndNil(varNextKey);
  End;
end;

procedure TfrmProduct.ButSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmProduct.ButSalvarClick(Sender: TObject);
begin
  if varOption = 'X' then
  begin
     Mens_MensInf('The Product Table not in edit or insert mode.') ;
     Exit;
  end;

  if Check = False then exit;

  if Product = Nil then exit;

   Try
    Try
      Product.id_product            := varNewKey;
      Product.id_supplier           := edtSupplier.bs_KeyValue;
      Product.supplier_item         := edtSupplierItem.Text;
      Product.product_name          := memProduct.Lines.Text;
      Product.Id_Type               := cxLookupComboBoxType.EditValue;


      if rgTaxable.ItemIndex = 0  then    // If Product
      begin
          Product.sku                   := edtSKU.Text;
          Product.color                 := edtColor.Text;
          Product.width                 := edtWidth.Value;
          Product.height                := edtHeight.Value;
          Product.style                 := cxLookupComboBoxStyle.EditValue;
          Product.colorname             := edtColorName.Text;
          Product.product_style         := edProductStyle.Text;
          Product.product_style_name    := edtProductStyleName.Text;
          Product.loc_section           := edtSection.Text;
          Product.loc_position          := edtPosition.Text;
          Product.costValuePerFeet      := StrToFloat(edtCostValuePerFeet.Text);


          Product.areaSquareFeetPerBox  := StrToFloat(edtAreaSquareFeetPerBox.Text);
          Product.totalAreaSquareFeet   := StrToFloat(edtTotalAreaSquareFeet.Text);
          // AGUARDANDO ENTENDIMENTO DE COMO CALCULAR YARD QUANDO FOR CARPET
          Product.areaSquareYardPerBox  := 0.0; //StrToFloat(edtAreaSquareYardPerBox.Text);
          Product.totalAreaSquareYard   := 0.0; //StrToFloat(edtTotalAreaSquareYard.Text);
          Product.rollnumber            := edtrollnumber.Text;
          Product.rollnumberdialog      := edtdyelot.Text;

      end
      else
      begin
          Product.sku                   := '';
          Product.color                 := '';
          Product.width                 := 0.0;
          Product.height                := 0.0;
          Product.style                 := '';
          Product.colorname             := '';
          Product.product_style         := '';
          Product.product_style_name    := '';
          Product.loc_section           := '';
          Product.loc_position          := '';
          Product.costValuePerFeet      := 0.0;
          Product.areaSquareFeetPerBox  := 0;
          Product.totalAreaSquareFeet   := 0;
          Product.areaSquareYardPerBox  := 0;
          Product.totalAreaSquareYard   := 0;
          Product.rollnumber            := '';
          Product.rollnumberdialog      := '';
      end;

	    Product.Qty                   := StrToFloat(edtMskQty.Text);
      Product.cost_value            := StrToFloat(edtCostValue.Text);
      Product.id_user               := DBDados.varID_USER;

      if rgTaxable.ItemIndex = 0 then
      begin
            Product.taxble := 'Y';
            Product.typeOfProduct := 'PRODUCT';
      end
      else
      begin
            Product.taxble := 'N';
            Product.typeOfProduct := 'SERVICE';
      end;

      if rgActive.ItemIndex = 0 then
            Product.Active := 'Y'
      else Product.Active := 'N';

     
      if varOption = 'I' then
        Product.Save
      else if varOption = 'U' then
        Product.Update;

       SaveNoImagem;

    except
      on E : Exception do
        Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
    end;

    varOption := 'X';
  finally
      FreeAndNil(Product);
  end;
  LimpaEdits;
  cxPageControl.ActivePage := cxTabSheetList;
  sqlGrid.Close;
  sqlGrid.Open;


end;

function TfrmProduct.check: Boolean;
var
 Retorno : Boolean;
begin
  Retorno := True;


  if ((edtSupplier.Text = '') and (edtSupplier.bs_KeyValues.Count = 0)) then
  begin
       Mens_MensInf('Supplier is missing.');
       edtSupplier.SetFocus;
       Retorno := False;
  end;

  if rgTaxable.ItemIndex = 0 then
  begin

      if edtColor.Text = '' then
      begin
           Mens_MensInf('Color is missing.');
           edtColor.SetFocus;
           Retorno := False;
      end;


      if cxLookupComboBoxType.ItemIndex = -1 then
      begin
           Mens_MensInf('Type is missing.');
           cxLookupComboBoxType.SetFocus;
           Retorno := False;
      end;


      if memProduct.Text = '' then
      begin
           Mens_MensInf('Product´s Name is missing.');
           memProduct.SetFocus;
           Retorno := False;
      end;

      if edProductStyle.Text = '' then
      begin
           Mens_MensInf('Style is missing.');
           edProductStyle.SetFocus;
           Retorno := False;
      end;

      if edtProductStyleName.Text = '' then
      begin
           Mens_MensInf('Style is missing.');
           edtProductStyleName.SetFocus;
           Retorno := False;
      end;
  end;


  if edtCostValue.Text = '' then
  begin
       Mens_MensInf('Cost Value is missing.');
       edtCostValue.SetFocus;
       Retorno := False;
  end;

  if edtMskQty.Text = '' then
  begin
       Mens_MensInf('Qty is missing.');
       edtMskQty.SetFocus;
       Retorno := False;
  end;

  Result := Retorno;

end;

procedure TfrmProduct.ConvertToJPEGx;
//const
//  path = 'C:\Users\aluga.com\Documents\RAD Studio\Projects\FloorsColumbus\Imagens\';
//var
//  jpeg: TJpegImage;
//  bmp:  TBitmap;
begin
 {
  jpeg := TJpegImage.Create;
  bmp  := TBitmap.Create;
  try
    jpeg.LoadFromFile( path + 'images.jpg');
    bmp.Assign(jpeg);
    jpeg.Assign(bmp);
    jpeg.CompressionQuality := 50;
    jpeg.Compress;
    jpeg.SaveToFile ( path + 'images.jpg' );
  finally
    bmp.Free;
    jpeg.Free;

  end;  }
end;

procedure TfrmProduct.btnSaveImageClick(Sender: TObject);

begin

  if not OpenPictureDialog.Execute then
    Exit;

  SaveImage;
  
end;

procedure  TfrmProduct.SaveImage;
var
  S : TMemoryStream;
  ikode : integer;
begin

  Image1.Picture.LoadFromFile(OpenPictureDialog.FileName);

  S := TMemoryStream.Create;
  try
    Image1.Picture.Graphic.SaveToStream(S);
    S.Position := 0;


    sqlImage.Close;
    sqlImage.SQL.Clear;
    sqlImage.SQL.Add('DELETE FROM TBIMAGE WHERE ID_PRODUCT  = :ID_PRODUCT');
    sqlImage.Params.ParamByName('ID_PRODUCT').AsInteger := StrToInt(edtCodigo.Text);
    sqlImage.ExecSQL;

    
    sqlImage.Close;
    sqlImage.SQL.Clear;
    sqlImage.SQL.Add('SELECT ID_IMAGE, ID_PRODUCT, imagem  FROM TBIMAGE WHERE ID_PRODUCT  = :ID_PRODUCT');
    sqlImage.Params.ParamByName('ID_PRODUCT').AsInteger := StrToInt(edtCodigo.Text);
    sqlImage.Open;

    sqlImage.Insert;
    sqlImage.FieldByName('ID_PRODUCT').AsInteger := StrToInt(edtCodigo.Text);
    try
      TBlobField(sqlImage.FieldByName('imagem')).LoadFromStream(S);
      sqlImage.Post;
    except
      sqlImage.Cancel;
      raise;
    end;
  finally
    S.Free;
  end;
end;

procedure TfrmProduct.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
    Product := TProduct.Create;
    Product.Search(sqlGridID_PRODUCT.AsInteger);

    LimpaEdits;
    varOption := 'U';

    varNewKey                    := Product.id_product;
    edtCodigo.Value              := varNewKey;

    StatusBar1.Panels[1].Text    := 'Date Created ' + Product.add_date;
    StatusBar1.Panels[2].Text    := 'Date Modified ' + Product.upd_date;
    edtSupplier.SetValue('S.ID_SUPPLIER=' + IntToStr(Product.id_supplier));
    edtSupplierItem.Text         :=  Product.supplier_item;
    edtSKU.Text                  := Product.sku;
    edtColor.Text                := Product.color;
    edtColorName.Text            := Product.colorname;

    memProduct.Lines.Text           := Product.product_name;

    cxLookupComboBoxStyle.EditValue  := Product.style;

    edProductStyle.Text             := Product.product_style;
    edtProductStyleName.Text        := Product.product_style_name;
    edtSection.Text                 := Product.loc_section;
    edtPosition.Text                := Product.loc_position;
    edtWidth.Value                  := Product.width;
    edtHeight.Value                 := Product.height;

    edtCostValue.Text               := FloatToStr(Product.cost_value);
    edtCostValuePerFeet.Text        := FloatToStr(Product.costValuePerFeet);
    edtAreaSquareFeetPerBox.Text    := FloatToStr(Product.areaSquareFeetPerBox);
    edtTotalAreaSquareFeet.Text     := FloatToStr(Product.totalAreaSquareFeet);
//    edtAreaSquareYardPerBox.Text    := FloatToStr(Product.areaSquareYardPerBox);
//    edtTotalAreaSquareYard.Text     := FloatToStr(Product.totalAreaSquareYard);
    edtrollnumber.Text              := Product.rollnumber;
    edtdyelot.Text                  := Product.rollnumberdialog;
    edtMskQty.Text                  := FloatToStr(Product.Qty);
    cxLookupComboBoxType.EditValue  := Product.Id_Type;

    if Product.taxble = 'Y' then
       rgTaxable.ItemIndex := 0
    else  rgTaxable.ItemIndex := 1;

    if Product.Active = 'Y' then
       rgActive.ItemIndex := 0
    else  rgActive.ItemIndex := 1;

    cxPageControl.ActivePage     := cxTabSheetForm;

    sqlImage.Close;
    sqlImage.Params.ParamByName('ID_PRODUCT').AsInteger := Product.id_product;
    sqlImage.Open;
    ShowImagem;
    edtSupplier.SetFocus;
end;

procedure TfrmProduct.EnabledRollFields(varStatus : Boolean);
begin
  edtWidth.Enabled := varStatus;
  edtHeight.Enabled := varStatus;
  edtrollnumber.Enabled := varStatus;
  edtdyelot.Enabled := varStatus;
end;

procedure TfrmProduct.cxLookupComboBoxTypePropertiesChange(Sender: TObject);
begin
  if rgTaxable.ItemIndex = 0 then
  begin
    if (( cxLookupComboBoxType.Text = 'CARPET') OR (cxLookupComboBoxType.Text = 'VINYL')) then
        EnabledRollFields(True)
    else  EnabledRollFields(False);
  end;
end;

procedure TfrmProduct.cxPageControlChange(Sender: TObject);
begin
  if  varOption = 'X' then
    cxPageControl.ActivePage  := cxTabSheetList;
end;

procedure TfrmProduct.edtAreaSquareFeetPerBoxKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (Key in [#8, '0'..'9', FFormatoBR.DecimalSeparator]) then begin
    ShowMessage('Invalid key: ' + Key);
    Key := #0;
  end
  else if ((Key = FFormatoBR.DecimalSeparator) or (Key = '-')) and
      (Pos(Key, edtAreaSquareFeetPerBox.Text) > 0) then begin
    ShowMessage('Invalid Key: twice ' + Key);
    Key := #0;
  end
  else if (Key = '-') and (edtAreaSquareFeetPerBox.SelStart <> 0) then begin
    ShowMessage('Only allowed at beginning of number: ' + Key);
    Key := #0;
  end;
end;

procedure TfrmProduct.edtCostValueExit(Sender: TObject);
begin
  if edtMskQty.Text <> '' then
   Product.qty                  := StrToFloat(edtMskQty.Text);

  if edtCostValue.Text <> '' then
   Product.cost_value           := StrToFloat(edtCostValue.Text);

  if edtAreaSquareFeetPerBox.Text <> '' then
   Product.areaSquareFeetPerBox := StrToFloat(edtAreaSquareFeetPerBox.Text);

  Product.Calculate;

  if Product.totalAreaSquareFeet > 0 Then
    edtTotalAreaSquareFeet.Text := FloatToStr(Product.totalAreaSquareFeet);

  if Product.costValuePerFeet > 0 then
    edtCostValuePerFeet.Text :=  FloatToStr(Product.costValuePerFeet);

//  if Product.areaSquareYardPerBox > 0 then
//    edtAreaSquareYardPerBox.Text := FloatToStr(Product.areaSquareYardPerBox);

//  if Product.totalAreaSquareYard > 0 then
//    edtTotalAreaSquareYard.Text := FloatToStr(Product.totalAreaSquareYard);

end;

procedure TfrmProduct.edtCostValueKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in [#8, '0'..'9', FFormatoBR.DecimalSeparator]) then begin
    ShowMessage('Invalid key: ' + Key);
    Key := #0;
  end
  else if ((Key = FFormatoBR.DecimalSeparator) or (Key = '-')) and
      (Pos(Key, edtCostValue.Text) > 0) then begin
    ShowMessage('Invalid Key: twice ' + Key);
    Key := #0;
  end
  else if (Key = '-') and (edtCostValue.SelStart <> 0) then begin
    ShowMessage('Only allowed at beginning of number: ' + Key);
    Key := #0;
  end;
end;

procedure TfrmProduct.edtHeightExit(Sender: TObject);
begin
  if ((edtWidth.Text <> '') and (edtHeight.Text <> '')) then
    edtAreaSquareFeetPerBox.text := FormatFloat('0.00', (edtWidth.Value * edtHeight.Value) / 9);
end;

procedure TfrmProduct.edtMskQtyKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in [#8, '0'..'9', FFormatoBR.DecimalSeparator]) then begin
    ShowMessage('Invalid key: ' + Key);
    Key := #0;
  end
  else if ((Key = FFormatoBR.DecimalSeparator) or (Key = '-')) and
      (Pos(Key, edtMskQty.Text) > 0) then begin
    ShowMessage('Invalid Key: twice ' + Key);
    Key := #0;
  end
  else if (Key = '-') and (edtMskQty.SelStart <> 0) then begin
    ShowMessage('Only allowed at beginning of number: ' + Key);
    Key := #0;
  end;
end;

procedure TfrmProduct.edtSupplierClick(Sender: TObject);
begin
  if ((edtSupplier.Text <> '') and (edtSupplier.bs_KeyValues.Count > 0)) Then
   Product.id_supplier := StrToInt(VarToStr(edtSupplier.bs_KeyValue))
  else   Product.id_supplier := 0;
end;

procedure TfrmProduct.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmProduct := nil;
  Action := caFree;
end;

procedure TfrmProduct.FormCreate(Sender: TObject);
begin
   varOption := 'X';
   cxPageControl.ActivePage := cxTabSheetList;
   SetParametros(edtSupplier, TipoSupplier);
end;

procedure TfrmProduct.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmProduct.FormShow(Sender: TObject);
begin
  sqlGrid.Close;
  TBPRODUCTSTYLE.Close;
  TBType.Close;
  
  sqlGrid.Open;
  TBPRODUCTSTYLE.Open;
  TBType.Open;

end;

end.
