unit ufrmEstimate;

interface

uses
  RLPreview,
  jpeg, pngimage,   bde.dbtables,
  uClassDBGenerics,
  uClassSalesProcess,
  uFunctions,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, EditBusca, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxCurrencyEdit, Vcl.Mask, RLReport, RLPDFFilter,
  RLFilters, RLHTMLFilter, RLPreviewForm, cxCheckListBox, cxDBCheckListBox,
  Vcl.CheckLst, Vcl.Samples.Spin, Vcl.DBCtrls, Vcl.ExtDlgs, cxButtonEdit,
  Vcl.ImgList, cxEditRepositoryItems, cxSpinEdit, cxSplitter;




type
  TfrmEstimate = class(TForm)
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButAlterar: TcxButton;
    ButExcluir: TcxButton;
    ButImprimir: TcxButton;
    ButSair: TcxButton;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    TBCOMPANY: TFDTable;
    TBCOMPANYID_COMPANY: TIntegerField;
    TBCOMPANYADD_DATE: TSQLTimeStampField;
    TBCOMPANYUPD_DATE: TSQLTimeStampField;
    TBCOMPANYTAX_ID: TStringField;
    TBCOMPANYCOMPANYNAME: TStringField;
    TBCOMPANYTRADINGNAME: TStringField;
    TBCOMPANYCOMPANYOWNER: TStringField;
    TBCOMPANYPHONENUMBER: TStringField;
    TBCOMPANYEMAIL: TStringField;
    TBCOMPANYADDRESS1: TStringField;
    TBCOMPANYCOUNTRY: TStringField;
    TBCOMPANYST: TStringField;
    TBCOMPANYCITY: TStringField;
    TBCOMPANYZIPCODE: TStringField;
    TBCOMPANYID_USER: TIntegerField;
    DsCompany: TDataSource;
    DSPPRICELIST: TDataSource;
    STPPRICELIST: TFDStoredProc;
    STPPRICELISTID_PRICELIST: TFDAutoIncField;
    STPPRICELISTNAME: TStringField;
    STPPRICELISTEXPIREDDATE: TDateField;
    cxPageEstimate: TcxPageControl;
    cxTabEstimateList: TcxTabSheet;
    cxTabEstimateForm: TcxTabSheet;
    Panel2: TPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    sqlProcess: TFDQuery;
    dsProcess: TDataSource;
    cxGrid2DBTableView1ID_PROCESS: TcxGridDBColumn;
    cxGrid2DBTableView1COMPANYNAME: TcxGridDBColumn;
    cxGrid2DBTableView1DT_PROCESS: TcxGridDBColumn;
    cxGrid2DBTableView1DT_PROCESS_VALID: TcxGridDBColumn;
    cxGrid2DBTableView1CONTRACTOR: TcxGridDBColumn;
    cxGrid2DBTableView1CUSTOMER_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1SUBTOTAL: TcxGridDBColumn;
    cxGrid2DBTableView1PERCENT_DISCOUNT: TcxGridDBColumn;
    cxGrid2DBTableView1DISCOUNT: TcxGridDBColumn;
    cxGrid2DBTableView1TAX: TcxGridDBColumn;
    cxGrid2DBTableView1SHIPPING: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL: TcxGridDBColumn;
    sqlProcessItem: TFDQuery;
    dsProcessItem: TDataSource;
    sqlProcessID_PROCESS: TIntegerField;
    sqlProcessID_COMPANY: TIntegerField;
    sqlProcessCOMPANYNAME: TStringField;
    sqlProcessDT_PROCESS: TDateField;
    sqlProcessDT_PROCESS_VALID: TDateField;
    sqlProcessID_CONTRACTORS: TIntegerField;
    sqlProcessCONTRACTOR: TStringField;
    sqlProcessCUSTOMER_NAME: TStringField;
    sqlProcessCUSTOMER_PHONE: TStringField;
    sqlProcessCUSTOMER_EMAIL: TStringField;
    sqlProcessADDRESS1: TStringField;
    sqlProcessZIPCODE: TStringField;
    sqlProcessST: TStringField;
    sqlProcessCITY: TStringField;
    sqlProcessCOUNTY: TStringField;
    sqlProcessPONUMBER: TStringField;
    sqlProcessCOMMENTS: TStringField;
    sqlProcessSUBTOTAL: TBCDField;
    sqlProcessPERCENT_DISCOUNT: TBCDField;
    sqlProcessDISCOUNT: TBCDField;
    sqlProcessTAX: TBCDField;
    sqlProcessSHIPPING: TBCDField;
    sqlProcessTOTAL: TBCDField;
    sqlProcessADD_DATE: TSQLTimeStampField;
    sqlProcessUPD_DATE: TSQLTimeStampField;
    TBRoom: TFDTable;
    DsRoom: TDataSource;
    TBRoomID_MISCELLANEOUS: TFDAutoIncField;
    TBRoomVALUE: TStringField;
    TBRoomDESCRIPTION: TStringField;
    TBRoomADD_DATE: TDateField;
    TBRoomUPD_DATE: TDateField;
    TBRoomID_USER: TIntegerField;
    sqlProcessID_CUSTOMER: TIntegerField;
    sqlProcessID_USER: TIntegerField;
    sqlTerms: TFDQuery;
    dsTerms: TDataSource;
    sqlTermsID_TERMS: TFDAutoIncField;
    sqlTermsTABLENAME: TStringField;
    sqlTermsID_PROCESS: TIntegerField;
    sqlTermsDT_PROCESS: TDateField;
    sqlTermsNUM_DAYS: TIntegerField;
    sqlTermsDATE_DUE: TDateField;
    sqlTermsVALUE: TBCDField;
    sqlTermsADD_DATE: TSQLTimeStampField;
    sqlTermsUPD_DATE: TSQLTimeStampField;
    sqlTermsID_USER: TIntegerField;
    sqlProcessID_ORIGEN: TIntegerField;
    sqlProcessSTATUS: TStringField;
    cxGrid2DBTableView1ID_ORIGEN: TcxGridDBColumn;
    cxGrid2DBTableView1STATUS: TcxGridDBColumn;
    cxTabEstimateReports: TcxTabSheet;
    sqlParcelas: TFDQuery;
    sqlParcelasID_TERMS: TFDAutoIncField;
    sqlParcelasTABLENAME: TStringField;
    sqlParcelasID_PROCESS: TIntegerField;
    sqlParcelasDT_PROCESS: TDateField;
    sqlParcelasNUM_DAYS: TIntegerField;
    sqlParcelasDATE_DUE: TDateField;
    sqlParcelasVALUE: TBCDField;
    sqlParcelasADD_DATE: TSQLTimeStampField;
    sqlParcelasUPD_DATE: TSQLTimeStampField;
    sqlParcelasID_USER: TIntegerField;
    dsParcelas: TDataSource;
    sqlHeader: TFDQuery;
    sqlHeaderESTIMATE_ID: TIntegerField;
    sqlHeaderESTIMATE_DATE: TDateField;
    sqlHeaderESTIMATE_DT_VALID: TDateField;
    sqlHeaderESTIMATE_TAX: TBCDField;
    sqlHeaderESTIMATE_SHIPPING: TBCDField;
    sqlHeaderESTIMATE_TOTAL: TBCDField;
    sqlHeaderESTIMATE_SUBTOTAL: TBCDField;
    sqlHeaderCUSTOMER_NAME: TStringField;
    sqlHeaderCUSTOMER_PHONE: TStringField;
    sqlHeaderCUSTOMER_EMAIL: TStringField;
    sqlHeaderCUSTOMER_ADDRESS: TStringField;
    sqlHeaderCUSTOMER_ZIPCODE: TStringField;
    sqlHeaderCUSTOMER_CITY: TStringField;
    sqlHeaderCUSTOMER_ST: TStringField;
    sqlHeaderCUSTOMER_PHNE: TStringField;
    sqlHeaderCOMPANY_NAME: TStringField;
    sqlHeaderCOMPANY_ADRRESS: TStringField;
    sqlHeaderCOMPANY_CITY: TStringField;
    sqlHeaderCOMPANY_PHONENUMBER: TStringField;
    sqlHeaderCOMPANY_EMAIL: TStringField;
    sqlHeaderCOMPANY_ZIPCODE: TStringField;
    sqlHeaderCOMPANY_ST: TStringField;
    sqlHeaderVENDOR_NAME: TStringField;
    sqlHeaderVENDOR_EMAIL: TStringField;
    sqlHeaderVENDOR_PHONE: TStringField;
    sqlHeaderITEM_ID_ITEM: TIntegerField;
    sqlHeaderITEM_QTY: TBCDField;
    sqlHeaderITEM_RATE: TBCDField;
    sqlHeaderITEM_AMOUT: TBCDField;
    sqlHeaderITEM_MATERIAL: TStringField;
    sqlHeaderITEM_TAXABLE: TStringField;
    sqlHeaderITEM_STYLE: TStringField;
    sqlHeaderESTIMATE_DISCOUNT: TBCDField;
    sqlHeaderESTIMATE_COMMENTS: TStringField;
    sqlHeaderESTIMATE_PONUMBER: TStringField;
    dsHeader: TDataSource;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    pnlRelatorio: TPanel;
    ReportSale: TRLReport;
    RLBand3: TRLBand;
    sqlHeaderESTIMATE_SHIPPING_1: TSQLTimeStampField;
    sqlProcessDT_SHIPPING: TSQLTimeStampField;
    cxPageForm2: TcxPageControl;
    cxTabSheetItems: TcxTabSheet;
    cxTabSheetService: TcxTabSheet;
    pnlTop: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    lblShippingDate: TLabel;
    edtCliente: TEditBusca;
    edtCustomerName: TEdit;
    edtEmail: TEdit;
    edtZipCode: TEdit;
    edtAddress: TEdit;
    edtCity: TEdit;
    edtST: TEdit;
    edtSalesRep: TEditBusca;
    edtPONumber: TEdit;
    cxDateProcess: TcxDateEdit;
    cxDateProcessValid: TcxDateEdit;
    cxLookupComboBoxPrincing: TcxLookupComboBox;
    cxLookupComboBoxCompany: TcxLookupComboBox;
    spbCleanCustomer: TcxButton;
    edtPhone: TMaskEdit;
    Panel4: TPanel;
    lblProcessName: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    cxDateShippingDate: TcxDateEdit;
    pnlBtnLateral: TPanel;
    ButNovoItem: TcxButton;
    ButAlterarItem: TcxButton;
    ButExcluirItem: TcxButton;
    ButSalvarItem: TcxButton;
    ButCAncelarItem: TcxButton;
    Page: TcxPageControl;
    cxTabSheetGrade: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableViewItem: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    lblSubTotal: TLabel;
    lblTax: TLabel;
    lblTotal: TLabel;
    lblDiscount: TLabel;
    GroupBox1: TGroupBox;
    memComments: TMemo;
    edtmskDiscount: TcxCurrencyEdit;
    edtShipping: TcxCurrencyEdit;
    cxTabSheetEdit: TcxTabSheet;
    pnlLateral: TPanel;
    RLPreviewSetup1: TRLPreviewSetup;
    sqlProcessItemID_PROCESS_ITEM: TIntegerField;
    sqlProcessItemID_PROCESS: TIntegerField;
    sqlProcessItemID_PRICELIST: TIntegerField;
    sqlProcessItemID_PRODUCT: TIntegerField;
    sqlProcessItemTRADININGNAME: TStringField;
    sqlProcessItemDESCRIPTION: TStringField;
    sqlProcessItemSTYLE: TStringField;
    sqlProcessItemPRODUCT_STYLE: TStringField;
    sqlProcessItemPRODUCT_STYLE_NAME: TStringField;
    sqlProcessItemCOLOR: TStringField;
    sqlProcessItemCOLOR_NAME: TStringField;
    sqlProcessItemQTY: TBCDField;
    sqlProcessItemRATE: TBCDField;
    sqlProcessItemAMOUT: TBCDField;
    sqlProcessItemTAXBLE: TStringField;
    cxGrid1DBTableViewItemTRADININGNAME: TcxGridDBColumn;
    cxGrid1DBTableViewItemDESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableViewItemSTYLE: TcxGridDBColumn;
    cxGrid1DBTableViewItemQTY: TcxGridDBColumn;
    cxGrid1DBTableViewItemRATE: TcxGridDBColumn;
    cxGrid1DBTableViewItemAMOUT: TcxGridDBColumn;
    cxGrid1DBTableViewItemTAXBLE: TcxGridDBColumn;
    cxGrid1DBTableViewItemROOM: TcxGridDBColumn;
    sqlProcessItemWIDTH: TFloatField;
    sqlProcessItemHEIGHT: TFloatField;
    sqlProcessItemTOTALAREA: TFloatField;
    sqlProcessItemROOM: TMemoField;
    sqlHeaderITEM_ROOM: TMemoField;
    sqlHeaderITEM_WIDTH: TFloatField;
    sqlHeaderITEM_HEIGHT: TFloatField;
    sqlHeaderITEM_TOTALAREA: TFloatField;
    sqlProcessItemREQ_PURCHASE_ORDER: TStringField;
    sqlHeaderREQ_PURCHASE_ORDER: TStringField;
    cxStyleRepository: TcxStyleRepository;
    cxStyleReq_PurchaseOrder: TcxStyle;
    cxStyleCondicional: TcxStyle;
    cxStyleSatisfatorio: TcxStyle;
    cxGrid1DBTableViewItemWIDTH: TcxGridDBColumn;
    cxGrid1DBTableViewItemHEIGHT: TcxGridDBColumn;
    cxGrid1DBTableViewItemTOTALAREA: TcxGridDBColumn;
    cxGrid1DBTableViewItemREQ_PURCHASE_ORDER: TcxGridDBColumn;
    TBCOMPANYESTIMATEDAYS: TIntegerField;
    TBCOMPANYTAX: TBCDField;
    btnCart: TcxButton;
    STPPRICELISTACTIVE: TStringField;
    Panel1: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    lblAmount: TLabel;
    lblRate: TLabel;
    lblIdProduct: TLabel;
    Label38: TLabel;
    Label15: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    lblInfoQuant: TLabel;
    lblUnidadeMedida: TLabel;
    edtProduto: TEditBusca;
    edtheight: TcxCurrencyEdit;
    edtweidth: TcxCurrencyEdit;
    edttotalarea: TcxCurrencyEdit;
    EdtQty: TSpinEdit;
    edtAreaSquareFeetPerBox: TcxCurrencyEdit;
    Label20: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label32: TLabel;
    lblSupplier: TLabel;
    lblMaterial: TLabel;
    lblColorName: TLabel;
    lblStyleName: TLabel;
    Label12: TLabel;
    Label35: TLabel;
    lblColor: TLabel;
    lblStyle: TLabel;
    Label39: TLabel;
    lblProductStyle: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    lblQtyAvailable: TLabel;
    lblTotalAreaSquareFeet: TLabel;
    lblAreaSquareYardPerBox: TLabel;
    lblTotalAreaSquareYard: TLabel;
    Label29: TLabel;
    lblAreaSquareFeetPerBox: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    lblEP: TLabel;
    lblOP: TLabel;
    lblAV: TLabel;
    ImageProduct: TImage;
    sqlImage: TFDQuery;
    sqlImageID_IMAGE: TFDAutoIncField;
    sqlImageiD_PRODUCT: TIntegerField;
    sqlImageImagem: TBlobField;
    cbxCustomerType: TComboBox;
    RLImageLogo: TRLImage;
    cxGrid1DBTableViewItemID_PRODUCT: TcxGridDBColumn;
    OpenPictureDialog: TOpenPictureDialog;
    sqlProcessItemPRODUCT: TStringField;
    cxGrid1DBTableViewItemPRODUCT: TcxGridDBColumn;
    sqlHeaderITEM_PRODUCT_NAME: TStringField;
    sqlHeaderTYPEOFPRODUCT: TStringField;
    sqlWorker: TFDQuery;
    dsWorker: TDataSource;
    sqlWorkerID_CONTRACTORS: TIntegerField;
    sqlWorkerNAME: TStringField;
    sqlWorkerPHONE: TStringField;
    sqlWorkerEMAIL: TStringField;
    Panel10: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    cxLookupComboBoxWorker: TcxLookupComboBox;
    Panel8: TPanel;
    Label49: TLabel;
    memServiceComment: TMemo;
    Label47: TLabel;
    lblPhone: TLabel;
    Label48: TLabel;
    lblEmail: TLabel;
    Panel9: TPanel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    lblOrder: TLabel;
    lblCustomer: TLabel;
    lblAddress: TLabel;
    lblCity: TLabel;
    lblState: TLabel;
    lblPhoneWorker: TLabel;
    btnSaveService: TcxButton;
    sqlService: TFDQuery;
    dsService: TDataSource;
    cxDateWork: TcxDateEdit;
    When: TLabel;
    Label56: TLabel;
    edtSidemark: TEdit;
    sqlServiceID_SERVICE: TFDAutoIncField;
    sqlServiceID_PROCESS: TIntegerField;
    sqlServiceCUSTOMER: TStringField;
    sqlServiceID_CONTRACTORS: TIntegerField;
    sqlServiceDT_SERVICE: TSQLTimeStampField;
    sqlServiceSIDEMARK: TStringField;
    sqlServiceDT_FINISH: TSQLTimeStampField;
    sqlServiceSTATUS: TStringField;
    sqlServiceADD_DATE: TSQLTimeStampField;
    sqlServiceUPD_DATE: TSQLTimeStampField;
    sqlServiceUSERX: TStringField;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ButtonFollowUP: TcxEditRepositoryButtonItem;
    sqlServicebtnFollowup: TStringField;
    sqlServicebtnImprimir: TStringField;
    sqlServicebtnEmail: TStringField;
    cxEditRepository1ButtonImprimir: TcxEditRepositoryButtonItem;
    cxEditRepository1ButtonEmail: TcxEditRepositoryButtonItem;
    cxSmallImages: TcxImageList;
    cxGridPosition: TcxGrid;
    cxTableViewPosition: TcxGridDBTableView;
    cxTableViewPositionFollowUP: TcxGridDBColumn;
    cxGridLevelPosition: TcxGridLevel;
    cxTableViewPositionID_SERVICE: TcxGridDBColumn;
    cxTableViewPositionID_PROCESS: TcxGridDBColumn;
    cxTableViewPositionCUSTOMER: TcxGridDBColumn;
    cxTableViewPositionDT_SERVICE: TcxGridDBColumn;
    cxTableViewPositionSIDEMARK: TcxGridDBColumn;
    cxTableViewPositionDT_FINISH: TcxGridDBColumn;
    cxTableViewPositionSTATUS: TcxGridDBColumn;
    cxTableViewPositionUSERX: TcxGridDBColumn;
    cxTableViewPositionbtnImprimir: TcxGridDBColumn;
    sqlServiceADDRESS1: TStringField;
    sqlServiceZIPCODE: TStringField;
    sqlServiceCITY: TStringField;
    sqlServiceCOUNTY: TStringField;
    sqlServiceSTATEE: TStringField;
    Label57: TLabel;
    edtCounty: TEdit;
    sqlHeaderITEM_CATEGORY: TStringField;
    sqlHeaderCUSTOMER_COUNTY: TStringField;
    sqlHeaderCOMPANY_COUNTY: TStringField;
    sqlHeaderSERVICE_ID: TIntegerField;
    sqlHeaderSERVICE_CONTRACTOR_ID: TIntegerField;
    sqlHeaderSERVICE_DT_SERVICE: TSQLTimeStampField;
    sqlHeaderSERVICE_SIDEMARK: TStringField;
    sqlHeaderSERVICE_START_DATE: TSQLTimeStampField;
    sqlHeaderINSTALLER_NAME: TStringField;
    sqlFollowup: TFDQuery;
    sqlFollowupID_SERVICE_FOLLOWUP: TFDAutoIncField;
    sqlFollowupID_SERVICE: TIntegerField;
    sqlFollowupCOMMENTS: TMemoField;
    sqlFollowupADD_DATE: TSQLTimeStampField;
    sqlFollowupUPD_DATE: TSQLTimeStampField;
    sqlFollowupID_USER: TIntegerField;
    dsFollowup: TDataSource;
    sqlTermsDESCRIPTION: TStringField;
    sqlParcelasDESCRIPTION: TStringField;
    cxGrid4: TcxGrid;
    cxGridDBTableViewServiceItem: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ImageList1: TImageList;
    Shape1: TShape;
    btnLoadService: TcxButton;
    sqlServicesItem: TFDQuery;
    dsServicesItem: TDataSource;
    sqlServicesItemID_SERVICE_ITEM: TIntegerField;
    sqlServicesItemTABLENAME: TStringField;
    sqlServicesItemID_PROCESS: TIntegerField;
    sqlServicesItemID_PRICELIST: TIntegerField;
    sqlServicesItemDESC_PRODUCT: TStringField;
    sqlServicesItemROOM: TMemoField;
    sqlServicesItemQTY: TBCDField;
    sqlServicesItemRATE: TBCDField;
    sqlServicesItemAMOUT: TBCDField;
    sqlServicesItemID_USER: TIntegerField;
    sqlServicesItemADD_DATE: TSQLTimeStampField;
    sqlServicesItemUPD_DATE: TSQLTimeStampField;
    sqlServicesItemWIDTH: TFloatField;
    sqlServicesItemHEIGHT: TFloatField;
    sqlServicesItemTOTALAREA: TFloatField;
    cxGridDBTableViewServiceItemDESC_PRODUCT: TcxGridDBColumn;
    cxGridDBTableViewServiceItemROOM: TcxGridDBColumn;
    cxGridDBTableViewServiceItemRATE: TcxGridDBColumn;
    cxGridDBTableViewServiceItemTOTALAREA: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    sqlServicesItemSubTotal: TCurrencyField;
    cxGridDBTableViewServiceItemSubTotal: TcxGridDBColumn;
    pnlTerms: TPanel;
    Label36: TLabel;
    Label58: TLabel;
    btnTerms: TcxButton;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1DATE_DUE: TcxGridDBColumn;
    cxGrid3DBTableView1VALUE: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    edtTotal: TcxMaskEdit;
    edtDays: TcxSpinEdit;
    edtTermsDesc: TcxTextEdit;
    Label45: TLabel;
    cxGrid3DBTableView1DESCRIPTION: TcxGridDBColumn;
    Label37: TLabel;
    cmbStatus: TcxComboBox;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText16: TRLDBText;
    TBCOMPANYIMAGEM: TBlobField;
    TBCOMPANYCOUNTY: TStringField;
    sqlHeaderCOMPANY_ID: TIntegerField;
    cxTabSheet1: TcxTabSheet;
    pnlRelService: TPanel;
    ReportService: TRLReport;
    RLBand10: TRLBand;
    RLLabel30: TRLLabel;
    RLDBText31: TRLDBText;
    RLLabel1: TRLLabel;
    RLBand11: TRLBand;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLLabel35: TRLLabel;
    RLDBText42: TRLDBText;
    RLBand12: TRLBand;
    RLGroup3: TRLGroup;
    RLBand13: TRLBand;
    RLDBText37: TRLDBText;
    RLBand14: TRLBand;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLBand15: TRLBand;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLDBText41: TRLDBText;
    RLDBText43: TRLDBText;
    RLLabel36: TRLLabel;
    RLBand16: TRLBand;
    RLSubDetail2: TRLSubDetail;
    RLGroup4: TRLGroup;
    RLBand17: TRLBand;
    RLLabel37: TRLLabel;
    RLBand18: TRLBand;
    RLDBMemo1: TRLDBMemo;
    RLBand1: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel19: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel20: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText23: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText35: TRLDBText;
    RLDBText44: TRLDBText;
    RLDBText1: TRLDBText;
    LblProcess: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText46: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand4: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel3: TRLLabel;
    RLDBText20: TRLDBText;
    RLBand19: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand6: TRLBand;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand7: TRLBand;
    RLLabel16: TRLLabel;
    RLLabel18: TRLLabel;
    RLBand8: TRLBand;
    RLDBText19: TRLDBText;
    RLDBText45: TRLDBText;
    RLBand9: TRLBand;
    RLDBResult6: TRLDBResult;
    RLBand5: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    sqlPaymentMethod: TFDQuery;
    dsPaymentMethod: TDataSource;
    cxLookupComboBoxPaymentMethod: TcxLookupComboBox;
    Label46: TLabel;
    sqlProcessID_PAYMENT_METHOD: TIntegerField;
    Label59: TLabel;
    lblTotalMaterial: TLabel;
    Panel11: TPanel;
    Label28: TLabel;
    chklistRoom: TCheckListBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure spbCleanCustomerClick(Sender: TObject);
    procedure edtClienteClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ButNovoClick(Sender: TObject);
    procedure ButSalvarItemClick(Sender: TObject);
    procedure ButNovoItemClick(Sender: TObject);
    procedure ButSalvarClick(Sender: TObject);
    procedure edtProdutoClick(Sender: TObject);
    procedure ButAlterarItemClick(Sender: TObject);
    procedure ButCAncelarItemClick(Sender: TObject);
    procedure edtmskDiscountKeyPress(Sender: TObject; var Key: Char);
    procedure edtmskDiscountExit(Sender: TObject);
    procedure edtShippingExit(Sender: TObject);
    procedure ButSairClick(Sender: TObject);
    procedure ButAlterarClick(Sender: TObject);
    procedure ButCancelarClick(Sender: TObject);
    procedure cxGrid1DBTableViewItemDblClick(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure edtTotalKeyPress(Sender: TObject; var Key: Char);
    procedure btnTermsClick(Sender: TObject);
    procedure sqlTermsAfterDelete(DataSet: TDataSet);
    procedure ButExcluirClick(Sender: TObject);
    procedure ButImprimirClick(Sender: TObject);
    procedure ReportSaleBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure edtheightExit(Sender: TObject);
{
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
 }
    procedure cxLookupComboBoxCompanyClick(Sender: TObject);
    procedure edtSalesRepClick(Sender: TObject);
    procedure edttotalareaExit(Sender: TObject);
    procedure btnCartClick(Sender: TObject);
    procedure EdtQtyChange(Sender: TObject);
    procedure cbxCustomerTypeChange(Sender: TObject);
    procedure edtheightEnter(Sender: TObject);
    procedure edtweidthEnter(Sender: TObject);
    procedure ButExcluirItemClick(Sender: TObject);
    procedure cxLookupComboBoxWorkerClick(Sender: TObject);
    procedure cxPageForm2Change(Sender: TObject);
    procedure btnSaveServiceClick(Sender: TObject);
    procedure cxEditRepository1ButtonFollowUPPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxEditRepository1ButtonImprimirPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxEditRepository1ButtonEmailPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ReportServiceBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure edtweidthExit(Sender: TObject);
    procedure btnLoadServiceClick(Sender: TObject);
    procedure sqlServicesItemCalcFields(DataSet: TDataSet);
    procedure sqlServicesItemBeforePost(DataSet: TDataSet);
    procedure sqlServicesItemAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }

    varProcessTotal    : Double;
    varProcessSubTotal : Double;
    varProcessTaxble   : Double;
    varProcessDiscount : Double;
    varProcessShipping : Double;
    varProcessoProduto : Double;
    varProcessPercentDiscount : Double;
    varAV, varEP, VarOP, varSQFT : Double;


    varServiceTotal : Double;
    varID_SERVICE : Integer;
    varGravaService : ShortString;
    varFiltroCompanyPadrao : String;
    varTempAreaTotal : Double;
    Process : TSalesProcess;
    Item  : TSalesProcessItem;
    Contractor : TVendor;
    varOption, varOptionItem : char;  // I = Insert / U = Update
    varNewKey : Integer;
    varNewKeyItem : Integer;
    varRate : Double;
    varAmount : Double;
    TBHeader, TBItem, TPEMAIL : String;

    procedure Initialize;
    procedure LimpaEdits;
    procedure SaveHeader;
    procedure ButItensOnOff(S: String);
    procedure ButProcessOff(S: String);
    procedure AtualizaGrade;
    procedure AtualizaGradeItem;
    procedure AtualizTerms;
    procedure SaveItem;
    procedure CalculaProcess;
    procedure CleanItemFromEdition;
    function ValidTerms: Boolean;
    procedure DisabledTotalField;
    function ValidTotalTerm : Boolean;
    procedure ValidateStatus;
    function GetInventory(varId_Product: Integer): Double;
    procedure UpdatePurchaseOrder;
    function ValidCustomer : Boolean;
    function ValidItemPendingonPurchaseOrder : Boolean;
    procedure ShowImagem;
    procedure ShowLogo;
    procedure LoadItemToHeader;
    procedure SetaConsultaProduto(varID_PRODUCT : String = '');
    procedure LoadService;
    procedure PreDefineEmail(Sender: TObject);
    procedure CalculaServiceSubTotal;
    procedure CreateTerms;

  public
    { Public declarations }
    procedure SetupTable(varTbIdentificador : Integer);

  end;

