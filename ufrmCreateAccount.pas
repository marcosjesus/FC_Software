unit ufrmCreateAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.CheckLst;

type
  TfrmCreateAccount = class(TForm)
    sqlSalvar: TFDQuery;
    sqlAux: TFDQuery;
    cxPageControl1: TcxPageControl;
    cxTabSheet1List: TcxTabSheet;
    cxTabSheetForm: TcxTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    sqlUser: TFDQuery;
    dsUser: TDataSource;
    sqlUserID_USER: TFDAutoIncField;
    sqlUserLASTNAME: TStringField;
    sqlUserMIDDLE_NAME: TStringField;
    sqlUserFIRST_NAME: TStringField;
    sqlUserEMAIL: TStringField;
    sqlUserPWD: TStringField;
    sqlUserCOMPUTERNAME: TStringField;
    sqlUserPHONE_NUMBER: TStringField;
    sqlUserCREATE_DATE: TSQLTimeStampField;
    sqlUserID_USERPAI: TIntegerField;
    cxGrid1DBTableView1LASTNAME: TcxGridDBColumn;
    cxGrid1DBTableView1MIDDLE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1FIRST_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1PHONE_NUMBER: TcxGridDBColumn;
    Panel27: TPanel;
    ButNovo: TcxButton;
    ButAlterar: TcxButton;
    ButImprimir: TcxButton;
    ButSair: TcxButton;
    cxGrid1DBTableView1ACTIVE: TcxGridDBColumn;
    sqlUserACTIVE: TStringField;
    dsPosition: TDataSource;
    sqlPosition: TFDQuery;
    sqlPositionID_POSITION: TIntegerField;
    sqlPositionNAME: TStringField;
    sqlPositionADD_DATE: TDateField;
    sqlPositionUPD_DATE: TDateField;
    sqlPositionID_USER: TIntegerField;
    sqlPositionPRICINGTABLEVIEW: TStringField;
    sqlUserID_POSITION: TIntegerField;
    sqlUserPOSITION: TStringField;
    cxGrid1DBTableView1POSITION: TcxGridDBColumn;
    pnlLeft: TPanel;
    pnlClient: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    edtFirstName: TEdit;
    edtEmail: TEdit;
    edtPassword: TEdit;
    butOk: TcxButton;
    EdtPhone: TMaskEdit;
    edtLastName: TEdit;
    edtMiddleName: TEdit;
    rgActive: TRadioGroup;
    cxLookupComboBoxPosition: TcxLookupComboBox;
    lblPosition: TLabel;
    chklistCompany: TCheckListBox;
    Panel3: TPanel;
    sqlCompany: TFDQuery;
    sqlCompanyID_COMPANY: TIntegerField;
    sqlCompanyCOMPANYNAME: TStringField;
    sqlUserCompany: TFDQuery;
    sqlUserCompanyID_USER_COMPANY: TFDAutoIncField;
    sqlUserCompanyID_USER: TIntegerField;
    sqlUserCompanyID_COMPANY: TIntegerField;
    sqlUserCompanyADD_DATE: TSQLTimeStampField;
    Panel4: TPanel;
    dsCompany: TDataSource;
    cmbCompany: TcxLookupComboBox;
    cxTabSheetSpecialPermission: TcxTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    ButSalvar: TcxButton;
    ButCancelar: TcxButton;
    chklistMenu: TCheckListBox;
    sqlMenu: TFDQuery;
    sqlMenuID_MENU: TFDAutoIncField;
    sqlMenuDESCRIPTION: TStringField;
    sqlMenuMenus: TStringField;
    sqlMenuGroups: TStringField;
    sqlMenuScreens: TStringField;
    sqlMenuActions: TStringField;
    dsMenu: TDataSource;
    sqlUserSpecialPer: TFDQuery;
    sqlUserID_COMPANY: TIntegerField;
    procedure butOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ButNovoClick(Sender: TObject);
    procedure ButAlterarClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure ButSairClick(Sender: TObject);
    procedure ButSalvarClick(Sender: TObject);
  private
    { Private declarations }
    varMainID_Company : Integer;
    varOperacao : string;
    varCalled : Integer;
    procedure PrepareEmail;
    procedure SaveUserCompany;
    function  ValidMainCompany : Integer;
    procedure Insert(ID_USER, ID_COMPANY : Integer);
    procedure Delete(ID_USER, ID_COMPANY : Integer);
    procedure InsertSpecialPer(ID_USER, ID_MENU : Integer);
    procedure DeleteSpecialPer(ID_USER, ID_MENU : Integer);
    
    
  public
    { Public declarations }
    procedure SetupForm(varCall : Integer);
  end;

