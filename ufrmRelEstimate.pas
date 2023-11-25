unit ufrmRelEstimate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport;

type
  TfrmRelEstimate = class(TForm)
    sqlHeader: TFDQuery;
    dsHeader: TDataSource;
    Report: TRLReport;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
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
    sqlHeaderITEM_PRODUCT_NAME_INVOICE: TStringField;
    sqlHeaderITEM_QTY: TBCDField;
    sqlHeaderITEM_RATE: TBCDField;
    sqlHeaderITEM_AMOUT: TBCDField;
    sqlHeaderITEM_COLOR: TStringField;
    sqlHeaderITEM_MATERIAL: TStringField;
    sqlHeaderITEM_TAXABLE: TStringField;
    sqlHeaderITEM_STYLE: TStringField;
    sqlHeaderITEM_ROOM: TStringField;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    sqlHeaderESTIMATE_DISCOUNT: TBCDField;
    RLDBResult5: TRLDBResult;
    sqlParcelas: TFDQuery;
    dsParcelas: TDataSource;
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
    RLDraw2: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLGroup2: TRLGroup;
    RLBand7: TRLBand;
    RLBand8: TRLBand;
    RLDBText19: TRLDBText;
    RLLabel16: TRLLabel;
    RLBand9: TRLBand;
    RLDBResult6: TRLDBResult;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText20: TRLDBText;
    RLLabel19: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel20: TRLLabel;
    RLDBText22: TRLDBText;
    sqlHeaderESTIMATE_COMMENTS: TStringField;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    sqlHeaderESTIMATE_PONUMBER: TStringField;
    RLDBText23: TRLDBText;
    RLLabel25: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEstimate: TfrmRelEstimate;

implementation

{$R *.dfm}

uses uDMConectDB;

procedure TfrmRelEstimate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmRelEstimate := nil;
  Action := caFree;
end;

end.