var
  frmEstimate: TfrmEstimate;

implementation

{$R *.dfm}

uses SetParametro, MensFun, uDMConectDB, ufrmRelEstimate, ufrmInventory,
  ufrmFollowUP, uSetupFolder, ufrmLabor, AsyncCalls;

Const

  ESTIMATE_HEADER = 'TBESTIMATE';
  ESTIMATE_ITEM   = 'TBESTIMATE_ITEM';

  ORDER_HEADER    = 'TBORDER';
  ORDER_ITEM      = 'TBORDER_ITEM';

  INVOICE_HEADER  = 'TBINVOICE';
  INVOICE_ITEM    = 'TBINVOICE_ITEM';

  WORK_EMAIL      = 'WORK';
  SALES_EMAIL     = 'SALES';


procedure TfrmEstimate.ShowImagem;
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
        ImageProduct.Picture.LoadFromFile(OpenPictureDialog.FileName);
        ImageProduct.Picture.Graphic.SaveToStream(S);
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
      ImageProduct.Picture.Assign(Graphic);
    finally
      Graphic.Free;
    end;

      //DBGridUsers.Canvas.Draw(Rect.left, Rect.Top, bmp);
    finally
      Jpg.Free;
      foto.Free;
    end;

end;


procedure TfrmEstimate.ShowLogo;
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
     if   TBCOMPANY.FieldByName('IMAGEM').AsVariant = Null then
     begin
        OpenPictureDialog.FileName := ExtractFilePath(Application.ExeName) + 'noimage.jpg';
        RLImageLogo.Picture.LoadFromFile(OpenPictureDialog.FileName);
        RLImageLogo.Picture.Graphic.SaveToStream(S);
     end
     else
        TBlobField(TBCOMPANY.FieldByName('IMAGEM')).SaveToStream(S);

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
      RLImageLogo.Picture.Assign(Graphic);
    finally
      Graphic.Free;
    end;

      //DBGridUsers.Canvas.Draw(Rect.left, Rect.Top, bmp);
    finally
      Jpg.Free;
      foto.Free;
    end;

end;

procedure TfrmEstimate.ButCancelarClick(Sender: TObject);
begin
   LimpaEdits;

   pnlTop.Enabled        := True;
   pnlTerms.Enabled      := True;
   pnlBtnLateral.Enabled := True;
   cmbStatus.Enabled     := True;

   sqlProcessItem.Close;

  if Process <> Nil then
     FreeAndNil(Process);

  if TBHeader = ESTIMATE_HEADER then
    Caption   := 'Quotation'
  else if TBHeader = ORDER_HEADER then
        Caption := 'Order'
        else Caption := 'Invoice';

  varNewKeyItem := 0;
  ButItensOnOff('TTTFFTTT');
  ButProcessOff('TTT');

  Page.ActivePage := cxTabSheetGrade;
  cxPageEstimate.ActivePage := cxTabEstimateList;

end;

procedure TfrmEstimate.ButCAncelarItemClick(Sender: TObject);
begin

  if Item <> Nil then
      FreeAndNil(Item);

  CleanItemFromEdition;
  Page.ActivePage := cxTabSheetGrade;
  ButItensOnOff('TTTFFTTT');
end;

procedure TfrmEstimate.ButExcluirClick(Sender: TObject);
var
  varProcessName : String;
begin
  cmbStatus.ItemIndex     :=  cmbStatus.Properties.Items.IndexOf(sqlProcessSTATUS.AsString);

  if TBHeader = INVOICE_HEADER then
  begin
    Mens_MensInf('You can not Delete the Invoice!') ;
    Exit;
  end;

 if TBHeader = ESTIMATE_HEADER then
     varProcessName := 'Quotation #: ' + ZeroLeft(sqlProcessID_PROCESS.AsString,7)
 else if TBHeader = ORDER_HEADER then
     varProcessName := 'Order #: ' + ZeroLeft(sqlProcessID_PROCESS.AsString,7);

  if cmbStatus.ItemIndex = 1 then
  begin
    Mens_MensInf(varProcessName + ' has ' + cmbStatus.Text + ' status. You can not Delete it.') ;
    Exit;
  end;

 If Mens_MensConf('Delete ' + varProcessName +  '? ') <> mrOk then
    Exit;

  Process := TSalesProcess.Create(Self);
  Try
    Process.Search(TBHeader, sqlProcessID_PROCESS.AsInteger);
    Process.Delete;
    AtualizaGrade;
  Finally
    FreeAndNil(Process);
  End;


