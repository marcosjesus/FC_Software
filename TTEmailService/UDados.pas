unit UDados;

interface

uses
  System.IOUtils,
  Vcl.Forms,
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.PG,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL, FireDAC.Moni.Base,
  FireDAC.Moni.FlatFile;

type
  TFr_Dados = class(TDataModule)
    FDManager1: TFDManager;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDConnection: TFDConnection;
    sqlAux: TFDQuery;
    dsAux: TDataSource;
    sqlAux2: TFDQuery;
    FDPhysMSSQLDriverLink: TFDPhysMSSQLDriverLink;
    sqlEmails: TFDQuery;
    FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink;
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fr_Dados: TFr_Dados;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

{ TFr_Dados }



end.