var
  frmCreateAccount: TfrmCreateAccount;

Type
  PCompanyRec = ^TCompanyRec;
   TCompanyRec = record
     ID_COMPANY : integer;
     COMPANYNAME : string;

   end;


Type
  PMenuRec = ^TMenuRec;
   TMenuRec = record
     ID_MENU : integer;
     DESCRIPTION : string;
   end;
   
implementation

{$R *.dfm}

uses uDMConectDB, uFunctions, MensFun;

procedure TfrmCreateAccount.ButAlterarClick(Sender: TObject);
begin
   cxGrid1DBTableView1DblClick(Nil);
end;

procedure TfrmCreateAccount.ButNovoClick(Sender: TObject);
begin
   cxPageControl1.ActivePage := cxTabSheetForm;
    varOperacao := 'I';
end;

function TfrmCreateAccount.ValidMainCompany : Integer;
begin
   varMainID_Company := 0;
   sqlUserCompany.Close;
   sqlUserCompany.Params.ParamByName('ID_USER').AsInteger := sqlUserID_USER.AsInteger;
   sqlUserCompany.Open;
   if sqlUserCompany.Locate('ID_USER;ID_COMPANY', VarArrayOf([sqlUserID_USER.AsInteger,cmbCompany.EditValue]), []) Then
       Result :=  cmbCompany.EditValue;
end;

procedure TfrmCreateAccount.SaveUserCompany;
var
  I    : Integer;
  Company : pCompanyRec;
begin
    for I := 0 to chklistCompany.Items.Count - 1 do
    begin

      if chklistCompany.Checked[i] then
      begin
        if sqlUserCompany.Locate('ID_USER;ID_COMPANY', VarArrayOf([sqlUserID_USER.AsInteger,  PCompanyRec(chklistCompany.Items.Objects[I]).ID_COMPANY]), []) then
           Continue
        else
           Insert(sqlUserID_USER.AsInteger,  PCompanyRec(chklistCompany.Items.Objects[I]).ID_COMPANY);
      end
      else
      begin
        Delete(sqlUserID_USER.AsInteger,  PCompanyRec(chklistCompany.Items.Objects[I]).ID_COMPANY);
      end;
    end;


end;

procedure  TfrmCreateAccount.Insert(ID_USER, ID_COMPANY : Integer);
begin
  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add('Insert Into TBUSER_COMPANY (ID_USER , ID_COMPANY ) Values ( ');
  sqlAux.SQL.Add( IntToStr(ID_USER) +  ',' );
  sqlAux.SQL.Add( IntToStr(ID_COMPANY) +  ')' );

  Try
     sqlAux.ExecSQL;

 except
      on E: EDatabaseError do
        Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

 end;
end;

procedure TfrmCreateAccount.InsertSpecialPer(ID_USER, ID_MENU: Integer);
begin
  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add('Insert Into TBUSER_SPECIAL_PER (ID_USER , ID_MENU ) Values ( ');
  sqlAux.SQL.Add( IntToStr(ID_USER) +  ',' );
  sqlAux.SQL.Add( IntToStr(ID_MENU) +  ')' );

  Try
     sqlAux.ExecSQL;
     
 except
      on E: EDatabaseError do
        Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

 end;
end;

procedure  TfrmCreateAccount.Delete(ID_USER, ID_COMPANY : Integer);
begin
  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add('Delete From TBUSER_COMPANY Where ID_USER = :ID_USER and ID_COMPANY = :ID_COMPANY');
  sqlAux.Params.ParamByName('ID_USER').AsInteger    := ID_USER;
  sqlAux.Params.ParamByName('ID_COMPANY').AsInteger := ID_COMPANY;

  Try
     sqlAux.ExecSQL;

   except
      on E: EDatabaseError do
        Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

   end;
end;

