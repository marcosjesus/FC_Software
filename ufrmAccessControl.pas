unit ufrmAccessControl;

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
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxControls, cxContainer, cxEdit,
  Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.CheckLst, cxButtons, Vcl.ExtCtrls;




type
  TfrmAccessControl = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel27: TPanel;
    chklistMenu: TCheckListBox;
    sqlPosition: TFDQuery;
    sqlPositionID_POSITION: TIntegerField;
    sqlPositionNAME: TStringField;
    sqlPositionADD_DATE: TDateField;
    sqlPositionUPD_DATE: TDateField;
    sqlPositionID_USER: TIntegerField;
    sqlPositionPRICINGTABLEVIEW: TStringField;
    dsPosition: TDataSource;
    cxLookupComboBoxPosition: TcxLookupComboBox;
    Label7: TLabel;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    sqlMenu: TFDQuery;
    dsMenu: TDataSource;
    sqlPositionMenu: TFDQuery;
    dsPositionMenu: TDataSource;
    sqlMenuID_MENU: TFDAutoIncField;
    sqlMenuDESCRIPTION: TStringField;
    sqlMenuMenus: TStringField;
    sqlMenuGroups: TStringField;
    sqlMenuScreens: TStringField;
    sqlMenuActions: TStringField;
    sqlPositionMenuID_POSITION_ACCESS: TFDAutoIncField;
    sqlPositionMenuID_POSITION: TIntegerField;
    sqlPositionMenuID_MENU: TIntegerField;
    sqlPositionMenuADD_DATE: TSQLTimeStampField;
    sqlAux: TFDQuery;
    Button1: TButton;
    sqlAux2: TFDQuery;
    sqlAux3: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxLookupComboBoxPositionClick(Sender: TObject);
    procedure ButSalvarClick(Sender: TObject);
    procedure chklistMenuClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure Delete(varID_Position, varID_Menu: Integer);
    procedure Insert(varID_Position, varID_Menu: Integer);
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmAccessControl: TfrmAccessControl;

Type
  PMenuRec = ^TMenuRec;
   TMenuRec = record
     ID_MENU : integer;
     DESCRIPTION : string;

end;

implementation

{$R *.dfm}

uses uDMConectDB;

procedure TfrmAccessControl.ButCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAccessControl.ButSalvarClick(Sender: TObject);
var
  I    : Integer;
  Menu : pMenuRec;
begin

    for I := 0 to chklistMenu.Items.Count - 1 do
    begin

      if chklistMenu.Checked[i] then
      begin
        if sqlPositionMenu.Locate('ID_POSITION;ID_MENU', VarArrayOf([cxLookupComboBoxPosition.EditValue,  PMenuRec(chklistMenu.Items.Objects[I]).ID_MENU]), []) then
         Continue
        else
           Insert(cxLookupComboBoxPosition.EditValue,  PMenuRec(chklistMenu.Items.Objects[I]).ID_MENU);
      end
      else
      begin
         Delete(cxLookupComboBoxPosition.EditValue,  PMenuRec(chklistMenu.Items.Objects[I]).ID_MENU);
      end;

    end;

    Mens_MensInf( 'Updated with Success' );
end;

procedure TfrmAccessControl.Button1Click(Sender: TObject);
var
 Insert, Dados : WideString;
 I : Integer;
 Lista : TStringList;
