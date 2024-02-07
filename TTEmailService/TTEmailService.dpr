program TTEmailService;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  IdReplySMTP,
  System.IniFiles,
  System.DateUtils,
  System.SysUtils,
  System.Classes,
  idGlobal,
  IdIOHandler,
  IdIOHandlerSocket,
  IdIOHandlerStack,
  IdSSL,
  IdSSLOpenSSL,
  IdIMAP4,
  IdMessage,
  IdBaseComponent,
  IdComponent,
  IdTCPConnection,
  IdTCPClient,
  IdExplicitTLSClientServerBase,
  IdMessageClient,
  IdSMTPBase,
  IdSMTP,
  IdAttachment,
  IdText,
  IdAttachmentFile,
  System.IOUtils,
  wininet,
  Data.DB,
  UDados in 'UDados.pas' {Fr_Dados: TDataModule};
type
  TSendEmail = record
     Subject       : string[100];
     ID_Process    : Integer;
     ID_Customer   : Integer;
     CustomerEmail : string[100];
     Pasta         : String[100];
     TBHeader      : String[20];
   end;

var
  FFormatoUSA: TFormatSettings;
  varARQUIVOPAI, varARQUIVOFILHO, varARQUIVOFILHO2  : String;
  varIMAGELOGO   : String;
  varPASTA_LOG   : String;
  ArqEmail       : TIniFile;
  varPai         : TStringList;
  varFilho       : TStringList;
  varFilho2      : TStringList;

  TPEMAIL        : String;
  SendEmail : Array of TSendEmail;


Const
  PAYABLE_REPORT      = 'Access_PayAble_E-mails';
  RECEIVABLE_REPORT   = 'Access_Receivable_E-mails';

function CheckInternetConnection : boolean;
  var
     origin : cardinal;
  begin
     result := InternetGetConnectedState(@origin,0);

     //connections origins by origin value
     //NO INTERNET CONNECTION              = 0;
     //INTERNET_CONNECTION_MODEM           = 1;
     //INTERNET_CONNECTION_LAN             = 2;
     //INTERNET_CONNECTION_PROXY           = 4;
     //INTERNET_CONNECTION_MODEM_BUSY      = 8;
  end;




function Zero(Texto: string; Quant: Integer): string;
// Zeros a Esquerda de uma STRING - Mar�o de 2002
begin
  // Cola Zeros a Esquerda de um N�mero quantos forem necess�rios
  // Texto = 'TEXTO INFORMADO'
  // QUANT = Quantidade de Zeros a Esquerda

  while Length(Texto) < Quant do
    Texto := '0' + Texto;

  Result := Texto;
end;

function MyDocumentsPath: String;
begin

