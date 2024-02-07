unit ufrmAddCostCenter;

interface

uses
  MensFun,
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
  cxTextEdit, cxMaskEdit, cxDropDownEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmAddCostCenter = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cboTipoMov: TcxComboBox;
    edtCentrodeCusto: TEdit;
    edtCategoria: TEdit;
    sqlAux: TFDQuery;
    procedure FormActivate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddCostCenter: TfrmAddCostCenter;

implementation

{$R *.dfm}

uses uDMConectDB;

procedure TfrmAddCostCenter.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAddCostCenter.btnSalvarClick(Sender: TObject);
begin
  if edtCentrodeCusto.Text = '' then
  begin
    Mens_MensInf( DBDados.RetornaMensagem('MEN_MENS_SELCC'));
    edtCentrodeCusto.SetFocus;
    Exit;
  end;

  if edtCategoria.Text = '' then
  begin
    Mens_MensInf( DBDados.RetornaMensagem('MEN_MENS_INFCAT'));
    edtCategoria.SetFocus;
    Exit;
  end;

  if cboTipoMov.ItemIndex = -1 then
  begin
    Mens_MensInf( DBDados.RetornaMensagem('MEN_TIPO_TRANSACAO') );
    cboTipoMov.SetFocus;
    Exit;
  end;

  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add('Insert Into CENTRODECUSTO (CENTRODECUSTO, CATEGORIA, ID_USER, ID_LANGUAGE, GRUPO, TIPO ) ');
  sqlAux.SQL.Add(' Values (:CENTRODECUSTO, :CATEGORIA, :ID_USER, :ID_LANGUAGE, :GRUPO, :TIPO )');
  sqlAux.Params.ParamByName('CENTRODECUSTO').AsString := edtCentrodeCusto.Text;
  sqlAux.Params.ParamByName('CATEGORIA').AsString :=  edtCategoria.Text;
  sqlAux.Params.ParamByName('ID_USER').AsInteger :=  DBDados.varID_USER;
  sqlAux.Params.ParamByName('ID_LANGUAGE').AsInteger :=  DBDados.varID_Language;
  if cboTipoMov.ItemIndex = 1 then
    sqlAux.Params.ParamByName('GRUPO').AsInteger := 2
  else    sqlAux.Params.ParamByName('GRUPO').AsInteger := 1;

  sqlAux.Params.ParamByName('TIPO').AsString :=  cboTipoMov.Text;

  Try
    sqlAux.ExecSQL;
  except
    on E : Exception do
      Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
  end;

  Close;

end;

procedure TfrmAddCostCenter.FormActivate(Sender: TObject);
begin
  edtCentrodeCusto.Clear;
  edtCategoria.Clear;
  cboTipoMov.ItemIndex := -1;
end;

end.
