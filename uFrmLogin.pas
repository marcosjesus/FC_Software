unit uFrmLogin;

interface

uses

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.Mask, cxLabel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Vcl.Buttons;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    EdiSenha: TMaskEdit;
    EdiUsuario: TEdit;
    butOk: TcxButton;
    butCancel: TcxButton;
    sqlAux: TFDQuery;
    btnCreateAccount: TcxButton;
    procedure butOkClick(Sender: TObject);
    procedure EdiSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure butCancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetupForm;
  end;

var
  FrmLogin : TFrmLogin;

implementation

{$R *.dfm}

uses AsyncCalls, MensFun, ufrmCreateAccount, uFunctions, uDMConectDB;

procedure TFrmLogin.butCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmLogin.butOkClick(Sender: TObject);
var
  varComputerName : String;
  varModalResult : Integer;
begin
   DBDados.ConectarNoBanco;

   If ( EdiUsuario.Text = '**********' )  OR ( EdiUsuario.Text = '')Then
   Begin
       Mens_MensInf('Type your e-mail.') ;
       EdiUsuario.SetFocus ;
       Exit ;
   End ;

   If ( EdiSenha.Text = '' ) Then
   Begin
       Mens_MensInf('Type your password ') ;
       EdiSenha.Text := '' ;
       EdiSenha.SetFocus ;
       Exit ;
   End ;

   varComputerName := '';
   DBDados.varUsuario := '';
   DBDados.varID_Language := 0;
  if ((EdiUsuario.Text <> '' ) and (EdiSenha.Text <> '')) then
  begin
    sqlAux.Close;
    sqlAux.sql.Clear;
    sqlAux.sql.Add('Select * from TBUSER ');
    sqlAux.sql.Add(' Where Email = :Email and Pwd = :Pwd ');
    sqlAux.Params.ParamByName('Email').asString := UpperCase(Trim(EdiUsuario.Text));
    sqlAux.Params.ParamByName('Pwd').asString := UpperCase(Trim(EdiSenha.Text));
    sqlAux.Open;

   // GUsuarioAtivo := Tab.SeekGet('USUARIO','CodUsuario',[VarToStr(EdiUsuario.bs_KeyValue)],'ATIVO',False) ;
    varModalResult := 1;
    if ((sqlAux.IsEmpty) or (sqlAux.FieldByName('ACTIVE').AsString = 'N')) then
    begin
        Mens_MensInf('User not Found or User still Inactive. Contact Managment');
        EdiUsuario.Text := '';
        EdiSenha.Text := '';
        EdiUsuario.SetFocus;
        Exit;
    end
    else
    begin
        DBDados.varID          := EdiUsuario.Text;
        varComputerName         := sqlAux.FieldByName('COMPUTERNAME').AsString;
        DBDados.varUsuario      := sqlAux.FieldByName('FIRST_NAME').AsString;
        DBDados.varID_USER      := sqlAux.FieldByName('ID_User').AsInteger;
        DBDados.varIDMAIN_COMPANY :=  sqlAux.FieldByName('ID_COMPANY').AsInteger;
        DBDados.varID_POSITION  := sqlAux.FieldByName('ID_POSITION').AsInteger;

     //   Dados.varID_Language  := sqlAux.FieldByName('ID_LANGUAGE').AsInteger;
        if varComputerName = '' then
        begin
           sqlAux.Close;
           sqlAux.sql.Clear;
           sqlAux.SQL.Add('Update TBUSER Set COMPUTERNAME = :COMPUTERNAME' );
           sqlAux.sql.Add(' Where Email = :Email and Pwd = :Pwd ');
           sqlAux.Params.ParamByName('Email').asString := EdiUsuario.Text;
           sqlAux.Params.ParamByName('Pwd').asString :=EdiSenha.Text;
           sqlAux.Params.ParamByName('COMPUTERNAME').asString := ComputerName;
           Try
              sqlAux.ExecSQL;
           except
              on E : Exception do
                Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
           end;
        end
        else
        begin
          if UpperCase(varComputerName) <> UpperCase(ComputerName) then
          begin
             Mens_MensInf( DBDados.RetornaMensagem('MEN_ACCESS_DENIED') );
             Close;
             varModalResult := 2;
          end;
        end;
    end;
  end;

  if varModalResult = 2 then
  begin
     DBdados.varUsuario   := '';
     DBDados.varID_Language := 0;
  end;

  ModalResult := varModalResult ;
  DBDados.SaveUserPerfil;
  DBDados.varLogado := True;
  //Dados.BuscaCaminhodoArquivo;
  Close;
end;

procedure TFrmLogin.cxButton1Click(Sender: TObject);
  procedure SetupForm;
  begin

    frmCreateAccount.SetupForm(1); // Estimate

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

procedure TFrmLogin.EdiSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    ButOkClick(Self);
end;

procedure TFrmLogin.FormActivate(Sender: TObject);
begin
  EdiUsuario.SetFocus;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FrmLogin := nil;
  Action := caFree;
end;

procedure TFrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmLogin.SetupForm;
begin
   EdiUsuario.Text := DBDados.varID;
   if EdiUsuario.Text <> '' then
     EdiSenha.SetFocus;
end;

end.
