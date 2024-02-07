unit ufrmViewCart;

interface

uses
  uClassSalesProcess,
  uClassProduct,
  MensFun,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, dxmdaset, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmViewCart = class(TForm)
    memCarrinho: TdxMemData;
    dsCarrinho: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel27: TPanel;
    ButExcluir: TcxButton;
    memCarrinhoPRODUCT_ID: TIntegerField;
    memCarrinhoPROCESS_ITEM_ID: TIntegerField;
    cxGrid1DBTableView1RecId: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1PROCESS_ITEM_ID: TcxGridDBColumn;
    ButCancelar: TcxButton;
    memCarrinhoSTYLE: TStringField;
    memCarrinhoPRODUCT_STYLE: TStringField;
    memCarrinhoPRODUCT_STYLE_NAME: TStringField;
    memCarrinhoCOLOR: TStringField;
    memCarrinhoCOLOR_NAME: TStringField;
    memCarrinhoWIDTH: TFloatField;
    memCarrinhoHEIGHT: TFloatField;
    memCarrinhoTOTALAREA: TFloatField;
    memCarrinhoRATE: TFloatField;
    memCarrinhoTAX: TFloatField;
    memCarrinhoSUBTOTAL: TFloatField;
    cxGrid1DBTableView1STYLE: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_STYLE: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_STYLE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1COLOR: TcxGridDBColumn;
    cxGrid1DBTableView1COLOR_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1WIDTH: TcxGridDBColumn;
    cxGrid1DBTableView1HEIGHT: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALAREA: TcxGridDBColumn;
    cxGrid1DBTableView1RATE: TcxGridDBColumn;
    cxGrid1DBTableView1TAX: TcxGridDBColumn;
    cxGrid1DBTableView1SUBTOTAL: TcxGridDBColumn;
    memCarrinhoQTD: TFloatField;
    cxGrid1DBTableView1QTD: TcxGridDBColumn;
    ButImprimir: TcxButton;
    ButSalvar: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure ButCancelarClick(Sender: TObject);
    procedure ButExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure FillupCart;
  public
    { Public declarations }
    CartViewItem : TSalesProcessItem;
    Cart         : TSalesProcess;
    Product      : TProduct;
    procedure CreateCart;
  end;

var
  frmViewCart: TfrmViewCart;

implementation

{$R *.dfm}



procedure CreateField(AMemData: TDataSet; AFieldName: string; AFieldType: TFieldType);
begin
  if (AMemData = nil) or (AFieldName = '') then
    Exit;
  with AMemData.FieldDefs.AddFieldDef do
  begin
    Name := AFieldName;
    DataType := AFieldType;
    CreateField(AMemData);
  end;
end;

procedure TfrmViewCart.FillupCart;
var
 I : integer;
begin
  memCarrinho.Open;

  for I := 0 to  Cart.ItensNF.Count - 1 do
  begin
    memCarrinho.Insert;
    memCarrinho.FieldByName('PROCESS_ITEM_ID').AsInteger   := Cart.ItensNF.Items[i].id_process_item;
    memCarrinho.FieldByName('PRODUCT_ID').AsInteger        := Cart.ItensNF.Items[i].id_product;
    Product.Search(Cart.ItensNF.Items[i].id_product);
    memCarrinho.FieldByName('STYLE').AsString              := Product.product_style;
    memCarrinho.FieldByName('PRODUCT_STYLE').AsString      := Product.product_style_name;
    memCarrinho.FieldByName('PRODUCT_STYLE_NAME').AsString := Product.product_name;
    memCarrinho.FieldByName('COLOR').AsString              := Product.color;
    memCarrinho.FieldByName('COLOR_NAME').AsString         := Product.colorname;
    memCarrinho.FieldByName('WIDTH').AsFloat               := Cart.ItensNF.Items[i].width;
    memCarrinho.FieldByName('HEIGHT').AsFloat              := Cart.ItensNF.Items[i].height;
    memCarrinho.FieldByName('TOTALAREA').AsFloat           := Cart.ItensNF.Items[i].totalarea;
    memCarrinho.FieldByName('RATE').AsFloat                := Cart.ItensNF.Items[i].rate;
    memCarrinho.FieldByName('TAX').AsFloat                 := Cart.ItensNF.Items[i].tax;
    memCarrinho.FieldByName('SUBTOTAL').AsFloat            := Cart.ItensNF.Items[i].amout;
    memCarrinho.FieldByName('QTD').AsFloat                 := Cart.ItensNF.Items[i].qty;

    memCarrinho.Post;
  end;
  memCarrinho.Refresh;

end;

procedure TfrmViewCart.FormShow(Sender: TObject);
begin
   FillupCart;
end;

procedure TfrmViewCart.ButCancelarClick(Sender: TObject);
begin
  memCarrinho.Close;
  memCarrinho.Open;
  Close;
end;

procedure TfrmViewCart.ButExcluirClick(Sender: TObject);
var
 i : integer;
begin
  If Mens_MensConf('Delete ' + 'Product ID: ' + memCarrinho.FieldByName('PRODUCT_ID').AsString + '  -  Product Name: ' + memCarrinho.FieldByName('PRODUCT_STYLE_NAME').AsString +  '? ') <> mrOk then
    Exit;

  Try
    for I := 0 to Cart.ItensNF.Count - 1 do
    begin
      if  Cart.ItensNF.Items[i].id_product = memCarrinho.FieldByName('PRODUCT_ID').AsInteger  Then
      begin
          Cart.ItensNF.Remove(Cart.ItensNF.Items[i]);
          Break;
      end;
    end;

    memCarrinho.Delete;

  Finally
    memCarrinho.Refresh;
  End;

end;

procedure TfrmViewCart.CreateCart;
begin
    Cart         := TSalesProcess.Create(Self);
    CartViewItem := TSalesProcessItem.Create(Self);
    Product      := TProduct.Create;
end;

end.
