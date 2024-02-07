unit uFrmAddTransacao;

interface

uses
  ItemTransaction,
  Data.SqlTimSt, System.DateUtils,
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
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.StdCtrls, cxDropDownEdit, cxCalendar, cxMaskEdit, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, cxLabel, cxTextEdit,
  Vcl.ExtCtrls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  Vcl.Menus, cxButtons, cxCheckBox, Vcl.Samples.Spin, dxGDIPlusClasses, cxImage;

type
  TfrmAddTransacao = class(TForm)
    Panel2: TPanel;
    cboTipoMov: TcxComboBox;
    sqlCentroCusto: TFDQuery;
    dsCentroCusto: TDataSource;
    lblpagamento: TLabel;
    edtFavorecido: TEdit;
    lblValor: TLabel;
    edtSubCategoria: TEdit;
    lblTransData: TLabel;
    dtDateTrans: TcxDateEdit;
    pnlTitulo: TPanel;
    editValor: TcxCurrencyEdit;
    lblTipoMov: TLabel;
    sqlSalvar: TFDQuery;
    cxForecast: TcxCheckBox;
    dsBank: TDataSource;
    sqlBank: TFDQuery;
    lblCentroCusto: TLabel;
    lblFavorecido: TLabel;
    lblCategoria: TLabel;
    lblSubCategoria: TLabel;
    edtRepeat: TSpinEdit;
    Label1: TLabel;
    sqlCategoria: TFDQuery;
    cbxPeriodo: TComboBox;
    gpbParcela: TGroupBox;
    lblparcela: TLabel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    imgNotPaid: TcxImage;
    imgPaid: TcxImage;
    cxLookupComboBoxBank: TcxLookupComboBox;
    dsCategoria: TDataSource;
    sqlCentroCustoCentroDeCusto: TStringField;
    sqlCentroCustoGrupo: TIntegerField;
    cxLookupComboBoxCC: TcxLookupComboBox;
    cxLookupComboBoxCat: TcxLookupComboBox;
    sqlCategoriaID_EXPENSECATEGORY: TFDAutoIncField;
    sqlCategoriaDESCRIPTION: TStringField;
    sqlCategoriaINTERNALCOD: TStringField;
    Label2: TLabel;
    cxLookupComboBoxCompany: TcxLookupComboBox;
    sqlCompany: TFDQuery;
    dsCompany: TDataSource;
    sqlCompanyID_COMPANY: TIntegerField;
    sqlCompanyCOMPANYNAME: TStringField;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cboTipoMovClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxLookupComboBoxBankPropertiesChange(Sender: TObject);
    procedure cxLookupComboBoxCCPropertiesChange(Sender: TObject);
  private
    Transaction : TItemTransaction;
    Idx, IdxCC : Integer;
    procedure LimpaTela;
    procedure ListaBancos;

    { Private declarations }
  public
    { Public declarations }
    varUpdate : Boolean;
    varID     : Integer;
    varExecute : Boolean;
    procedure FiltroCentrodeCusto(varFiltro : String);
    procedure FiltraCategoria(varFiltroCategoria: String);

  end;

var
  frmAddTransacao: TfrmAddTransacao;

implementation

{$R *.dfm}

uses MensFun, uDMConectDB, uFunctions;

procedure TfrmAddTransacao.btnSalvarClick(Sender: TObject);
var
  i : Integer;
  varNextDate : TDatetime;
