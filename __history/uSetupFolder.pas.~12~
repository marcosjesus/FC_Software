unit uSetupFolder;

interface

Uses
  uClassDBGenerics,
  uFunctions,
  StrUtils ,
  System.SysUtils;

var
  Folder : TFolder;
Const
   Folder_Documents : String = 'Documents';
   Folder_Quotation : String = 'Quotation';
   Folder_Order     : String = 'Order';
   Folder_Invoice   : String = 'Invoice';
   Folder_Service   : String = 'Service';

  procedure GenerateFolder(varInitial, varID : String);

implementation



procedure GenerateFolder(varInitial, varID : String);
begin
  Folder := TFolder.Create;
  Try
      Folder.pasta         := varInitial + '_' +  ZeroLeft(varID,7);
      Folder.CreateFolder;

      Folder.subpasta      := Folder_Quotation;
      Folder.CreateSubPasta;

      Folder.subpasta      := Folder_Order;
      Folder.CreateSubPasta;

      Folder.subpasta      := Folder_Invoice;
      Folder.CreateSubPasta;

      Folder.subpasta      := Folder_Service;
      Folder.CreateSubPasta;

  Finally
     FreeAndNil(Folder);
  End;

end;

end.
