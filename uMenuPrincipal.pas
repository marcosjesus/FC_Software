unit uMenuPrincipal;

interface

uses
  uFunctions,
  UClassDBGenerics,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.RibbonLunaStyleActnCtrls, Vcl.Ribbon,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, cxLabel, Vcl.ExtCtrls, cxGroupBox, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter, cxPC,
  dxSkinscxPCPainter, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxBar,
  dxRibbonRadialMenu, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxTabbedMDI, Vcl.ImgList, dxStatusBar, dxRibbonStatusBar, Vcl.Grids,
  Vcl.ValEdit, cxTextEdit, cxMaskEdit, cxScrollBox, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxBevel, dxRibbonBackstageView,
  cxClasses, dxRibbon, cxFormats, dxGDIPlusClasses,  cxGridExportLink;



type
  TfrmMenuPrincipal = class(TForm)
    dxRibbon: TdxRibbon;
    dxRibbonTabAdmin: TdxRibbonTab;
    dxRibbonStatusBar: TdxRibbonStatusBar;
    dxBarManager: TdxBarManager;
    dxBarManagerBarFile: TdxBar;
    dxBarManagerBarAdmin: TdxBar;
    cxSmallImages: TcxImageList;
    cxLargeImages: TcxImageList;
    dxTabbedMDIManager: TdxTabbedMDIManager;
    FDQueryTSIS_Menu: TFDQuery;
    SqlAux: TFDQuery;
    SaveDialog: TSaveDialog;
    Timer1: TTimer;
    Image1: TImage;
    dxRibbonTabFile: TdxRibbonTab;
    dxRibbonTabTransactions: TdxRibbonTab;
    dxRibbonTabSearchReport: TdxRibbonTab;
    dxBarManagerBarTransaction: TdxBar;
    dxBarManagerBarSearchReport: TdxBar;
    dxBarLargeButtonLogin: TdxBarLargeButton;
    dxBarLargeButtonSupplier: TdxBarLargeButton;
    dxBarLargeButtonCustomer: TdxBarLargeButton;
    dxBarLargeButtonProduct: TdxBarLargeButton;
    dxBarLargeButtonEstimates: TdxBarLargeButton;
    dxBarLargeButtonOrders: TdxBarLargeButton;
    dxBarLargeButtonInvoice: TdxBarLargeButton;
    dxBarLargeButtonSROrders: TdxBarLargeButton;
    dxBarLargeButtonTablePrice: TdxBarLargeButton;
    dxBarLargeButtonAccount: TdxBarLargeButton;
    dxBarManagerBarBase: TdxBar;
    dxBarLargeButtonLogout: TdxBarLargeButton;
    dxBarManagerBarFinance: TdxBar;
    dxRibbonTabFinance: TdxRibbonTab;
    dxBarLargeButtonCreditors: TdxBarLargeButton;
    dxBarLargeButtonDebitors: TdxBarLargeButton;
    dxBarLargeButtonCompany: TdxBarLargeButton;
    dxRibbonRadialMenu: TdxRibbonRadialMenu;
    dxBarLargeButtonPosition: TdxBarLargeButton;
    dxBarLargeButtonStaff: TdxBarLargeButton;
    dxBarLargeButtonPriceTable: TdxBarLargeButton;
    dxBarLargeButtonMisc: TdxBarLargeButton;
    dxBarLargeButtonUser: TdxBarLargeButton;
    dxBarLargeButtonAccessControl: TdxBarLargeButton;
    dxBarManagerBarInventory: TdxBar;
    dxBarLargeButtonInventory: TdxBarLargeButton;
    dxBarLargeButtonCustomerLP: TdxBarLargeButton;
    dxBarLargeButtonRequestOrder: TdxBarLargeButton;
    dxBarLargeButtonSupplierInvoice: TdxBarLargeButton;
    procedure dxBarLargeButtonSIOPRelatoriosFaturamentoPedidoClick(
      Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dxBarLargeButtonSIOPRelatoriosTabelaPrecoClick(Sender: TObject);
    procedure dxBarLargeButtonSIOPRelatoriosVendasClick(Sender: TObject);
    procedure dxBarLargeButtonSIOPRelatorioPartNumberClick(Sender: TObject);
    procedure dxBarLargeButtonSIOPRecuperacaodeContasClick(Sender: TObject);
    procedure dxBarLargeButtonSIOPGestaoMercadoClick(Sender: TObject);
    procedure dxBarLargeButtonSIOPDashBoardClick(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton6SearchClick(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButtonLoginClick(Sender: TObject);
    procedure dxBarLargeButtonAccountClick(Sender: TObject);
    procedure dxBarLargeButtonSupplierClick(Sender: TObject);
    procedure dxBarLargeButtonCustomerClick(Sender: TObject);
    procedure dxBarLargeButtonCompanyClick(Sender: TObject);
    procedure dxBarLargeButtonProductClick(Sender: TObject);
    procedure dxBarLargeButtonCreditorsClick(Sender: TObject);
    procedure dxBarLargeButtonPositionClick(Sender: TObject);
    procedure dxBarLargeButtonStaffClick(Sender: TObject);
    procedure dxBarLargeButtonPriceTableClick(Sender: TObject);
    procedure dxBarLargeButtonMiscClick(Sender: TObject);
    procedure dxBarLargeButtonEstimatesClick(Sender: TObject);
    procedure dxBarLargeButtonOrdersClick(Sender: TObject);
    procedure dxBarLargeButtonSROrdersClick(Sender: TObject);
    procedure dxBarLargeButtonUserClick(Sender: TObject);
    procedure dxBarLargeButtonAccessControlClick(Sender: TObject);
    procedure dxBarLargeButtonInventoryClick(Sender: TObject);
    procedure dxBarLargeButtonCustomerLPClick(Sender: TObject);
    procedure dxBarLargeButtonRequestOrderClick(Sender: TObject);
    procedure dxBarLargeButtonInvoiceClick(Sender: TObject);
    procedure dxBarLargeButtonSupplierInvoiceClick(Sender: TObject);
  private
    { Private declarations }
    procedure System_Acess;

  public
    { Public declarations }

  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;
  Vendor : TVendor;

implementation

{$R *.dfm}

uses AsyncCalls, uDMConectDB, uFrmLogin, MensFun, ufrmAccount, uFrmSupplier, uFrmCustomer,
  uFrmCompany, uFrmProduct, uFrmCreditors, ufrmPosition, uFrmVendorsContractors,
  uFrmPriceTable, ufrmBrandType, ufrmEstimate, ufrmCreateAccount,
  ufrmAccessControl, ufrmInventory, ufrmCustomerLP, ufrmRequestOrder,
  ufrmSupplierInvoice;

procedure TfrmMenuPrincipal.dxBarLargeButtonCreditorsClick(Sender: TObject);

  procedure SetuTable;
  begin

    FrmCreditors.SetupTable; // Estimate

  end;

begin
  if DBDados.varLogado = False  then Exit;

  if not Assigned(FrmCreditors) then
    FrmCreditors := TFrmCreditors.Create(Self);
    FrmCreditors.Show;

    FrmCreditors.Visible := True;
    FrmCreditors.BringToFront;
    FrmCreditors.Update;

    LocalAsyncVclCall( @SetuTable );
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonCompanyClick(Sender: TObject);
begin
  if DBDados.varLogado = False  then Exit;

  if not Assigned(FrmCompany) then
    FrmCompany := TFrmCompany.Create(Self) ;
    FrmCompany.Show;

    FrmCompany.Visible := True;
    FrmCompany.BringToFront;
    FrmCompany.Update;
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonMiscClick(Sender: TObject);
begin
  if DBDados.varLogado = False  then Exit;

  if not Assigned(FrmBrandType) then
    FrmBrandType := TFrmBrandType.Create(Self);
    FrmBrandType.Show;

    FrmBrandType.Visible := True;
    FrmBrandType.BringToFront;
    FrmBrandType.Update;
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonCustomerLPClick(Sender: TObject);
begin
  if DBDados.varLogado = False  then Exit;

  if not Assigned(FrmCustomerLP) then
    FrmCustomerLP := TFrmCustomerLP.Create(Self);
    FrmCustomerLP.Show;

    FrmCustomerLP.Visible := True;
    FrmCustomerLP.BringToFront;
    FrmCustomerLP.Update;
end;

procedure TfrmMenuPrincipal.dxBarLargeButton5Click(Sender: TObject);
var
  I: Integer;
begin
  DBDados.FDConnection.Connected := False;

  Close;

  for I := 0 to MDIChildCount - 1 do begin
    if MDIChildren[I] is TForm then
    begin
        if MDIChildren[i] <> Nil then
        begin
          MDIChildren[I].Close;
        end;
    end;
  end;

  dxRibbonStatusBar.Panels[0].Text := '';
  dxRibbonStatusBar.Panels[1].Text := '';
  dxRibbonStatusBar.Panels[2].Text := '';



  DBDados.varLogado := False;
  Timer1.Enabled  := True;

end;

procedure TfrmMenuPrincipal.dxBarLargeButton6Click(Sender: TObject);
begin
  if DBDados.varLogado = False  then Exit;
  {
  if not Assigned(frmDashBoard) then
    frmDashBoard := TfrmDashBoard.Create(Self);
    frmDashBoard.Show;


    frmDashBoard.Visible := True;
    frmDashBoard.BringToFront;
    frmDashBoard.Update;
    }
end;

procedure TfrmMenuPrincipal.dxBarLargeButton6SearchClick(Sender: TObject);
begin

   if DBDados.varLogado = False  then Exit;
      {
  if not Assigned(frmSearch) then
    frmSearch := TfrmSearch.Create(Self);
    frmSearch.Consulta;
    frmSearch.Show;


    frmSearch.Visible := True;
    frmSearch.BringToFront;
    frmSearch.Update;
    }
end;

procedure TfrmMenuPrincipal.dxBarLargeButton7Click(Sender: TObject);
begin
   if DBDados.varLogado = False  then Exit;
{
  if not Assigned(frmFinanciamento) then
    frmFinanciamento := TfrmFinanciamento.Create(Self);
    frmFinanciamento.Show;


    frmFinanciamento.Visible := True;
    frmFinanciamento.BringToFront;
    frmFinanciamento.Update;
    }
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonAccessControlClick(Sender: TObject);
begin
    if DBDados.varLogado = False  then Exit;

  if not Assigned(frmAccessControl) then
    frmAccessControl := TfrmAccessControl.Create(Self);
    frmAccessControl.Show;

    frmAccessControl.Visible := True;
    frmAccessControl.BringToFront;
    frmAccessControl.Update;
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonAccountClick(Sender: TObject);
begin
  if DBDados.varLogado = False  then Exit;

  if not Assigned(FrmAccount) then
    frmAccount := TfrmAccount.Create(Self);
    FrmAccount.Show;

    frmAccount.Visible := True;
    frmAccount.BringToFront;
    frmAccount.Update;
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonCustomerClick(Sender: TObject);
begin
  if DBDados.varLogado = False  then Exit;

  if not Assigned(FrmCustomer) then
    FrmCustomer := TFrmCustomer.Create(Self);
    FrmCustomer.Show;

    FrmCustomer.Visible := True;
    FrmCustomer.BringToFront;
    FrmCustomer.Update;
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonEstimatesClick(Sender: TObject);

  procedure SetuTable;
  begin

    frmEstimate.SetupTable(1); // Estimate

  end;
begin
  if DBDados.varLogado = False  then Exit;


  if not Assigned(frmEstimate) then
    frmEstimate := TfrmEstimate.Create(Self);
    frmEstimate.Caption := 'Quotation';
    frmEstimate.lblProcessName.Caption := frmEstimate.Caption;
    frmEstimate.Show;

    frmEstimate.Visible := True;
    frmEstimate.BringToFront;
    frmEstimate.Update;

    LocalAsyncVclCall( @SetuTable );
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonInventoryClick(Sender: TObject);
  procedure SetupTable;
  begin

    frmInventory.SetupPricingTable; // Estimate

  end;
begin
  if DBDados.varLogado = False  then Exit;

  if not Assigned(frmInventory) then
    frmInventory := TfrmInventory.Create(Self);
    frmInventory.Caption := 'Estimates';
    frmInventory.Show;

    frmInventory.Visible := True;
    frmInventory.BringToFront;
    frmInventory.Update;

    LocalAsyncVclCall( @SetupTable );
end;


procedure TfrmMenuPrincipal.dxBarLargeButtonInvoiceClick(Sender: TObject);
  procedure SetuTable;
  begin

    frmEstimate.SetupTable(3); // Invoice

  end;
begin
 if DBDados.varLogado = False  then Exit;

  if not Assigned(frmEstimate) then
    frmEstimate := TfrmEstimate.Create(Self);
    frmEstimate.Caption := 'Invoice';
    frmEstimate.lblProcessName.Caption := frmEstimate.Caption;
    frmEstimate.Show;

    frmEstimate.Visible := True;
    frmEstimate.BringToFront;
    frmEstimate.Update;

    LocalAsyncVclCall( @SetuTable );
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonLoginClick(Sender: TObject);
  procedure SetupForm;
  begin

    FrmLogin.SetupForm; // Order

  end;

begin
  if not Assigned(FrmLogin) then
    FrmLogin := TFrmLogin.Create(Self) ;
    FrmLogin.Show;
    DBDados.varLogado := False;

    FrmLogin.Visible := True;
    FrmLogin.BringToFront;
    FrmLogin.Update;

    LocalAsyncVclCall( @SetupForm );

end;

procedure TfrmMenuPrincipal.dxBarLargeButtonOrdersClick(Sender: TObject);
  procedure SetuTable;
  begin

    frmEstimate.SetupTable(2); // Order

  end;
begin
 if DBDados.varLogado = False  then Exit;

  if not Assigned(frmEstimate) then
    frmEstimate := TfrmEstimate.Create(Self);
    frmEstimate.Caption := 'Order';
    frmEstimate.lblProcessName.Caption := frmEstimate.Caption;
    frmEstimate.Show;

    frmEstimate.Visible := True;
    frmEstimate.BringToFront;
    frmEstimate.Update;

    LocalAsyncVclCall( @SetuTable );

end;

procedure TfrmMenuPrincipal.dxBarLargeButtonPositionClick(Sender: TObject);
begin
 if DBDados.varLogado = False  then Exit;

  if not Assigned(FrmPosition) then
    FrmPosition := TFrmPosition.Create(Self);
    FrmPosition.Show;

    FrmPosition.Visible := True;
    FrmPosition.BringToFront;
    FrmPosition.Update;
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonPriceTableClick(Sender: TObject);
begin
 if DBDados.varLogado = False  then Exit;

  if not Assigned(FrmPriceTable) then
    FrmPriceTable := TFrmPriceTable.Create(Self);
    FrmPriceTable.Show;

    FrmPriceTable.Visible := True;
    FrmPriceTable.BringToFront;
    FrmPriceTable.Update;
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonProductClick(Sender: TObject);
begin
  if DBDados.varLogado = False  then Exit;

  if not Assigned(FrmProduct) then
    FrmProduct := TFrmProduct.Create(Self);
    FrmProduct.Show;

    FrmProduct.Visible := True;
    FrmProduct.BringToFront;
    FrmProduct.Update;
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonRequestOrderClick(Sender: TObject);
  procedure OpenRequestTable;
  begin

    frmRequestOrder.OpenRequestTable; // Estimate

  end;
begin
  if DBDados.varLogado = False  then Exit;


  if not Assigned(frmRequestOrder) then
    frmRequestOrder := TfrmRequestOrder.Create(Self);
    frmRequestOrder.Caption := 'Request Order';
    frmRequestOrder.Show;

    frmRequestOrder.Visible := True;
    frmRequestOrder.BringToFront;
    frmRequestOrder.Update;

    LocalAsyncVclCall( @OpenRequestTable );

end;

procedure TfrmMenuPrincipal.dxBarLargeButtonSIOPDashBoardClick(Sender: TObject);
begin
 if DBDados.varLogado = False Then Exit;
 {
 if not Assigned(frmTransacao) then Exit;

 if ((Dados.BuscaDados = False) or (frmTransacao.sqlRelat01.IsEmpty)) Then Exit;

  if frmTransacao.Page.ActivePageIndex = 0 then
  begin
        if frmTransacao.sqlRelat01.IsEmpty then
            raise Exception.Create('N�o h� dados para serem exportados ao Excel');

      //  SaveDialog.InitialDir := GetCurrentDir;
        frmTransacao.Mensagem('Aguarde, Salvando Planilha...');
        if SaveDialog.Execute then
        begin
           Screen.Cursor := crHourGlass;
           ExportGridToExcel(SaveDialog.FileName, frmTransacao.cxGrid1, True, True);
           frmTransacao.Mensagem( pChar( 'Planilha exportada em  ' + ExtractFilePath(SaveDialog.FileName) ) );

        end;
        Screen.Cursor := crDefault;
        frmTransacao.Mensagem( EmptyStr );
  end;
  }
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonSIOPGestaoMercadoClick(
  Sender: TObject);
begin
  if DBDados.varLogado = False  then Exit;
 {
  if ((not Assigned(frmTransacao)) and (not Assigned(frmDashBoard))) then Exit;


  Try
    Application.CreateForm(TfrmAddTransacao, frmAddTransacao);
    frmAddTransacao.ShowModal;

    if Assigned(frmTransacao) then
    begin
      if Dados.varBanco = '1' then
        frmTransacao.RelatorioCentroCustoSQLServer(frmTransacao.chkForecast.Checked, frmTransacao.chkBalance.Checked)
      else if Dados.varBanco = '2' then
      begin
        frmTransacao.RelatorioCentroCustoSQLITE(frmTransacao.chkForecast.Checked, frmTransacao.chkBalance.Checked);
      end;
    end;

    frmDashBoard.ConsultaDashBoard;


  Finally
    FreeAndNil(frmAddTransacao);
  End;

  }
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonSIOPRecuperacaodeContasClick(
  Sender: TObject);
begin
   if DBDados.varLogado = False  then Exit;
                  {
  if not Assigned(frmTransacao) then
    frmTransacao := TfrmTransacao.Create(Self);
    frmTransacao.Show;


    frmTransacao.Visible := True;
    frmTransacao.BringToFront;
    frmTransacao.Update;
    }
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonSIOPRelatorioPartNumberClick(
  Sender: TObject);
begin
  if DBDados.varLogado = False  then Exit;
  {
  if not Assigned(frmImportFile) then
    frmImportFile := TfrmImportFile.Create(Self);
    frmImportFile.Show;

    frmImportFile.Visible := True;
    frmImportFile.BringToFront;
    frmImportFile.Update;
    }
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonSIOPRelatoriosFaturamentoPedidoClick(
  Sender: TObject);
begin
  if DBDados.varLogado = False  then Exit;

  if not Assigned(FrmAccount) then
    frmAccount := TfrmAccount.Create(Self);
    FrmAccount.Show;

    frmAccount.Visible := True;
    frmAccount.BringToFront;
    frmAccount.Update;
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonSIOPRelatoriosTabelaPrecoClick(
  Sender: TObject);
begin
  if DBDados.varLogado = False  then Exit;
 {
 if not Assigned(frmCategoria) then
    frmCategoria := TfrmCategoria.Create(Self);
    frmCategoria.Show;

 frmCategoria.Visible := True;
 frmCategoria.BringToFront;
 frmCategoria.Update;
 }

end;

procedure TfrmMenuPrincipal.dxBarLargeButtonSIOPRelatoriosVendasClick(
  Sender: TObject);
begin
  if DBDados.varLogado = False  then Exit;
  {
  if not Assigned(frmCentroDeCusto) then
    frmCentroDeCusto := TfrmCentroDeCusto.Create(Self);
    frmCentroDeCusto.Show;

    frmCentroDeCusto.Visible := True;
    frmCentroDeCusto.BringToFront;
    frmCentroDeCusto.Update;
 }

end;

procedure TfrmMenuPrincipal.dxBarLargeButtonSROrdersClick(Sender: TObject);
begin
  ShowMessage('Ainda nao esotu pronto');
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonSupplierClick(Sender: TObject);
begin
  if DBDados.varLogado = False  then Exit;

  if not Assigned(frmSupplier) then
    frmSupplier := TfrmSupplier.Create(Self);
    frmSupplier.Show;

    frmSupplier.Visible := True;
    frmSupplier.BringToFront;
    frmSupplier.Update;
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonSupplierInvoiceClick(
  Sender: TObject);

  procedure SetupForm;
  begin

    frmSupplierInvoice.SetupForm; // Estimate

  end;

begin
  if DBDados.varLogado = False  then Exit;

  if not Assigned(frmSupplierInvoice) then
    frmSupplierInvoice := TfrmSupplierInvoice.Create(Self);
    frmSupplierInvoice.Caption := 'Manufactory Invoice';
    frmSupplierInvoice.Show;

    frmSupplierInvoice.Visible := True;
    frmSupplierInvoice.BringToFront;
    frmSupplierInvoice.Update;

    LocalAsyncVclCall( @SetupForm );

end;

procedure TfrmMenuPrincipal.dxBarLargeButtonUserClick(Sender: TObject);

  procedure SetupForm;
  begin

    frmCreateAccount.SetupForm(0); // Estimate

  end;
begin
  try
     Application.CreateForm(TfrmCreateAccount,  frmCreateAccount);

     LocalAsyncVclCall( @SetupForm );

     frmCreateAccount.ShowModal;

  finally
      FreeAndNil(frmCreateAccount);
  end;
end;

procedure TfrmMenuPrincipal.dxBarLargeButtonStaffClick(Sender: TObject);
begin
 if DBDados.varLogado = False  then Exit;

  if not Assigned(FrmVendorsContractors) then
    FrmVendorsContractors := TFrmVendorsContractors.Create(Self);
    FrmVendorsContractors.Show;

    FrmVendorsContractors.Visible := True;
    FrmVendorsContractors.BringToFront;
    FrmVendorsContractors.Update;
end;

procedure TfrmMenuPrincipal.System_Acess;
var
 I, X, Y : integer;
 menu, menu1, menu2, menu0, menu4 : string;
 varContaAction : Integer;
begin

   DBDados.varReturnCompanies :=  DBDados.CompanyFilter;
   dxRibbon.ShowTabGroups := False;
   FDQueryTSIS_Menu.Close;
   FDQueryTSIS_Menu.Params.ParamByName('ID_POSITION').AsInteger := DBDados.varID_POSITION;
   FDQueryTSIS_Menu.Open;

   Try
       dxRibbon.ActiveTab := nil;

       for I := 0 to dxRibbon.TabCount-1 do
       begin

          dxRibbon.Tabs[I].Visible := FDQueryTSIS_Menu.Locate( 'MENUS', dxRibbon.Tabs[I].Name );
          if dxRibbon.Tabs[I].Visible then
             if not Assigned(dxRibbon.ActiveTab) then
                dxRibbon.ActiveTab := dxRibbon.Tabs[I];

            menu := dxRibbon.Tabs[I].Name ;
            menu4 := Copy(menu, 12, length(menu)-10);

          for X := 0 to dxRibbon.Tabs[I].Groups.Count-1 do
          begin
                if not Assigned(dxRibbon.Tabs[I].Groups[X].ToolBar) then
                   Continue;

                dxRibbon.Tabs[I].Groups[X].ToolBar.Visible := FDQueryTSIS_Menu.Locate( 'GROUPS', dxRibbon.Tabs[I].Groups[X].ToolBar.Name );
                menu1 := dxRibbon.Tabs[I].Groups[X].ToolBar.Name;

                for Y := 0 to dxRibbon.Tabs[I].Groups[X].ToolBar.ItemLinks.Count-1 do
                begin

                  if FDQueryTSIS_Menu.Locate( 'SCREENS', dxRibbon.Tabs[I].Groups[X].ToolBar.ItemLinks[Y].Item.Name ) then
                    dxRibbon.Tabs[I].Groups[X].ToolBar.ItemLinks[Y].Item.Visible := ivAlways
                  else
                    dxRibbon.Tabs[I].Groups[X].ToolBar.ItemLinks[Y].Item.Visible := ivNever;

                  menu2 := dxRibbon.Tabs[I].Groups[X].ToolBar.ItemLinks[Y].Item.Name;
                  menu0 := dxRibbon.Tabs[I].Groups[X].ToolBar.ItemLinks[Y].Item.Caption;


                 // doSaveLog('C:\Temp\', 'insert into TBMENU ( DESCRIPTION, Menus, Groups, Screens ) values ( ''' + menu4 + '->' + menu0 +  ''',''' + menu + ''',''' + menu1 + ''',''' + menu2 + ''')');
                end;
          end;
       end;

      DBDados.varView_All_CustomersNaturalPerson  := DBDados.GetSpecialPermission('View_All_CustomersNaturalPerson');
      DBDados.varView_All_CustomersLegalPerson    := DBDados.GetSpecialPermission('View_All_CustomersLegalPerson');
      DBDados.varView_All_Quotation               := DBDados.GetSpecialPermission('View_All_Quotation');
      DBDados.varView_All_Invoices                := DBDados.GetSpecialPermission('View_All_Invoices');
      DBDados.varView_All_Orders                  := DBDados.GetSpecialPermission('View_All_Orders');

   Finally
       FDQueryTSIS_Menu.Close;
   End;


end;

procedure TfrmMenuPrincipal.Timer1Timer(Sender: TObject);
var
 GVersao : String;
begin

   Timer1.Enabled := False;

   if DBDados.varLogado = False then
   begin
     Timer1.Enabled := True;
     Exit;
   end;


   DBDados.ConectarNoBanco;


   Try
     if not DBDados.FDConnection.Connected then
     begin
       Mens_MensErro('Error Connecting Database!');
       Close;
       Exit;
     end;

     SqlAux.Close;
     SqlAux.Sql.Clear;
     SqlAux.SQL.Add('select DESCRIPTION_CONTENT From TBPARAMETERS WHERE DESCRIPTION_VALUE = ''VERSION''' );
     try
         SqlAux.Open;
     Except
       ShowMessage('Deu erro ao ler tabela de parametro');
     End;

     GVersao := SqlAux.FieldByName('DESCRIPTION_CONTENT').AsString;

    {
     If ( GVersao <> FileVersion ) Then
     Begin
         Mens_MensInf('Programa necessita de Atualizac�o, clique e aguarde o DOWNLOAD !!') ;
         //Endereco := 'http://www.escsistemas.com.br/ESCGestao' + GVersao + '.exe';
         //shellExecute(Handle, 'Open', PChar(Endereco), nil, nil, sw_shownormal);
         Application.Terminate ;
         Exit ;
     end;
     }
    { frmMenuPrincipal.Enabled := False;

     FrmLogin := TFrmLogin.Create(Self) ;
     FrmLogin.Show;
     {If ( FrmLogin.Showmodal <> mrOk ) Then
     Begin
         FrmLogin.Close;
         Close ;
         Exit ;
     End ;


     frmMenuPrincipal.Enabled := True;
     {
      MainMenu1.Items[0].Caption          := Dados.RetornaMensagem('MEN_MNU_NIVEL_0');
      MainMenu1.Items[0].Items[0].Caption := Dados.RetornaMensagem('MEN_MNU_NIVEL_0_0');
      MainMenu1.Items[0].Items[2].Caption := Dados.RetornaMensagem('MEN_MNU_NIVEL_0_1');
      MainMenu1.Items[0].Items[3].Caption := Dados.RetornaMensagem('MEN_MNU_NIVEL_0_2');
      MainMenu1.Items[0].Items[5].Caption := Dados.RetornaMensagem('MEN_MNU_NIVEL_0_3');

      lblMesAno.Caption    := Dados.RetornaMensagem('MEN_MES_ANO');
      lblTipoMov.Caption   := Dados.RetornaMensagem('MEN_TIPO_TRANSACAO');
      lblPropConta.Caption := Dados.RetornaMensagem('MEN_SELECTBANK');

      StatusBar1.Panels[0].Text := 'User: ' + Dados.varUsuario;
      StatusBar1.Panels[1].Text := 'Region: ' + Dados.varRegiao;
      StatusBar1.Panels[2].Text := 'DB: ' + Dados.FDConnection.Params.Values['Database'];
            }

      System_Acess;

      dxRibbonStatusBar.Panels[0].Text := 'User: ' + DBDados.varUsuario;
      dxRibbonStatusBar.Panels[1].Text := 'Region: ' + DBDados.varRegiao;
      dxRibbonStatusBar.Panels[2].Text := 'DB: ' + DBDados.FDConnection.Params.Values['DATABASE'];
      dxRibbonStatusBar.Panels[4].Text := 'SERVER: ' + DBDados.FDConnection.Params.Values['SERVER'];

      Vendor := TVendor.Create;
      Try
        Vendor.Search(DBDados.varID_USER);
        dxRibbonStatusBar.Panels[5].Text := 'Sales Rep: ' + Vendor.nome;
        dxRibbonStatusBar.Panels[6].Text := 'Position: ' + Vendor.position;
      Finally
        FreeAndNil(Vendor);

      End;




      //FFormatoBR  := TFormatSettings.Create;
      //Dados Somente em Ingles

      if DBDados.varRegiao = '1' then
      begin

            FFormatoBR:= TFormatSettings.Create('en-US');

            FFormatoBR.ThousandSeparator := ',';
            FFormatoBR.DecimalSeparator := '.';
            FFormatoBR.CurrencyDecimals := 2;
            FFormatoBR.DateSeparator := '/';
            FFormatoBR.ShortDateFormat :=  'MM/dd/yyyy';
            FFormatoBR.LongDateFormat :=   'MM/dd/yyyy';
            FFormatoBR.TimeSeparator := ':';
            FFormatoBR.TimeAMString := 'AM';
            FFormatoBR.TimePMString := 'PM';
            FFormatoBR.ShortTimeFormat := 'hh:mm';
            FFormatoBR.LongTimeFormat := 'hh:mm:ss';
            FFormatoBR.CurrencyString := 'U$';

      end
      else if DBDados.varRegiao = '2' then
           begin
            FFormatoBR:= TFormatSettings.Create('en-BR');
           {
            FFormatoBR.ThousandSeparator := ',';
            FFormatoBR.DecimalSeparator := '.';
            FFormatoBR.CurrencyDecimals := 2;
            FFormatoBR.DateSeparator := '/';
            FFormatoBR.ShortDateFormat :=  'dd/MM/yyyy';
            FFormatoBR.LongDateFormat :=   'dd/MM/yyyy';
            FFormatoBR.TimeSeparator := ':';
            FFormatoBR.TimeAMString := 'AM';
            FFormatoBR.TimePMString := 'PM';
            FFormatoBR.ShortTimeFormat := 'hh:mm';
            FFormatoBR.LongTimeFormat := 'hh:mm:ss';
            FFormatoBR.CurrencyString := 'R$ ';
            }

           end;

     cxFormatController.BeginUpdate;
     cxFormatController.UseDelphiDateTimeFormats := True;
     // change other settings of the cxFormatController...
     cxFormatController.EndUpdate;
     cxFormatController.GetFormats;
     cxFormatController.NotifyListeners;

     FormatSettings := FFormatoBR;


     //dtDateTrans       := (Now);


    // Dados.BuscaCaminhodoArquivo;

   //  FrmLogin.Close;

    {
     if Dados.CheckBank = 0 then
     begin
          Application.CreateForm(TfrmAccount, frmAccount);
          frmAccount.Show;
          //ListaBancos;
     end;
     }
  except
    on E : Exception do
      Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
  end;

end;

end.