begin

  if DBDados.varID_Bank = 0 then
  begin
    Mens_MensInf(DBDados.RetornaMensagem('MEN_SELECTBANK'));
    cxLookupComboBoxBank.SetFocus;
    Exit;
  end;

  if cxLookupComboBoxBank.Text = '' then
  begin
    Mens_MensInf( DBDados.RetornaMensagem('MEN_SELECTBANK'));
    cxLookupComboBoxBank.SetFocus;
    Exit;
  end;


  if cboTipoMov.ItemIndex = -1 then
  begin
    Mens_MensInf( DBDados.RetornaMensagem('MEN_TIPO_TRANSACAO') );
    cboTipoMov.SetFocus;
    Exit;
  end;


  if editValor.Text = '' then
  begin
     Mens_MensInf( DBDados.RetornaMensagem('MEN_MENS_INFTRAAMOU') );
     editValor.SetFocus;
     Exit;
  end;


  if dtDateTrans.Text = '' then
  begin
     Mens_MensInf( DBDados.RetornaMensagem('MEN_MENS_INFTRADAT') );
     dtDateTrans.SetFocus;
     Exit;
  end;


  if cxLookupComboBoxCC.EditValue  = '' then
  begin
    Mens_MensInf( DBDados.RetornaMensagem('MEN_MENS_SELCC') );
    cxLookupComboBoxCC.SetFocus;
    Exit;
  end;

  if edtFavorecido.Text = '' then
  begin
     Mens_MensInf( DBDados.RetornaMensagem('MEN_MENS_INFCIA') );
     edtFavorecido.SetFocus;
     Exit;
  end;


  if varExecute = False then
  begin

     // idx   := cxLookupComboBoxBank.EditValue;
     // IdxCC := cxLookupComboBoxCC.EditValue;

      varNextDate :=  dtDateTrans.Date;

      if varUpdate = False then
      begin
          for I := 0 to edtRepeat.Value - 1  do
          begin
              sqlSalvar.Close;
              sqlSalvar.SQL.Clear;
              sqlSalvar.SQL.Add('INSERT INTO TBTRANSACAO ');
              sqlSalvar.SQL.Add('           (ID_USER ');
              sqlSalvar.SQL.Add('           ,ID_COMPANY ');
              sqlSalvar.SQL.Add('           ,ID_BANKING');
              sqlSalvar.SQL.Add('           ,Tipo ');
              sqlSalvar.SQL.Add('           ,DataTransacao');
              sqlSalvar.SQL.Add('           ,Favorecido');
              if cxLookupComboBoxCC.Text <> '' then
                sqlSalvar.SQL.Add('         ,Categoria');
              if cxLookupComboBoxCat.Text <> '' then
                sqlSalvar.SQL.Add('         ,SubCategoria');
              sqlSalvar.SQL.Add('           ,Valor ');
              sqlSalvar.SQL.Add('           ,Forecast ');
              sqlSalvar.SQL.Add('           ,ID_USERBANK ');
              sqlSalvar.SQL.Add('           ,MODO ');
              sqlSalvar.SQL.Add('           ,NUM_PARCELA ');
              sqlSalvar.SQL.Add('           ,CONCILIADO ');
              sqlSalvar.SQL.Add('           ,INTERNALCOD) ');

              sqlSalvar.SQL.Add('     VALUES  ');
              sqlSalvar.SQL.Add('           (:ID_USER  ');
              sqlSalvar.SQL.Add('           ,:ID_COMPANY  ');
              sqlSalvar.SQL.Add('           ,:ID_BANKING');
              sqlSalvar.SQL.Add('           ,:TIPO');
              sqlSalvar.SQL.Add('           ,:DATATRANSACAO');
              sqlSalvar.SQL.Add('           ,:FAVORECIDO');
              if cxLookupComboBoxCat.Text <> '' then
                sqlSalvar.SQL.Add('         ,:CATEGORIA');
              if edtSubCategoria.Text <> '' then
                sqlSalvar.SQL.Add('         ,:SUBCATEGORIA');
              sqlSalvar.SQL.Add('           ,:VALOR');
              sqlSalvar.SQL.Add('           ,:Forecast ');
              sqlSalvar.SQL.Add('           ,:ID_USERBANK ');
              sqlSalvar.SQL.Add('           ,:MODO ');
              sqlSalvar.SQL.Add('           ,:NUM_PARCELA ');
              sqlSalvar.SQL.Add('           ,:CONCILIADO ');
              sqlSalvar.SQL.Add('           ,:INTERNALCOD)');

              sqlSalvar.Params.ParamByName('ID_USER').AsInteger    :=  DBDados.varID_USER;
              sqlSalvar.Params.ParamByName('ID_COMPANY').AsInteger :=  cxLookupComboBoxCompany.EditValue;
              sqlSalvar.Params.ParamByName('ID_BANKING').AsInteger :=  DBDados.varID_Bank;
              sqlSalvar.Params.ParamByName('TIPO').AsString        :=  cboTipoMov.Text;
              sqlSalvar.Params.ParamByName('DATATRANSACAO').asDate :=  varNextDate;
              sqlSalvar.Params.ParamByName('FAVORECIDO').AsString  :=  UpperCase(Trim(edtFavorecido.Text));


              sqlSalvar.Params.ParamByName('CATEGORIA').AsString := UpperCase(Trim(edtFavorecido.Text)); //UpperCase(Trim(cxLookupComboBoxCC.Text));

              if cxLookupComboBoxCat.Text <> '' then
                sqlSalvar.Params.ParamByName('SUBCATEGORIA').AsString := UpperCase(Trim(cxLookupComboBoxCat.Text)); //UpperCase(Trim(cxLookupComboBoxCat.Text));

              if cboTipoMov.ItemIndex = 0 then
                 editValor.Value := Abs(editValor.Value) * -1
              else editValor.Value := Abs(editValor.Value);

              sqlSalvar.Params.ParamByName('VALOR').AsString :=  FloatToStrWithDecimalPoint(editValor.Value, DBDados.varRegiao);

              if cxForecast.Checked
              then  sqlSalvar.Params.ParamByName('Forecast').AsInteger := 1
              else  sqlSalvar.Params.ParamByName('Forecast').AsInteger := 0;

              sqlSalvar.Params.ParamByName('MODO').AsString         := 'M';
              sqlSalvar.Params.ParamByName('NUM_PARCELA').AsString  := IntToStr(I+1) + '/' + IntToStr(edtRepeat.Value);
              sqlSalvar.Params.ParamByName('ID_USERBANK').AsInteger := Integer(cxLookupComboBoxBank.EditValue);
              sqlSalvar.Params.ParamByName('CONCILIADO').AsInteger  := 0;
              sqlSalvar.Params.ParamByName('INTERNALCOD').AsString  := sqlCategoriaINTERNALCOD.AsString;

              Try
                sqlSalvar.ExecSQL;
              except
                on E : Exception do
                  Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
              end;


              if cbxPeriodo.ItemIndex = 0 then
                  varNextDate := IncDay(varNextDate, 1)
              else  if cbxPeriodo.ItemIndex = 1 then
                  varNextDate := IncDay(varNextDate, 7)
              else  if cbxPeriodo.ItemIndex = 2 then
                  varNextDate := IncDay(varNextDate, 15)
              else varNextDate := IncMonth(varNextDate, 1);
          end;
      end
      else
      begin
          sqlSalvar.Close;
          sqlSalvar.SQL.Clear;
          sqlSalvar.SQL.Add('Update TBTRANSACAO');
          sqlSalvar.SQL.Add('Set ID_BANKING = :ID_BANKING');
          sqlSalvar.SQL.Add(' ,Tipo = :Tipo');
          sqlSalvar.SQL.Add(' ,DataTransacao = :DataTransacao');
          sqlSalvar.SQL.Add(' ,Favorecido = :Favorecido');
          if cxLookupComboBoxCC.Text <> '' then
             sqlSalvar.SQL.Add(' ,Categoria = :Categoria');
          if cxLookupComboBoxCat.Text <> '' then
             sqlSalvar.SQL.Add(' ,SubCategoria = :SubCategoria');
          sqlSalvar.SQL.Add(' ,Valor = :Valor');
          sqlSalvar.SQL.Add(' ,Forecast  = :Forecast');
          sqlSalvar.SQL.Add(' ,ID_USERBANK = :ID_USERBANK');
          sqlSalvar.SQL.Add(' ,MODO  = :MODO');
          sqlSalvar.SQL.Add(' ,INTERNALCOD = :INTERNALCOD ');
          sqlSalvar.SQL.Add(' Where ID = :ID');
          sqlSalvar.Params.ParamByName('ID').AsInteger := varID;
          sqlSalvar.Params.ParamByName('ID_BANKING').AsInteger :=  DBDados.varID_Bank;
          sqlSalvar.Params.ParamByName('TIPO').AsString        :=  cboTipoMov.Text;
          sqlSalvar.Params.ParamByName('DATATRANSACAO').asDate :=  varNextDate;
          sqlSalvar.Params.ParamByName('FAVORECIDO').AsString  :=  UpperCase(Trim(edtFavorecido.Text));

          sqlSalvar.Params.ParamByName('CATEGORIA').AsString := UpperCase(Trim(edtFavorecido.Text)); //UpperCase(Trim(cxLookupComboBoxCC.Text));

          if cxLookupComboBoxCat.Text <> '' then
            sqlSalvar.Params.ParamByName('SUBCATEGORIA').AsString := UpperCase(Trim(cxLookupComboBoxCat.Text)); //UpperCase(Trim(cxLookupComboBoxCat.Text));

          if cboTipoMov.ItemIndex = 0 then
             editValor.Value := Abs(editValor.Value) * -1
          else editValor.Value := Abs(editValor.Value);

          sqlSalvar.Params.ParamByName('VALOR').AsString :=  FloatToStrWithDecimalPoint(editValor.Value, DBDados.varRegiao);

          if cxForecast.Checked then
            sqlSalvar.Params.ParamByName('Forecast').AsInteger := 1
          else   sqlSalvar.Params.ParamByName('Forecast').AsInteger := 0;

          sqlSalvar.Params.ParamByName('MODO').AsString := 'M';
          sqlSalvar.Params.ParamByName('ID_USERBANK').AsInteger := Integer(cxLookupComboBoxBank.EditValue);
          sqlSalvar.Params.ParamByName('INTERNALCOD').AsString := sqlCategoriaINTERNALCOD.AsString;

          Try
            sqlSalvar.ExecSQL;
          except
            on E : Exception do
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
          end;

      end;

      Transaction := TItemTransaction.Create;
      Try
        if cxForecast.Checked then
          Transaction.AtualizaSaldo(1)
        else  Transaction.AtualizaSaldo(0);
      Finally
        FreeAndNil(Transaction);
      End;

      Mens_MensInf( DBDados.RetornaMensagem('MEN_REC_SAVE') );

      LimpaTela;

  end;

