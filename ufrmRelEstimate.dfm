object frmRelEstimate: TfrmRelEstimate
  Left = 0
  Top = 0
  Caption = 'Relatorio'
  ClientHeight = 536
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Report: TRLReport
    Left = 5
    Top = 8
    Width = 794
    Height = 1123
    DataSource = dsHeader
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 43
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLLabel1: TRLLabel
        Left = 3
        Top = 7
        Width = 95
        Height = 22
        Caption = 'Estimate #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 35
        Width = 712
        Height = 7
        DrawKind = dkLine
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      object RLDBText1: TRLDBText
        Left = 120
        Top = 9
        Width = 87
        Height = 16
        DataField = 'ESTIMATE_ID'
        DataSource = dsHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 81
      Width = 718
      Height = 216
      DataFields = 'ESTIMATE_ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 19
        BandType = btHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLLabel2: TRLLabel
          Left = 16
          Top = 1
          Width = 64
          Height = 16
          Caption = 'Company'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 424
          Top = 1
          Width = 64
          Height = 16
          Caption = 'Customer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 19
        Width = 718
        Height = 145
        BandType = btColumnHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLDBText2: TRLDBText
          Left = 16
          Top = 1
          Width = 90
          Height = 14
          DataField = 'COMPANY_NAME'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 16
          Top = 15
          Width = 110
          Height = 14
          DataField = 'COMPANY_ADRRESS'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 16
          Top = 29
          Width = 84
          Height = 14
          DataField = 'COMPANY_CITY'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 144
          Top = 29
          Width = 104
          Height = 14
          DataField = 'COMPANY_ZIPCODE'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 16
          Top = 44
          Width = 74
          Height = 14
          DataField = 'COMPANY_ST'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 424
          Top = 1
          Width = 94
          Height = 14
          DataField = 'CUSTOMER_NAME'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 424
          Top = 15
          Width = 114
          Height = 14
          DataField = 'CUSTOMER_ADDRESS'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 424
          Top = 29
          Width = 88
          Height = 14
          DataField = 'CUSTOMER_CITY'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 560
          Top = 29
          Width = 104
          Height = 14
          DataField = 'COMPANY_ZIPCODE'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 424
          Top = 44
          Width = 78
          Height = 14
          DataField = 'CUSTOMER_ST'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel4: TRLLabel
          Left = 3
          Top = 126
          Width = 32
          Height = 16
          Caption = 'Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 55
          Top = 125
          Width = 53
          Height = 16
          Caption = 'Product'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 332
          Top = 126
          Width = 25
          Height = 16
          Caption = 'Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 391
          Top = 126
          Width = 33
          Height = 16
          Caption = 'Rate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 486
          Top = 126
          Width = 53
          Height = 16
          Caption = 'Amount'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 601
          Top = 126
          Width = 48
          Height = 16
          Caption = 'Taxble'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 679
          Top = 126
          Width = 36
          Height = 16
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 3
          Top = 139
          Width = 712
          Height = 7
          DrawKind = dkLine
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
        end
        object RLLabel19: TRLLabel
          Left = 16
          Top = 90
          Width = 44
          Height = 14
          Caption = 'Vendor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText21: TRLDBText
          Left = 16
          Top = 109
          Width = 63
          Height = 10
          DataField = 'VENDOR_NAME'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel20: TRLLabel
          Left = 17
          Top = 74
          Width = 131
          Height = 10
          Caption = 'Comments or Special Instructions:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 154
          Top = 74
          Width = 92
          Height = 10
          DataField = 'ESTIMATE_COMMENTS'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel21: TRLLabel
          Left = 128
          Top = 90
          Width = 68
          Height = 14
          Caption = 'P.O Number'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 224
          Top = 90
          Width = 54
          Height = 14
          Caption = 'Ship Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 304
          Top = 90
          Width = 47
          Height = 14
          Caption = 'Ship Via'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 391
          Top = 90
          Width = 61
          Height = 14
          Caption = 'F.O.B Point'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText23: TRLDBText
          Left = 133
          Top = 110
          Width = 91
          Height = 10
          DataField = 'ESTIMATE_PONUMBER'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 181
        Width = 718
        Height = 106
        BandType = btSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLDBResult1: TRLDBResult
          Left = 615
          Top = 6
          Width = 100
          Height = 14
          Alignment = taRightJustify
          DataField = 'ITEM_AMOUT'
          DataSource = dsHeader
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
        object RLDBResult2: TRLDBResult
          Left = 594
          Top = 24
          Width = 121
          Height = 14
          Alignment = taRightJustify
          DataField = 'ESTIMATE_TAX'
          DataSource = dsHeader
          DisplayMask = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel11: TRLLabel
          Left = 520
          Top = 6
          Width = 45
          Height = 14
          Caption = 'SubTotal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 545
          Top = 26
          Width = 21
          Height = 14
          Caption = 'Tax'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 520
          Top = 45
          Width = 44
          Height = 14
          Caption = 'Shipping'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 520
          Top = 64
          Width = 45
          Height = 14
          Caption = 'Discount'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 536
          Top = 85
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
        object RLDBResult3: TRLDBResult
          Left = 570
          Top = 45
          Width = 145
          Height = 14
          Alignment = taRightJustify
          DataField = 'ESTIMATE_SHIPPING'
          DataSource = dsHeader
          DisplayMask = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBResult4: TRLDBResult
          Left = 564
          Top = 65
          Width = 151
          Height = 14
          Alignment = taRightJustify
          DataField = 'ESTIMATE_DISCOUNT'
          DataSource = dsHeader
          DisplayMask = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBResult5: TRLDBResult
          Left = 581
          Top = 85
          Width = 134
          Height = 14
          Alignment = taRightJustify
          DataField = 'ESTIMATE_TOTAL'
          DataSource = dsHeader
          DisplayMask = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 164
        Width = 718
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLDBText12: TRLDBText
          Left = 16
          Top = 0
          Width = 68
          Height = 14
          DataField = 'ITEM_ID_ITEM'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText13: TRLDBText
          Left = 55
          Top = 2
          Width = 160
          Height = 14
          DataField = 'ITEM_PRODUCT_NAME_INVOICE'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText14: TRLDBText
          Left = 304
          Top = 2
          Width = 53
          Height = 14
          Alignment = taRightJustify
          DataField = 'ITEM_QTY'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 366
          Top = 0
          Width = 58
          Height = 14
          Alignment = taRightJustify
          DataField = 'ITEM_RATE'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText16: TRLDBText
          Left = 471
          Top = 0
          Width = 68
          Height = 14
          Alignment = taRightJustify
          DataField = 'ITEM_AMOUT'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText17: TRLDBText
          Left = 557
          Top = 0
          Width = 79
          Height = 14
          Alignment = taRightJustify
          DataField = 'ITEM_TAXABLE'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText18: TRLDBText
          Left = 647
          Top = 0
          Width = 68
          Height = 14
          Alignment = taRightJustify
          DataField = 'ITEM_AMOUT'
          DataSource = dsHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 361
      Width = 718
      Height = 24
      BandType = btFooter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 50
        Top = 3
        Width = 39
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel25: TRLLabel
        Left = 9
        Top = 3
        Width = 33
        Height = 16
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 297
      Width = 718
      Height = 64
      DataSource = dsParcelas
      object RLGroup2: TRLGroup
        Left = 0
        Top = 0
        Width = 718
        Height = 64
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLBand7: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 25
          BandType = btHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLLabel16: TRLLabel
            Left = 3
            Top = 3
            Width = 43
            Height = 16
            Caption = 'Terms'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 186
            Top = 3
            Width = 62
            Height = 16
            Caption = 'Due Date'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 89
            Top = 3
            Width = 53
            Height = 16
            Caption = 'Amount'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand8: TRLBand
          Left = 0
          Top = 25
          Width = 718
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLDBText19: TRLDBText
            Left = 104
            Top = 0
            Width = 38
            Height = 14
            Alignment = taRightJustify
            DataField = 'VALUE'
            DataSource = dsParcelas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText20: TRLDBText
            Left = 192
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            DataField = 'DATE_DUE'
            DataSource = dsParcelas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLBand9: TRLBand
          Left = 0
          Top = 41
          Width = 718
          Height = 16
          BandType = btSummary
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLDBResult6: TRLDBResult
            Left = 67
            Top = 3
            Width = 75
            Height = 14
            Alignment = taRightJustify
            DataField = 'VALUE'
            DataSource = dsParcelas
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            Text = ''
          end
        end
      end
    end
  end
  object sqlHeader: TFDQuery
    Active = True
    AutoCalcFields = False
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT H.ID_PROCESS AS ESTIMATE_ID,  '
      #9'   H.DT_PROCESS AS ESTIMATE_DATE, '
      #9'   H.DT_PROCESS_VALID AS ESTIMATE_DT_VALID, '
      #9'   H.TAX AS ESTIMATE_TAX, '
      #9'   H.SHIPPING AS ESTIMATE_SHIPPING, '
      #9'   H.TOTAL AS ESTIMATE_TOTAL, '
      #9'   H.SUBTOTAL AS ESTIMATE_SUBTOTAL,'
      #9'   H.DISCOUNT as ESTIMATE_DISCOUNT, '
      #9'   H.PONUMBER AS ESTIMATE_PONUMBER,       '
      #9'   H.CUSTOMER_NAME, '
      #9'   H.CUSTOMER_PHONE,'
      #9'   H.CUSTOMER_EMAIL,'
      '           H.COMMENTS as ESTIMATE_COMMENTS,'
      #9'   H.ADDRESS1 AS CUSTOMER_ADDRESS,'
      #9'   H.ZIPCODE AS CUSTOMER_ZIPCODE,'
      #9'   H.CITY AS CUSTOMER_CITY,'
      #9'   H.ST AS CUSTOMER_ST,'
      #9'   H.PONUMBER AS CUSTOMER_PHNE,'
      #9'   '
      #9'   C.COMPANYNAME AS COMPANY_NAME,'
      #9'   C.ADDRESS1 AS COMPANY_ADRRESS,'
      #9'   C.CITY AS COMPANY_CITY,'
      #9'   C.PHONENUMBER AS COMPANY_PHONENUMBER,'
      #9'   C.EMAIL AS COMPANY_EMAIL,'
      #9'   C.ZIPCODE AS COMPANY_ZIPCODE,'
      #9'   C.ST AS COMPANY_ST,'
      #9'   '
      #9'   CT.NAME AS VENDOR_NAME, '
      #9'   CT.EMAIL AS VENDOR_EMAIL, '
      #9'   CT.PHONE AS VENDOR_PHONE,'
      #9'   '
      ''
      ''
      #9'   I.ID_PROCESS_ITEM AS ITEM_ID_ITEM,'
      #9'   P.PRODUCT_NAME_INVOICE AS ITEM_PRODUCT_NAME_INVOICE, '
      #9'   I.QTY AS ITEM_QTY, '
      #9'   I.RATE AS ITEM_RATE, '
      #9'   I.AMOUT AS ITEM_AMOUT, '
      #9'   P.COLOR AS ITEM_COLOR,'
      #9'   TP.DESCRIPTION AS ITEM_MATERIAL, '
      #9'   P.TAXBLE AS ITEM_TAXABLE, '
      #9'   P.STYLE AS ITEM_STYLE, '
      #9'   I.ROOM AS ITEM_ROOM'
      'FROM TBPROCESS_ITEM I'
      'inner join TBPROCESS H on H.ID_PROCESS = i.ID_PROCESS '
      'INNER JOIN TBCOMPANY C ON C.ID_COMPANY = H.ID_COMPANY'
      'INNER JOIN TBPRODUCT P ON P.ID_PRODUCT = I.ID_PRODUCT'
      'INNER JOIN TBTYPEBRAND TP ON TP.ID_TYPEBRAND = P.ID_TYPE'
      
        'INNER JOIN TBCONTRACTORS CT ON CT.ID_CONTRACTORS = H.ID_CONTRACT' +
        'ORS'
      'WHERE H.TABLENAME = '#39'TBESTIMATE'#39' AND H.ID_PROCESS = 38'
      'ORDER BY H.ID_PROCESS, I.ID_PROCESS_ITEM'
      '')
    Left = 504
    Top = 448
    object sqlHeaderESTIMATE_ID: TIntegerField
      FieldName = 'ESTIMATE_ID'
      Origin = 'ESTIMATE_ID'
      Required = True
    end
    object sqlHeaderESTIMATE_DATE: TDateField
      FieldName = 'ESTIMATE_DATE'
      Origin = 'ESTIMATE_DATE'
    end
    object sqlHeaderESTIMATE_DT_VALID: TDateField
      FieldName = 'ESTIMATE_DT_VALID'
      Origin = 'ESTIMATE_DT_VALID'
    end
    object sqlHeaderESTIMATE_TAX: TBCDField
      FieldName = 'ESTIMATE_TAX'
      Origin = 'ESTIMATE_TAX'
      Precision = 15
      Size = 2
    end
    object sqlHeaderESTIMATE_SHIPPING: TBCDField
      FieldName = 'ESTIMATE_SHIPPING'
      Origin = 'ESTIMATE_SHIPPING'
      Precision = 15
      Size = 2
    end
    object sqlHeaderESTIMATE_TOTAL: TBCDField
      FieldName = 'ESTIMATE_TOTAL'
      Origin = 'ESTIMATE_TOTAL'
      Precision = 15
      Size = 2
    end
    object sqlHeaderESTIMATE_SUBTOTAL: TBCDField
      FieldName = 'ESTIMATE_SUBTOTAL'
      Origin = 'ESTIMATE_SUBTOTAL'
      Precision = 15
      Size = 2
    end
    object sqlHeaderCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      Origin = 'CUSTOMER_NAME'
      Size = 100
    end
    object sqlHeaderCUSTOMER_PHONE: TStringField
      FieldName = 'CUSTOMER_PHONE'
      Origin = 'CUSTOMER_PHONE'
    end
    object sqlHeaderCUSTOMER_EMAIL: TStringField
      FieldName = 'CUSTOMER_EMAIL'
      Origin = 'CUSTOMER_EMAIL'
      Size = 100
    end
    object sqlHeaderCUSTOMER_ADDRESS: TStringField
      FieldName = 'CUSTOMER_ADDRESS'
      Origin = 'CUSTOMER_ADDRESS'
      Size = 100
    end
    object sqlHeaderCUSTOMER_ZIPCODE: TStringField
      FieldName = 'CUSTOMER_ZIPCODE'
      Origin = 'CUSTOMER_ZIPCODE'
      Size = 10
    end
    object sqlHeaderCUSTOMER_CITY: TStringField
      FieldName = 'CUSTOMER_CITY'
      Origin = 'CUSTOMER_CITY'
      Size = 50
    end
    object sqlHeaderCUSTOMER_ST: TStringField
      FieldName = 'CUSTOMER_ST'
      Origin = 'CUSTOMER_ST'
      Size = 2
    end
    object sqlHeaderCUSTOMER_PHNE: TStringField
      FieldName = 'CUSTOMER_PHNE'
      Origin = 'CUSTOMER_PHNE'
      Size = 50
    end
    object sqlHeaderCOMPANY_NAME: TStringField
      FieldName = 'COMPANY_NAME'
      Origin = 'COMPANY_NAME'
      Size = 100
    end
    object sqlHeaderCOMPANY_ADRRESS: TStringField
      FieldName = 'COMPANY_ADRRESS'
      Origin = 'COMPANY_ADRRESS'
      Size = 100
    end
    object sqlHeaderCOMPANY_CITY: TStringField
      FieldName = 'COMPANY_CITY'
      Origin = 'COMPANY_CITY'
      Size = 40
    end
    object sqlHeaderCOMPANY_PHONENUMBER: TStringField
      FieldName = 'COMPANY_PHONENUMBER'
      Origin = 'COMPANY_PHONENUMBER'
      Size = 15
    end
    object sqlHeaderCOMPANY_EMAIL: TStringField
      FieldName = 'COMPANY_EMAIL'
      Origin = 'COMPANY_EMAIL'
      Size = 100
    end
    object sqlHeaderCOMPANY_ZIPCODE: TStringField
      FieldName = 'COMPANY_ZIPCODE'
      Origin = 'COMPANY_ZIPCODE'
      Size = 10
    end
    object sqlHeaderCOMPANY_ST: TStringField
      FieldName = 'COMPANY_ST'
      Origin = 'COMPANY_ST'
      Size = 2
    end
    object sqlHeaderVENDOR_NAME: TStringField
      FieldName = 'VENDOR_NAME'
      Origin = 'VENDOR_NAME'
      Size = 50
    end
    object sqlHeaderVENDOR_EMAIL: TStringField
      FieldName = 'VENDOR_EMAIL'
      Origin = 'VENDOR_EMAIL'
      Size = 100
    end
    object sqlHeaderVENDOR_PHONE: TStringField
      FieldName = 'VENDOR_PHONE'
      Origin = 'VENDOR_PHONE'
      Size = 12
    end
    object sqlHeaderITEM_ID_ITEM: TIntegerField
      FieldName = 'ITEM_ID_ITEM'
      Origin = 'ITEM_ID_ITEM'
      Required = True
    end
    object sqlHeaderITEM_PRODUCT_NAME_INVOICE: TStringField
      FieldName = 'ITEM_PRODUCT_NAME_INVOICE'
      Origin = 'ITEM_PRODUCT_NAME_INVOICE'
      Size = 50
    end
    object sqlHeaderITEM_QTY: TBCDField
      FieldName = 'ITEM_QTY'
      Origin = 'ITEM_QTY'
      Precision = 15
      Size = 2
    end
    object sqlHeaderITEM_RATE: TBCDField
      FieldName = 'ITEM_RATE'
      Origin = 'ITEM_RATE'
      Precision = 15
      Size = 2
    end
    object sqlHeaderITEM_AMOUT: TBCDField
      FieldName = 'ITEM_AMOUT'
      Origin = 'ITEM_AMOUT'
      Precision = 15
      Size = 2
    end
    object sqlHeaderITEM_COLOR: TStringField
      FieldName = 'ITEM_COLOR'
      Origin = 'ITEM_COLOR'
      Size = 30
    end
    object sqlHeaderITEM_MATERIAL: TStringField
      FieldName = 'ITEM_MATERIAL'
      Origin = 'ITEM_MATERIAL'
      Size = 50
    end
    object sqlHeaderITEM_TAXABLE: TStringField
      FieldName = 'ITEM_TAXABLE'
      Origin = 'ITEM_TAXABLE'
      FixedChar = True
      Size = 1
    end
    object sqlHeaderITEM_STYLE: TStringField
      FieldName = 'ITEM_STYLE'
      Origin = 'ITEM_STYLE'
      Size = 40
    end
    object sqlHeaderITEM_ROOM: TStringField
      FieldName = 'ITEM_ROOM'
      Origin = 'ITEM_ROOM'
      Size = 50
    end
    object sqlHeaderESTIMATE_DISCOUNT: TBCDField
      FieldName = 'ESTIMATE_DISCOUNT'
      Origin = 'ESTIMATE_DISCOUNT'
      Precision = 15
      Size = 2
    end
    object sqlHeaderESTIMATE_COMMENTS: TStringField
      FieldName = 'ESTIMATE_COMMENTS'
      Origin = 'ESTIMATE_COMMENTS'
      Size = 4000
    end
    object sqlHeaderESTIMATE_PONUMBER: TStringField
      FieldName = 'ESTIMATE_PONUMBER'
      Origin = 'ESTIMATE_PONUMBER'
      Size = 50
    end
  end
  object dsHeader: TDataSource
    DataSet = sqlHeader
    Left = 600
    Top = 448
  end
  object sqlParcelas: TFDQuery
    Active = True
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT * FROM TBTERMS'
      'WHERE TABLENAME = '#39'TBESTIMATE'#39' AND ID_PROCESS = 38')
    Left = 120
    Top = 248
    object sqlParcelasID_TERMS: TFDAutoIncField
      FieldName = 'ID_TERMS'
      Origin = 'ID_TERMS'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlParcelasTABLENAME: TStringField
      FieldName = 'TABLENAME'
      Origin = 'TABLENAME'
      Size = 30
    end
    object sqlParcelasID_PROCESS: TIntegerField
      FieldName = 'ID_PROCESS'
      Origin = 'ID_PROCESS'
    end
    object sqlParcelasDT_PROCESS: TDateField
      FieldName = 'DT_PROCESS'
      Origin = 'DT_PROCESS'
    end
    object sqlParcelasNUM_DAYS: TIntegerField
      FieldName = 'NUM_DAYS'
      Origin = 'NUM_DAYS'
    end
    object sqlParcelasDATE_DUE: TDateField
      FieldName = 'DATE_DUE'
      Origin = 'DATE_DUE'
    end
    object sqlParcelasVALUE: TBCDField
      FieldName = 'VALUE'
      Origin = '[VALUE]'
      Precision = 12
      Size = 2
    end
    object sqlParcelasADD_DATE: TSQLTimeStampField
      FieldName = 'ADD_DATE'
      Origin = 'ADD_DATE'
    end
    object sqlParcelasUPD_DATE: TSQLTimeStampField
      FieldName = 'UPD_DATE'
      Origin = 'UPD_DATE'
    end
    object sqlParcelasID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
    end
  end
  object dsParcelas: TDataSource
    DataSet = sqlParcelas
    Left = 192
    Top = 256
  end
end