begin
  Lista := TStringList.Create;
  Try
  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add('SELECT o.name, o.object_id FROM SYS.ALL_OBJECTS o ');
  sqlAux.SQL.Add('WHERE o.TYPE_DESC = ''USER_TABLE'' AND SCHEMA_ID = 1 ');
  sqlAux.SQL.Add('order by o.name ');
  sqlAux.Open;
  sqlAux.First;
  Lista.Clear;
  while not sqlAux.Eof do
  begin
       sqlAux2.Close;
       sqlAux2.SQL.Clear;
       sqlAux2.SQL.Add('Select name from sys.all_columns ');
       sqlAux2.SQL.Add('where object_id = :object_id order by column_id');
       sqlAux2.Params.ParamByName('object_id').AsInteger := sqlAux.FieldByName('object_id').AsInteger;
       sqlAux2.Open;
       sqlAux2.First;
       Insert := ' Insert Into ' + sqlAux.FieldByName('name').AsString;
       Insert := Insert + '(';
       while not sqlAux2.Eof do
       begin
          Insert := Insert + sqlAux2.FieldByName('name').AsString  + ',';
          sqlAux2.Next;
       end;
       Insert := Copy(Insert, 1, Length(Insert)-1);
       Insert := Insert + ')';

       sqlAux3.Close;
       sqlAux3.SQL.Clear;
       sqlAux3.SQL.Add('Select * From ' + sqlAux.FieldByName('name').AsString + ' order by 1');
       sqlAux3.Open;
       sqlAux3.First;
       if not sqlAux3.IsEmpty then
       begin
          while Not sqlAux3.Eof do
          begin
              Dados := ' Values ( ';
              for I := 0 to sqlAux3.FieldCount - 1  do
              begin

                if sqlAux3.Fields.Fields[I].DataType in [ftString] then
                  Dados := Dados + QuotedStr(sqlAux3.Fields.Fields[I].AsString)  + ','
                else if sqlAux3.Fields.Fields[I].DataType in [ftBCD] then
                  Dados := Dados + QuotedStr(sqlAux3.Fields.Fields[I].AsWideString)  + ','
                else if  sqlAux3.Fields.Fields[I].DataType in [ftDateTime, ftTimeStamp] then
                   Dados := Dados + QuotedStr(FormatDateTime('mm/dd/yyyy hh:mm:ss',sqlAux3.Fields.Fields[I].AsDateTime))  + ','
                else if  sqlAux3.Fields.Fields[I].DataType in [ftDate] then
                 Dados := Dados + QuotedStr(FormatDateTime('mm/dd/yyyy',sqlAux3.Fields.Fields[I].AsDateTime))  + ','
                else  Dados := Dados + sqlAux3.Fields.Fields[I].AsString  + ','

              end;
              Dados := Copy(Dados, 1, Length(Dados)-1);
              Dados := Dados + ')';

              Lista.Add(Insert);
              Lista.Add(Dados);

              sqlAux3.Next;
          end;
          Lista.Add('GO');
          Lista.SaveToFile('c:\temp\' + sqlAux.FieldByName('name').AsString + '.sql' );
          Lista.Clear;
       end;

       sqlAux.Next;
  end;


  Finally
      FreeAndNil(Lista);
  End;
end;

procedure TfrmAccessControl.Insert(varID_Position, varID_Menu : Integer);
begin
  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add('Insert Into TBPOSITION_ACCESS (ID_POSITION , ID_MENU ) Values ( ');
  sqlAux.SQL.Add( IntToStr(varID_Position) +  ',' );
  sqlAux.SQL.Add( IntToStr(varID_Menu) +  ')' );

  Try
     sqlAux.ExecSQL;

   except
      on E: EDatabaseError do
        Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

   end;
end;



procedure TfrmAccessControl.Delete(varID_Position, varID_Menu : Integer);
begin
  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add('Delete From TBPOSITION_ACCESS Where ID_POSITION = :ID_POSITION and ID_MENU = :ID_MENU');
  sqlAux.Params.ParamByName('ID_POSITION').AsInteger := varID_Position;
  sqlAux.Params.ParamByName('ID_MENU').AsInteger     := varID_Menu;

  Try
     sqlAux.ExecSQL;

   except
      on E: EDatabaseError do
        Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

   end;
end;

procedure TfrmAccessControl.chklistMenuClick(Sender: TObject);
begin
   if cxLookupComboBoxPosition.ItemIndex = -1 then
   begin
     Mens_MensInf( 'Position field is required' );
     cxLookupComboBoxPosition.SetFocus;
   end;
end;

procedure TfrmAccessControl.cxLookupComboBoxPositionClick(Sender: TObject);
var
 I : Integer;
 Menu : pMenuRec;
begin
   sqlPositionMenu.Close;
   sqlPositionMenu.Params.ParamByName('ID_POSITION').AsInteger := cxLookupComboBoxPosition.EditValue;
   sqlPositionMenu.Open;

   sqlPositionMenu.First;
   for I := 0 to chklistMenu.Count -1 do
   begin
      Menu := PMenuRec(chklistMenu.Items.Objects[I]);
      chklistMenu.Checked[i] := sqlPositionMenu.Locate( 'ID_MENU', Menu.ID_MENU );
   end;
end;

procedure TfrmAccessControl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  frmAccessControl := nil;
  Action := caFree;
end;

procedure TfrmAccessControl.FormCreate(Sender: TObject);
begin
   chklistMenu.Clear;
end;

procedure TfrmAccessControl.FormShow(Sender: TObject);
var
  Menu : pMenuRec;
begin
  sqlPosition.Close;
  sqlPosition.Open;
  sqlMenu.Close;
  sqlMenu.Open;
  sqlMenu.First;
  chklistMenu.Clear;
  while not sqlMenu.Eof do
  begin
    New(Menu);
    Menu^.ID_MENU     := sqlMenuID_MENU.AsInteger;
    Menu^.DESCRIPTION := sqlMenuDESCRIPTION.AsString;

    chklistMenu.Items.AddObject(sqlMenuDESCRIPTION.AsString,  TObject(Menu));

    sqlMenu.Next;
  end;
end;

end.