end;

procedure TfrmEstimate.ButExcluirItemClick(Sender: TObject);
var
  varProcessName : String;
begin
  cmbStatus.ItemIndex     :=  cmbStatus.Properties.Items.IndexOf(cmbStatus.text);

  if TBHeader = INVOICE_HEADER then
  begin
    Mens_MensInf('You can not Delete the Item Invoice!') ;
    Exit;
  end;

 if TBHeader = ESTIMATE_HEADER then
     varProcessName := 'Quotation Item  #: ' + sqlProcessItemID_PRODUCT.AsString
 else if TBHeader = ORDER_HEADER then
     varProcessName := 'Order Item #: ' + sqlProcessItemID_PRODUCT.AsString;

  if cmbStatus.ItemIndex = 1 then
  begin
    Mens_MensInf(varProcessName + ' has ' + cmbStatus.Text + ' status. You can not Delete it.') ;
    Exit;
  end;

 If Mens_MensConf('Delete ' + varProcessName +  '? ') <> mrOk then
    Exit;


  Item := TSalesProcessItem.Create(Self);
  Try
    Item.SearchProductByItem(TBItem, sqlProcessItemID_PROCESS.AsInteger, sqlProcessItemID_PROCESS_ITEM.AsInteger);
    Item.Delete;
    AtualizaGradeItem;
  Finally
    FreeAndNil(Item);
  End;
end;

procedure TfrmEstimate.ButImprimirClick(Sender: TObject);
begin
   Process := TSalesProcess.Create(Self);
   Process.Search(TBHeader, sqlProcessID_PROCESS.AsInteger);
   SetParametros(edtCliente, TipoCustomerCompany);
   edtCliente.SetValue('C.ID_CUSTOMER = ' + IntToStr(Process.Customer.Id_customer));
   TPEMAIL := SALES_EMAIL;
   if TBHeader = ESTIMATE_HEADER then
     ReportSale.PreviewOptions.Caption := 'Quotation'
   else if TBHeader = ORDER_HEADER then
        ReportSale.PreviewOptions.Caption := 'Order'
        else if TBHeader = INVOICE_HEADER then
             ReportSale.PreviewOptions.Caption := 'Invoice';
   ReportSale.Preview;

end;

procedure TfrmEstimate.ButItensOnOff(S: String);
begin
  ButNovoItem.Enabled     := Copy(S,1,1) = 'T' = True;
  ButAlterarItem.Enabled  := Copy(S,2,1) = 'T' = True;
  ButExcluirItem.Enabled  := Copy(S,3,1) = 'T' = True;
  ButSalvarItem.Enabled   := Copy(S,4,1) = 'T' = True;
  ButCancelarItem.Enabled := Copy(S,5,1) = 'T' = True;

  //cxgTotal.Visible        := not ButSalvarItem.Enabled;

end;



procedure TfrmEstimate.LimpaEdits;
var i : integer;
begin
   varOption := 'X';
   varOptionItem := 'X';
   //if Page.ActivePageIndex = 1 then   // TABSHEET = 2
   //begin
     for i := 0 to ComponentCount -1 do
     begin

       if (Components[i] is TMaskEdit) then
         TMaskEdit(Components[i]).Clear;


       if (Components[i] is TcxMaskEdit) then
         TcxMaskEdit(Components[i]).Clear;


       if (Components[i] is TEdit) then
          TEdit(Components[i]).Clear;

       if (Components[i] is TcxComboBox) then
          TcxComboBox(Components[i]).Clear;

       if (Components[i] is TMemo) then
          TMemo(Components[i]).Clear;

       if (Components[i] is TcxLookupComboBox) then
          TcxLookupComboBox(Components[i]).Clear;

     end;
   //end;

end;


procedure TfrmEstimate.LoadItemToHeader;
var
  sqlItems : TFDQuery;
  ItemOfHeader     : TSalesProcessItem;
begin

      sqlItems := TFDQuery.Create(Nil);
      Try
          sqlItems.Connection := DBDados.Connection;

           sqlItems.Close;
           sqlItems.SQL.Clear;
           sqlItems.SQL.Add('SELECT * FROM TBPROCESS_ITEM With (NOLOCK) WHERE TABLENAME = :TABLENAME');
           sqlItems.SQL.Add(' AND ID_PROCESS = :ID_PROCESS');
           sqlItems.Params.ParamByName('TABLENAME').AsString    := TBItem;
           sqlItems.Params.ParamByName('ID_PROCESS').AsInteger  := Process.id_process;
           sqlItems.Open;
           sqlItems.First;
           ItemOfHeader := TSalesProcessItem.Create(Self);

           while not sqlItems.eof do
           begin
               ItemOfHeader.Inicializar;
               ItemOfHeader. TableName       := sqlItems.FieldByName('tablename').AsString;
               ItemOfHeader.id_process_item := sqlItems.FieldByName('id_process_item').AsInteger;
               ItemOfHeader.id_process      := sqlItems.FieldByName('id_process').AsInteger;
               ItemOfHeader.id_pricelist    := sqlItems.FieldByName('id_pricelist').AsInteger;
               ItemOfHeader.id_product      := sqlItems.FieldByName('id_product').AsInteger;
               ItemOfHeader.qty             := sqlItems.FieldByName('id_product').AsFloat;
               ItemOfHeader.rate            := sqlItems.FieldByName('rate').AsFloat;
               ItemOfHeader.amout           := sqlItems.FieldByName('amout').AsFloat;
               ItemOfHeader.id_user         := sqlItems.FieldByName('id_user').AsInteger;
               ItemOfHeader.add_date        := sqlItems.FieldByName('add_date').AsDateTime;
               ItemOfHeader.upd_date        := sqlItems.FieldByName('upd_date').AsDateTime;
               ItemOfHeader.room            := sqlItems.FieldByName('room').AsVariant;
               ItemOfHeader.width           := sqlItems.FieldByName('width').AsFloat;
               ItemOfHeader.height          := sqlItems.FieldByName('height').AsFloat;
               ItemOfHeader.totalarea       := sqlItems.FieldByName('totalarea').AsFloat;
               ItemOfHeader.req_purchase_order := sqlItems.FieldByName('req_purchase_order').AsString;
               ItemOfHeader.dif_totalarea   :=  sqlItems.FieldByName('dif_totalarea').AsFloat;

               Process.ItensNF.Add(Process,ItemOfHeader );

               sqlItems.Next;
           end;


      Finally
         FreeAndNil(sqlItems);
         FreeAndNil(ItemOfHeader);
      End;
end;

procedure TfrmEstimate.LoadService;
begin
  if cxLookupComboBoxWorker.EditValue <> - 1 then
  begin
    sqlService.Close;
    sqlService.SQL.Clear;
    sqlService.SQL.Add ('SELECT  ');
    sqlService.SQL.Add ('   A.ID_SERVICE,  ');
    sqlService.SQL.Add ('   A.ID_PROCESS,  ');
    sqlService.SQL.Add ('   C.LAST_NAME + '', '' + C.FIRST_NAME AS CUSTOMER,  ');
    sqlService.SQL.Add ('   E.ADDRESS1, E.ZIPCODE, E.CITY, E.COUNTY, E.STATEE, ');
    sqlService.SQL.Add ('   A.ID_CONTRACTORS,  ');
    sqlService.SQL.Add ('   A.DT_SERVICE,  ');
    sqlService.SQL.Add ('   A.SIDEMARK,  ');
    sqlService.SQL.Add ('   A.DT_FINISH,  ');
    sqlService.SQL.Add ('   A.STATUS,  ');
    sqlService.SQL.Add ('   A.ADD_DATE,   ');
    sqlService.SQL.Add ('   A.UPD_DATE,   ');
    sqlService.SQL.Add ('   D.LASTNAME + '', '' + D.FIRST_NAME AS USERX  ');
    sqlService.SQL.Add ('FROM TBSERVICE A    ');
    sqlService.SQL.Add ('INNER JOIN TBPROCESS B ON B.ID_PROCESS = A.ID_PROCESS AND B.TABLENAME = ''TBORDER''  ');
    sqlService.SQL.Add ('INNER JOIN TBCUSTOMER C ON C.ID_CUSTOMER = B.ID_CUSTOMER   ');
    sqlService.SQL.Add ('INNER JOIN TBUSER D ON D.ID_USER = A.ID_USER  ');
    sqlService.SQL.Add ('LEFT OUTER JOIN TBADDRESS E ON E.ID_CUSTOMER = C.ID_CUSTOMER ');
    sqlService.SQL.Add ('WHERE A.ID_CONTRACTORS = :ID_CONTRACTORS   ');

    sqlService.Params.ParamByName('ID_CONTRACTORS').AsInteger :=cxLookupComboBoxWorker.EditValue;
    sqlService.Open;
  end;
end;

procedure TfrmEstimate.ReportSaleBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin


   sqlHeader.Close;
   sqlHeader.Params.ParamByName('ID_PROCESS').AsInteger :=  sqlProcessID_PROCESS.AsInteger;
   sqlHeader.Params.ParamByName('TABLENAME').AsString   :=  TBHeader;
   sqlHeader.Open;

   if TBCOMPANY.Locate('ID_COMPANY',sqlHeaderCOMPANY_ID.AsInteger, []) Then
      ShowLogo;


   sqlParcelas.Close;
   sqlParcelas.Params.ParamByName('ID_PROCESS').AsInteger := sqlProcessID_PROCESS.AsInteger;
   sqlParcelas.Params.ParamByName('TABLENAME').AsString   := TBHeader;
   sqlParcelas.Open;

  if TBHeader = ESTIMATE_HEADER then
     LblProcess.Caption := 'Quotation N� :'
  else if TBHeader = ORDER_HEADER Then
     LblProcess.Caption := 'Order N� :'
  else if TBHeader = INVOICE_HEADER then
     LblProcess.Caption := 'Invoice N� :'

end;

procedure TfrmEstimate.RLPreviewSetup1Send(Sender: TObject);
var
 Filt       : TRLCustomSaveFilter;
 Prev       : TRLPreview;
 varLocal   : String;
 varTemp    : String;
 varArquivo : String;

begin
   varLocal := ExtractFilePath(Application.ExeName);
   varTemp  := Folder_Documents;
   if TPEMAIL = SALES_EMAIL then
   begin
       varGlobalEmailDestino := sqlProcessCUSTOMER_EMAIL.AsString;
       if ((edtCliente.bs_KeyValues.Count <> 0) and (edtCliente.Text <> '')) then
       begin
         if TBHeader = ESTIMATE_HEADER then
         begin

             varArquivo := varLocal + Process.Customer.folder.pasta + '\' + Folder_Quotation + '\Quotation_' + sqlProcessID_PROCESS.AsString + '.PDF';
             if FileExists(varArquivo) Then
                 DeleteFile(varArquivo);
             varGlobalSubject := 'Quotation Nr ' +  sqlProcessID_PROCESS.AsString;
         end
         else if TBHeader = ORDER_HEADER then
         begin
             varArquivo := varLocal + Process.Customer.folder.pasta + '\' + Folder_Order + '\Order_' + sqlProcessID_PROCESS.AsString + '.PDF';
             if FileExists(varArquivo) Then
                 DeleteFile(varArquivo);
             varGlobalSubject := 'Order Nr ' +  sqlProcessID_PROCESS.AsString;
         end
         else if TBHeader = ORDER_HEADER then
         begin
             varArquivo := varLocal + Process.Customer.folder.pasta + '\' + Folder_Invoice + '\Invoice_' + sqlProcessID_PROCESS.AsString + '.PDF';
             if FileExists(varArquivo) Then
                 DeleteFile(varArquivo);
             varGlobalSubject := 'Invoice Nr ' +  sqlProcessID_PROCESS.AsString;
         end
       end
       else
       begin
            varArquivo := varLocal +  varTemp + '\Temp_' + sqlProcessID_PROCESS.AsString + '.PDF';
            if FileExists(varArquivo) Then
               DeleteFile(varArquivo);
       end;
   end
   else if TPEMAIL = WORK_EMAIL then
       begin
           varArquivo := varLocal + Process.Customer.folder.pasta + '\' + Folder_Service + '\WorkOrder_' + sqlProcessID_PROCESS.AsString + '.PDF';
           if FileExists(varArquivo) Then
              DeleteFile(varArquivo);
           varGlobalEmailDestino := lblEmail.Caption;
       end;

   Prev := TRLPreviewForm(Sender).Preview;
   Filt := TRLCustomSaveFilter(SelectedFilter);
   Filt := SaveFilterByFileName(varArquivo);
   Filt.FileName := varArquivo;
   Filt.FilterPages(Prev.Pages, 1, Prev.Pages.PageCount,'',PrintOddAndEvenPages);

   varGlobalFromEmail := Process.Contractors.email;
   varGlobalFromName  := Process.Contractors.nome;
   varGlobalArquivo   := varArquivo;

   //EnviarEmail(varGlobalEmailDestino, 'This is your File');


   if Assigned(Process) then
     FreeAndNil(Process);


end;

procedure  TfrmEstimate.PreDefineEmail(Sender : TObject);
var
  varLocal   : String;
  varTemp    : String;
  varArquivo : String;

begin
   ReportSale.Prepare;
   varLocal := ExtractFilePath(Application.ExeName);
   varTemp  := Folder_Documents;

   if ((edtCliente.bs_KeyValues.Count <> 0) and (edtCliente.Text <> '')) then
   begin

     if TBHeader = ESTIMATE_HEADER then
       varArquivo := varLocal + Process.Customer.folder.pasta + '\' + Folder_Quotation + '\Quotation_' + sqlProcessID_PROCESS.AsString + '.PDF'
     else if TBHeader = ORDER_HEADER then
          varArquivo := varLocal + Process.Customer.folder.pasta + '\' + Folder_Order + '\Order_' + sqlProcessID_PROCESS.AsString + '.PDF'
     else if TBHeader = ORDER_HEADER then
         varArquivo := varLocal + Process.Customer.folder.pasta + '\' + Folder_Invoice + '\Invoice_' + sqlProcessID_PROCESS.AsString + '.PDF'
   end

   else  varArquivo := varLocal +  varTemp + '\Temp_' + sqlProcessID_PROCESS.AsString + '.PDF';

   ReportSale.SaveToFile(varArquivo);

   varGlobalSubject   := 'Quotation Nr ' +  sqlProcessID_PROCESS.AsString;
   varGlobalFromEmail := Process.Contractors.email;
   varGlobalFromName  := Process.Contractors.nome;
   varGlobalArquivo   := varArquivo;

   EnviarEmail(sqlProcessCUSTOMER_EMAIL.AsString, 'This is your File');

   if Assigned(Process) then
     FreeAndNil(Process);


end;

procedure TfrmEstimate.ReportServiceBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   sqlHeader.Close;
   sqlHeader.Params.ParamByName('ID_PROCESS').AsInteger :=  sqlProcessID_PROCESS.AsInteger;
   sqlHeader.Params.ParamByName('TABLENAME').AsString   :=  TBHeader;
   sqlHeader.Open;
end;

procedure TfrmEstimate.AtualizaGrade;
begin

  sqlProcess.Close;
  sqlProcess.Params.ParamByName('TABLENAME').AsString    := TBHeader;
  sqlProcess.MacroByName( 'WHERE1' ).AsRaw := ' AND A.' + DBDados.varReturnCompanies;

  if TBHeader = ESTIMATE_HEADER then
    if DBDados.varView_All_Quotation = False then
       sqlProcess.MacroByName( 'WHERE2' ).AsRaw := ' AND A.ID_USER = ' + IntToStr(DBDados.varID_USER);

  if TBHeader = ORDER_HEADER then
    if DBDados.varView_All_Orders = False then
       sqlProcess.MacroByName( 'WHERE2' ).AsRaw := ' AND A.ID_USER = ' + IntToStr(DBDados.varID_USER);


  if TBHeader = INVOICE_HEADER then
    if DBDados.varView_All_Invoices = False then
       sqlProcess.MacroByName( 'WHERE2' ).AsRaw := ' AND A.ID_USER = ' + IntToStr(DBDados.varID_USER);

  sqlProcess.Open;

end;