end;

procedure  TfrmAddTransacao.LimpaTela;
begin
 cboTipoMov.ItemIndex := -1;
 editValor.Text := '';
 dtDateTrans.Date := Now;
 cxLookupComboBoxCC.EditValue := -1;
 edtFavorecido.Text := '';
 edtSubCategoria.Text := '';
end;

procedure TfrmAddTransacao.ListaBancos;
begin

    sqlBank.Close;
    sqlBank.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
    sqlBank.Open;

    cxLookupComboBoxBank.ItemIndex := -0;
end;


procedure TfrmAddTransacao.FormActivate(Sender: TObject);
begin
 DBDados.ConectarNoBanco;
 idx := -1;

 if varExecute = False then
 begin
   Caption                 := DBDados.RetornaMensagem('MEN_MENS_ADDTRAN');
   btnSalvar.Caption       := DBDados.RetornaMensagem('MEN_MNU_SALVAR');
 end
 else
 begin
   Caption                 := DBDados.RetornaMensagem('MEN_MENS_ADDTRAN') + ' - (Only View)';
   btnSalvar.Caption       := 'Pay Now';
 end;

 pnlTitulo.Caption       := DBDados.RetornaMensagem('MEN_MENS_ADDTRAN');

 lblpagamento.Caption    := DBDados.RetornaMensagem('MEN_MENS_PAYMENT');
 lblTipoMov.Caption      := DBDados.RetornaMensagem('MEN_TIPO_TRANSACAO');
 lblValor.Caption        := DBDados.RetornaMensagem('MEN_VALUE');
 lblTransData.Caption    := DBDados.RetornaMensagem('MEN_DATA_TRANSACAO');
 lblCentroCusto.Caption  := DBDados.RetornaMensagem('MEN_MNU_NIVEL_0_2');
 lblFavorecido.Caption   := DBDados.RetornaMensagem('MEN_DATA_FAVORECIDO');
 lblCategoria.Caption    := DBDados.RetornaMensagem('MEN_MNU_NIVEL_0_1');
 lblSubCategoria.Caption := DBDados.RetornaMensagem('MEN_MNU_NIVEL_0_5');
 btnCancelar.Caption     := DBDados.RetornaMensagem('MEN_MNU_FECHAR');

 sqlCompany.Close;
 sqlCompany.MacroByName( 'WHERE1' ).AsRaw := 'AND ' +  DBDados.varReturnCompanies;
 sqlCompany.Open;

 cxLookupComboBoxCompany.EditValue := DBDados.varIDMAIN_COMPANY;

 ListaBancos;

 if Panel2.Enabled  then
   cxLookupComboBoxBank.SetFocus;