//  Result := System.IOUtils.TPath.GetDocumentsPath;
  Result := ExtractFilePath(ParamStr(0));

  varIMAGELOGO := ''; //Result + 'tecnotitan-logo.png';

  if not System.IOUtils.TDirectory.Exists(Result) then
    System.IOUtils.TDirectory.CreateDirectory(Result);

  if not System.IOUtils.TDirectory.Exists(Result + 'log\') then
    System.IOUtils.TDirectory.CreateDirectory(Result + 'log\');

  varPASTA_LOG := Result + 'log\';


end;

procedure doSaveLog(lPath,  Msg: String);
Var
 loLista : TStringList;
 varDataHora : String;
 varArquivo  : String;
begin
 varDataHora           := FormatDateTime('ddmmyyyy',Now);
 varArquivo            := '\log_' +  varDataHora  + '.log';
 loLista := TStringList.Create;
 try
   try
   if FileExists(lPath + varArquivo) Then
     loLista.LoadFromFile(lPath + varArquivo);

     loLista.Add(timetostr(now) + ';' + Msg);
   except
    on e: exception do
      loLista.add(timetostr(now) + ': Erro ' + E.Message);
   end;
 Finally
    loLista.SaveToFile(lPath + varArquivo);
    loLista.Free;
 end;

end;


function LoadEmailAPIKEY : String;
var
  varResultado : String;
begin
   ArqEmail  := TIniFile.Create(MyDocumentsPath+'\sendgrid.email');
   Try
     varResultado  := ArqEmail.ReadString('SENDGRID','KEY', '');
   Finally
     ArqEmail.Free;
   End;
   result := varResultado;
end;

procedure LoadEmail;
var
 varID_MENU, I : Integer;
begin

    with Fr_Dados do
    begin

    Try
      sqlEmails.Close;
      sqlEmails.SQL.Clear;
      sqlEmails.SQL.Add('Select ISNULL(ID_MENU,0) as ID_MENU From TBMENU where Actions = :Actions');
      sqlEmails.Params.ParamByName('Actions').AsString := TPEMAIL;
      sqlEmails.Open;
      if not sqlEmails.IsEmpty then
          varID_MENU := sqlEmails.FieldByName('ID_MENU').AsInteger;


      if varID_MENU <> 0 then
      begin
          sqlEmails.Close;
          sqlEmails.SQL.Clear;
          sqlEmails.SQL.Add('SELECT U.ID_USER, (U.FIRST_NAME + '' '' + U.LASTNAME) AS USUARIO, EMAIL  FROM ');
          sqlEmails.SQL.Add('TBUSER_SPECIAL_PER E ');
          sqlEmails.SQL.Add('INNER JOIN TBUSER U ON U.ID_USER = E.ID_USER ');
          sqlEmails.SQL.Add('WHERE E.ID_MENU = :ID_MENU ');
          sqlEmails.Params.ParamByName('ID_MENU').AsInteger := varID_MENU;
          sqlEmails.Open;
          if not sqlEmails.IsEmpty then
          begin
            SetLength(SendEmail, sqlEmails.RecordCount);
            sqlEmails.First;
            I := 0;
            while not sqlEmails.eof do
            begin
               SendEmail[I].ID_Process    := sqlEmails.FieldByName('ID_USER').AsInteger;
               SendEmail[I].CustomerEmail := sqlEmails.FieldByName('EMAIL').AsString;
               SendEmail[I].ID_Customer   := sqlEmails.FieldByName('ID_USER').AsInteger;
               SendEmail[I].TBHeader      := '';
               Inc(I);
               sqlEmails.Next;
            end;

          end;

      end;

    Finally
      sqlEmails.Close;
    End;
  end;
end;

function EnviarEmail( varSubject, varEmail : String) : Boolean;
var
  SSLHandler   : TIdSSLIOHandlerSocketOpenSSL;
  emMessage    : TIdMessage;
  emSMTP       : TIdSMTP;
  Attachment   : TIdAttachment;
  bEnvio       : Boolean;

begin
  emSMTP     := TIdSMTP.Create;
  emMessage := TIdMessage.Create;
  SSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  bEnvio := True;
  Try

   SSLHandler.MaxLineAction          := maException;
   SSLHandler.SSLOptions.Method      := sslvTLSv1;
   SSLHandler.SSLOptions.Mode        := sslmUnassigned;
   SSLHandler.SSLOptions.VerifyMode  := [];
   SSLHandler.SSLOptions.VerifyDepth := 0;

   emSMTP.IOHandler := SSLHandler;
   emSMTP.Host      := 'smtp.sendgrid.net';
   emSMTP.Port      := 587;
   emSMTP.Username  := 'apikey';
   emSMTP.Password  := LoadEmailAPIKEY;

   emSMTP.Connect;
   Try

      if emSMTP.Connected then
      begin
         with emMessage do
         begin
           Clear;
           Body.Clear;
           Recipients.Clear;
           Subject                := varSubject;
           From.Address           := 'kingc@floorsofcolumbusga.com';
           From.Name              := 'FC SOFTWARE';
           Recipients.Add.Address := varEmail;
           {
           FDQueryEmail.Close;
           FDQueryEmail.Filtered := False;
           FDQueryEmail.Filter   := 'TSOP_ATIVO = ''S''';
           FDQueryEmail.Filtered := True;
           FDQueryEmail.Open;

           while not FDQueryEmail.Eof do
           begin
             BccList.Add.Address := FDQueryEmail.FieldByName('TSOP_EMAIL').AsString;
             FDQueryEmail.Next;
           end;
            }
           ContentType            := 'multipart/alternative';
           ContentDisposition     := 'inline';
           Encoding               := meMIME;
         end;

         with TIdText.Create(emMessage.MessageParts) do
         begin
            Body.Text       := 'This message contains HTML and images.';
            ContentTransfer := '7bit';
            ContentType     := 'text/plain';
         end;

         with TIdText.Create(emMessage.MessageParts) do
         begin
            ContentType     := 'multipart/related';
            Body.Clear;
         end;

         with TIdText.Create(emMessage.MessageParts) do
         begin
           Body.Clear;
           Body.Text       := varPai.Text;
           ContentTransfer := '7bit';
           ContentType     := 'text/html';
           ParentPart      := 1;
         end;

        // Attachment := TIdAttachmentFile.Create(emMessage.MessageParts, varGlobalArquivo);

         try

             emSMTP.Send(emMessage);

         except

             on E : EIdSMTPReplyError do
             begin
               bEnvio := False;
               exception.Create(E.ErrorCode.ToString + ' : ' + E.Message);
            end;

             on E : Exception do
             begin
                bEnvio := False;
                exception.Create(E.ClassName+' error raised, with message : '+E.Message);
             end;
         end;
      end;

   Finally
     emSMTP.Disconnect;
   End;
    result := bEnvio;
  Finally
     FreeAndNil(emMessage);
     FreeAndNil(emSMTP);
     FreeAndNil(SSLHandler);
  End;

end;


procedure EnviaEmail2 (varSubject, varEmail : String);
var
  emSMTP : TIdSMTP;
  emMessage : TIdMessage;
  SSLHandler: TIdSSLIOHandlerSocketOpenSSL;
  bEnvio : Boolean;

begin
        emSMTP     := TIdSMTP.Create;
        emMessage := TIdMessage.Create;
        SSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
        bEnvio := True;
        Try

         SSLHandler.MaxLineAction          := maException;
         SSLHandler.SSLOptions.Method      := sslvTLSv1;
         SSLHandler.SSLOptions.Mode        := sslmUnassigned;
         SSLHandler.SSLOptions.VerifyMode  := [];
         SSLHandler.SSLOptions.VerifyDepth := 0;


         emSMTP.IOHandler := SSLHandler;
         emSMTP.Host      := 'smtp.sendgrid.net';
         emSMTP.Port      := 587;
         emSMTP.Username  := 'apikey';
         emSMTP.Password  := LoadEmailAPIKEY;
                emSMTP.Connect;
                Try
                  if emSMTP.Connected then
                  begin
                     with emMessage do
                     begin
                       Clear;
                       Body.Clear;
                       Recipients.Clear;
                       Subject                := varSubject;
                       From.Address           := 'kingc@floorsofcolumbusga.com';
                       From.Name              := 'FC Software';
                       Recipients.Add.Address := varEmail;
                       ContentType            := 'multipart/alternative';
                       ContentDisposition     := 'inline';
                       Encoding               := meMIME;
                     end;

                     with TIdText.Create(emMessage.MessageParts) do
                     begin
                        Body.Text       := 'This message contains HTML and images.';
                        ContentTransfer := '7bit';
                        ContentType     := 'text/plain';
                     end;

                     with TIdText.Create(emMessage.MessageParts) do
                     begin
                        ContentType     := 'multipart/related';
                        Body.Clear;
                     end;

                     with TIdText.Create(emMessage.MessageParts) do
                     begin
                       Body.Clear;
                       Body.Text       :=  varPai.Text;
                       ContentTransfer := '7bit';
                       ContentType     := 'text/html';
                       ParentPart      := 1;
                     end;
                     {
                     with TIdAttachmentFile.Create(emMessage.MessageParts,  varIMAGELOGO ) do
                       begin
                         ContentType        := 'image/jpeg';
                         ContentDisposition := 'inline';
                         ContentTransfer    := 'base64';
                         ContentID          := '<tecnotitan-logo.png>';
                         ParentPart         := 1;
                     end;
                      }
                     bEnvio := False;
                     try
                         emSMTP.Send(emMessage);
                         bEnvio := True;
                     except
                         on e: exception do
                           begin
                          //   Writeln( ' ERROR SENDING EMAIL TO: ', sqlAux.FieldByName('broker_email').AsString + #13#10 + E.Message );
                          //   doSaveLog ( varPASTA_LOG,   ' ERROR SENDING EMAIL TO: ' + sqlAux.FieldByName('broker_email').AsString + #13#10 + E.Message );
                           end;
                     end;
                     {
                     if bEnvio  then
                     begin
                       sqlAux2.Close;
                       sqlAux2.SQL.Clear;
                       sqlAux2.SQL.Add('Update ttlead_ttlead Set sent_email = True WHERE  ID = :ID');
                       sqlAux2.Params.ParamByName('ID').AsInteger := sqlAux.FieldByName('lead_id').AsInteger;
                       try
                          sqlAux2.ExecSQL;
                          Writeln('Enviado OK: ',sqlAux.FieldByName('broker_email').AsString);
                          doSaveLog ( varPASTA_LOG, 'SUCESS: ' + sqlAux.FieldByName('broker_email').AsString);
                       except

                          on E: Exception do
                          begin

                            Writeln( E.Message );

                          end;

                       end;

                     end;
                     }
                  end;
              Finally
                 emSMTP.Disconnect;
              End;
  Finally
     FreeAndNil(emMessage);
     FreeAndNil(emSMTP);
     FreeAndNil(SSLHandler);
  End;

end;


procedure PrepareEmail;
var
  varTotal : Double;
  I : Integer;
  varPeriodo : String;
begin

  Fr_Dados := TFr_Dados.Create(nil);

  Try
    with Fr_Dados do
    begin

      Writeln('Config FDConnection');
      if TFile.Exists( MyDocumentsPath + 'FloorDB.ini' ) then
        FDConnection.Params.LoadFromFile( MyDocumentsPath + '\FloorDB.ini' );

      Writeln( 'Open FDConnection' );

      Try
         FDConnection.Open;
      Except on E: Exception do
         Begin
           Writeln( ' ERROR TO CONNECT THE DATABASE: ' + E.Message );
           doSaveLog ( varPASTA_LOG, '  ERROR TO CONNECT THE DATABASE: ' + E.Message );
           Exit;
         End;

      End;

      if TPEMAIL = PAYABLE_REPORT
      then Writeln( 'Selecting Account Payable Data' )
      else Writeln( 'Selecting Account Receivable Data' );

      sqlAux.Close;
      sqlAux.SQL.Clear;
      //lead
      if TPEMAIL = PAYABLE_REPORT
      then sqlAux.SQL.add('SELECT DATATRANSACAO, FAVORECIDO, ISNULL(NUM_PARCELA,1) AS NUM_PARCELA , VALOR * -1 AS VALOR FROM TBTRANSACAO WHERE TIPO = :TIPO AND FORECAST = 1')
      else sqlAux.SQL.add('SELECT DATATRANSACAO, FAVORECIDO, ISNULL(NUM_PARCELA,1) AS NUM_PARCELA , VALOR  AS VALOR FROM TBTRANSACAO WHERE TIPO = :TIPO AND FORECAST = 1');

//      sqlAux.SQL.add(' AND  DATEPART(WEEK, DATATRANSACAO) = :WEEK');
//      sqlAux.Params.ParamByName('WEEK').AsInteger :=  WeekOfTheYear(Now);

      sqlAux.SQL.add(' AND   DATATRANSACAO <= :DATATRANSACAO');
      sqlAux.Params.ParamByName('DATATRANSACAO').AsDate :=  Now + 6;

      if TPEMAIL = PAYABLE_REPORT
      then sqlAux.Params.ParamByName('TIPO').AsString := 'EXPENSE'
      ELSE sqlAux.Params.ParamByName('TIPO').AsString := 'INCOME (NET)';

      try
        sqlAux.Open;
           Except on E: Exception do
         Begin
           Writeln( ' ERROR TO OPEN THE QUERY: ' + E.Message );
           doSaveLog ( varPASTA_LOG, '  ERROR TO OPEN THE QUERY: ' + E.Message );
           Exit;
         End;
      End;

      if not sqlAux.IsEmpty then
      begin
          varPai      := TStringList.Create;
          varFilho    := TStringList.Create;
          varFilho2   := TStringList.Create;

          varPai.Clear;
          varFilho.Clear;
          varFilho2.Clear;
          varFilho2.LoadFromFile(varARQUIVOFILHO2);

          Writeln( 'Creating Email Body' );
          varPai.LoadFromFile(varARQUIVOPAI);

          if TPEMAIL = PAYABLE_REPORT
          then varPai.Text := StringReplace(varPai.Text,'%Account%', 'Account Payable',[rfReplaceAll])
          else varPai.Text := StringReplace(varPai.Text,'%Account%', 'Account Receivable',[rfReplaceAll]);

          varTotal := 0;
          while not sqlAux.Eof  do
          begin
                varFilho.LoadFromFile(varARQUIVOFILHO);

                varFilho.Text := StringReplace(varFilho.Text,'%DateDue%',       sqlAux.FieldByName('DATATRANSACAO').AsString,[rfReplaceAll]);
                varFilho.Text := StringReplace(varFilho.Text,'%Beneficiary%',   sqlAux.FieldByName('FAVORECIDO').AsString ,[rfReplaceAll]);
                varFilho.Text := StringReplace(varFilho.Text,'%Installment%',   sqlAux.FieldByName('NUM_PARCELA').AsString,[rfReplaceAll]);
                varFilho.Text := StringReplace(varFilho.Text,'%Amount%',        FloatToStrF(sqlAux.FieldByName('VALOR').AsFloat, ffCurrency, 4, 2)  ,[rfReplaceAll]);

                varPai.Add( varFilho.Text );
                varFilho.Clear;
                varTotal := varTotal + sqlAux.FieldByName('VALOR').AsFloat;
                sqlAux.Next;
          end;
          varFilho2.Text := StringReplace(varFilho2.Text,'%Total%', FloatToStrF(varTotal,  ffCurrency, 4, 2) ,[rfReplaceAll]);
          varPai.Add(  varFilho2.Text );

      FDConnection.Close;
    end;

    Writeln( 'Loading E-mails' );
    LoadEmail;

    varPeriodo := 'Balance Due up to ' +  DateToStr(StartOfTheWeek(Now) + 6);

    Writeln( 'Sending E-mails' );
    for i := 0 to Length(SendEmail)-1 do
    begin

        if TPEMAIL = PAYABLE_REPORT then
        begin
           if EnviarEmail('Accounts Payable ' + varPeriodo, SendEmail[I].CustomerEmail ) Then
             doSaveLog ( varPASTA_LOG, ' Accounts Payable email has been Sent to ' + SendEmail[I].CustomerEmail );
        end
        else if TPEMAIL = RECEIVABLE_REPORT then
        begin
           If EnviarEmail('Accounts Receivable ' + varPeriodo, SendEmail[I].CustomerEmail) Then
             doSaveLog ( varPASTA_LOG, ' Accounts Receivable email  has been Sent to ' + SendEmail[I].CustomerEmail );
        end;
 {


         if TPEMAIL = PAYABLE_REPORT then
        begin
           if EnviarEmail('Accounts Payable ' + varPeriodo, 'marcos.luiz.jesus@hotmail.com'  ) Then
             doSaveLog ( varPASTA_LOG, ' Accounts Payable email has been Sent to ' + 'marcos.luiz.jesus@hotmail.com'  );
        end
        else if TPEMAIL = RECEIVABLE_REPORT then
        begin
           If EnviarEmail('Accounts Receivable ' + varPeriodo, 'marcos.luiz.jesus@hotmail.com' ) Then
             doSaveLog ( varPASTA_LOG, ' Accounts Receivable email has been Sent to ' + 'marcos.luiz.jesus@hotmail.com'  );
        end;

  }

    end;

  //  varPai.SaveToFile('c:\temp\Finance_File.html');
  end;
  Finally
    FreeAndNil(varPai);
    FreeAndNil(varFilho);
    FreeAndNil(varFilho2);
    FreeAndNil(Fr_Dados);
  End;
end;


begin


  FFormatoUSA := TFormatSettings.Create;

  FFormatoUSA.ThousandSeparator := ',';
  FFormatoUSA.DecimalSeparator := '.';
  FFormatoUSA.CurrencyDecimals := 2;
  FFormatoUSA.DateSeparator := '/';
  FFormatoUSA.ShortDateFormat := 'yyyy/mm/dd';
  FFormatoUSA.LongDateFormat := 'yyyy/mm/dd';

  if not ParamStr(2).IsEmpty then
  begin

    FFormatoUSA.ShortDateFormat := ParamStr(2);
    FFormatoUSA.LongDateFormat := ParamStr(2);

  end;

  FFormatoUSA.TimeSeparator := ':';
  FFormatoUSA.TimeAMString := 'AM';
  FFormatoUSA.TimePMString := 'PM';
  FFormatoUSA.ShortTimeFormat := 'hh:mm';
  FFormatoUSA.LongTimeFormat := 'hh:mm:ss';
  FFormatoUSA.CurrencyString := 'U$ ';
  FormatSettings := FFormatoUSA;

  MyDocumentsPath;

  if CheckInternetConnection = False then
  begin
     Writeln(' Error Internet Connection');
     doSaveLog ( varPASTA_LOG, ' Error Internet Connection');
     Exit;
  end;


  if ParamStr(1).IsEmpty then
  begin

    Writeln( 'Informe um parametro.' );
    Sleep(10000);

  end
  else
  if ParamStr(1).Equals('-payable') then
  begin

    try
        varARQUIVOPAI    := MyDocumentsPath  + 'payable_header_email.html';
        varARQUIVOFILHO  := MyDocumentsPath  + 'finance_body.html';
        varARQUIVOFILHO2 := MyDocumentsPath  + 'finance_Total.html';
        TPEMAIL := PAYABLE_REPORT;

        PrepareEmail;

    except

      on E: Exception do
      begin

        Writeln(E.ClassName, ' : ', E.Message);
        Sleep(60000);

      end;

    end;

  end
  else
  if ParamStr(1).Equals('-receivable') then
  begin

    try
        varARQUIVOPAI    := MyDocumentsPath  + 'receivable_header_email.html';
        varARQUIVOFILHO  := MyDocumentsPath  + 'finance_body.html';
        varARQUIVOFILHO2 := MyDocumentsPath  + 'finance_Total.html';
        TPEMAIL := RECEIVABLE_REPORT;

        PrepareEmail;

    except

      on E: Exception do
      begin

        Writeln(E.ClassName, ' : ', E.Message);
        Sleep(60000);

      end;

    end;

  end;

end.