procedure TfrmEstimate.AtualizaGradeItem;
begin
  if not Assigned(Process) then exit;

  sqlProcessItem.Close;
  sqlProcessItem.Params.ParamByName('ID_PROCESS').AsInteger := Process.id_process;
  sqlProcessItem.Params.ParamByName('TABLENAME').AsString   := TBItem;
  sqlProcessItem.Open;

  sqlServicesItem.Close;
  sqlServicesItem.Params.ParamByName('ID_PROCESS').AsInteger := Process.id_process;
  sqlServicesItem.Params.ParamByName('TABLENAME').AsString   := TBItem;
  sqlServicesItem.Open;

  sqlPaymentMethod.Close;
  sqlPaymentMethod.Open;

end;

procedure TfrmEstimate.AtualizTerms;
begin
  if not Assigned(Process) then exit;

  sqlTerms.Close;
  sqlTerms.Params.ParamByName('ID_PROCESS').AsInteger := Process.id_process;
  sqlTerms.Params.ParamByName('TABLENAME').AsString   := TBHeader;
  sqlTerms.Open;
end;

procedure TfrmEstimate.btnCartClick(Sender: TObject);
 var
    Y, I : Integer;
begin
  if  varOption = 'X' then
  begin
    Mens_MensInf('The Form not in insert or edit mode.') ;
    Exit;
  end;


  if cxLookupComboBoxCompany.EditValue = Null then
  begin
    Mens_MensInf('Company name field is required.') ;
    cxLookupComboBoxCompany.SetFocus;
    Exit;
  end;

  if edtCustomerName.Text = '' then
  begin
    Mens_MensInf('Customer name field is required.') ;
    edtCustomerName.SetFocus;
    Exit;
  end;

  if cxLookupComboBoxPaymentMethod.EditValue = Null then
  begin
    Mens_MensInf('The payment method field is required.') ;
    cxLookupComboBoxPaymentMethod.SetFocus;
    Exit;
  end;

  if Assigned(frmInventory) then
    if frmInventory.Carrinho <> Nil then
      if frmInventory.Carrinho.ItensNF.Count > 0 then
      begin
            Item := TSalesProcessItem.Create(Self);
            varOption := 'I';

            for Y := 0 to frmInventory.Carrinho.ItensNF.Count  -1 do
            begin
              Item.Assign(frmInventory.Carrinho.ItensNF[Y]);
              Process.ItensNF.Add(Process, Item);
            end;


            Process.id_process := varNewKey;
            cxLookupComboBoxPrincing.EditValue := Process.ItensNF[0].id_pricelist;
            if varOption = 'I' then
            begin
              SaveHeader;
              varOption := 'U';
            end;

            for I := 0 to Process.ItensNF.Count -1 do
              begin
                  Process.ItensNF.Items[I].id_process      := varNewKey;
                  Process.ItensNF.Items[I].id_process_item := varNewKeyItem;
                  Process.ItensNF.Items[I].Save;
                  Inc(varNewKeyItem);
              end;

            AtualizaGradeItem;
            CalculaProcess;

            cxLookupComboBoxPrincing.Enabled := False;

            CleanItemFromEdition;

            FreeAndNil(frmInventory.Carrinho);
            FreeAndNil(frmInventory.Item);
            btnCart.Caption := '0';
            btnCart.Visible := False;

            Page.ActivePage := cxTabSheetGrade;

      end;

end;

procedure TfrmEstimate.btnLoadServiceClick(Sender: TObject);


  procedure LoadService;
  var
    I : Integer;
  begin

     frmLabor.LoadService;

     if TBHeader = ESTIMATE_HEADER then
       frmLabor.Caption := 'Quotation [ ' + IntToStr(Process.id_process) + ']'
     else if TBHeader = ORDER_HEADER  then
          frmLabor.Caption := 'Order [ ' + IntToStr(Process.id_process) + ']'
          else frmLabor.Caption := ' Invoice [' + IntToStr(Process.id_process) + ']';

     frmLabor.Panel1.Caption := 'Customer Name: ' + edtCustomerName.Text;

     sqlServicesItem.First;
     while not sqlServicesItem.Eof do
     begin
       for I:= 0 to frmLabor.chklistService.Items.Count - 1 do
          if frmLabor.chklistService.Items[I]    =  sqlServicesItemDESC_PRODUCT.AsString  then
             frmLabor.chklistService.Checked[I] := True;
         sqlServicesItem.Next;
     end;

     frmLabor.Process_ID     := Process.id_process;
     frmLabor.TableName      := TBItem;
  end;

begin

  if sqlProcessItem.IsEmpty then Exit;


  if not Assigned(frmLabor) then
    frmLabor := TfrmLabor.Create(Self);
    frmLabor.Show;

    frmLabor.Visible := True;
    frmLabor.BringToFront;
    frmLabor.Update;

    LocalAsyncVclCall( @LoadService );

{
    try
       Application.CreateForm(TfrmLabor,  frmLabor);
       LocalAsyncVclCall( @LoadService );
       frmLabor.ShowModal;
    finally

        FreeAndNil(frmLabor);
    end;
 }
end;

procedure TfrmEstimate.btnSaveServiceClick(Sender: TObject);
var
 sqlDados : TFDQuery;
begin
  if cxLookupComboBoxWorker.ItemIndex = -1 then
  begin
      Mens_MensInf('Worker not Selected.') ;
      cxLookupComboBoxWorker.SetFocus;
      exit;
  end;


  if cxDateWork.Text = '' then
  begin
      Mens_MensInf('Date of Service not informed.') ;
      cxDateWork.SetFocus;
      exit;
  end;

  sqlDados := TFDQuery.Create(Nil);
  Try
     sqlDados.Connection := DBDados.Connection;
     if varGravaService = 'I' then
     begin
        varID_SERVICE := 0;

        sqlDados.Close;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add('Insert INTO TBSERVICE ');
        sqlDados.SQL.Add('(ID_PROCESS,  ID_CONTRACTORS,  DT_SERVICE, SIDEMARK,  ID_USER) ');
        sqlDados.SQL.Add('VALUES (:ID_PROCESS,  :ID_CONTRACTORS,  :DT_SERVICE, :SIDEMARK,   :ID_USER  )');
        sqlDados.Params.ParamByName('ID_PROCESS').AsInteger     := varNewKey;
        sqlDados.Params.ParamByName('ID_CONTRACTORS').AsInteger := cxLookupComboBoxWorker.EditValue;
        sqlDados.Params.ParamByName('DT_SERVICE').AsString      := FormatDateTime('mm/dd/yyyy hh:mm:ss', cxDateWork.Date);
        sqlDados.Params.ParamByName('SIDEMARK').AsString        := edtSidemark.Text;
        sqlDados.Params.ParamByName('ID_USER').AsInteger        := DBDados.varID_USER;

        Try
           sqlDados.ExecSQL;
           varGravaService := 'U';
        except
           on E: EDatabaseError do
             Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

        end;

        sqlDados.Close;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add(' Select @@IDENTITY as ID_SERVICE ');
        sqlDados.Open;

        varID_SERVICE := sqlDados.FieldByName('ID_SERVICE').AsInteger;
     end;

      if sqlService.State IN [dsEdit] then
         sqlService.Post;

      sqlDados.Close;
      sqlDados.SQL.Clear;
      sqlDados.SQL.Add('Insert INTO TBSERVICE_FOLLOWUP ');
      sqlDados.SQL.Add(' (ID_SERVICE, COMMENTS, ID_USER) ');
      sqlDados.SQL.Add(' VALUES (:ID_SERVICE, :COMMENTS, :ID_USER) ');

      sqlDados.Params.ParamByName('ID_SERVICE').AsInteger := varID_SERVICE;
      sqlDados.Params.ParamByName('COMMENTS').AsString    := Trim(memServiceComment.Lines.Text);
      sqlDados.Params.ParamByName('ID_USER').AsInteger    := DBDados.varID_USER;

      Try
         sqlDados.ExecSQL;
         LoadService;

      except
         on E: EDatabaseError do
           Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

      end;

  Finally
    FreeAndNil(sqlDados);
  End;


end;

procedure TfrmEstimate.btnTermsClick(Sender: TObject);
var
  sqlDados : TFDQuery;
  varDateDue : TDateTime;
  Terms : TTerms;
begin



   if sqlTerms.IsEmpty  then
   begin

     Terms := TTerms.Create;
     Try
       if varProcessoProduto > 0 then
       begin
         Terms.id_process  := Process.id_process;
         Terms.tablename   := TBHeader;
         Terms.dt_process  := Process.dt_process;
         Terms.num_days    := 1;
         Terms.date_due    := Now + 1;
         Terms.value       := varProcessoProduto;
         Terms.description := 'Materials Total(deposit payment)';
         Terms.add_date    := Date;
         Terms.id_user     := DBDados.varID_USER;
         Terms.Save;
       end;

       if varServiceTotal > 0 then
       begin
         Terms.id_process  := Process.id_process;
         Terms.tablename   := TBHeader;
         Terms.dt_process  := Process.dt_process;
         Terms.num_days    := 7;
         Terms.date_due    := Now + 7;
         Terms.value       := varServiceTotal;
         Terms.description := 'Labor Total(due upen completion)';
         Terms.add_date    := Date;
         Terms.id_user     := DBDados.varID_USER;
         Terms.Save;
       end;

     Finally
      FreeAndNil(Terms);
     End;

   end
   else
   begin

       if sqlProcessItem.IsEmpty then
       begin
         Mens_MensInf('Data not found.') ;
         exit;
       end;

       if edtDays.Text = '' then
       begin
        Mens_MensInf('Terms field is required.') ;
        edtDays.SetFocus;
        Exit;
       end;

       if edtTotal.EditValue <= 0 then
       begin
        Mens_MensInf('Terms Amount field is required.') ;
        edtTotal.EditValue := sqlProcessTOTAL.AsFloat;
        edtTotal.SetFocus;
        Exit;
       end;

       if edtTermsDesc.Text = '' then
       begin
        Mens_MensInf('Terms Description field is required.') ;
        edtTermsDesc.SetFocus;
        Exit;
       end;

       if StrToInt(edtDays.Text) > Contractor.Company.estimateDays then
       begin
           Mens_MensInf('Terms can not be greater than Date Valid Until.') ;
           edtDays.SetFocus;
           Exit;
       end;

       if ValidTotalTerm then
       begin
           varDateDue := cxDateProcess.Date + StrToInt(edtDays.Text);

           sqlDados := TFDQuery.Create(Nil);
           Try
             sqlDados.Connection := DBDados.Connection;
             sqlDados.Close;
             sqlDados.SQL.Clear;
             sqlDados.SQL.Add('Insert into TBTERMS (');
             sqlDados.SQL.Add('TABLENAME');
             sqlDados.SQL.Add(',ID_PROCESS');
             sqlDados.SQL.Add(',DT_PROCESS');
             sqlDados.SQL.Add(',NUM_DAYS');
             sqlDados.SQL.Add(',DATE_DUE');
             sqlDados.SQL.Add(',VALUE');
             sqlDados.SQL.Add(',DESCRIPTION');
             sqlDados.SQL.Add(',ADD_DATE');
             sqlDados.SQL.Add(',ID_USER)');

             sqlDados.SQL.Add('VALUES (');
             sqlDados.SQL.Add(':TABLENAME');
             sqlDados.SQL.Add(',:ID_PROCESS');
             sqlDados.SQL.Add(',:DT_PROCESS');
             sqlDados.SQL.Add(',:NUM_DAYS');
             sqlDados.SQL.Add(',:DATE_DUE');
             sqlDados.SQL.Add(',:VALUE');
             sqlDados.SQL.Add(',:DESCRIPTION');
             sqlDados.SQL.Add(',:ADD_DATE');
             sqlDados.SQL.Add(',:ID_USER)');

             sqlDados.Params.ParamByName('TABLENAME').AsString   := TBHeader;
             sqlDados.Params.ParamByName('ID_PROCESS').AsInteger := sqlProcessItemID_PROCESS.AsInteger;
             sqlDados.Params.ParamByName('DT_PROCESS').AsString  := FormatDateTime('mm/dd/yyyy hh:mm:ss', cxDateProcess.Date);
             sqlDados.Params.ParamByName('NUM_DAYS').AsInteger   := StrToInt(edtDays.Text);
             sqlDados.Params.ParamByName('DATE_DUE').AsString    := FormatDateTime('mm/dd/yyyy hh:mm:ss', varDateDue);
             sqlDados.Params.ParamByName('VALUE').AsFloat        := edtTotal.EditValue;
             sqlDados.Params.ParamByName('DESCRIPTION').AsString := edtTermsDesc.Text;
             sqlDados.Params.ParamByName('ADD_DATE').AsString    := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
             sqlDados.Params.ParamByName('ID_USER').AsInteger    := DBDados.varID_USER;

             Try
               sqlDados.ExecSQL;

             except
                on E: EDatabaseError do
                  Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

             end;

           Finally
             FreeAndNil(sqlDados);
           End;
       end;
   end;
   edtTermsDesc.Text := '';
   AtualizTerms;

end;

procedure TfrmEstimate.ButAlterarClick(Sender: TObject);
begin
   pnlTop.Enabled := True;
   LimpaEdits;
   varOption                         := 'U';
   cxPageEstimate.ActivePage         := cxTabEstimateForm;
   cxPageForm2.ActivePage            := cxTabSheetItems;

   varNewKey                         := sqlProcessID_PROCESS.AsInteger;
   cxLookupComboBoxCompany.EditValue := sqlProcessID_COMPANY.AsString;
   Contractor.Search(sqlProcessID_USER.AsInteger);

   edtSalesRep.SetValue('ID_CONTRACTORS=' + QuotedStr(IntToStr(sqlProcessID_CONTRACTORS.AsInteger)));
   cxLookupComboBoxPrincing.ItemIndex := -1;
   if edtSalesRep.bs_KeyValue > 0 then
   begin
     STPPRICELIST.Close;
     STPPRICELIST.Prepare;
     STPPRICELIST.ParamByName( '@ID_CONTRACTOR' ).AsInteger := edtSalesRep.bs_KeyValue;
     STPPRICELIST.Open;
   end;

   cxDateProcess.Date      := sqlProcessDT_PROCESS.AsDateTime;
   cxDateProcessValid.Date := sqlProcessDT_PROCESS_VALID.AsDateTime;

   memComments.Lines.Clear;
   memComments.Lines.Add(sqlProcessCOMMENTS.AsString);

   Process := TSalesProcess.Create(Self);
   Process.Search(TBHeader, sqlProcessID_PROCESS.AsInteger);
   LoadItemToHeader;
   Caption                := Caption + '  -  ' + ZeroLeft(IntToStr(Process.id_process),7);


   if sqlProcessID_CUSTOMER.AsString <> '' then
   begin
       SetParametros(edtCliente, TipoCustomerCompany);
       edtCliente.SetValue('C.ID_CUSTOMER = ' + IntToStr(Process.Customer.Id_customer));

       edtClienteClick(Self);
   end
   else
   begin
       edtCustomerName.Text := sqlProcessCUSTOMER_NAME.AsString;
       edtPhone.Text        := sqlProcessCUSTOMER_PHONE.AsString;
       edtEmail.Text        := sqlProcessCUSTOMER_EMAIL.AsString;
       edtAddress.Text      := sqlProcessADDRESS1.AsString;
       edtZipCode.Text      := sqlProcessZIPCODE.AsString;
       edtCounty.Text       := sqlProcessCOUNTY.AsString;
       edtCity.Text         := sqlProcessCITY.AsString;
       edtST.Text           := sqlProcessST.AsString;
   end;

   edtPONumber.Text := sqlProcessPONUMBER.AsString;

   AtualizaGradeItem;

   CalculaServiceSubTotal;

   cxLookupComboBoxPrincing.EditValue := sqlProcessItemID_PRICELIST.AsInteger;

   edtmskDiscount.EditValue := sqlProcessPERCENT_DISCOUNT.AsFloat;
   edtShipping.EditValue    := sqlProcessSHIPPING.AsFloat;
   edtTotal.EditValue       := sqlProcessTOTAL.AsFloat;
   cmbStatus.Text           := sqlProcessSTATUS.AsString;
   cmbStatus.ItemIndex      := cmbStatus.Properties.Items.IndexOf(sqlProcessSTATUS.AsString);
   cxDateShippingDate.Date  := sqlProcessDT_SHIPPING.AsDateTime ;
   cxLookupComboBoxPaymentMethod.EditValue := sqlProcessID_PAYMENT_METHOD.AsInteger;
   // 0 Pending
   // 1 Accepted
   // 2 Closed
   // 3 Rejected

   pnlTop.Enabled        := True;
   pnlTerms.Enabled      := True;
   pnlBtnLateral.Enabled := True;
   cmbStatus.Enabled     := True;

   if (TBHeader = ESTIMATE_HEADER) then
   begin
       if ((cmbStatus.ItemIndex  = 1) or (cmbStatus.ItemIndex = 2)) Then
       begin
           pnlTop.Enabled := False;
           pnlTerms.Enabled := False;
           pnlBtnLateral.Enabled := False;
           cmbStatus.Enabled := False;
       end;
   end;

   AtualizTerms;
   DisabledTotalField;
   CalculaProcess;