end;

procedure TfrmAddTransacao.FormCreate(Sender: TObject);
begin
  varExecute := False;
  varUpdate := False;
  varID := -1;
  FiltroCentrodeCusto(cboTipoMov.Text);

end;

procedure TfrmAddTransacao.FiltraCategoria(varFiltroCategoria : String);
begin
  sqlCategoria.Close;
  sqlCategoria.Params.ParamByName('ID_LANGUAGE').AsInteger  := DBDados.varID_Language;
  sqlCategoria.Params.ParamByName('CentrodeCusto').AsString := varFiltroCategoria;
  sqlCategoria.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
  sqlCategoria.Open;

end;
procedure TfrmAddTransacao.cboTipoMovClick(Sender: TObject);
begin
   FiltroCentrodeCusto(cboTipoMov.Text);
end;

procedure TfrmAddTransacao.cxLookupComboBoxBankPropertiesChange(
  Sender: TObject);
begin

  if cxLookupComboBoxBank.Text <> '' then
  begin
    Idx := cxLookupComboBoxBank.EditValue;
    DBDados.varID_Bank := cxLookupComboBoxBank.EditValue;
  end;

end;

procedure TfrmAddTransacao.cxLookupComboBoxCCPropertiesChange(Sender: TObject);
begin
   FiltraCategoria(cxLookupComboBoxCC.Text);
end;

procedure  TfrmAddTransacao.FiltroCentrodeCusto(varFiltro : String);
begin
 sqlCentroCusto.Close;
 sqlCentroCusto.Params.ParamByName('ID_LANGUAGE').AsInteger := DBDados.varID_Language;
 sqlCentroCusto.Params.ParamByName('TIPO').AsString         := varFiltro;
 sqlCentroCusto.MacroByName( 'WHERE1' ).AsRaw := ' AND ' + DBDados.varReturnCompanies;
 sqlCentroCusto.Open;

end;

procedure TfrmAddTransacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=VK_RETURN then
    frmAddTransacao.Perform(WM_NEXTDLGCTL, 0, 0);
end;

end.
