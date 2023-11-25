unit uFrmRoom;

interface

uses
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
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Vcl.CheckLst, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmRoom = class(TForm)
    chklistRoom: TCheckListBox;
    Panel27: TPanel;
    ButCancelar: TcxButton;
    TBRoom: TFDTable;
    TBRoomID_MISCELLANEOUS: TFDAutoIncField;
    TBRoomVALUE: TStringField;
    TBRoomDESCRIPTION: TStringField;
    TBRoomADD_DATE: TDateField;
    TBRoomUPD_DATE: TDateField;
    TBRoomID_USER: TIntegerField;
    DsRoom: TDataSource;
    procedure ButCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadRoom;
  end;

var
  frmRoom: TfrmRoom;

implementation

{$R *.dfm}

uses uDMConectDB;

{ TfrmRoom }

procedure TfrmRoom.ButCancelarClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmRoom.LoadRoom;
begin
    TBRoom.Close;
    TBRoom.Open;

    chklistRoom.Clear;
    TBRoom.First;

    while not TBRoom.Eof do
    begin
      chklistRoom.AddItem(TBRoomDESCRIPTION.AsString, Nil);
      TBRoom.Next;
    end;
end;

end.