end;

procedure TfrmEstimate.ButAlterarItemClick(Sender: TObject);
var
 I, Y, J : integer;
 varRoom, varRoom2 : String;
begin

  if sqlProcessItem.IsEmpty then
  begin
    Mens_MensInf('There is no Data to edit.') ;
    Exit;
  end;

  if  varOption = 'X' then
  begin
    Mens_MensInf('The Form not in insert or edit mode.') ;
    Exit;
  end;

  if cxLookupComboBoxCompany.EditValue = Null then
  begin
    Mens_MensInf('Company name field is required.') ;
    cxLookupComboBoxCompany.SetFocus;
    Exit;
  end;

  if edtCustomerName.Text = '' then
  begin
    Mens_MensInf('Customer name field is required.') ;
    edtCustomerName.SetFocus;
    Exit;
  end;

  if edtSalesRep.Text = '' then
  begin
    Mens_MensInf('Vendor name field is required.') ;
    edtSalesRep.SetFocus;
    Exit;
  end;

  if cxLookupComboBoxPrincing.Text = '' Then
  begin
    Mens_MensErro('The Pricing Table field is required.');
    cxLookupComboBoxPrincing.SetFocus;
    exit;
  end;

 // edtProduto.bs_Filter := 'P.ACTIVE = ''Y'' AND  I.ID_PRICELIST = ' +  QuotedStr(cxLookupComboBoxPrincing.EditValue);

  Page.ActivePage := cxTabSheetEdit;
  lblInfoQuant.Caption     := '-';
  lblUnidadeMedida.Caption := '-';
  Item := TSalesProcessItem.Create(Self);
  item.id_process      := Process.id_process;
  Item.tablename       := Process.tablename;
  item.id_process_item := sqlProcessItemID_PROCESS_ITEM.AsInteger;

  //Item.SearchProductByItem(TBItem, sqlProcessID_PROCESS.AsInteger , sqlProcessItemID_PROCESS_ITEM.AsInteger);

  varOptionItem := 'U';
  SetaConsultaProduto(sqlProcessItemID_PRODUCT.AsString);
  //edtProduto.SetValue('I.ID_PRODUCT = ' + sqlProcessItemID_PRODUCT.AsString);

  edtProdutoClick(Self);

  // loading from Database
  varRoom := '';
  varRoom2 := '';
  varRoom2 :=  sqlProcessItemROOM.AsString + ';';
  J := Occurrences(';',varRoom2);
  for I := 0 to J do
  begin
    varRoom := Str_Pal(varRoom2 , I, ';');
    for Y:= 0 to chklistRoom.Items.Count - 1 do
        if chklistRoom.Items[Y] =  varRoom then
           chklistRoom.Checked[Y] := True;
  end;

  EdtQty.Value           := 0;
  lblRate.Caption        := FormatFloat('0.00', sqlProcessItemRATE.AsFloat);
  lblAmount.Caption      := FormatFloat('0.00', sqlProcessItemAMOUT.AsFloat);
  edtweidth.EditValue    := sqlProcessItemWIDTH.AsFloat;
  edtheight.EditValue    := sqlProcessItemHEIGHT.AsFloat;
  edttotalarea.EditValue := sqlProcessItemTOTALAREA.AsFloat;
  ButItensOnOff('FFFTTFFF');
end;

procedure TfrmEstimate.ButNovoClick(Sender: TObject);
var
  varNextKey : TDBNextKey;
begin
  pnlTop.Enabled := True;
  LimpaEdits;
  varOption := 'I';
  cxPageEstimate.ActivePage := cxTabEstimateForm;

  Page.ActivePage           := cxTabSheetGrade;
  cxPageForm2.ActivePage    := cxTabSheetItems;

  varNextKey                := TDBNextKey.Create(TBHeader);
  Try
    varNewKey               := varNextKey.Key;
    Caption                := Caption + '  -  ' + ZeroLeft(IntToStr(varNewKey),7);
    varNextKey.UpdateKey(varNewKey, TBHeader); // atualiza a nova chave no banco
    varNewKeyItem := 0;

    Process := TSalesProcess.Create(Self);
    Process.id_process := varNewKey;
    Process.tablename  := TBHeader;



  finally
    FreeAndNil(varNextKey);
  End;
  ButProcessOff('FFF');

  sqlTerms.Close;
  Initialize;


  edtCliente.SetFocus;

end;

procedure TfrmEstimate.ButNovoItemClick(Sender: TObject);
var
  varNextKey : TDBNextKey;
begin

  if  varOption = 'X' then
  begin
    if TBHeader = ESTIMATE_HEADER then
      Mens_MensInf('The Quotation Form not in insert or edit mode.')
    else if TBHeader = ORDER_HEADER then
      Mens_MensInf('The Order Form not in insert or edit mode.')
    else  Mens_MensInf('The Invoice Form not in insert or edit mode.');

    Exit;
  end;


  if cxLookupComboBoxCompany.EditValue = Null then
  begin
    Mens_MensInf('Company name field is required.') ;
    cxLookupComboBoxCompany.SetFocus;
    Exit;
  end;

  if edtCustomerName.Text = '' then
  begin
    Mens_MensInf('Customer name field is required.') ;
    edtCustomerName.SetFocus;
    Exit;
  end;

  if edtEmail.Text <> '' then
  begin
    if IsValidEmailRegEx(edtEmail.Text) = False Then
    begin
       Mens_MensErro('Invalid Customer�s E-mail.');
       edtEmail.SetFocus ;
       Exit;
    end;
  end;


  if edtSalesRep.Text = '' then
  begin
    Mens_MensInf('Vendor name field is required.') ;
    edtSalesRep.SetFocus;
    Exit;
  end;


  if cxLookupComboBoxPrincing.Text = '' Then
  begin
    Mens_MensErro('The Pricing Table field is required.');
    cxLookupComboBoxPrincing.SetFocus;
    exit;
  end;


  if cxLookupComboBoxPaymentMethod.EditValue = Null then
  begin
    Mens_MensInf('The payment method field is required.') ;
    cxLookupComboBoxPaymentMethod.SetFocus;
    Exit;
  end;

  if ((TBHeader = ORDER_HEADER) or (TBHeader = INVOICE_HEADER)) then
  begin
    if cxDateShippingDate.EditValue = Null then
    begin
      Mens_MensInf('The Pick-up Date field is required.') ;
      cxDateShippingDate.SetFocus;
      Exit;
      end;
  end;

   {
   edtProduto.bs_Filter := 'P.ACTIVE = ''Y'' AND  I.ID_PRICELIST = ' +  QuotedStr(cxLookupComboBoxPrincing.EditValue) +
   '  AND I.ID_PRODUCT NOT IN ( Select ID_PRODUCT  from TBPROCESS_item With (NOLOCK) where TABLENAME = ''' + TBItem +
   ''' AND ID_PROCESS = ' + IntToStr(varNewKey) + ')';
    }

  SetaConsultaProduto;;

  varOptionItem := 'I';
  Page.ActivePage := cxTabSheetEdit;
  lblInfoQuant.Caption     := '-';
  lblUnidadeMedida.Caption := '-';

  varNextKey      := TDBNextKey.Create(TBItem);
  Try
    varNewKeyItem := varNextKey.Key;
    varNextKey.UpdateKey(varNewKeyItem, TBItem); // atualiza a nova chave no bancO
  finally
    FreeAndNil(varNextKey);
  End;

  Item := TSalesProcessItem.Create(Self);
  Item.id_process_item := varNewKeyItem;
  Item.id_process      := Process.id_process;
  item.tablename       := TBItem;

  ButItensOnOff('FFFTTFFF');

end;

procedure TfrmEstimate.ButProcessOff(S: String);
begin
  ButAlterar.Enabled   := Copy(S,1,1) = 'T' = True;
  ButExcluir.Enabled   := Copy(S,2,1) = 'T' = True;
  ButImprimir.Enabled  := Copy(S,3,1) = 'T' = True;
end;

procedure TfrmEstimate.ButSairClick(Sender: TObject);
begin
  Close;
end;


procedure TfrmEstimate.ValidateStatus;
begin

end;

function TfrmEstimate.ValidCustomer: Boolean;
var
 varRetorno : Boolean;
begin
  varRetorno := True;

  cmbStatus.ItemIndex     :=  cmbStatus.Properties.Items.IndexOf(cmbStatus.Text);

  if cmbStatus.ItemIndex = 1 then
  begin

   if ((edtCliente.Text = '') or (edtCliente.bs_KeyValues.Count = 0)) then
   begin
       if edtCustomerName.Text = '' then
       begin
          varRetorno := False;
          Mens_MensInf('The Customer Name field is required.');
          edtCustomerName.SetFocus;
          Exit;
       end;

       if edtCounty.Text = '' then
       begin
          varRetorno := False;
          Mens_MensInf('The County field is required.');
          edtCounty.SetFocus;
          Exit;
       end;


       if edtZipCode.Text = '' then
       begin
          varRetorno := False;
          Mens_MensInf('The ZipCode field is required.');
          edtZipCode.SetFocus;
          Exit;
       end;

       if edtCity.Text = '' then
       begin
          varRetorno := False;
          Mens_MensInf('The City field is required.');
          edtCity.SetFocus;
          Exit;
       end;


       if edtST.Text = '' then
       begin
          varRetorno := False;
          Mens_MensInf('The State field is required.');
          edtST.SetFocus;
          Exit;
       end;


       if edtEmail.Text = '' then
       begin
          varRetorno := False;
          Mens_MensInf('The Email field is required.');
          edtEmail.SetFocus;
          Exit;
       end;

        if edtEmail.Text <> '' then
        begin
          if IsValidEmailRegEx(edtEmail.Text) = False Then
          begin
             varRetorno := False;
             Mens_MensErro('Invalid Customer�s E-mail.');
             edtEmail.SetFocus ;
             Exit;
          end;
        end;

        if edtPhone.Text = '(   )   -    ' then
        begin
           varRetorno := False;
           Mens_MensInf('Phone # field is required.') ;
           edtPhone.SetFocus ;
           Exit;
        end;

        if ((edtCliente.bs_KeyValues.Count > 0) and (edtCliente.Text <> '' )) then
          GenerateFolder(Copy(cbxCustomerType.Text,4,2), edtCliente.bs_KeyValue);

   end;

  end;
  Result := varRetorno;
end;

function TfrmEstimate.ValidItemPendingonPurchaseOrder: Boolean;
var
 varRetorno    : Boolean;
 I             : Integer;
 varSqlDados   : TFDQuery;
begin
  varRetorno := True;

  cmbStatus.ItemIndex     :=  cmbStatus.Properties.Items.IndexOf(cmbStatus.Text);

  if cmbStatus.ItemIndex = 1 then   // Accepted
  begin
     if TBHeader = ORDER_HEADER then
     begin
        varSqlDados := TFDQuery.Create(Nil);

        Try
          varSqlDados.Connection := DBDados.Connection;
          for I := 0 to Process.ItensNF.Count -1 do
          begin
              varSqlDados.Close;
              varSqlDados.SQL.Clear;
              varSqlDados.SQL.Add('Select STATUS From TBREQUESTORDER With (NOLOCK)');
              varSqlDados.SQL.Add(' Where TABLENAME = :TABLENAME');
              varSqlDados.SQL.Add(' AND ID_PROCESS = :ID_PROCESS');
              varSqlDados.SQL.Add(' AND ID_PROCESS_ITEM = :ID_PROCESS_ITEM');
              varSqlDados.SQL.Add(' AND ID_PRODUCT = :ID_PRODUCT');
              varSqlDados.SQL.Add(' AND STATUS = ''PENDING''');

              varSqlDados.Params.ParamByName('TABLENAME').AsString        := ORDER_ITEM;
              varSqlDados.Params.ParamByName('ID_PROCESS').AsInteger      := Process.ItensNF.Items[I].id_process;
              varSqlDados.Params.ParamByName('ID_PROCESS_ITEM').AsInteger := Process.ItensNF.Items[I].id_process_item;
              varSqlDados.Params.ParamByName('ID_PRODUCT').AsInteger      := Process.ItensNF.Items[I].id_product;
              varSqlDados.Open;
              if varSqlDados.FieldByName('STATUS').AsString = 'PENDING'  then
              begin
                 Mens_MensInf(' The Product # ' + IntToStr(Process.ItensNF.Items[i].id_product) + ' still Pending on Purchase Order');
                 cmbStatus.ItemIndex := cmbStatus.ItemIndex - 1;
                 varRetorno := False;
              end;
          end;
        Finally
          FreeAndNil(varSqlDados);
        End;
     end;
  end;
  Result := varRetorno;
end;

procedure TfrmEstimate.ButSalvarClick(Sender: TObject);
begin
  if ValidItemPendingonPurchaseOrder = False then Exit;

  if ValidCustomer = False then Exit;

  if TBHeader = ESTIMATE_HEADER then
    Caption   := 'Quotation'
  else if TBHeader = ORDER_HEADER then
        Caption := 'Order'
        else Caption := 'Invoice';

  pnlTop.Enabled        := True;
  pnlTerms.Enabled      := True;
  pnlBtnLateral.Enabled := True;
  cmbStatus.Enabled     := True;

  DisabledTotalField;

  if varOption = 'X' then
  begin
     Mens_MensInf('The Form not in edit or insert mode.') ;
     Exit;
  end;
  if varProcessTotal <> 0 then
     Process.total    := varProcessTotal
  else  Process.total := 0.00;

  if ValidTerms = False then Exit;

  SaveHeader;
  LimpaEdits;
  cxPageEstimate.ActivePage := cxTabEstimateList;
  AtualizaGrade;
  CalculaServiceSubTotal;

  edtTotal.EditValue := sqlProcessTOTAL.AsFloat;

  if  Process <> Nil then
     FreeAndNil(Process);

  ButProcessOff('TTT');

   varOption := 'X';

end;

procedure  TfrmEstimate.SaveItem;
var
 I : Integer;
begin

  Try
  {   if varOptionItem = 'I' then
     begin
        Inc(varNewKeyItem);
        Item.id_process  := varNewKey;
     end
     else
     begin
        varNewKeyItem    := sqlProcessItemID_PROCESS_ITEM.AsInteger;
        Item.id_process  := sqlProcessItemID_PROCESS.AsInteger;
        varNewKey        := sqlProcessItemID_PROCESS.AsInteger;
     end;


     Item.tablename        := TBItem;
     Item.id_process_item  := varNewKeyItem;
 }

     Item.id_pricelist     := cxLookupComboBoxPrincing.EditValue;
     Item.id_product       := edtProduto.bs_KeyValue;
     for i := 0 to chklistRoom.Items.Count -1 do
     begin
       if chklistRoom.Checked[I] then
          Item.room := Item.room + chklistRoom.Items[i] + ';';
     end;

     Item.room := Copy(Item.room, 1, Length(Item.room)-1);

     Item.qty              := StrToFloat(EdtQty.Text);
     Item.rate             := varRate;
     Item.amout            := Round(varAmount*100)/100; ;
     Item.id_user          := DBDados.varID_USER;
     Item.add_date         := Now;
     Item.width            := edtweidth.EditValue;
     Item.height           := edtheight.EditValue;
     Item.totalarea        := edttotalarea.EditValue;
     Item.dif_totalarea    := Item.totalarea - varAV;

     Process.total := Process.total + Item.amout;


     Process.ItensNF.Add(Process, Item);

     if varOptionItem = 'I' then
        Item.Save
     else if varOptionItem = 'U' then
        Item.Update;

     UpdatePurchaseOrder;
  Finally
    FreeAndNil(Item);
  End;
end;


procedure  TfrmEstimate.SaveHeader;
begin
   Process.tablename                 := TBHeader;

   if varOption = 'I' then
     Process.id_process               := varNewKey;

   Process.Company.id_company        := cxLookupComboBoxCompany.EditValue;

   Process.Contractors.id_contractor := edtSalesRep.bs_KeyValue;

