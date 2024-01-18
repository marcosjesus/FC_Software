object frmRelDashBoard: TfrmRelDashBoard
  Left = 0
  Top = 0
  Caption = 'frmRelDashBoard'
  ClientHeight = 472
  ClientWidth = 1124
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ReportFinance: TRLReport
    Left = 8
    Top = 8
    Width = 1123
    Height = 794
    DataSource = dsGrid
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    BeforePrint = ReportFinanceBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 109
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object lblTitle: TRLLabel
        Left = 491
        Top = 43
        Width = 64
        Height = 22
        Align = faCenter
        Alignment = taCenter
        Caption = 'Report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblSubTitle: TRLLabel
        Left = 497
        Top = 71
        Width = 51
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 16
        Top = 80
        Width = 39
        Height = 16
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 147
      Width = 1047
      Height = 24
      BandType = btColumnHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLLabel2: TRLLabel
        Left = 0
        Top = 6
        Width = 69
        Height = 14
        Caption = 'Invoice Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 103
        Top = 6
        Width = 51
        Height = 14
        Caption = 'Due Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 234
        Top = 6
        Width = 66
        Height = 14
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 450
        Top = 6
        Width = 34
        Height = 14
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object v: TRLLabel
        Left = 754
        Top = 6
        Width = 38
        Height = 14
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 977
        Top = 6
        Width = 47
        Height = 14
        Alignment = taRightJustify
        Caption = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 171
      Width = 1047
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLDBText1: TRLDBText
        Left = 2
        Top = 2
        Width = 76
        Height = 14
        DataField = 'INVOICE_DATE'
        DataSource = dsGrid
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 103
        Top = 2
        Width = 56
        Height = 14
        DataField = 'DATE_DUE'
        DataSource = dsGrid
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 234
        Top = 2
        Width = 123
        Height = 14
        DataField = 'PAYMENT_DESCRIPTION'
        DataSource = dsGrid
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 450
        Top = 3
        Width = 32
        Height = 14
        DataField = 'NAME'
        DataSource = dsGrid
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 754
        Top = 2
        Width = 99
        Height = 14
        DataField = 'PAYMENT_STATUS'
        DataSource = dsGrid
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 922
        Top = 2
        Width = 102
        Height = 14
        Alignment = taRightJustify
        DataField = 'PAYMENT_AMOUNT'
        DataSource = dsGrid
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 212
      Width = 1047
      Height = 32
      BandType = btFooter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 187
      Width = 1047
      Height = 25
      BandType = btSummary
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLDBResult1: TRLDBResult
        Left = 890
        Top = 8
        Width = 134
        Height = 14
        Alignment = taRightJustify
        DataField = 'PAYMENT_AMOUNT'
        DataSource = dsGrid
        DisplayMask = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel6: TRLLabel
        Left = 846
        Top = 8
        Width = 30
        Height = 14
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object sqlGrid: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      
        'SELECT R.ID_RECEIVABLE AS ID, R.INVOICE_DATE, R.DATE_DUE, R.PAYM' +
        'ENT_DESCRIPTION, C.LAST_NAME + '#39' '#39' + C.FIRST_NAME as NAME, R.PAY' +
        'MENT_AMOUNT, R.PAYMENT_STATUS'
      'FROM TBRECEIVABLE R'
      'INNER JOIN TBCUSTOMER C ON C.ID_CUSTOMER = R.ID_CUSTOMER')
    Left = 44
    Top = 254
    object sqlGridID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID_RECEIVABLE'
      ReadOnly = True
    end
    object sqlGridINVOICE_DATE: TDateField
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
      Required = True
    end
    object sqlGridDATE_DUE: TDateField
      FieldName = 'DATE_DUE'
      Origin = 'DATE_DUE'
      Required = True
    end
    object sqlGridPAYMENT_DESCRIPTION: TStringField
      FieldName = 'PAYMENT_DESCRIPTION'
      Origin = 'PAYMENT_DESCRIPTION'
      Size = 50
    end
    object sqlGridNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAME'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 81
    end
    object sqlGridPAYMENT_AMOUNT: TBCDField
      FieldName = 'PAYMENT_AMOUNT'
      Origin = 'PAYMENT_AMOUNT'
      Required = True
      DisplayFormat = '0.00'
      currency = True
      Precision = 15
      Size = 2
    end
    object sqlGridPAYMENT_STATUS: TStringField
      FieldName = 'PAYMENT_STATUS'
      Origin = 'PAYMENT_STATUS'
      Required = True
      Size = 10
    end
  end
  object dsGrid: TDataSource
    DataSet = sqlGrid
    Left = 44
    Top = 318
  end
end
