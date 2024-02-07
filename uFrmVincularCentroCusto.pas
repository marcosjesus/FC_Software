unit uFrmVincularCentroCusto;

interface

uses
  uFunctions,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.DBCtrls, Vcl.Menus, cxButtons,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox;

type
  TfrmVincularCentroCusto = class(TForm)
    Panel1: TPanel;
    sqlCentroCusto: TFDQuery;
    dsCentroCusto: TDataSource;
    sqlAux: TFDQuery;
    lblFile: TLabel;
    Label1: TLabel;
    lblFavorecido: TLabel;
    Label2: TLabel;
    lblCategoria: TLabel;
    Label3: TLabel;
    lblValor: TLabel;
    Label4: TLabel;
    lblDataCompra: TLabel;
    Panel2: TPanel;
    ButConfirm: TcxButton;
    butCancel: TcxButton;
    butDelete: TcxButton;
    Panel3: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    sqlCentroCustoID_CentrodeCusto: TFDAutoIncField;
    sqlCentroCustoCentroDeCusto: TStringField;
    sqlCentroCustoCategoria: TStringField;
    sqlCentroCustoID_USER: TIntegerField;
    sqlCentroCustoID_LANGUAGE: TIntegerField;
    sqlCentroCustoGRUPO: TIntegerField;
    sqlCentroCustoTIPO: TStringField;
    cxGrid1DBTableView1ID_CentrodeCusto: TcxGridDBColumn;
    cxGrid1DBTableView1CentroDeCusto: TcxGridDBColumn;
    cxGrid1DBTableView1Categoria: TcxGridDBColumn;
    chkRule: TCheckBox;
    cxButton1: TcxButton;
    sqlCentroCustoCONCILIAR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ButConfirmClick(Sender: TObject);
    procedure butDeleteClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
     idx : Integer;
  public
    { Public declarations }
        bAlterar : Boolean;
        ID_Transacao : Integer;
        procedure BuscaCentroCusto(Valor: Double);

  end;


var
  frmVincularCentroCusto: TfrmVincularCentroCusto;

implementation

{$R *.dfm}

uses uDMConectDB, MensFun, ufrmAddCostCenter;

procedure TfrmVincularCentroCusto.butDeleteClick(Sender: TObject);
begin


   if messagedlg(pchar('Voc� deseja realmente excluir a Transa��o ID: '+ IntToStr(ID_Transacao)  +' ?') ,mtConfirmation,[mbyes,mbno],0) = mrYes then
   begin
     DBDados.ConectarNoBanco;
     sqlAux.Close;
     sqlAux.SQL.Clear;
     sqlAux.SQL.Add('Delete from TbTransacao where id = :id');
     sqlAux.Params.ParamByName('id').AsInteger := ID_Transacao;

     Try
        sqlAux.ExecSQL;
     Except
        on E: Exception do
          begin
             Application.MessageBox( pChar('Erro ao Excluir a Transa��o - ' +  E.Message) , 'TRANSA��O', MB_ICONERROR );
          end;
     End;
   end;

   butCancel.Click;

end;

procedure TfrmVincularCentroCusto.ButConfirmClick(Sender: TObject);
begin
  if chkRule.Checked then
  begin
      if Mens_MensConf(pchar('Do you want make this a rule? '+#13#10+#13#10+ 'FAVORECIDO: ' + lblFavorecido.Caption +
      '    CATEGORY: ' + lblCategoria.Caption +#13#10+#13#10+
      'COST CENTER: ' + sqlCentroCusto.FieldByName('CentrodeCusto').AsString + '    CATEGORY: ' + sqlCentroCusto.FieldByName('Categoria').AsString)) = mrOK  then
      begin

        DBDados.CadastraCategoria(lblFavorecido.Caption,
                                sqlCentroCusto.FieldByName('Categoria').AsString,
                                lblCategoria.Caption,
                                sqlCentroCusto.FieldByName('CENTRODECUSTO').AsString);

      end;
  end;
end;

procedure TfrmVincularCentroCusto.cxButton1Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TfrmAddCostCenter,frmAddCostCenter);
    frmAddCostCenter.ShowModal;
    BuscaCentroCusto(StrToFloat(lblValor.Caption));
  Finally
    FreeAndNil(frmAddCostCenter);
  End;
end;

procedure TfrmVincularCentroCusto.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  {
  if Mens_MensConf(pchar('Do you want make this a rule? '+#13#10+#13#10+ 'FAVORECIDO: ' + lblFavorecido.Caption +
  '    CATEGORY: ' + lblCategoria.Caption +#13#10+#13#10+
  'COST CENTER: ' + sqlCentroCusto.FieldByName('CentrodeCusto').AsString + '    CATEGORY: ' + sqlCentroCusto.FieldByName('Categoria').AsString)) = mrOK  then
  begin

    Dados.CadastraCategoria(lblFavorecido.Caption,
                            sqlCentroCusto.FieldByName('Categoria').AsString,
                            lblCategoria.Caption,
                            sqlCentroCusto.FieldByName('CENTRODECUSTO').AsString);

  end;
   }

end;

procedure TfrmVincularCentroCusto.FormCreate(Sender: TObject);
begin
 DBDados.ConectarNoBanco;
 Height := 680;
 Width := 800;
 Top := 50;
 Left := 300;

end;

procedure   TfrmVincularCentroCusto.BuscaCentroCusto(Valor : Double);
begin
 sqlCentroCusto.Close;
 sqlCentroCusto.SQL.Clear;
 sqlCentroCusto.SQL.Add('Select * from CentrodeCusto Where ID_LANGUAGE = :ID_LANGUAGE  and ID_USER = :ID_USER ');
 if Valor >= 0 then
    sqlCentroCusto.SQL.Add(' AND TIPO = ' + QuotedStr(consTipoIncome))
 else  sqlCentroCusto.SQL.Add(' AND TIPO = ' + QuotedStr(consTipoExpense));

 sqlCentroCusto.SQL.Add(' Order by CENTRODECUSTO, Categoria,  GRUPO ');

 sqlCentroCusto.Params.ParamByName('ID_LANGUAGE').AsInteger := DBDados.varID_Language;
 sqlCentroCusto.Params.ParamByName('ID_USER').AsInteger     := DBDados.varID_USER;
 sqlCentroCusto.Open;
 lblFile.Caption := IntToStr(DBDados.varLinha) + '/' + IntToStr(DBDados.varTotalLinha);
end;

end.