//   if ((edtCliente.Text <> '') and (edtCliente.bs_KeyValues.Count > 0 )) then
//    Process.Customer.Search(edtCliente.bs_KeyValue);

   Process.dt_process                := cxDateProcess.Date;
   Process.dt_process_valid          := cxDateProcessValid.Date;

   if ((edtCliente.bs_KeyValue <> '') and (edtCliente.bs_KeyValues.Count > 0)) then
      Process.id_customer            := edtCliente.bs_KeyValue;

   Process.customer_name             := edtCustomerName.Text;
   Process.customer_phone            := edtPhone.Text;
   Process.customer_email            := edtEmail.Text;
   Process.address1                  := edtAddress.Text;
   Process.zipcode                   := edtZipCode.Text;
   Process.st                        := edtST.Text;
   Process.city                      := edtCity.Text;
   Process.county                    := edtCounty.Text;
   Process.ponumber                  := edtPONumber.Text;
   Process.comments                  := Trim(memComments.Lines.Text);
   Process.id_payment_method         := cxLookupComboBoxPaymentMethod.EditValue;
   Process.subtotal                  := varProcessSubTotal;
   Process.status                    := cmbStatus.Text;
   if TBHeader <> ESTIMATE_HEADER then
     Process.dt_shippingDate         := cxDateShippingDate.Date
   else  Process.dt_shippingDate     := 0;
   Process.percent_discount          := varProcessPercentDiscount;
   Process.discount                  := varProcessDiscount;
   Process.tax                       := varProcessTaxble;
   Process.shipping                  := varProcessShipping;
   Process.total                     := Round(varProcessTotal*100)/100;
   Process.User.id_user              := DBDados.varID_USER;


   if varOption = 'I' then
     Process.Save
   else if varOption = 'U' then
        Process.Update;


end;


procedure TfrmEstimate.ButSalvarItemClick(Sender: TObject);
var
 I : Integer;
 iChecked : integer;
begin

  if ((edtProduto.Text = '') or (edtProduto.bs_KeyValues.Count = 0)) then
  begin
    Mens_MensInf('Product name field is required.') ;
    edtProduto.SetFocus;
    Exit;
  end;

  if edtweidth.Text = '' then
  begin
     Mens_MensInf('Width field is required.') ;
     edtweidth.SetFocus;
     Exit;
  end;

  if edtheight.Text = '' then
  begin
     Mens_MensInf('Height field is required.') ;
     edtheight.SetFocus;
     Exit;
  end;

  if edttotalarea.Text = '' then
  begin
     Mens_MensInf('Total Area field is required.') ;
     edttotalarea.SetFocus;
     Exit;
  end;

  if UpperCase(edtProduto.bs_KeyValues[24]) = 'PRODUCT' then
  begin
      if ((UpperCase(edtProduto.bs_KeyValues[1]) <> 'CARPET') AND  (UpperCase(edtProduto.bs_KeyValues[1]) <> 'VINYL')) then
      begin
        if ((EdtQty.Text = '') or (EdtQty.Text = '0') or (StrToInt(edtQty.Text) < 0)) then
        begin
           Mens_MensInf('Qty name field is required or Qty Field cannot be less than or equal 0') ;
           EdtQty.SetFocus;
           Exit;
        end;
      end else  EdtQty.Value := 0;
  end
  else EdtQty.Value := 0;

  if varOptionItem <> 'U' Then
  begin
     Item.SearchProductonSale(TBItem, varNewKey, edtProduto.bs_KeyValue);
     if Item.id_product <> 0 then
     begin
         if TBHeader = ESTIMATE_HEADER then
            Mens_MensInf('Product or service already exists in Quotation!.')
         else if TBHeader = ORDER_HEADER Then
            Mens_MensInf('Product or service already exists in Order!.')
         else if TBHeader = INVOICE_HEADER then
            Mens_MensInf('Product or service already exists in Invoice!.');

         edtProduto.SetFocus;
         Exit;
     end;
  end;

  iChecked := 0;
  for I := 0 to chklistRoom.Items.Count - 1 do
      if chklistRoom.Checked[i] then
          Inc(iChecked);

  if iChecked = 0 then
  begin
     Mens_MensInf('Room field is required.') ;
     chklistRoom.SetFocus;
    Exit;
  end;


  if varOption = 'I' then
  begin
    SaveHeader;
    varOption := 'U';
  end;

  SaveItem;


  AtualizaGradeItem;

  CalculaProcess;

  cxLookupComboBoxPrincing.Enabled := False;

  CleanItemFromEdition;

  ButItensOnOff('TTTFFTTT');

  Page.ActivePage := cxTabSheetGrade;
end;

procedure TfrmEstimate.CalculaProcess;
begin
  varProcessSubTotal := 0;
  varProcessTaxble   := 0;
  varProcessDiscount := 0;
  varProcessShipping := 0;
  varProcessTotal    := 0;
  varProcessoProduto := 0;


  sqlProcessItem.First;
  sqlProcessItem.DisableControls;
  while not sqlProcessItem.Eof do
  begin
    varProcessSubTotal := varProcessSubTotal + sqlProcessItemAMOUT.AsFloat;
    varProcessSubTotal := Round(varProcessSubTotal*100)/100;

    if sqlProcessItemTAXBLE.AsString = 'Y' then
    begin
       varProcessTaxble := varProcessTaxble + ((sqlProcessItemAMOUT.AsFloat / 100) *  Process.Company.Tax);
       varProcessTaxble :=   Round(varProcessTaxble*100)/100;
    end;

    sqlProcessItem.Next;
  end;

  lblSubTotal.Caption := CurrToStrF(varProcessSubTotal, ffCurrency, 2);
  lblTax.Caption      := CurrToStrF(varProcessTaxble, ffCurrency, 2);
  lblTotalMaterial.Caption :=   CurrToStrF(varProcessSubTotal + varProcessTaxble, ffCurrency, 2);

  if (edtmskDiscount.Value <> 0) then
  begin
     varProcessPercentDiscount  := edtmskDiscount.Value;
     varProcessDiscount         := (((sqlProcessItemAMOUT.AsFloat / 100) *  varProcessPercentDiscount));
     lblDiscount.Caption        := CurrToStrF(varProcessDiscount, ffCurrency, 2);
     varProcessDiscount         := Round(varProcessDiscount*100)/100;
  end;

  if (edtShipping.Value <> 0) then
  begin
    varProcessShipping := edtShipping.Value;
    varProcessShipping := Round(varProcessShipping*100)/100;
  end;

  varProcessSubTotal      := varProcessSubTotal - varProcessDiscount;
  varProcessoProduto      := varProcessSubTotal + varProcessTaxble +  varProcessShipping;
  varProcessTotal         := varProcessSubTotal + varProcessTaxble +  varProcessShipping + varServiceTotal;


  lblTotal.Caption := CurrToStrF(varProcessTotal, ffCurrency, 2);

  sqlProcessItem.EnableControls;
  sqlProcessItem.First;
end;




procedure TfrmEstimate.cbxCustomerTypeChange(Sender: TObject);
begin
  // N - Natural Person
  // L - Legal Person
  edtCliente.bs_Filter := '';

  if cbxCustomerType.ItemIndex = 0 then
    edtCliente.bs_Filter  := varFiltroCompanyPadrao + ' AND TYPEPERSON = ''N'''
  else     edtCliente.bs_Filter  := varFiltroCompanyPadrao  + ' AND TYPEPERSON = ''L''';
end;

procedure TfrmEstimate.cxEditRepository1ButtonEmailPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin


   ShowMessage('Sending e-mail...');
end;

procedure TfrmEstimate.cxEditRepository1ButtonFollowUPPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   Try
     Application.CreateForm(TfrmFollowUP, frmFollowUP);
     frmFollowUP.sqlFollowup.Close;
     frmFollowUP.sqlFollowup.Params.ParamByName('ID_SERVICE').AsInteger := sqlServiceID_SERVICE.AsInteger;
     frmFollowUP.sqlFollowup.Open;
     frmFollowUP.varID_Service :=  sqlServiceID_SERVICE.AsInteger;
     frmFollowUP.lblCustomer.Caption := sqlServiceCUSTOMER.AsString;
     frmFollowUP.lblOrder.Caption    := sqlServiceID_PROCESS.AsString;
     frmFollowUP.ShowModal;
   Finally
     FreeAndNil(frmFollowUP);
   End;

end;

procedure TfrmEstimate.cxEditRepository1ButtonImprimirPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  TPEMAIL := WORK_EMAIL;
  sqlFollowup.Close;
  sqlFollowup.Params.ParamByName('ID_SERVICE').AsInteger := sqlServiceID_SERVICE.AsInteger;
  sqlFollowup.Open;

  ReportService.PreviewOptions.Caption := 'Work Order';
  ReportService.Preview;
end;

procedure TfrmEstimate.cxGrid1DBTableViewItemDblClick(Sender: TObject);
begin
   ButAlterarItemClick(Self);
end;
{
procedure TfrmEstimate.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn  : TcxCustomGridTableItem;
  Status   : Variant;
begin

  try
    AColumn := Sender.FindItemByName('cxGrid1DBTableView1REQ_PURCHASE_ORDER');
    Status  := ARecord.Values[AColumn.Index];

    if (Status = 'S')  then
    begin
      AStyle := cxStyleReq_PurchaseOrder;
      exit;
    end;
   Except

  end;

end;
 }

procedure TfrmEstimate.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
  ButAlterarClick(Self);
end;

procedure TfrmEstimate.cxLookupComboBoxWorkerClick(Sender: TObject);
begin
   lblPhone.Caption := sqlWorkerPHONE.AsString;
   lblEmail.Caption := sqlWorkerEMAIL.AsString;
   LoadService;
end;

procedure TfrmEstimate.cxLookupComboBoxCompanyClick(Sender: TObject);
begin
  if (( Contractor.Company.id_company = 0) or ( Contractor.Company.id_company  = null))  then
  begin
     cxDateProcessValid.Date := Date + TBCOMPANYESTIMATEDAYS.AsInteger;
     Process.Company.Search(TBCOMPANYID_COMPANY.AsInteger);

     edtSalesRep.bs_Filter := 'C.ID_COMPANY = ' + QuotedStr(IntToStr(TBCOMPANYID_COMPANY.AsInteger));

     edtCliente.bs_Filter := 'C.ID_COMPANY = ' +   QuotedStr(IntToStr(TBCOMPANYID_COMPANY.AsInteger));

  end;
end;

procedure TfrmEstimate.cxPageForm2Change(Sender: TObject);
var
 sqlDados : TFDQuery;
begin
  if cxPageForm2.ActivePage = cxTabSheetService then
  begin
    lblOrder.Caption       := IntToStr(varNewKey);
    lblCustomer.Caption    := edtCliente.Text;
    lblAddress.Caption     := edtAddress.Text;
    lblCity.Caption        := edtCity.Text;
    lblPhoneWorker.Caption := edtPhone.Text;
    lblState.Caption       := edtST.Text;
    cxLookupComboBoxWorker.Enabled := True;
    cxDateWork.Enabled := True;
    edtSidemark.Enabled := True;
    sqlDados := TFDQuery.Create(Nil);
    varGravaService := 'I';
    Try
        sqlDados.Connection := DBDados.Connection;
        sqlDados.Close;
        sqlDados.SQL.Clear;
        sqlDados.SQL.Add ('SELECT  ');
        sqlDados.SQL.Add ('   A.ID_SERVICE, ');
        sqlDados.SQL.Add ('   A.ID_CONTRACTORS, ');
        sqlDados.SQL.Add ('   A.DT_SERVICE, ');
        sqlDados.SQL.Add ('   A.SIDEMARK ');
        sqlDados.SQL.Add ('FROM TBSERVICE A    ');
        sqlDados.SQL.Add ('INNER JOIN TBPROCESS B ON B.ID_PROCESS = A.ID_PROCESS AND B.TABLENAME = ''TBORDER''  ');
        sqlDados.SQL.Add (' WHERE A.ID_PROCESS = :ID_PROCESS ');
        sqlDados.Params.ParamByName('ID_PROCESS').AsInteger := varNewKey;
        sqlDados.Open;
        if not sqlDados.IsEmpty then
        begin
          varGravaService                  := 'U';
          varID_SERVICE                    := sqlDados.FieldByName('ID_SERVICE').AsInteger;
          cxLookupComboBoxWorker.EditValue := sqlDados.FieldByName('ID_CONTRACTORS').AsInteger;
          cxDateWork.Date                  := sqlDados.FieldByName('DT_SERVICE').AsDateTime;
          edtSidemark.Text                 := sqlDados.FieldByName('SIDEMARK').AsString;
          cxDateWork.Enabled               := False;
          edtSidemark.Enabled              := False;
          cxLookupComboBoxWorkerClick(Self);
          cxLookupComboBoxWorker.Enabled   := False;
          memServiceComment.SetFocus;
        end;
    Finally
        FreeAndNil(sqlDados);
    End;

  end;
end;

procedure TfrmEstimate.DisabledTotalField;
var
   sqlDados : TFDQuery;
begin
   sqlDados := TFDQuery.Create(Nil);
   Try
     sqlDados.Connection := DBDados.Connection;
     sqlDados.Close;
     sqlDados.SQL.Clear;
     sqlDados.SQL.Add(' Select ISNULL(SUM(Value),0) as Total From TBTERMS With (NOLOCK) Where TableName = :tablename and ID_Process = :Id_process ');
     sqlDados.Params.ParamByName('TABLENAME').AsString   := TBHeader;
     sqlDados.Params.ParamByName('ID_PROCESS').AsInteger := sqlProcessItemID_PROCESS.AsInteger;
     sqlDados.Open;
     if sqlDados.FieldByName('Total').AsFloat = sqlProcessTOTAL.AsFloat then
        edtTotal.Enabled := False
     else  edtTotal.Enabled := True;
   Finally
     FreeAndNil(sqlDados);
   End;
end;

procedure TfrmEstimate.edtClienteClick(Sender: TObject);
begin
  if ((edtCliente.Text <> '') and (edtCliente.bs_KeyValues.Count > 0 )) then
  begin
    edtCustomerName.Text := edtCliente.bs_KeyValues[1] + ',' +  edtCliente.bs_KeyValues[2];
    edtPhone.Text        := edtCliente.bs_KeyValues[3];
    edtEmail.Text        := edtCliente.bs_KeyValues[4];
    edtAddress.Text      := edtCliente.bs_KeyValues[5];
    edtAddress.Hint      := edtCliente.bs_KeyValues[0];
    edtZipCode.Text      := edtCliente.bs_KeyValues[6];
    edtCounty.Text       := edtCliente.bs_KeyValues[15];
    edtCity.Text         := edtCliente.bs_KeyValues[7];
    edtST.Text           := edtCliente.bs_KeyValues[8];

    GenerateFolder(Copy(cbxCustomerType.Text,4,2), edtCliente.bs_KeyValue);
    cxLookupComboBoxPrincing.Enabled := True;

    if edtCliente.bs_KeyValues[16] <> '' then
    begin
      cxLookupComboBoxPrincing.EditValue := edtCliente.bs_KeyValues[16];
      cxLookupComboBoxPrincing.Enabled := False;
    end;

    if edtCliente.bs_KeyValues[14] = 'N' then
       cbxCustomerType.ItemIndex := 0
    else   cbxCustomerType.ItemIndex := 1;

    cxDateProcess.SetFocus;
  end;

end;

procedure TfrmEstimate.edtheightEnter(Sender: TObject);
begin
  if Assigned(Item) then
    Item.req_purchase_order := 'N';
  EdtQty.Value := 0;
  varTempAreaTotal := 0;
end;