procedure TfrmCreateAccount.DeleteSpecialPer(ID_USER, ID_MENU: Integer);
begin
  sqlAux.Close;
  sqlAux.SQL.Clear;
  sqlAux.SQL.Add('Delete From TBUSER_SPECIAL_PER Where ID_USER = :ID_USER and ID_MENU = :ID_MENU');
  sqlAux.Params.ParamByName('ID_USER').AsInteger := ID_USER;
  sqlAux.Params.ParamByName('ID_MENU').AsInteger := ID_MENU;

  Try
     sqlAux.ExecSQL;

  except
      on E: EDatabaseError do
        Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
 end;
end;

procedure TfrmCreateAccount.butOkClick(Sender: TObject);
var
  varIdUser, varIdUserOLD,  varIdLanguage : Integer;
begin
  if edtFirstName.Text = '' then
  begin
     Mens_MensInf('Type your FirstName.') ;
     edtFirstName.SetFocus ;
     Exit ;
  end;


  if edtLastName.Text = '' then
  begin
     Mens_MensInf('Type your edtLastName.') ;
     edtLastName.SetFocus ;
     Exit ;
  end;

  if edtEmail.Text = '' then
  begin
     Mens_MensInf('Type your E-mail.') ;
     edtEmail.SetFocus ;
     Exit ;
  end;

  if IsValidEmailRegEx(edtEmail.Text) = False Then
  begin
     Mens_MensInf('Invalid E-mail.');
     edtEmail.SetFocus ;
     Exit ;
  end;

  if edtPassword.Text = '' then
  begin
     Mens_MensInf('Type your Password.') ;
     edtPassword.SetFocus ;
     Exit ;
  end;

  if EdtPhone.Text = '(999)999-9999' then
  begin
     Mens_MensInf('Type your Phone Number.') ;
     EdtPhone.SetFocus ;
     Exit ;
  end;

  if varCalled = 0 then
  begin

     if cmbCompany.Text = '' then
     begin
        Mens_MensInf('Main Company name field is required.') ;
        cmbCompany.SetFocus;
        Exit;
     end;


     if cxLookupComboBoxPosition.Text = '' then
      begin
        Mens_MensInf('Position name field is required.') ;
        cxLookupComboBoxPosition.SetFocus;
        Exit;
      end;

      SaveUserCompany;

      varMainID_Company := ValidMainCompany;

      if varMainID_Company = 0 then
      begin
        Mens_MensInf('Main Company selected is not allowed.') ;
        cmbCompany.SetFocus;
        Exit;
      end;
      
  end;


  if varOperacao = 'I' then
  begin
      sqlSalvar.Close;
      sqlSalvar.SQL.Clear;
      sqlSalvar.SQL.Add('insert into TBUSER  ( LASTNAME, MIDDLE_NAME, FIRST_NAME,  EMAIL, PWD, PHONE_NUMBER,  COMPUTERNAME, ACTIVE, ID_POSITION, ID_COMPANY ) ');
      sqlSalvar.SQL.Add('values ( :LASTNAME, :MIDDLE_NAME, :FIRST_NAME, :Email, :Pwd, :PHONE_NUMBER,  :COMPUTERNAME, :ACTIVE, :ID_POSITION, :ID_COMPANY)');
      sqlSalvar.Params.ParamByName('LASTNAME').AsString     :=  edtLastName.Text;
      sqlSalvar.Params.ParamByName('MIDDLE_NAME').AsString  :=  edtMiddleName.Text;
      sqlSalvar.Params.ParamByName('FIRST_NAME').AsString   :=  edtFirstName.Text;
      sqlSalvar.Params.ParamByName('Email').AsString        :=  Uppercase(Trim(edtEmail.Text));
      sqlSalvar.Params.ParamByName('Pwd').AsString          :=  UpperCase(Trim(edtPassword.Text));
      sqlSalvar.Params.ParamByName('PHONE_NUMBER').AsString :=  EdtPhone.Text;
      sqlSalvar.Params.ParamByName('COMPUTERNAME').AsString :=  UpperCase(ComputerName);

      if varCalled = 1 then
      begin
        sqlSalvar.Params.ParamByName('ACTIVE').AsString       :=  'N';
        sqlSalvar.Params.ParamByName('ID_POSITION').AsInteger :=  -1;
        sqlSalvar.Params.ParamByName('ID_COMPANY').AsInteger :=  -1;
      end
      else if varCalled = 0 then
      begin
        if rgActive.ItemIndex = 0 then
          sqlSalvar.Params.ParamByName('ACTIVE').AsString   := 'Y'
        else
          sqlSalvar.Params.ParamByName('ACTIVE').AsString   := 'N';
          sqlSalvar.Params.ParamByName('ID_POSITION').AsInteger :=  cxLookupComboBoxPosition.EditValue;
          sqlSalvar.Params.ParamByName('ID_COMPANY').AsInteger  :=  varMainID_Company;
      end;

      Try
          sqlSalvar.ExecSQL;
          Mens_MensInf( 'The User has been created' );

      except
          on E : Exception do
          begin
            if Pos('is not unique', E.Message) <> 0 then
               Mens_MensErro('E-mail already exists')
            else
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
              exit;
          end;
      end;
  end
  else
  if varOperacao = 'U' then
  begin
      sqlSalvar.Close;
      sqlSalvar.SQL.Clear;
      sqlSalvar.SQL.Add('UPDATE TBUSER  ');
      sqlSalvar.SQL.Add('SET ');
      sqlSalvar.SQL.Add('LASTNAME = :LASTNAME');
      sqlSalvar.SQL.Add(', MIDDLE_NAME = :MIDDLE_NAME');
      sqlSalvar.SQL.Add(', FIRST_NAME = :FIRST_NAME');
      sqlSalvar.SQL.Add(', EMAIL = :EMAIL');
      sqlSalvar.SQL.Add(', PWD = :PWD');
      sqlSalvar.SQL.Add(', PHONE_NUMBER = :PHONE_NUMBER');
      sqlSalvar.SQL.Add(', ACTIVE = :ACTIVE');
      sqlSalvar.SQL.Add(', ID_POSITION = :ID_POSITION');
      sqlSalvar.SQL.Add(', ID_COMPANY = :ID_COMPANY');
            
      sqlSalvar.SQL.Add(' WHERE ID_USER = :ID_USER');

      sqlSalvar.Params.ParamByName('ID_USER').AsInteger     := sqlUserID_USER.AsInteger;
      sqlSalvar.Params.ParamByName('LASTNAME').AsString     := edtLastName.Text;
      sqlSalvar.Params.ParamByName('MIDDLE_NAME').AsString  := edtMiddleName.Text;
      sqlSalvar.Params.ParamByName('FIRST_NAME').AsString   := edtFirstName.Text;
      sqlSalvar.Params.ParamByName('EMAIL').AsString        := edtEmail.Text;
      sqlSalvar.Params.ParamByName('PWD').AsString          := edtPassword.Text;
      sqlSalvar.Params.ParamByName('PHONE_NUMBER').AsString := EdtPhone.Text;
      sqlSalvar.Params.ParamByName('ID_POSITION').AsInteger := cxLookupComboBoxPosition.EditValue;
      sqlSalvar.Params.ParamByName('ID_COMPANY').AsInteger  := cmbCompany.EditValue;



      if rgActive.ItemIndex = 0 then
        sqlSalvar.Params.ParamByName('ACTIVE').AsString := 'Y'
      else sqlSalvar.Params.ParamByName('ACTIVE').AsString := 'N';


      Try
          sqlSalvar.ExecSQL;
          Mens_MensInf( 'The User has been updated' );

      except
          on E : Exception do
          begin
            if Pos('is not unique', E.Message) <> 0 then
               Mens_MensErro('E-mail already exists')
            else
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
              exit;
          end;
      end;
  end;
 {
      if DBDados.varBanco = '1' then
      begin
        sqlAux.Close;
        sqlAux.SQL.Clear;
        sqlAux.SQL.Add(' Select @@IDENTITY as ID_USER ');
        sqlAux.Open;
      end
      else if DBDados.varBanco = '2' then
      begin
        sqlAux.Close;
        sqlAux.SQL.Clear;
        sqlAux.SQL.Add(' select last_insert_rowid() as ID_USER; ');
        sqlAux.Open;
      end;

      varIdUser := sqlAux.FieldByName('ID_USER').AsInteger;

      sqlAux.Close;
      sqlAux.SQL.Clear;


      // retorna o usuario padrao do sistema
      if Dados.varBanco = '1' then
        sqlAux.SQL.Add('Select top 1 ID_USER From TBUSER Where ID_LANGUAGE  = :ID_LANGUAGE ');

      sqlAux.Open;

      varIdUserOLD  := sqlAux.FieldByName('ID_USER').AsInteger;
      sqlAux.Close;
      sqlAux.SQL.Clear;
      sqlAux.SQL.Add('Select Count(1) as QTDE From CentrodeCusto Where ID_USER = :ID_USER');
      sqlAux.Params.ParamByName('ID_USER').AsInteger := varIdUser;
      sqlAux.Open;
      if sqlAux.FieldByName('QTDE').AsInteger = 0 then
      begin

          sqlAux.Close;
          sqlAux.SQL.Clear;
          sqlAux.SQL.Add(' Insert into CentrodeCusto (CentroDeCusto, Categoria, ID_USER, ID_LANGUAGE, GRUPO, TIPO) ');
          sqlAux.SQL.Add(' Select CentroDeCusto, Categoria, ' + IntToStr(varIdUser) + ', ID_LANGUAGE, GRUPO, TIPO from CentrodeCusto where ID_USER = :ID_USER ');
          sqlAux.Params.ParamByName('ID_USER').AsInteger :=  varIdUserOLD;
          Try
            sqlAux.ExecSQL;
            Mens_MensInf( 'PARAMETERE�S USER CREATED' );
          except
            on E : Exception do
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);
          end;

      end;
  }

  if varCalled = 1 then
  begin
    //PrepareEmail;
    Close;
  end
  else
  begin
    sqlUser.Close;
    sqlUser.Open;
    cxPageControl1.ActivePage := cxTabSheet1List;
  end;


