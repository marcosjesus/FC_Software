unit ufrmLabor;

interface

uses
  MensFun,
  uClassDBGenerics,
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
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Vcl.CheckLst;

type
  TfrmLabor = class(TForm)
    Panel27: TPanel;
    ButCancelar: TcxButton;
    dsLabor: TDataSource;
    sqlLabor: TFDQuery;
    sqlLaborID_LABOR: TFDAutoIncField;
    sqlLaborDESCRIPTION: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    chklistService: TCheckListBox;
    btnSave: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSaveClick(Sender: TObject);
    procedure ButCancelarClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    varRoom     : String;
    varSplitted : TArray<String>;
    Process_ID  : Integer;
    TableName   : String;
    procedure LoadService;
  end;

var
  frmLabor: TfrmLabor;

implementation

{$R *.dfm}

uses uDMConectDB;

{ TfrmLabor }

procedure TfrmLabor.btnSaveClick(Sender: TObject);
var
  sqlDados   : TFDQuery;
  I, Y       : Integer;
  Service_ID : Integer;
  varNextKey : TDBNextKey;
begin

  sqlDados := TFDQuery.Create(Nil);
  Try
    sqlDados.Connection := DBDados.Connection;
    varSplitted := varRoom.Split([';']);

    sqlDados.Close;
    sqlDados.SQL.Clear;

    sqlDados.SQL.Add('Insert Into TBSERVICE_ITEM (ID_SERVICE_ITEM, TABLENAME, ID_PROCESS, DESC_PRODUCT, ID_USER, ADD_DATE, ROOM, ID_ROOM)');
    sqlDados.SQL.Add('Values (:ID_SERVICE_ITEM, :TABLENAME, :ID_PROCESS, :DESC_PRODUCT, :ID_USER, :ADD_DATE, :ROOM, :ID_ROOM)');
    for i := 0 to chklistService.Items.Count -1 do
    begin
         if chklistService.Checked[I] then
         begin
             for Y := 0 to Length(varSplitted)-1 do
             begin
               varNextKey  := TDBNextKey.Create('TBSERVICE_ITEM');
               Try
                   Service_ID := varNextKey.Key;
                   sqlDados.Params.ParamByName('ID_SERVICE_ITEM').AsInteger := Service_ID;
                   sqlDados.Params.ParamByName('TABLENAME').AsString        := TableName;
                   sqlDados.Params.ParamByName('ID_PROCESS').AsInteger      := Process_ID;
                   sqlDados.Params.ParamByName('DESC_PRODUCT').AsString     := chklistService.Items[i];
                   sqlDados.Params.ParamByName('ID_USER').AsInteger         := DBDados.varID_USER;
                   sqlDados.Params.ParamByName('ADD_DATE').AsString         := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
                   sqlDados.Params.ParamByName('ROOM').AsString             := varSplitted[y];
                   DBDados.sqlRoom.Locate('DESCRIPTION', varSplitted[y], []);
                   sqlDados.Params.ParamByName('ID_ROOM').AsInteger          := DBDados.sqlRoomID_MISCELLANEOUS.AsInteger;

                   sqlDados.Prepare;

                   Try
                       varNextKey.UpdateKey(Service_ID, 'TBSERVICE_ITEM'); // atualiza a nova chave no banco
                       sqlDados.ExecSQL;
                   except
                       varNextKey.UpdateKey(Service_ID-1, 'TBSERVICE_ITEM');
                   end;
               Finally
               FreeAndNil(varNextKey);

               End;

             end;
         end;
    end;


  Finally
    FreeAndNil(sqlDados);
  End;

  Close;

end;

procedure TfrmLabor.ButCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLabor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmLabor := nil;
  Action := caFree;
end;

procedure TfrmLabor.LoadService;
begin
    sqlLabor.Close;
    sqlLabor.Open;

    chklistService.Clear;
    sqlLabor.First;

    while not sqlLabor.Eof do
    begin
      chklistService.AddItem(sqlLaborDESCRIPTION.AsString, Nil);
      sqlLabor.Next;
    end;
end;


end.