procedure TfrmEstimate.edtheightExit(Sender: TObject);
begin
  if ((edtProduto.Text <> '') and (edtProduto.bs_KeyValues.Count > 0)) then
  begin
        if ((edtweidth.EditValue <> 0) and (edtheight.EditValue <> 0)) then
        begin
          Item.width          := edtweidth.Value;
          Item.height         := edtheight.Value;

          if ((UpperCase(edtProduto.bs_KeyValues[1]) <> 'CARPET') AND (UpperCase(edtProduto.bs_KeyValues[1]) <> 'VINYL')) then
          begin
            if UpperCase(edtProduto.bs_KeyValues[24])  = 'PRODUCT'  Then
            begin
                if EdtQty.Value = 0 then
                begin
                  EdtQty.Text        := FormatFloat('0.00',  (  Item.width * Item.height ) / StrToFloat(edtProduto.bs_KeyValues[11]) );
                  edttotalarea.value := Item.width * Item.height;
                  varTempAreaTotal   := edttotalarea.Value;
                end
                else
                begin
                  edttotalarea.Value := EdtQty.Value * edtAreaSquareFeetPerBox.Value;
                  lblInfoQuant.Caption     := 'Quantity Per Carton';
                  lblUnidadeMedida.Caption := 'sqft';
                end;
            end;
          end else
          begin
            edttotalarea.text        := FormatFloat('0.000', Item.height * 1.334);
            lblInfoQuant.Caption     := 'Quantity Per Roll';
            lblUnidadeMedida.Caption := 'yds';
          end;
          // CurrToStrF(varProcessSubTotal, ffCurrency, 2);
          if UpperCase(edtProduto.bs_KeyValues[24])  = 'PRODUCT'  Then
          begin
             lblAmount.Caption   := CurrToStrF((edttotalarea.Value  *  varRate), ffCurrency, 2);
             item.totalarea      := edttotalarea.EditValue;
             varAmount            := edttotalarea.Value  *  varRate;
          end
          else
          begin
             edttotalarea.value  := Item.width * Item.height;
             lblAmount.Caption   := CurrToStrF((edttotalarea.Value  *  varRate), ffCurrency, 2);
             varAmount            := edttotalarea.Value  *  varRate;
          end;


          if UpperCase(edtProduto.bs_KeyValues[24])  = 'PRODUCT'  Then
          begin
              if edttotalarea.Text <> '' then
              begin
                if edttotalarea.value > StrToFloat(lblAV.Caption) then
                begin
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

procedure TfrmEstimate.edtmskDiscountExit(Sender: TObject);
begin
  CalculaProcess;
end;