end;

procedure TfrmCreateAccount.ButSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCreateAccount.ButSalvarClick(Sender: TObject);
var
  I    : Integer;
  Menu : pMenuRec;
begin

    for I := 0 to chklistMenu.Items.Count - 1 do
    begin

      if chklistMenu.Checked[i] then
      begin
        if sqlUserSpecialPer.Locate('ID_USER;ID_MENU', VarArrayOf([sqlUserID_USER.AsInteger ,  PMenuRec(chklistMenu.Items.Objects[I]).ID_MENU]), []) then
         Continue
        else
           InsertSpecialPer(sqlUserID_USER.AsInteger,  PMenuRec(chklistMenu.Items.Objects[I]).ID_MENU);
      end
      else
      begin
         DeleteSpecialPer(sqlUserID_USER.AsInteger,  PMenuRec(chklistMenu.Items.Objects[I]).ID_MENU);
      end;

    end;

    Mens_MensInf( 'Updated with Success' );

end;

procedure TfrmCreateAccount.cxGrid1DBTableView1DblClick(Sender: TObject);
var
 I : Integer;
 Company : pCompanyRec;
 Menu    : pMenuRec;
begin
   cxPageControl1.ActivePage := cxTabSheetForm;
   varOperacao        := 'U';
   edtLastName.Text   := sqlUserLASTNAME.AsString;
   edtMiddleName.Text := sqlUserMIDDLE_NAME.AsString;
   edtFirstName.Text  := sqlUserFIRST_NAME.AsString;
   edtEmail.Text      := sqlUserEMAIL.AsString;
   EdtPhone.Text      := sqlUserPHONE_NUMBER.AsString;
   edtPassword.Text   := sqlUserPWD.AsString;


   sqlUserCompany.Close;
   sqlUserCompany.Params.ParamByName('ID_USER').AsInteger := sqlUserID_USER.AsInteger;
   sqlUserCompany.Open;
   sqlUserCompany.First;
   for I := 0 to chklistCompany.Count -1 do
   begin
      Company := pCompanyRec(chklistCompany.Items.Objects[I]);
      chklistCompany.Checked[i] := sqlUserCompany.Locate( 'ID_COMPANY', Company.ID_COMPANY );
   end;

   cmbCompany.EditValue := sqlUserID_COMPANY.AsInteger;

   sqlUserSpecialPer.Close;
   sqlUserSpecialPer.Params.ParamByName('ID_USER').AsInteger := sqlUserID_USER.AsInteger;
   sqlUserSpecialPer.Open;
   sqlUserSpecialPer.First;
   for I := 0 to chklistMenu.Count -1 do
   begin
      Menu := PMenuRec(chklistMenu.Items.Objects[I]);
      chklistMenu.Checked[i] := sqlUserSpecialPer.Locate( 'ID_MENU', Menu.ID_MENU );
   end;

   
   if sqlUserACTIVE.AsString = 'Y' then
      rgActive.ItemIndex := 0
   else rgActive.ItemIndex := 1;

   cxLookupComboBoxPosition.EditValue := sqlUserID_POSITION.AsInteger;

