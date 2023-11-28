program FloorsColumbus;

uses
  Vcl.Forms,
  uDMConectDB in 'uDMConectDB.pas' {DBDados: TDataModule},
  uMenuPrincipal in 'uMenuPrincipal.pas' {frmMenuPrincipal},
  MensFun in 'MensFun.pas' {scrErro},
  uFrmLogin in 'uFrmLogin.pas' {FrmLogin},
  ufrmCreateAccount in 'ufrmCreateAccount.pas' {frmCreateAccount},
  ufrmAccount in 'ufrmAccount.pas' {frmAccount},
  uFrmSupplier in 'uFrmSupplier.pas' {frmSupplier},
  uClassSupplier in 'uClassSupplier.pas',
  uClassDBGenerics in 'uClassDBGenerics.pas',
  uFrmCustomer in 'uFrmCustomer.pas' {FrmCustomer},
  uFrmCompany in 'uFrmCompany.pas' {frmCompany},
  uClassCompany in 'uClassCompany.pas',
  uClassCustomer in 'uClassCustomer.pas',
  uFrmProduct in 'uFrmProduct.pas' {frmProduct},
  uFrmCreditors in 'uFrmCreditors.pas' {FrmCreditors},
  SetParametro in 'SetParametro.pas',
  uClassProduct in 'uClassProduct.pas',
  ufrmPosition in 'ufrmPosition.pas' {frmPosition},
  uFrmVendorsContractors in 'uFrmVendorsContractors.pas' {FrmVendorsContractors},
  uFrmPriceTable in 'uFrmPriceTable.pas' {frmPriceTable},
  ufrmBrandType in 'ufrmBrandType.pas' {FrmBrandType},
  ufrmEstimate in 'ufrmEstimate.pas' {frmEstimate},
  uClassSalesProcess in 'uClassSalesProcess.pas',
  ufrmRelEstimate in 'ufrmRelEstimate.pas' {frmRelEstimate},
  ufrmAccessControl in 'ufrmAccessControl.pas' {frmAccessControl},
  uClassPurchaseOrder in 'uClassPurchaseOrder.pas',
  ufrmInventory in 'ufrmInventory.pas' {frmInventory},
  ufrmViewCart in 'ufrmViewCart.pas' {frmViewCart},
  uFrmRoom in 'uFrmRoom.pas' {frmRoom},
  ufrmCustomerLP in 'ufrmCustomerLP.pas' {frmCustomerLP},
  ufrmRequestOrder in 'ufrmRequestOrder.pas' {frmRequestOrder},
  ufrmFollowUP in 'ufrmFollowUP.pas' {frmFollowUP},
  uSetupFolder in 'uSetupFolder.pas',
  ufrmSupplierInvoice in 'ufrmSupplierInvoice.pas' {frmSupplierInvoice};

{$R *.res}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDBDados, DBDados);
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.Run;
end.
