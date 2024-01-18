unit uDMReport;

interface

uses
  MensFun,
  uClassContractor,
  uSetupFolder, uFunctions,RLFilters, RLPreview, IniFiles,  Vcl.Forms, Vcl.Dialogs,
  System.SysUtils, System.Classes, RLPreviewForm, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSendEmail = record
     ID_Process    : Integer;
     ID_Customer   : Integer;
     CustomerEmail : string[100];
     Pasta         : String[100];
     TBHeader      : String[20];
   end;

  TDMReport = class(TDataModule)
    RLPreviewSetup1: TRLPreviewSetup;
    sqlAux: TFDQuery;
    procedure RLPreviewSetup1Send(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    SendEmail : Array of TSendEmail;
  end;


var
  DMReport: TDMReport;



implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDMConectDB;

{$R *.dfm}

procedure TDMReport.RLPreviewSetup1Send(Sender: TObject);
var
 Filt       : TRLCustomSaveFilter;
 Prev       : TRLPreview;
 varLocal   : String;
 varTemp    : String;
 varArquivo : String;
 Vendor     : TVendor;
 I          : Integer;
 HTML       : TStringList;
begin
   varLocal := ExtractFilePath(Application.ExeName);
   varTemp  := Folder_Documents;
   for i := 0 to Length(SendEmail)-1 do
   begin

     varGlobalEmailDestino := SendEmail[i].CustomerEmail;

     if DBDados.TPEMAIL = SALES_EMAIL then
     begin

         if (SendEmail[i].ID_Customer <> 0) then
         begin
           if SendEmail[i].TBHeader = 'TBESTIMATE' then
           begin

               varArquivo := varLocal + SendEmail[i].Pasta + '\' + Folder_Quotation + '\Quotation_' + IntToStr(SendEmail[i].ID_Process) + '.PDF';
               if FileExists(varArquivo) Then
                   DeleteFile(varArquivo);
               varGlobalSubject := 'Quotation Nr ' +  IntToStr(SendEmail[i].ID_Process);
           end
           else if SendEmail[i].TBHeader = 'TBORDER' then
           begin
               varArquivo := varLocal + SendEmail[i].Pasta  + '\' + Folder_Order + '\Order_' + IntToStr(SendEmail[i].ID_Process)+ '.PDF';
               if FileExists(varArquivo) Then
                   DeleteFile(varArquivo);
               varGlobalSubject := 'Order Nr ' +  IntToStr(SendEmail[i].ID_Process)
           end
           else if SendEmail[i].TBHeader = 'TBINVOICE' then
           begin
               varArquivo := varLocal + SendEmail[i].Pasta  + '\' + Folder_Invoice + '\Invoice_' + IntToStr(SendEmail[i].ID_Process) + '.PDF';
               if FileExists(varArquivo) Then
                   DeleteFile(varArquivo);
               varGlobalSubject := 'Invoice Nr ' +  IntToStr(SendEmail[i].ID_Process);
           end
         end
         else
         begin
              varArquivo := varLocal +  varTemp + '\Temp_' + IntToStr(SendEmail[i].ID_Process)  + '.PDF';
              if FileExists(varArquivo) Then
                 DeleteFile(varArquivo);
         end;

     end
     else
     if DBDados.TPEMAIL = WORK_EMAIL then
     begin
             varGlobalSubject   := 'Work Order Nr ' +   IntToStr(SendEmail[i].ID_Process);
             varArquivo := varLocal + SendEmail[i].Pasta  + '\' + Folder_Service + '\WorkOrder_' + IntToStr(SendEmail[i].ID_Process)+ '.PDF';
             if FileExists(varArquivo) Then
                DeleteFile(varArquivo);

     end
     else
     if DBDados.TPEMAIL = REQUESTORDER_EMAIL then
     begin

        varGlobalSubject   := 'Request Order Nr ' +   IntToStr(SendEmail[i].ID_Process);
        varArquivo := varLocal +  SendEmail[i].Pasta + '\' + Folder_RequestOrder + '\RQ_' + IntToStr(SendEmail[i].ID_Process)+ '.PDF';
        if FileExists(varArquivo) Then
          DeleteFile(varArquivo);

        sqlAux.Close;
        sqlAux.SQL.Clear;
        sqlAux.SQL.Add('Update TBREQUESTORDER  ');
        sqlAux.SQL.Add(' SET DATE_ORDERED = :DATE_ORDERED ');
        sqlAux.SQL.Add(' , EMAIL = :EMAIL ');
        sqlAux.SQL.Add(' where GROUPNUMBER = :GROUPNUMBER');
        sqlAux.Params.ParamByName('DATE_ORDERED').AsString  := FormatDateTime('mm/dd/yyyy hh:mm:ss', now);
        sqlAux.Params.ParamByName('EMAIL').AsString         := varGlobalEmailDestino;
        sqlAux.Params.ParamByName('GROUPNUMBER').AsInteger  := SendEmail[i].ID_Process;

        Try
           sqlAux.ExecSQL;
               except
            on E: EDatabaseError do
              Mens_MensErro(E.ClassName+' error raised, with message : '+E.Message);

        end;

     end
     else if DBDados.TPEMAIL = PURCHASE_ORDER then
     begin
        varGlobalSubject   := 'Purchase Order Nr ' +   IntToStr(SendEmail[i].ID_Process);

        varArquivo := varLocal +  SendEmail[i].Pasta + '\' + Folder_PurchaseOrder + '\PO_' + IntToStr(SendEmail[i].ID_Process)+ '.PDF';
        if FileExists(varArquivo) Then
          DeleteFile(varArquivo);


     end;

   end;

   Prev := TRLPreviewForm(Sender).Preview;
   Filt := TRLCustomSaveFilter(SelectedFilter);
   Filt := SaveFilterByFileName(varArquivo);
   Filt.FileName := varArquivo;
   Filt.FilterPages(Prev.Pages, 1, Prev.Pages.PageCount,'',PrintOddAndEvenPages);

   varGlobalFromEmail := 'admin@floorsofcolumbusga.com';
   Vendor := TVendor.Create;
   Try
      Vendor.Search(DBDados.varID_USER);
      varGlobalFromName  := Vendor.nome;
   Finally
      FreeAndNil(Vendor);
   End;

   varGlobalArquivo   := varArquivo;

   HTML := TStringList.Create;
   Try
    HTML.Clear;
    HTML.Add('<html>');
    HTML.Add('<head>');
    HTML.Add('<title>');
    HTML.Add('</title>');
    HTML.Add('</head>');
    HTML.Add('<body>');
    HTML.Add('<h1> This is your Invoice! </h1>');
    HTML.Add('</body>');
    HTML.Add('</html>');

    EnviarEmail(varGlobalEmailDestino, HTML.Text);

   Finally
     FreeAndNil(HTML);
   End;

end;

end.