end;

procedure TfrmCreateAccount.FormActivate(Sender: TObject);
begin
  if varCalled = 1 then
    edtFirstName.SetFocus;
end;

procedure TfrmCreateAccount.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := 0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCreateAccount.FormShow(Sender: TObject);
begin
  if varCalled = 0 then
  begin
    sqlUser.Close;
    sqlUser.Open;
    cxPageControl1.ActivePage := cxTabSheet1List;
    varOperacao := 'X';
  end
  else
  begin
     varOperacao := 'I';
  end;

end;

procedure TfrmCreateAccount.SetupForm(varCall: Integer);
var
  Company : PCompanyRec;
  Menu    : pMenuRec;  
begin
   varCalled := varCall;
   if varCalled = 0 then
   begin
      cxTabSheet1List.TabVisible := True;
      cxTabSheetSpecialPermission.TabVisible := True;
      rgActive.Visible := True;
      lblPosition.Visible := True;
      cxLookupComboBoxPosition.Visible := True;
      sqlPosition.Close;
      sqlPosition.Open;
      pnlClient.Visible := True;

      sqlCompany.Close;
      sqlCompany.Open;
      sqlCompany.First;
      chklistCompany.Clear;

      while not sqlCompany.Eof do
      begin
        New(Company);
        Company^.ID_COMPANY    := sqlCompanyID_COMPANY.AsInteger;
        Company^.COMPANYNAME   := sqlCompanyCOMPANYNAME.AsString;
        chklistCompany.Items.AddObject(sqlCompanyCOMPANYNAME.AsString,  TObject(Company));
        sqlCompany.Next;
      end;

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

      

   end
   else
   begin
      rgActive.Visible := False;
      cxTabSheet1List.TabVisible := False;
      cxTabSheetSpecialPermission.TabVisible := False;
      lblPosition.Visible := False;
      cxLookupComboBoxPosition.Visible := False;
      sqlPosition.Close;
      pnlClient.Visible := False;
      sqlCompany.Close;
   end;
