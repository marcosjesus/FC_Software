object Fr_Dados: TFr_Dados
  OldCreateOrder = False
  Height = 385
  Width = 647
  object FDManager1: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 40
    Top = 8
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorHome = 'C:\Treinamento_Service\lib'
    Left = 168
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 161
    Top = 89
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Server=mssql-155263-0.cloudclusters.net,19322'
      'Database=FLOORDB'
      'User_Name=fcdata'
      'Password=Fcdata2023'
      'DriverID=SQL13')
    LoginPrompt = False
    Left = 40
    Top = 80
  end
  object sqlAux: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      
        'SELECT table_name FROM information_schema.tables WHERE table_sch' +
        'ema = '#39'public'#39';')
    Left = 40
    Top = 144
  end
  object dsAux: TDataSource
    DataSet = sqlAux
    Left = 40
    Top = 224
  end
  object sqlAux2: TFDQuery
    Connection = FDConnection
    Left = 144
    Top = 224
  end
  object FDPhysMSSQLDriverLink: TFDPhysMSSQLDriverLink
    DriverID = 'SQL13'
    ODBCDriver = 'ODBC Driver 13 for SQL Server'
    Left = 200
    Top = 169
  end
  object sqlEmails: TFDQuery
    Connection = FDConnection
    Left = 512
    Top = 160
  end
  object FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink
    Left = 344
    Top = 176
  end
end