procedure TfrmEstimate.edtmskDiscountKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in [#8, '0'..'9', FFormatoBR.DecimalSeparator]) then begin
    ShowMessage('Invalid key: ' + Key);
    Key := #0;
  end
  else if ((Key = FFormatoBR.DecimalSeparator) or (Key = '-')) and
      (Pos(Key, edtmskDiscount.Text) > 0) then begin
    ShowMessage('Invalid Key: twice ' + Key);
    Key := #0;
  end
  else if (Key = '-') and (edtmskDiscount.SelStart <> 0) then begin
    ShowMessage('Only allowed at beginning of number: ' + Key);
    Key := #0;
  end;
end;

procedure TfrmEstimate.edtProdutoClick(Sender: TObject);
begin
     if ((edtProduto.Text <> '') and (edtProduto.bs_KeyValues.Count > 0)) then
     begin
    {
    CaixaTexto.bs_Fields.Add('I.ID_PRODUCT;ID;;' + inttostr(WIDTH_DOCUMENTO));                           //0
    CaixaTexto.bs_Fields.Add('TP.DESCRIPTION;PRODUCT TYPE;;' + inttostr(WIDTH_DOCUMENTO));               //1
    CaixaTexto.bs_Fields.Add('TS.DESCRIPTION;PRODUCT STYLE;;' + inttostr(WIDTH_DOCUMENTO));              //2
    CaixaTexto.bs_Fields.Add('S.TRADININGNAME;MANUFACTURE;;' + inttostr(WIDTH_DOCUMENTO));               //3
    CaixaTexto.bs_Fields.Add('P.PRODUCT_STYLE;PRODUCT_STYLE;;' + inttostr(WIDTH_DOCUMENTO));             //4
    CaixaTexto.bs_Fields.Add('P.PRODUCT_STYLE_NAME;PRODUCT STYLE NAME;;' + inttostr(WIDTH_DOCUMENTO));   //5
    CaixaTexto.bs_Fields.Add('P.COLOR;COLOR;;' + inttostr(WIDTH_DOCUMENTO));                             //6
    CaixaTexto.bs_Fields.Add('P.COLOR_NAME;COLOR_NAME;;' + inttostr(WIDTH_DOCUMENTO));                   //7
    CaixaTexto.bs_Fields.Add('P.QTY;#;;' + inttostr(WIDTH_DOCUMENTO));                                   //8
    CaixaTexto.bs_Fields.Add('I.PRICE_FINAL;RATE;;' + inttostr(WIDTH_DOCUMENTO));                        //9
    CaixaTexto.bs_Fields.Add('P.STYLE;#;;' + inttostr(WIDTH_DOCUMENTO));                                 //10
    CaixaTexto.bs_Fields.Add('P.areaSquareFeetPerBox;#;;' + inttostr(WIDTH_DOCUMENTO));                  //11
    CaixaTexto.bs_Fields.Add('P.totalAreaSquareFeet;#;;' + inttostr(WIDTH_DOCUMENTO));                   //12
    CaixaTexto.bs_Fields.Add('P.areaSquareYardPerBox;#;;' + inttostr(WIDTH_DOCUMENTO));                  //13
    CaixaTexto.bs_Fields.Add('P.totalAreaSquareYard;#;;' + inttostr(WIDTH_DOCUMENTO));                   //14
    CaixaTexto.bs_Fields.Add('P.rollnumber;#;;' + inttostr(WIDTH_DOCUMENTO));                            //15
    CaixaTexto.bs_Fields.Add('P.rollnumberdialog;#;;' + inttostr(WIDTH_DOCUMENTO));                      //16
    CaixaTexto.bs_Fields.Add('S.NAMEBUSINESS;#;;' + inttostr(WIDTH_DOCUMENTO));                          //17
    CaixaTexto.bs_Fields.Add('S.TRADININGNAME;#;;' + inttostr(WIDTH_DOCUMENTO));                         //18
    CaixaTexto.bs_Fields.Add('P.SKU;#;;' + inttostr(WIDTH_DOCUMENTO));                                   //19
    CaixaTexto.bs_Fields.Add('I.ID_PRICELIST;#;;' + inttostr(WIDTH_DOCUMENTO));                          //20
    CaixaTexto.bs_Fields.Add('I.ID_SUPPLIER;#;;' + inttostr(WIDTH_DOCUMENTO));                           //21
    CaixaTexto.bs_Fields.Add('I.PRICE_MINIMUM;#;;' + inttostr(WIDTH_DOCUMENTO));                         //22
    CaixaTexto.bs_Fields.Add('P.PRODUCT_NAME;#;;' + inttostr(WIDTH_NOME220));                            //23
    CaixaTexto.bs_Fields.Add('P.TYPEOFPRODUCT;#;;' + inttostr(WIDTH_NOME220));                           //24
    }

       varAV := 0;
       varEP := 0;
       VarOP := 0;
       varSQFT := 0;

       varEP := Item.ProductPending('TBESTIMATE', edtProduto.bs_KeyValue);
       lblEP.Caption := FormatFloat('0.00',varEP);

       VarOP  :=   Item.ProductPending('TBORDER', edtProduto.bs_KeyValue);
       lblOP.Caption := FormatFloat('0.00',VarOP);

       lblIdProduct.Caption     := edtProduto.bs_KeyValue;
       lblMaterial.Caption      := edtProduto.bs_KeyValues[1];
       lblProductStyle.Caption  := edtProduto.bs_KeyValues[2];
       lblSupplier.Caption      := edtProduto.bs_KeyValues[3];
       lblStyle.Caption         := edtProduto.bs_KeyValues[4];
       lblStyleName.Caption     := edtProduto.bs_KeyValues[5];
       lblColor.Caption         := edtProduto.bs_KeyValues[6];
       lblColorName.Caption     := edtProduto.bs_KeyValues[7];
       lblQtyAvailable.Caption  := edtProduto.bs_KeyValues[8];

       lblAreaSquareFeetPerBox.Caption     := FormatFloat('0.00', StrToFloat(edtProduto.bs_KeyValues[11]));
       varSQFT := GetInventory(edtProduto.bs_KeyValue);

       lblTotalAreaSquareFeet.Caption      := FormatFloat('0.00', varSQFT);
       lblAreaSquareYardPerBox.Caption     := FormatFloat('0.00', StrToFloat(edtProduto.bs_KeyValues[13]));
       lblTotalAreaSquareYard.Caption      := FormatFloat('0.00', StrToFloat(edtProduto.bs_KeyValues[14]));
       edtAreaSquareFeetPerBox.text        := FormatFloat('0.00', StrToFloat(edtProduto.bs_KeyValues[11]));

       if  (  varSQFT - (varEP + VarOP) ) < 0 then
         lblAV.Caption := '0'
       else
       begin
         lblAV.Caption  := FormatFloat('0.00', varSQFT - (varEP + VarOP) );
         varAV          := varSQFT - (varEP + VarOP);
       end;
                                // CurrToStrF(varProcessSubTotal, ffCurrency, 2);
       lblRate.Caption          := CurrToStrF(StrToFloat(edtProduto.bs_KeyValues[9]),  ffCurrency, 2);
       //memProductDescription.Lines.Text :=edtProduto.bs_KeyValues[23];
       varRate                  := 0.00;
       varAmount                := 0.00;
       varRate                  := StrToFloat(edtProduto.bs_KeyValues[9]);

       sqlImage.Close;
       sqlImage.Params.ParamByName('ID_PRODUCT').AsInteger :=edtProduto.bs_KeyValue;
       sqlImage.Open;
       ShowImagem;

       edtweidth.SetFocus;
     end;
end;

procedure TfrmEstimate.EdtQtyChange(Sender: TObject);
begin
   if EdtQty.Value > 0 then
   begin
      edtheightExit(Self);
     if edttotalarea.Value <= varTempAreaTotal then
        edttotalarea.Style.Font.Color := RGB(255, 0, 0)
     else  edttotalarea.Style.Font.Color :=  RGB(0, 0, 255)
   end;

end;

function  TfrmEstimate.GetInventory(varId_Product : Integer) : Double;
var
   sqlDados : TFDQuery;
   varTotal : Double;
begin
   varTotal := 0;
   sqlDados := TFDQuery.Create(Nil);
   Try
     sqlDados.Connection := DBDados.Connection;
     sqlDados.Close;
     sqlDados.SQL.Clear;
     sqlDados.SQL.Add(' SELECT ISNULL(SUM(TOTALAREA),0) as TOTALAREA FROM TBINVENTORY With (NOLOCK) Where ID_PRODUCT = :ID_PRODUCT GROUP BY ID_PRODUCT  ');
     sqlDados.Params.ParamByName('ID_PRODUCT').AsInteger := varId_Product;
     sqlDados.Open;
     varTotal := sqlDados.FieldByName('TOTALAREA').AsFloat;
   Finally
       FreeAndNil(sqlDados);
   End;
   Result := varTotal;
end;

procedure TfrmEstimate.edtSalesRepClick(Sender: TObject);
begin
  if (( Contractor.Company.id_company = 0) or ( Contractor.Company.id_company  = null))  then
  begin
     if edtSalesRep.bs_KeyValue <> 0 then
     begin
       STPPRICELIST.Close;
       STPPRICELIST.Prepare;
       STPPRICELIST.ParamByName( '@ID_CONTRACTOR' ).AsInteger := edtSalesRep.bs_KeyValue;
       STPPRICELIST.Open;

      // edtCliente.SetValue('C.ID_CONTRACTORS = ' + IntToStr(edtSalesRep.bs_KeyValue));
     end;
  end;
end;

procedure TfrmEstimate.edtShippingExit(Sender: TObject);
begin
 CalculaProcess;
end;

procedure TfrmEstimate.edttotalareaExit(Sender: TObject);
begin
  CalculaProcess;
end;

procedure TfrmEstimate.edtTotalKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in [#8, '0'..'9', FFormatoBR.DecimalSeparator]) then begin
    ShowMessage('Invalid key: ' + Key);
    Key := #0;
  end
  else if ((Key = FFormatoBR.DecimalSeparator) or (Key = '-')) and
      (Pos(Key, edtTotal.Text) > 0) then begin
    ShowMessage('Invalid Key: twice ' + Key);
    Key := #0;
  end
  else if (Key = '-') and (edtTotal.SelStart <> 0) then begin
    ShowMessage('Only allowed at beginning of number: ' + Key);
    Key := #0;
  end;
end;

procedure TfrmEstimate.edtweidthEnter(Sender: TObject);
begin
  if Assigned(Item) then
    Item.req_purchase_order := 'N';
  EdtQty.Value := 0;
  varTempAreaTotal := 0;
end;

procedure TfrmEstimate.edtweidthExit(Sender: TObject);
begin
  if ((UpperCase(edtProduto.bs_KeyValues[1]) = 'CARPET') OR (UpperCase(edtProduto.bs_KeyValues[1]) = 'VINYL')) then
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

procedure TfrmEstimate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  sqlTerms.Close;
  sqlProcess.Close;
  sqlProcessItem.Close;

  if  Process <> Nil then
   FreeAndNil(Process);

  if Contractor <> Nil then
    FreeAndNil(Contractor);

  FrmEstimate := nil;
  Action := caFree;
end;

procedure TfrmEstimate.FormCreate(Sender: TObject);
begin

   Contractor := TVendor.Create;
   if DBDados.varReturnCompanies <> 'Company not Found' then
    begin
      TBCOMPANY.Close;
      TBCOMPANY.Filter   := DBDados.varReturnCompanies;
      TBCOMPANY.Filtered := True;
      TBCOMPANY.Open;
    end
    else
    begin
      Mens_MensInf('There is no Company set for the current User.');
      Exit;
    end;

   TBRoom.Close;
   TBRoom.Open;

   chklistRoom.Clear;
   TBRoom.First;

    while not TBRoom.Eof do
    begin
      chklistRoom.AddItem(TBRoomDESCRIPTION.AsString, Nil);
      TBRoom.Next;
    end;

   SetParametros(edtSalesRep, TipoContractor);
   cxPageEstimate.ActivePage := cxTabEstimateList;
  // SetaConsultaProduto;
   SetParametros(edtProduto, TipoVendorPricingTable);

end;

procedure TfrmEstimate.SetaConsultaProduto(varID_PRODUCT : String);
var
 varScript : WideString;
begin

    varScript := 'SELECT  I.ID_PRODUCT,';
    varScript :=  varScript + '            TP.DESCRIPTION,  ';
    varScript :=  varScript + '            TS.DESCRIPTION, ';
    varScript :=  varScript + '            S.TRADININGNAME,';
    varScript :=  varScript + '            P.PRODUCT_STYLE, ';
    varScript :=  varScript + '            P.PRODUCT_STYLE_NAME, ';
    varScript :=  varScript + '            P.COLOR,';
    varScript :=  varScript + '            P.COLOR_NAME, ';
    varScript :=  varScript + ' 		       P.QTY, ';
    varScript :=  varScript + '            ISNULL(I.PRICE_FINAL,0) AS PRICE_FINAL, ';
    varScript :=  varScript + '            P.STYLE, ';
    varScript :=  varScript + '            P.AREASQUAREFEETPERBOX, ';
    varScript :=  varScript + '            P.TOTALAREASQUAREFEET,';
    varScript :=  varScript + '            P.AREASQUAREYARDPERBOX, ';
    varScript :=  varScript + '            P.TOTALAREASQUAREYARD, ';
    varScript :=  varScript + '            P.ROLLNUMBER, ';
    varScript :=  varScript + '            P.ROLLNUMBERDIALOG, ';
    varScript :=  varScript + '            S.NAMEBUSINESS, ';
    varScript :=  varScript + '            S.TRADININGNAME, ';
    varScript :=  varScript + '            P.SKU, ';
    varScript :=  varScript + '            I.ID_PRICELIST,';
    varScript :=  varScript + '            I.ID_SUPPLIER, ';
    varScript :=  varScript + '            I.PRICE_MINIMUM, ';
    varScript :=  varScript + '            (P.PRODUCT_STYLE + '' '' +  P.PRODUCT_STYLE_NAME + '' '' +  P.COLOR + '' '' + P.COLOR_NAME) PRODUCT_NAME, ';
    varScript :=  varScript + '            P.TYPEOFPRODUCT  ';
    varScript :=  varScript + ' FROM TBPRICEITEM I WITH (NOLOCK)   ';
    varScript :=  varScript + ' LEFT OUTER JOIN TBSUPPLIER S ON S.ID_SUPPLIER = I.ID_SUPPLIER  ';
    varScript :=  varScript + ' LEFT OUTER JOIN TBPRODUCT P ON P.ID_PRODUCT = I.ID_PRODUCT AND P.TYPEOFPRODUCT = ''PRODUCT''   ';
    varScript :=  varScript + ' LEFT OUTER JOIN TBTYPEBRAND TP ON TP.ID_TYPEBRAND = P.ID_TYPE  ';
    varScript :=  varScript + ' LEFT OUTER JOIN TBTYPEBRAND TS ON TS.ID_TYPEBRAND = P.STYLE  ';
    varScript :=  varScript + ' WHERE P.ACTIVE = ''Y''   ';
    varScript :=  varScript + '   AND I.ID_PRICELIST = ' +  QuotedStr(cxLookupComboBoxPrincing.EditValue);
    varScript :=  varScript + '   AND I.ID_PRODUCT NOT IN  ';
    varScript :=  varScript + '     (SELECT ID_PRODUCT   ';
    varScript :=  varScript + '      FROM TBPROCESS_ITEM WITH (NOLOCK) ';
    varScript :=  varScript + '      WHERE TABLENAME = ''' + TBItem + '''';
    varScript :=  varScript + '        AND ID_PROCESS = ' + IntToStr(varNewKey) + ')' ;
{
    varScript :=  varScript + ' UNION ALL      ';

    varScript :=  varScript + ' SELECT  I.ID_PRODUCT,    ';
    varScript :=  varScript + '            TP.DESCRIPTION,    ';
    varScript :=  varScript + '            TS.DESCRIPTION,    ';
    varScript :=  varScript + '            S.TRADININGNAME,     ';
    varScript :=  varScript + '            P.PRODUCT_STYLE,     ';
    varScript :=  varScript + '            P.PRODUCT_STYLE_NAME,   ';
    varScript :=  varScript + '            P.COLOR,   ';
    varScript :=  varScript + '            P.COLOR_NAME,   ';
    varScript :=  varScript + ' 		       P.QTY,    ';
    varScript :=  varScript + '            ISNULL(I.PRICE_FINAL,0) AS PRICE_FINAL, ';
    varScript :=  varScript + '            P.STYLE,   ';
    varScript :=  varScript + '            P.AREASQUAREFEETPERBOX,  ';
    varScript :=  varScript + '            P.TOTALAREASQUAREFEET,   ';
    varScript :=  varScript + '            P.AREASQUAREYARDPERBOX,  ';
    varScript :=  varScript + '            P.TOTALAREASQUAREYARD,  ';
    varScript :=  varScript + '            P.ROLLNUMBER,   ';
    varScript :=  varScript + '            P.ROLLNUMBERDIALOG,   ';
    varScript :=  varScript + '            S.NAMEBUSINESS,   ';
    varScript :=  varScript + '            S.TRADININGNAME,  ';
    varScript :=  varScript + '            P.SKU,  ';
    varScript :=  varScript + '            I.ID_PRICELIST,   ';
    varScript :=  varScript + '            I.ID_SUPPLIER,   ';
    varScript :=  varScript + '            I.PRICE_MINIMUM,  ';
    varScript :=  varScript + '            P.PRODUCT_NAME,   ';
    varScript :=  varScript + '            P.TYPEOFPRODUCT   ';
    varScript :=  varScript + ' FROM TBPRICEITEM I WITH (NOLOCK)    ';
    varScript :=  varScript + ' LEFT OUTER JOIN TBSUPPLIER S ON S.ID_SUPPLIER = I.ID_SUPPLIER   ';
    varScript :=  varScript + ' LEFT OUTER JOIN TBPRODUCT P ON P.ID_PRODUCT = I.ID_PRODUCT AND P.TYPEOFPRODUCT = ''SERVICE''';
    varScript :=  varScript + ' LEFT OUTER JOIN TBTYPEBRAND TP ON TP.ID_TYPEBRAND = P.ID_TYPE  ';
    varScript :=  varScript + ' LEFT OUTER JOIN TBTYPEBRAND TS ON TS.ID_TYPEBRAND = P.STYLE  ';
    varScript :=  varScript + ' WHERE P.ACTIVE = ''Y''   ';
    if varID_PRODUCT <> '' then
       varScript :=  varScript + '   AND I.ID_PRODUCT = ' + QuotedStr(varID_PRODUCT);
    varScript :=  varScript + '   AND I.ID_PRICELIST = ' + QuotedStr(cxLookupComboBoxPrincing.EditValue);
    varScript :=  varScript + '   AND I.ID_PRODUCT NOT IN   ';
    varScript :=  varScript + '     (SELECT ID_PRODUCT   ';
    varScript :=  varScript + '      FROM TBPROCESS_ITEM WITH (NOLOCK)    ';
    varScript :=  varScript + '      WHERE TABLENAME = ''' + TBItem + '''';
    varScript :=  varScript + '        AND ID_PROCESS = ' + IntToStr(varNewKey) + ')' ;
 }
    edtProduto.bs_Script := True;
    edtProduto.bs_Select := varScript;

end;

procedure TfrmEstimate.SetupTable(varTbIdentificador : Integer);
begin
 // 1 TBESTIMATE
 // 2 ORDER
 // 3 INVOICE
 lblShippingDate.Visible := True;
 cxDateShippingDate.Visible := True;

 if varTbIdentificador = 1 then
 begin
      Panel4.Color := $00D1D1A3;
      TBHeader := ESTIMATE_HEADER;
      TBItem   := ESTIMATE_ITEM;
      lblShippingDate.Visible := False;
      cxDateShippingDate.Visible := False;

      if Assigned(frmInventory) then
        if frmInventory.Carrinho <> Nil then
          if frmInventory.Carrinho.ItensNF.Count > 0 then
          begin
             btnCart.Visible := True;
             btnCart.Caption := IntToStr(frmInventory.Carrinho.ItensNF.Count);
          end
          else
          begin
             btnCart.Visible := False;
             btnCart.Caption  := '0';
          end;

 end else if varTbIdentificador = 2 then
          begin
             Panel4.Color := $0080FFFF;
             TBHeader := ORDER_HEADER;
             TBItem   := ORDER_ITEM;

             sqlWorker.Close;
             sqlWorker.Open;
          end
          else if varTbIdentificador = 3 then
               begin
                  Panel4.Color := $00FFAAAA;
                  TBHeader := INVOICE_HEADER;
                  TBItem   := INVOICE_ITEM;
                  sqlWorker.Close;
                  sqlWorker.Open;
                 end;

  cxTabSheetService.TabVisible := True;
  if  varTbIdentificador = 1 then
   cxTabSheetService.TabVisible := False;

  varOption := 'X';  // I = Insert / U = Update / X - Nothing
  varNewKey := 0;
  varNewKeyItem := 0;
  ButCancelarClick(Self);

  AtualizaGrade;
 {
  sqlProcessItem.Close;
  sqlProcessItem.Params.ParamByName('TABLENAME').AsString := TBItem;
  sqlProcessItem.Open;

  sqlTerms.Close;
  sqlTerms.Params.ParamByName('TABLENAME').AsString := TBHeader;
  sqlTerms.Open;
  }
end;

procedure TfrmEstimate.CleanItemFromEdition;
var
 I : integer;
begin
  for I := 0 to chklistRoom.Items.Count - 1 do
        chklistRoom.Checked[I] := False;
  edtProduto.bs_KeyValues.Clear;
  edtProduto.Text := '';
  EdtQty.Text := '';
  memComments.Clear;
  lblProductStyle.Caption := '_';
  lblIdProduct.Caption := '0';
  lblSupplier.Caption := '_';
  lblMaterial.Caption := '_';
  lblColorName.Caption := '_';
  lblQtyAvailable.Caption := '0';
  lblColor.Caption := '_';
  lblStyle.Caption := '_';
  lblAreaSquareFeetPerBox.Caption := '0';
  lblTotalAreaSquareFeet.Caption := '0';
  lblAreaSquareYardPerBox.Caption := '0';
  lblTotalAreaSquareYard.Caption := '0';
  lblStyleName.Caption := '_';
  lblRate.Caption := '0.0';
  //memProductDescription.Clear;
  lblAmount.Caption := '0.0';

  edtweidth.Text := '';
  edtheight.Text := '';
  edttotalarea.Text := '';

  lblEP.Caption := '0';
  lblOP.Caption := '0';
  lblAV.Caption := '0';
  varTempAreaTotal := 0;

  ImageProduct.Picture.Graphic := Nil;
end;

procedure TfrmEstimate.CreateTerms;
begin

end;

procedure TfrmEstimate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;


procedure TfrmEstimate.Initialize;
begin
  cxLookupComboBoxPrincing.Enabled := True;
  cxLookupComboBoxCompany.Clear;
  cxLookupComboBoxPrincing.Clear;
  cxLookupComboBoxPrincing.ItemIndex := -1;

  varNewKeyItem      := 0;
  cxDateProcess.Date := Date;

  Contractor.Search(DBDados.varID_USER);
  SetParametros(edtCliente,  TipoCustomerCompany);
  varFiltroCompanyPadrao := edtCliente.bs_Filter;

  if Contractor.id_contractor <> 0 then
  begin
    cxDateProcessValid.Date := Date + Contractor.Company.estimateDays;

    if (( Contractor.Company.id_company = 0) or ( Contractor.Company.id_company  = null))  then
      cxLookupComboBoxCompany.EditValue := -1
    else
    begin
      cxLookupComboBoxCompany.EditValue := Contractor.Company.id_company;
      Process.Company.Search(cxLookupComboBoxCompany.EditValue);
    end;

   // SetParametros(edtCliente,  TipoCustomer);
    edtSalesRep.SetValue('ID_CONTRACTORS=' + QuotedStr(IntToStr(Contractor.id_contractor)));

    STPPRICELIST.Close;
    STPPRICELIST.Prepare;
    STPPRICELIST.ParamByName( '@ID_CONTRACTOR' ).AsInteger := Contractor.id_contractor;
    STPPRICELIST.Open;

   while not STPPRICELIST.Eof do
    begin
        if STPPRICELISTACTIVE.AsString = 'Y' then
           cxLookupComboBoxPrincing.EditValue := STPPRICELISTID_PRICELIST.AsInteger;
        STPPRICELIST.Next;
    end;

  end;

  SetaConsultaProduto;
  sqlPaymentMethod.Close;
  sqlPaymentMethod.Open;

  lblSubTotal.Caption := '0.00';
  edtmskDiscount.Value := 0;
  edtShipping.Value    := 0;
  lblDiscount.Caption := '0.00';
  lblTax.Caption      := '0.00';
  lblTotal.Caption    := '0.00';
  lblTotalMaterial.Caption := '0.00';
  cmbStatus.ItemIndex := 0;
  cbxCustomerType.ItemIndex  := 0;
  varTempAreaTotal    := 0;
  cbxCustomerTypeChange(Nil);
  AtualizaGradeItem;

end;

procedure TfrmEstimate.spbCleanCustomerClick(Sender: TObject);
begin

 edtCliente.Clear;
 edtCliente.bs_KeyValues.Clear;
 edtCustomerName.Text := '';
 edtAddress.Text      := '';
 edtZipCode.Text      := '';
 edtCounty.Text       := '';
 edtCity.Text         := '';
 edtST.Text           := '';
 edtEmail.Text        := '';
 edtPhone.Text        := '';
 edtCustomerName.SetFocus;

end;

procedure TfrmEstimate.sqlServicesItemAfterScroll(DataSet: TDataSet);
begin
  CalculaServiceSubTotal;
  CalculaProcess;
end;

procedure TfrmEstimate.sqlServicesItemBeforePost(DataSet: TDataSet);
var
  ServiceItem  : TDBNextKey;
  varServiceID : Integer;
begin
    ServiceItem  := TDBNextKey.Create('TBSERVICE_ITEM');
    Try
      varServiceID := ServiceItem.Key;
      sqlServicesItemID_SERVICE_ITEM.AsInteger := varServiceID;
      ServiceItem.UpdateKey(varServiceID, 'TBSERVICE_ITEM');

      sqlServicesItemID_PROCESS.AsInteger := Process.id_process;
      sqlServicesItemTABLENAME.AsString   := TBItem;

      sqlServicesItemAMOUT.AsFloat := sqlServicesItemSubTotal.AsFloat;
    Finally
       FreeAndNil(ServiceItem);
    End;
end;

procedure TfrmEstimate.sqlServicesItemCalcFields(DataSet: TDataSet);
begin
   sqlServicesItemSubTotal.AsFloat := sqlServicesItemRATE.AsFloat * sqlServicesItemTOTALAREA.AsFloat;
end;

procedure TfrmEstimate.CalculaServiceSubTotal;
var
  AIndex      : Integer;
  Value       : Variant;

begin
  varServiceTotal := 0;

  with cxGrid4 do
  begin
       with cxGridDBTableViewServiceItem.DataController.Summary do
       begin
          AIndex :=  FooterSummaryItems.IndexOfItemLink(cxGridDBTableViewServiceItemSubTotal);
          Value :=  FooterSummaryValues[AIndex]
       end;
       if Value <> Null then
         varServiceTotal  := Value;
  end;
end;

procedure TfrmEstimate.sqlTermsAfterDelete(DataSet: TDataSet);
begin
  DisabledTotalField;
end;

procedure TfrmEstimate.UpdatePurchaseOrder;
var
   sqlDados : TFDQuery;
begin
   sqlDados := TFDQuery.Create(Nil);
   Try
     sqlDados.Connection := DBDados.Connection;
     sqlDados.Close;
     sqlDados.SQL.Clear;
     sqlDados.SQL.Add(' UPDATE TBREQUESTORDER  ');
     sqlDados.SQL.Add(' SET ID_COMPANY = :ID_COMPANY, ID_CONTRACTOR = :ID_CONTRACTOR  ');
     sqlDados.SQL.Add(' WHERE TABLENAME = :TABLENAME AND ID_PROCESS = :ID_PROCESS AND ID_PRODUCT = :ID_PRODUCT ');
     sqlDados.Params.ParamByName('ID_COMPANY').AsInteger    := cxLookupComboBoxCompany.EditValue;
     sqlDados.Params.ParamByName('ID_CONTRACTOR').AsInteger := edtSalesRep.bs_KeyValue;
     sqlDados.Params.ParamByName('TABLENAME').AsString      := TBItem;
     sqlDados.Params.ParamByName('ID_PROCESS').AsInteger    := varNewKey;
     sqlDados.Params.ParamByName('ID_PRODUCT').AsInteger    := Item.id_product;
     Try
         sqlDados.ExecSQL;
     except
         on E: EDatabaseError do
           Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
     end;
   Finally
     FreeAndNil(sqlDados)
   End;
end;

function TfrmEstimate.ValidTerms : Boolean;
var
   sqlDados : TFDQuery;
   bRetorno : Boolean;
begin
   bRetorno := True;
   sqlDados := TFDQuery.Create(Nil);
   Try
     sqlDados.Connection := DBDados.Connection;
     sqlDados.Close;
     sqlDados.SQL.Clear;
     sqlDados.SQL.Add(' Select ISNULL(SUM(Value),0) as Total From TBTERMS With (NOLOCK) Where TableName = :tablename and ID_Process = :Id_process ');
     sqlDados.Params.ParamByName('TABLENAME').AsString   := TBHeader;
     sqlDados.Params.ParamByName('ID_PROCESS').AsInteger := Process.id_process;
     sqlDados.Open;
     if sqlDados.FieldByName('Total').AsFloat > 0 then
     begin
       if ((Round(sqlDados.FieldByName('Total').AsFloat*100)/100) < (Round(Process.Total*100)/100))    then
       begin
          bRetorno := False;
          Mens_MensInf('The Terms definition is incomplete.') ;
          edtTotal.EditValue := Process.total  - sqlDados.FieldByName('Total').AsFloat;
          edtDays.SetFocus;
       end;
     end;
   Finally
     FreeAndNil(sqlDados);
   End;

   Result := bRetorno;

end;


function TfrmEstimate.ValidTotalTerm: Boolean;
var
   sqlDados : TFDQuery;
   bRetorno : Boolean;
begin
   bRetorno := True;
   sqlDados := TFDQuery.Create(Nil);
   Try
     sqlDados.Connection := DBDados.Connection;
     sqlDados.Close;
     sqlDados.SQL.Clear;
     sqlDados.SQL.Add(' Select ISNULL(SUM(Value),0) as Total From TBTERMS With (NOLOCK) Where TableName = :tablename and ID_Process = :Id_process ');
     sqlDados.Params.ParamByName('TABLENAME').AsString   := TBHeader;
     sqlDados.Params.ParamByName('ID_PROCESS').AsInteger := Process.id_process;
     sqlDados.Open;
     if sqlDados.FieldByName('Total').AsFloat > 0 then
     begin
       if (sqlDados.FieldByName('Total').AsFloat  + edtTotal.EditValue ) > Process.total then
       begin
          bRetorno := False;
          Mens_MensInf('The Terms is incorrect.') ;
          edtTotal.EditValue := Process.total - sqlDados.FieldByName('Total').AsFloat;
          edtDays.SetFocus;
       end;
     end;
   Finally
     FreeAndNil(sqlDados);
   End;

   Result := bRetorno;

end;

end.