end;

procedure TfrmCreateAccount.PrepareEmail;
var
  varMsg: TStringList;
begin
  varMsg := TStringList.Create;
  try
    varMsg.Add('<HTML>');
    varMsg.Add('<HEAD>');
    varMsg.Add('<meta http-equiv="content-type" content="text/html"; charset=ISO-8859-1">');
    //varMsg.Add('<script src="https://kit.fontawesome.com/976b91e952.js" crossorigin="anonymous"></script> ');
    varMsg.Add('<style>');
    varMsg.Add('.p_link{font-family:Verdana): ');
    varMsg.Add('</style>');
    varMsg.Add('</HEAD>');
    varMsg.Add('<BODY style="font-family:Arial;font-size:11px;">');
    varMsg.Add('<p><b>BALANCE - NEW USER</b></p>');
    varMsg.Add('<BR>');
    varMsg.Add('<p><i>FULLNAME: ' + edtLastName.Text + ',' + edtFirstName.Text + '</i></p>');
    varMsg.Add('<p><i>E-MAIL: ' + edtEmail.Text + '</i></p>');
    varMsg.Add('<p><i>PHONE NUMBER: ' + EdtPhone.Text + '</i></p>');
    varMsg.Add('<BR>');
    varMsg.Add('<BR>');
    varMsg.Add('<BR>');
    varMsg.Add('<BR>');
    varMsg.Add('<p><i>LIBERAR ACESSO PARA O CLIENTE ACIMA.</i></p>');
    varMsg.Add('<BR>');
    varMsg.Add('<p>Obrigado</p>');
    varMsg.Add('<BR>');
    varMsg.Add('<p>Assistente Virtual</p>');
    varMsg.Add('<p>Customer Service Balance</p>');
    varMsg.Add('<p>(706) 315-3746</p>');
    varMsg.Add('</BODY>');
    varMsg.Add('</HTML>');
    EnviarEmail('marcosjesu@gmail.com', varMsg.Text);
  finally
    FreeAndNil(varMsg);
  end;
end;

end.
