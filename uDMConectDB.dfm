object DBDados: TDBDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 438
  Width = 538
  object FDManager: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 432
    Top = 97
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 432
    Top = 34
  end
  object FDPhysMSSQLDriverLink: TFDPhysMSSQLDriverLink
    DriverID = 'SQL13'
    ODBCDriver = 'ODBC Driver 13 for SQL Server'
    Left = 200
    Top = 153
  end
  object sqlMensagem: TFDQuery
    Connection = FDConnection
    Left = 256
    Top = 336
  end
  object FDSQLiteSecurity: TFDSQLiteSecurity
    DriverLink = FDPhysSQLiteDriverLink
    ToPassword = '1234'
    Left = 432
    Top = 264
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=FLOORDB'
      'User_Name=fcdata'
      'Password=Fcdata2023'
      'Server=mssql-155263-0.cloudclusters.net,19322'
      'DriverID=SQL13')
    LoginPrompt = False
    Left = 440
    Top = 176
  end
  object FDPhysSQLiteDriverLink: TFDPhysSQLiteDriverLink
    DriverID = 'SQLite'
    VendorLib = 
      'C:\Users\aluga.com\Documents\RAD Studio\Projects\CashFlow\sqlite' +
      '3.dll'
    Left = 224
    Top = 16
  end
  object SqlAux: TFDQuery
    Connection = FDConnection
    Left = 424
    Top = 336
  end
  object sqlAux2: TFDQuery
    Connection = FDConnection
    Left = 360
    Top = 344
  end
  object sqlSaldo: TFDQuery
    Connection = FDConnection
    Left = 192
    Top = 80
  end
end
