object frmSupplierInvoice: TfrmSupplierInvoice
  Left = 0
  Top = 0
  Caption = 'Manufactory Invoice'
  ClientHeight = 543
  ClientWidth = 1154
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageMaster: TcxPageControl
    Left = 0
    Top = 0
    Width = 1154
    Height = 508
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheetList
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 504
    ClientRectLeft = 4
    ClientRectRight = 1150
    ClientRectTop = 24
    object cxTabSheetList: TcxTabSheet
      Caption = 'Invoice List'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 0
      ParentFont = False
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1146
        Height = 480
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
          DataController.DataSource = dsGrid
          DataController.KeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'TOTAL'
              Column = cxGrid1DBTableView1TOTAL
            end
            item
              Kind = skSum
              FieldName = 'FREIGHT'
              Column = cxGrid1DBTableView1FREIGHT
            end
            item
              Kind = skSum
              FieldName = 'TAX'
              Column = cxGrid1DBTableView1TAX
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.Indicator = True
          object cxGrid1DBTableView1INVOICE: TcxGridDBColumn
            DataBinding.FieldName = 'INVOICE #'
            Width = 100
          end
          object cxGrid1DBTableView1MANUFACTORY: TcxGridDBColumn
            DataBinding.FieldName = 'MANUFACTORY'
            Width = 150
          end
          object cxGrid1DBTableView1COMPANY: TcxGridDBColumn
            DataBinding.FieldName = 'COMPANY'
            Width = 150
          end
          object cxGrid1DBTableView1INVOICEDATE: TcxGridDBColumn
            DataBinding.FieldName = 'INVOICE DATE'
          end
          object cxGrid1DBTableView1SALESREP: TcxGridDBColumn
            DataBinding.FieldName = 'SALESREP'
            Width = 100
          end
          object cxGrid1DBTableView1FREIGHT: TcxGridDBColumn
            Caption = 'FREIGHT U$'
            DataBinding.FieldName = 'FREIGHT'
          end
          object cxGrid1DBTableView1TAX: TcxGridDBColumn
            Caption = 'TAX U$'
            DataBinding.FieldName = 'TAX'
          end
          object cxGrid1DBTableView1SUBTOTAL: TcxGridDBColumn
            Caption = 'MERCHANDISE U$'
            DataBinding.FieldName = 'MERCHANDISE'
          end
          object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
            Caption = 'TOTAL U$'
            DataBinding.FieldName = 'TOTAL'
          end
          object cxGrid1DBTableView1STATUS: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS'
            Width = 100
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheetForm: TcxTabSheet
      Caption = 'Invoice Form'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      TabVisible = False
      object pnlBtnLateral: TPanel
        Left = 1064
        Top = 179
        Width = 82
        Height = 301
        Align = alRight
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object ButNovoItem: TcxButton
          Left = 2
          Top = 7
          Width = 74
          Height = 25
          Hint = '|Inclui novo contato para esse cliente.'
          Caption = 'Add'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = ButNovoItemClick
        end
        object ButAlterarItem: TcxButton
          Left = 2
          Top = 33
          Width = 74
          Height = 25
          Hint = '|Altera os dados do contato selecionado.'
          Caption = 'Edit'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = ButAlterarItemClick
        end
        object ButExcluirItem: TcxButton
          Left = 2
          Top = 59
          Width = 74
          Height = 25
          Hint = '|Apaga os dados do contato selecionado.'
          Caption = 'Delete'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = ButExcluirItemClick
        end
        object ButSalvarItem: TcxButton
          Left = 2
          Top = 115
          Width = 74
          Height = 25
          Hint = '|Confirma Inclus'#227'o/Altera'#231#227'o do contato.'
          Caption = 'Save'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = ButSalvarItemClick
        end
        object ButCAncelarItem: TcxButton
          Left = 2
          Top = 146
          Width = 74
          Height = 25
          Hint = '|Ignora Inclus'#227'o/Altera'#231#227'o do contato.'
          Caption = 'Cancel'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = ButCAncelarItemClick
        end
      end
      object cxPageItem: TcxPageControl
        Left = 0
        Top = 179
        Width = 1064
        Height = 301
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = cxTabSheetGrade
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 297
        ClientRectLeft = 4
        ClientRectRight = 1060
        ClientRectTop = 24
        object cxTabSheetGrade: TcxTabSheet
          Caption = 'Items'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 0
          ParentFont = False
          object cxGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 1056
            Height = 273
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object cxGrid2DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsItem
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'AMOUNT'
                  Column = cxGrid2DBTableView1AMOUNT
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.FocusRect = False
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGrid2DBTableView1ID_SUP_INVOICEITEM: TcxGridDBColumn
                Caption = 'Item ID'
                DataBinding.FieldName = 'ID_SUP_INVOICEITEM'
                Width = 100
              end
              object cxGrid2DBTableView1ID_PRODUCT: TcxGridDBColumn
                Caption = 'Product ID'
                DataBinding.FieldName = 'ID_PRODUCT'
                Width = 100
              end
              object cxGrid2DBTableView1PRODUCTTYPE: TcxGridDBColumn
                Caption = 'Product Type'
                DataBinding.FieldName = 'PRODUCT TYPE'
                Width = 100
              end
              object cxGrid2DBTableView1PRODUCTSTYLE: TcxGridDBColumn
                Caption = 'Product Style'
                DataBinding.FieldName = 'PRODUCT STYLE'
                Width = 100
              end
              object cxGrid2DBTableView1PRODUCT_NAME: TcxGridDBColumn
                Caption = 'Product'
                DataBinding.FieldName = 'PRODUCT_NAME'
                Width = 200
              end
              object cxGrid2DBTableView1WIDTH: TcxGridDBColumn
                Caption = 'Width'
                DataBinding.FieldName = 'WIDTH'
                Width = 100
              end
              object cxGrid2DBTableView1HEIGHT: TcxGridDBColumn
                Caption = 'Length'
                DataBinding.FieldName = 'HEIGHT'
                Width = 100
              end
              object cxGrid2DBTableView1QTY: TcxGridDBColumn
                Caption = 'Qty'
                DataBinding.FieldName = 'QTY'
                Width = 100
              end
              object cxGrid2DBTableView1TOTALAREA: TcxGridDBColumn
                Caption = 'Total Area'
                DataBinding.FieldName = 'TOTALAREA'
                Width = 100
              end
              object cxGrid2DBTableView1UNITPRICE: TcxGridDBColumn
                Caption = 'Unit Price'
                DataBinding.FieldName = 'UNITPRICE'
              end
              object cxGrid2DBTableView1AMOUNT: TcxGridDBColumn
                Caption = 'Amount'
                DataBinding.FieldName = 'AMOUNT'
              end
              object cxGrid2DBTableView1ROLLNUMBER: TcxGridDBColumn
                Caption = 'RollNumber'
                DataBinding.FieldName = 'ROLLNUMBER'
                Width = 100
              end
              object cxGrid2DBTableView1DYELOT: TcxGridDBColumn
                Caption = 'Dye Lot'
                DataBinding.FieldName = 'DYELOT'
                Width = 100
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView1
            end
          end
        end
        object cxTabSheetItemForm: TcxTabSheet
          Caption = 'Form'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 1
          ParentFont = False
          TabVisible = False
          object Label5: TLabel
            Left = 17
            Top = 14
            Width = 37
            Height = 13
            Caption = 'Product'
          end
          object Label40: TLabel
            Left = 17
            Top = 66
            Width = 33
            Height = 16
            Caption = 'Width'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 135
            Top = 66
            Width = 38
            Height = 16
            Caption = 'Lenght'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label41: TLabel
            Left = 247
            Top = 66
            Width = 60
            Height = 16
            Caption = 'Total Area'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 357
            Top = 66
            Width = 110
            Height = 16
            Caption = 'Number of Box/Roll'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 494
            Top = 66
            Width = 54
            Height = 16
            Caption = 'Unit Price'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 322
            Top = 130
            Width = 39
            Height = 13
            Caption = 'Quantity'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 461
            Top = 131
            Width = 17
            Height = 13
            Caption = 'sqft'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 649
            Top = 66
            Width = 51
            Height = 16
            Caption = 'SubTotal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 17
            Top = 154
            Width = 70
            Height = 16
            Caption = 'Roll Number'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 169
            Top = 154
            Width = 42
            Height = 16
            Caption = 'Dye Lot'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 17
            Top = 254
            Width = 144
            Height = 16
            Caption = 'Total Quantaty Required:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblqtyrequired: TLabel
            Left = 173
            Top = 254
            Width = 8
            Height = 16
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtProduct: TEditBusca
            Left = 17
            Top = 33
            Width = 492
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
            OnClick = edtProductClick
            ClickOnArrow = True
            ClickOnReturn = False
            bs_HeightForm = 0
            bs_WidthForm = 0
            bs_SetCPF = False
            bs_SetCNPJ = False
            bs_SetPlaca = False
            bs_LoadConsulta = False
            bs_Distinct = False
            bs_SetColor = False
            bs_NomeCor = clBlack
            bs_IndiceCampo = 0
            bs_Imagem = False
            bs_HideTop = False
            bs_Top100 = False
            bs_Script = False
          end
          object edtwidth: TcxCurrencyEdit
            Left = 17
            Top = 88
            ParentFont = False
            Properties.MaxLength = 5
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            OnEnter = edtwidthEnter
            Width = 64
          end
          object edtheight: TcxCurrencyEdit
            Left = 135
            Top = 88
            ParentFont = False
            Properties.MaxLength = 5
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            OnEnter = edtheightEnter
            OnExit = edtheightExit
            Width = 66
          end
          object edttotalarea: TcxCurrencyEdit
            Left = 247
            Top = 88
            ParentFont = False
            Properties.MaxLength = 5
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 85
          end
          object EdtQty: TSpinEdit
            Left = 371
            Top = 88
            Width = 84
            Height = 29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxValue = 0
            MinValue = 0
            ParentFont = False
            TabOrder = 4
            Value = 0
            OnChange = EdtQtyChange
          end
          object edtUnitPrice: TcxCurrencyEdit
            Left = 494
            Top = 88
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 5
            OnExit = edtUnitPriceExit
            Width = 121
          end
          object edtAreaSquareFeetPerBox: TcxCurrencyEdit
            Left = 370
            Top = 123
            TabOrder = 6
            Width = 85
          end
          object edtSubTotal: TcxCurrencyEdit
            Left = 651
            Top = 88
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 121
          end
          object edtRoolNumber: TcxTextEdit
            Left = 17
            Top = 176
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 8
            Width = 121
          end
          object edtDyeLot: TcxTextEdit
            Left = 169
            Top = 176
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 9
            Width = 121
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1146
        Height = 179
        Align = alTop
        TabOrder = 2
        object pnlTop: TPanel
          Left = 1
          Top = 1
          Width = 728
          Height = 177
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 32
            Top = 20
            Width = 61
            Height = 13
            Caption = 'Manufactory'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 296
            Top = 72
            Width = 61
            Height = 13
            Caption = 'Invoice Date'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 58
            Top = 72
            Width = 35
            Height = 13
            Caption = 'Invoice'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 48
            Top = 99
            Width = 45
            Height = 13
            Caption = 'Company'
          end
          object Label4: TLabel
            Left = 46
            Top = 125
            Width = 47
            Height = 13
            Caption = 'Sales Rep'
          end
          object lbladdress: TLabel
            Left = 100
            Top = 45
            Width = 4
            Height = 13
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 534
            Top = 72
            Width = 43
            Height = 13
            Caption = 'Freight $'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 550
            Top = 99
            Width = 27
            Height = 13
            Caption = 'Tax $'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 508
            Top = 20
            Width = 69
            Height = 13
            Caption = 'Merchandise $'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 544
            Top = 125
            Width = 33
            Height = 13
            Caption = 'Total $'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label37: TLabel
            Left = 62
            Top = 151
            Width = 31
            Height = 13
            Caption = 'Status'
          end
          object Label20: TLabel
            Left = 738
            Top = -15
            Width = 79
            Height = 14
            Caption = 'Payment Method'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 496
            Top = 151
            Width = 81
            Height = 13
            Caption = 'Payment Method'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblReqOrder: TLabel
            Left = 287
            Top = 153
            Width = 85
            Height = 13
            Caption = 'Request Order ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object edtManufactory: TEditBusca
            Left = 99
            Top = 20
            Width = 369
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = edtManufactoryClick
            ClickOnArrow = True
            ClickOnReturn = False
            bs_HeightForm = 0
            bs_WidthForm = 0
            bs_SetCPF = False
            bs_SetCNPJ = False
            bs_SetPlaca = False
            bs_LoadConsulta = False
            bs_Distinct = False
            bs_SetColor = False
            bs_NomeCor = clBlack
            bs_IndiceCampo = 0
            bs_Imagem = False
            bs_HideTop = False
            bs_Top100 = False
            bs_Script = False
          end
          object cxDateProcess: TcxDateEdit
            Left = 373
            Top = 69
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 95
          end
          object edtInvoiceNum: TcxTextEdit
            Left = 99
            Top = 69
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 20
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            OnExit = edtInvoiceNumExit
            Width = 174
          end
          object cxLookupComboBoxCompany: TcxLookupComboBox
            Left = 99
            Top = 96
            Properties.KeyFieldNames = 'ID_COMPANY'
            Properties.ListColumns = <
              item
                FieldName = 'COMPANYNAME'
              end>
            Properties.ListSource = DsCompany
            TabOrder = 3
            Width = 369
          end
          object edtSalesRep: TcxTextEdit
            Left = 99
            Top = 123
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 30
            TabOrder = 4
            Width = 369
          end
          object edtFreight: TcxCurrencyEdit
            Left = 579
            Top = 69
            Style.Color = clWhite
            TabOrder = 6
            OnExit = edtFreightExit
            Width = 130
          end
          object edtTax: TcxCurrencyEdit
            Left = 579
            Top = 96
            Style.Color = clWhite
            TabOrder = 7
            OnExit = edtTaxExit
            Width = 130
          end
          object edtMerchandise: TcxCurrencyEdit
            Left = 579
            Top = 20
            Enabled = False
            Style.Color = clWhite
            TabOrder = 5
            OnExit = edtMerchandiseExit
            Width = 130
          end
          object edtTotal: TcxCurrencyEdit
            Left = 579
            Top = 123
            Style.Color = clWhite
            TabOrder = 8
            Width = 130
          end
          object cmbStatus: TcxComboBox
            Left = 99
            Top = 150
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Pending'
              'Approval'
              'Reject')
            Properties.MaxLength = 0
            Properties.ReadOnly = False
            TabOrder = 9
            Text = 'Pending'
            Width = 147
          end
          object cxLookupComboBoxPaymentMethod: TcxLookupComboBox
            Left = 579
            Top = 150
            Properties.KeyFieldNames = 'ID_PAYMENT_METHOD'
            Properties.ListColumns = <
              item
                FieldName = 'PAYMENT_DESCRIPTION'
              end>
            Properties.ListSource = dsPaymentMethod
            TabOrder = 10
            Width = 130
          end
          object edtReqOrder: TcxTextEdit
            Left = 377
            Top = 150
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 20
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 11
            Visible = False
            Width = 91
          end
        end
        object Panel2: TPanel
          Left = 729
          Top = 1
          Width = 416
          Height = 177
          Align = alClient
          TabOrder = 1
          object Label36: TLabel
            Left = 23
            Top = 30
            Width = 64
            Height = 13
            Caption = 'Terms (Days)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 6
            Top = 2
            Width = 85
            Height = 13
            Caption = 'Terms Description'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cxGrid3: TcxGrid
            Left = 1
            Top = 68
            Width = 414
            Height = 108
            Align = alBottom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object cxGrid3DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Insert.Enabled = False
              Navigator.Visible = True
              DataController.DataSource = dsTerms
              DataController.KeyFieldNames = 'ID_TERMS'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'VALUE'
                  Column = cxGrid3DBTableView1VALUE
                  DisplayText = 'Total'
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGrid3DBTableView1DESCRIPTION: TcxGridDBColumn
                Caption = 'Description'
                DataBinding.FieldName = 'DESCRIPTION'
                Width = 150
              end
              object cxGrid3DBTableView1DATE_DUE: TcxGridDBColumn
                Caption = 'Date Due'
                DataBinding.FieldName = 'DATE_DUE'
              end
              object cxGrid3DBTableView1VALUE: TcxGridDBColumn
                Caption = 'Total'
                DataBinding.FieldName = 'VALUE'
              end
            end
            object cxGrid3Level1: TcxGridLevel
              GridView = cxGrid3DBTableView1
            end
          end
          object btnTerms: TcxButton
            Left = 193
            Top = 26
            Width = 42
            Height = 33
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2007Blue'
            OptionsImage.Glyph.Data = {
              36100000424D3610000000000000360000002800000020000000200000000100
              2000000000000010000000000000000000000000000000000000000000000000
              0001000000020000000400000005000000050000000500000005000000050000
              0005000000060000000600000006000000060000000600000006000000060000
              0006000000060000000600000006000000060000000600000006000000070000
              0007000000070000000600000005000000030000000100000001000000010000
              0003000000090000000F00000013000000140000001400000014000000150000
              0015000000150000001600000016000000160000001600000017000000170000
              0017000000180000001800000018000000180000001900000019000000190000
              001A0000001A00000019000000140000000D0000000500000001000000020000
              00092F211D57956B5DEAA47565FFA47565FFA37463FFA17363FFA17262FFA071
              62FFA17161FFA07161FFA07060FF9F7060FF9E6F60FF9E6E5FFF9E6E5EFF9D6D
              5EFF9D6D5EFF9C6C5DFF9C6C5CFF9C6C5CFF9B6B5CFF9C6B5BFF9B6A5BFF9B6A
              5BFF9B695BFF9A695AFF8C5F52EB2B1D195E0000000C00000003000000030000
              000D9F7464F6DCC4B0FFE1CCB8FFE1CCB8FFE1CCB7FFE1CCB8FFE1C9B7FFE1CC
              B7FFDEC9B4FFE1C9B7FFDEC9B4FFDEC9B4FFDEC9B4FFDDC7B1FFDDC7B1FFDEC9
              B4FFDEC8B4FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7
              B1FFDDC7B1FFDDC7B1FFD7BEA9FF946556F70000001400000005000000040000
              0010AA7B6CFFCCA390FFCA9E8BFFC99E8CFFC99D8AFFC99C8AFFC89B89FFC79B
              88FFC69887FFC69787FFC59785FFC49684FFC49683FFC49482FFC49382FFC393
              80FFC29280FFC1917EFFC1907DFFC08E7CFFC08E7BFFBF8C7AFFBE8C7AFFBE8B
              79FFBD8B79FFBD8A76FFC08F7CFF9D6C5CFF0000001800000006000000040000
              0010B08272FFEFE3D8FFFCFDF5FFFCFDF5FFFCFDF5FFFCFCF4FFFCFCF4FFFBFC
              F3FFFCFBF3FFFBFBF3FFFBFAF2FFFAFAF1FFFAF9F1FFFBF9F1FFFAF9F0FFF9F8
              EFFFF9F8EFFFF9F7EEFFF9F6EEFFF8F6EDFFF8F5ECFFF7F5ECFFF7F4EBFFF8F3
              EBFFF8F3EAFFF6F2EAFFE6D4C9FFA37262FF0000001800000006000000040000
              000FB18474FFF6F0E9FFF1E7DFFFF2E7DFFFF1E7DEFFF1E7DEFFF1E7DEFFF1E6
              DDFFF1E6DEFFF0E6DEFFF0E6DDFFF1E6DDFFF0E6DDFFF0E6DCFFF0E6DCFFF0E6
              DCFFF0E6DBFFEFE6DBFFF0E5DBFFF0E6DBFFF0E5DAFFF0E5DAFFEFE5DAFFEFE4
              DAFFEFE5DAFFEFE3D9FFF2E8E0FFA47363FF0000001700000006000000040000
              000EB28575FFF6EFE9FFF4ECE5FFF5ECE4FFF4EBE4FFF5EBE3FFF4EBE3FFF4EB
              E3FFF4EBE2FFF4EBE2FFF4EAE1FFF3EAE2FFF4EAE2FFF4EAE1FFF3EAE1FFF3EA
              E0FFF4EAE0FFF3EAE0FFF3EAE0FFF2EADFFFF3E9DFFFF3E9DFFFF3E9DFFFF2E9
              DFFFF3E9DEFFF2E8DEFFF2E8DFFFA57463FF0000001700000006000000030000
              000EB38676FFF8F2ECFFF6EEE7FFF6EFE7FFF6EEE6FFF6EEE6FFF6EEE6FFF5EE
              E6FFF5EEE5FFF5EEE5FFF5EDE4FFF5EDE4FFF5ECE4FFF4EDE3FFF5ECE3FFF4EC
              E3FFF5ECE3FFF4EBE2FFF4EBE3FFF4ECE2FFF4EBE2FFF4EBE1FFF4EBE1FFF4EA
              E1FFF4EAE1FFF3E9E0FFF4EBE2FFA67565FF0000001600000006000000030000
              000DB58878FFF9F4EEFFF7EFE8FFF6F0E8FFC19B8BFFC09A8AFFF1E6DEFFC099
              89FFBF9788FFF1E5DDFFBF9687FFBE9585FFF0E4DCFFBC9584FFBC9483FFEFE3
              DAFFBB9182FFBA9182FFEFE3D9FF5867DBFF5865DAFFE5DEE2FF5664DAFF5664
              DAFFF4EAE1FFF4EAE2FFF5EDE4FFA67566FF0000001500000005000000030000
              000CB68A7AFFFAF5EFFFF7F0E9FFF7F1E9FFC39E8DFFC29C8CFFF1E7DFFFC09B
              8AFFC09A8AFFF1E6DEFFBF9889FFBF9988FFF1E5DDFFBE9587FFBE9585FFF0E5
              DCFFBB9584FFBB9482FFEFE4DBFF5A69DCFF5A69DCFFE5DFE2FF5967DBFF5866
              DAFFF4EBE3FFF4ECE2FFF5EDE5FFA87767FF0000001400000005000000030000
              000CB88C7CFFF9F5F0FFF8F1EAFFF7F0EAFFF2E8E1FFF2E9E0FFF6EFE8FFF2EB
              E4FFEFE8E1FFEEE7E0FFEEE7DFFFEDE5DEFFECE6DEFFECE6DEFFEFE7E1FFF3EC
              E4FFF0E4DCFFF0E4DCFFEFE4DBFFE7E0E3FFE6E0E4FFE6DFE3FFE5DFE2FFE5DF
              E3FFF5ECE3FFF5ECE3FFF6EEE6FFA87869FF0000001400000005000000030000
              000BB88E7EFFFAF6F1FFF7F2EBFFF8F1EBFFC6A192FFC5A091FFF3EDE6FFC6A1
              92FFC5A091FFF3EDE6FFC6A192FFC5A091FFF3EDE6FFBF9789FFBF9788FFEFE8
              E1FFBF9789FFBF9788FFF1E5DDFF6070DFFF5F6FDFFFE7E0E4FF5E6DDEFF5D6C
              DDFFF5EDE4FFF5ECE4FFF6EEE6FFA97969FF0000001300000005000000030000
              000ABA8F80FFFAF7F2FFF8F2ECFFF8F3ECFFC7A495FFC7A393FFF3EDE6FFC7A4
              95FFC7A393FFF3EDE6FFC7A495FFC7A393FFF3EDE6FFC09A8BFFC09A8AFFECE6
              DFFFC09A8BFFC09A8AFFF1E6DEFF6273E0FF6173E0FFE7E1E6FF6071DFFF6070
              DEFFF5EDE5FFF5EDE5FFF6EFE8FFAA7A6BFF0000001200000005000000020000
              000ABB9181FFFAF7F2FFF8F3EDFFF8F3EDFFF4EBE4FFF3EBE4FFF3EDE7FFF4EB
              E4FFF3EBE4FFF3EDE7FFF4EBE4FFF3EBE4FFF3EDE7FFF1E7E0FFF1E7DFFFEDE7
              E0FFF1E7E0FFF1E7DFFFF1E8DFFFE7E4E7FFE8E3E6FFE7E3E6FFE7E2E6FFE7E2
              E6FFF6EEE6FFF5EEE6FFF7F0E8FFAC7D6CFF0000001200000004000000020000
              0009BD9282FFFBF8F4FFF9F4EEFFF9F4EEFFC9A89AFFC9A899FFF5EFE9FFC9A8
              9AFFC9A899FFF5EFE9FFC9A89AFFC9A899FFF5EFE9FFC49F8EFFC39E8EFFEEE8
              E1FFC49F8EFFC39E8EFFF2E8DFFF687AE3FF6879E3FFE8E4E8FF6678E1FF6577
              E1FFF6EEE7FFF6EFE7FFF7F1E9FFAD7E6EFF0000001100000004000000020000
              0008BE9484FFFBF8F4FFF9F5F0FFFAF5EFFFCBAA9BFFCAAA9BFFF5F0EAFFCBAA
              9BFFCAAA9BFFF5F0EAFFCBAA9BFFCAAA9BFFF5F0EAFFC5A091FFC4A090FFEFE9
              E4FFC5A091FFC4A090FFF2E8E1FF6B7EE4FF6B7EE4FFE8E5E9FF697BE3FF687A
              E2FFF6EFE8FFF6EFE8FFF7F1EAFFAE7F6FFF0000001000000004000000020000
              0008BF9685FFFCF8F5FFFAF5F1FFFAF5F0FFF6EEE8FFF6EEE7FFF6F1ECFFF6EE
              E8FFF6EEE7FFF6F1ECFFF6EEE8FFF6EEE7FFF6F1ECFFF3EAE2FFF3E9E2FFF1EB
              E6FFF3EAE2FFF3E9E2FFF3E9E2FFEAE5EAFFEAE5EAFFEAE5EAFFE9E5E9FFE9E5
              E9FFF7F0E9FFF7F0E8FFF8F1EBFFAF8170FF0000000F00000004000000020000
              0007C09888FFFCFAF6FFFAF7F2FFFAF6F1FFCEAFA0FFCEAEA0FFF8F3EEFFCEAF
              A0FFCEAEA0FFF8F3EEFFCEAFA0FFCEAEA0FFF8F3EEFFC9A596FFC7A595FFF2ED
              E7FFC9A596FFC7A595FFF3EAE3FF7085E7FF6F84E6FFEAE6EBFF6E82E6FF6D81
              E5FFF7F0EAFFF7F0E9FFF8F3ECFFB08272FF0000000F00000004000000020000
              0006C19989FFFCFAF7FFFAF7F2FFFAF6F2FFD0B1A3FFD0B1A1FFF9F5F0FFD0B1
              A3FFD0B1A1FFF9F5F0FFD0B1A3FFD0B1A1FFF9F5F0FFCAA89AFFC9A699FFF6F1
              EBFFCAA89AFFC9A699FFF3EBE5FF7388E8FF7287E7FFEBE8EBFF7185E7FF7184
              E6FFF8F2EBFFF7F1EBFFF8F3EEFFB18474FF0000000E00000004000000010000
              0006C39B8AFFFCFAF8FFFBF8F3FFFBF8F3FFFBF7F3FFFAF7F2FFFBF6F2FFFAF5
              F1FFF8F4EFFFF8F4EFFFF7F3EEFFF7F3EDFFF6F2ECFFF5F1EBFFF7F2EDFFF8F3
              EEFFFAF4EFFFF9F4EEFFF9F4EEFFF9F4EEFFF8F3EDFFF8F3EDFFF8F3ECFFF8F2
              ECFFF8F2ECFFF8F2ECFFF9F4EEFFB28576FF0000000D00000003000000010000
              0005C39C8CFFFCFAF9FFFBF8F4FFFBF8F4FFFBF8F4FFFBF8F4FFFBF7F4FFFAF7
              F3FFFAF7F2FFFBF7F2FFFAF6F2FFFAF6F1FFFAF6F1FFFAF5F1FFFAF5F0FFFAF5
              F0FFFAF5F0FFFAF5EFFFF9F5EFFFF9F4EEFFF9F4EFFFF9F4EEFFF9F4EEFFF9F3
              EDFFF8F3EDFFF8F3EDFFF9F4EFFFB48778FF0000000D00000003000000010000
              0005C49D8DFFFDFCFBFFFDFBF8FFFDFBF8FFFCFAF8FFFDFAF7FFFDFBF7FFFDF9
              F7FFFCFAF7FFFCFAF6FFFBF9F6FFFCF9F6FFFCF8F5FFFBF9F5FFFCF9F5FFFBF8
              F5FFFBF8F5FFFBF8F4FFFBF8F5FFFBF8F4FFFBF8F3FFFBF8F3FFFBF7F3FFFBF7
              F2FFFBF6F2FFFBF6F2FFFBF8F4FFB58979FF0000000C00000003000000010000
              0004444BBBFF9EADF0FF6B81E6FF6B80E6FF6A7FE5FF687CE4FF677BE4FF677A
              E3FF6578E2FF6476E2FF6375E1FF6274E1FF6172E0FF6070DFFF5E6FDFFF5D6D
              DEFF5C6BDEFF5B69DDFF5968DCFF5967DBFF5765DAFF5663DAFF5561DAFF5460
              D8FF525FD8FF515DD7FF6872DEFF3336A9FF0000000B00000003000000010000
              0004474EBDFFA0AFF1FF6D83E8FF6C82E7FF6B80E6FF8093EAFF8799EBFF7E91
              E9FF677AE4FF6679E3FF6577E3FF6376E1FF6274E1FF6173E0FF6171E0FF5F6F
              DFFF5E6EDEFF5D6CDDFF5B6BDDFF5B69DCFF717DE1FF7783E4FF6E7BE1FF5563
              D9FF5460D9FF5360D8FF6B76DFFF3639ACFF0000000B00000003000000010000
              00034951C0FFA0B2F2FF6F85E8FF6E84E7FF5F73D7FF3E3D7BFF29234EFF2B2B
              61FF596DD1FF677BE4FF667AE4FF6578E2FF6476E2FF6375E2FF6273E1FF6172
              E0FF6070DFFF5E6FDEFF5E6DDEFF505ECFFF3C3879FF29234EFF28275EFF4B57
              C8FF5663DAFF5562D9FF6D78E0FF383CAEFF0000000A00000003000000010000
              00034C54C3FFA3B4F2FF778DEAFF7086E8FF5B6FD3FF5D558CFFB7A194FF3F37
              6CFF5667CCFF697DE5FF687CE4FF677AE4FF6679E3FF6478E3FF6375E1FF6274
              E1FF6273E0FF6071DFFF5F6FDFFF4C5BC9FF5D558CFFB7A194FF3F376CFF4753
              C1FF5866DBFF5663DAFF6F7BE1FF3A3FB0FF0000000900000002000000000000
              00024B53B6ED8E9DE7FFA4B5F2FFA3B3F2FF8D9DE1FF645B91FFAA9284FF473F
              74FF8795D9FF9DADF0FF9CACF0FF9BAAEFFF9BA9EEFF9AA7EEFF98A6EEFF97A5
              EDFF96A4EDFF94A2ECFF93A1ECFF7D8AD9FF645B91FFAA9284FF473F74FF7681
              D2FF8C97E9FF8C97E8FF7680DBFF3C3FA5EE0000000600000002000000000000
              0001141631413F479ECA4F58C7FF4F58C7FF4048B4FF6A6399FFFFFEF3FF5048
              7FFF3D44ADFF4B54C2FF4A52C2FF4A52C1FF4951C0FF4950C0FF484FBFFF474F
              BEFF464EBEFF464DBDFF464CBCFF383DA9FF6A6399FFFFFEF3FF50487FFF3539
              A3FF4248B8FF4147B7FF32368FCC10112D450000000400000001000000000000
              000000000001000000010000000200000002000000088A7368FFDACEC5FF735A
              50FF0000000D0000000300000003000000040000000400000004000000040000
              00040000000500000005000000050000000B8A7368FFDACEC5FF735A50FF0000
              0010000000060000000600000005000000030000000100000000000000000000
              000000000000000000000000000000000000000000026C5B54C090796FFF6655
              4EC2000000060000000100000001000000010000000100000001000000010000
              0001000000010000000100000001000000036C5B54C090796FFF66554EC20000
              0006000000010000000100000001000000010000000000000000000000000000
              0000000000000000000000000000000000000000000000000002000000030000
              0003000000010000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000200000003000000030000
              0001000000000000000000000000000000000000000000000000}
            OptionsImage.Margin = 5
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnTermsClick
          end
          object edtDays: TEdit
            Left = 97
            Top = 30
            Width = 89
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object edtTermDescription: TcxTextEdit
            Left = 97
            Top = 2
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 30
            TabOrder = 3
            Width = 304
          end
        end
      end
    end
  end
  object Panel27: TPanel
    Left = 0
    Top = 508
    Width = 1154
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label18: TLabel
      Left = 890
      Top = 11
      Width = 98
      Height = 13
      Caption = 'Request Grouped ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 630
      Top = 11
      Width = 143
      Height = 13
      Caption = 'Manufacturer Invoice Number'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ButNovo: TcxButton
      Left = 3
      Top = 0
      Width = 36
      Height = 33
      Hint = 'Novo (Alt+N)'
      Caption = '  &N'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      OptionsImage.Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFA97C79B78183B78183B78183B78183B78183B78183B78183B78183B781
        83B78183B78183B78183B78183B78183B78183B78183B78183B78183FF00FFFF
        00FFFF00FFFF00FFFF00FFAE7781F3DDC4F8E3C6F6DFBFF5DCB8F4D9B2F3D7AC
        F3D4A7F2D2A0F0CF9AF0CE98F0CE98F0CE98F0CE98F0CE98F0CE98F1CF98EFCD
        97B88183FF00FFFF00FFFF00FFFF00FFFF00FFAE7782F2DEC8F7E3CAF5DFC2F4
        DCBCF3DAB6F2D7B1F1D4ABF1D2A5F0CF9FEFCD9AEECC97EECC97EECC97EECC97
        EECC97EFCD97EDCB96B88183FF00FFFF00FFFF00FFFF00FFFF00FFAE7782F2E0
        CEF8E7CFF5E2C8F5DEC2F4DCBCF3DAB7F2D7B1F1D4ABF1D2A5F0CFA0EFCD9AEE
        CC97EECC97EECC97EECC97EFCD97EDCB96B88183FF00FFFF00FFFF00FFFF00FF
        FF00FFAE7782F3E3D2F9E9D4F6E4CDF5E1C7F5DEC1F4DCBCF3D9B6F2D7B0F1D4
        AAF1D2A5F0CFA0EECC99EECC97EECC97EECC97EFCD97EDCB96B88183FF00FFFF
        00FFFF00FFFF00FFFF00FFAE7783F4E6D8FAECDAF8E7D3F6E4CCF5E1C7F5DFC2
        F4DCBCF3D9B6F2D7B0F1D4ABF1D2A6F0CFA0EECD9AEECC97EECC97EFCD97EDCB
        96B88183FF00FFFF00FFFF00FFFF00FFFF00FFAF7883F5E9DDFBEFE0F8EAD9F7
        E6D2F6E4CDF5E1C8F4DEC2F4DCBCF3D9B6F2D7B1F1D4ACF1D2A6F0CFA0EECC99
        EECC97EFCD97EDCB96B88183FF00FFFF00FFFF00FFFF00FFFF00FFB27B85F5EC
        E3FBF2E6F9EDDEF8E9D7F7E7D2F6E4CDF5E1C7F5DFC1F4DCBBF3D9B6F2D7B1F1
        D4ABF1D2A5F0CFA0EECC99EFCD97EDCB96B88183FF00FFFF00FFFF00FFFF00FF
        FF00FFB78086F7EFE8FCF5ECFAEFE4F9ECDDF8E9D8F7E7D3F6E4CDF5E1C7F5DF
        C1F4DCBCF3D9B7F1D7B0F1D4ABF0D2A5F0CF9FEFCD9AEDCA96B88183FF00FFFF
        00FFFF00FFFF00FFFF00FFBB8388F8F2EEFDF8F1FAF3EAF9EFE3F9ECDDF8E9D8
        F7E6D2F6E4CCF5E1C6F4DFC1F4DCBCF3D9B6F2D6B0F1D4AAF0D1A4F0D09FEDCB
        98B88183FF00FFFF00FFFF00FFFF00FFFF00FFBE8689FAF6F4FEFCF8FCF6F0FA
        F2EAFAF0E4F9EDDDF8E9D8F7E7D2F6E4CCF5E1C7F5DEC2F4DCBBF3D9B6F1D7B0
        F1D4AAF1D2A5EECD9EB88184FF00FFFF00FFFF00FFFF00FFFF00FFC2898AFBF8
        F7FFFFFEFEFAF6FCF5EFFAF2EAFAF0E3F9ECDDF9E9D8F8E7D2F6E4CDF5E1C7F5
        DEC1F4DCBCF3D9B6F2D7B0F2D5ABEFCFA4B98285FF00FFFF00FFFF00FFFF00FF
        FF00FFC68D8CFBF8F7FFFFFFFFFEFCFEF9F4FCF6EFFBF3EAFAEFE3F9EDDDF8E9
        D7F8E7D2F6E4CDF5E1C6F5DEC1F4DCBBF3D9B5F2D7B0F0D2A8B98386FF00FFFF
        00FFFF00FFFF00FFFF00FFCA908DFBF8F7FFFFFFFFFFFFFFFDFCFEF9F5FCF6F0
        FAF2EAFAF0E4F9ECDDF8EAD8F8E6D2F6E4CCF6E1C6F5DEC0F4DCBBF4DAB6F1D5
        AEB58286FF00FFFF00FFFF00FFFF00FFFF00FFCD938FFBF8F7FFFFFFFFFFFFFF
        FFFFFFFEFCFEF9F5FCF6EFFBF2EAFAEFE3F9ECDDF8E9D7F8E6D1F6E3CBF5E1C6
        F4DEC0F3DBBAD9C4A7A47E83FF00FFFF00FFFF00FFFF00FFFF00FFD19790FCF9
        F7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFEF9F5FCF5EFFBF2E9FAF0E3F9ECDDF8
        E9D7F8E6D1F6E4CCEBD9C0D1C1ABB5A8979C7C81FF00FFFF00FFFF00FFFF00FF
        FF00FFD59A91FCF9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFDFAF5FCF6
        EFFAF2E9FAEFE2FAEDDEFBEEDBE7DBC9C8BDAFBAB0A2B7AC9DA07E83FF00FFFF
        00FFFF00FFFF00FFFF00FFDA9D93FCF9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFCFDF9F4FCF5EEFCF5EBEEDDD1B28176AD8076AA7F76AB7F76AB7F
        76AF7F77FF00FFFF00FFFF00FFFF00FFFF00FFDDA194FCF9F8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFDF9F4FFFBF3E3CEC6B38176E3B585
        E5AD6AE9A654EFA039B88285FF00FFFF00FFFF00FFFF00FFFF00FFE0A395FDFA
        F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFFFEF9E5
        D1CBB38176EFC48DF3BB6DF8B450B88285FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFE0A395FDFAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFE5D4D0B38176EFC38CF3BA6CB88285FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFE0A395FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9DBD9B38176F1C58BB88285FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDEA78CECD0BEEDD3C1EDD3C1EC
        D1C1EAD0C1E8CEC0E6CCBFE4CBBEE1C9BEDFC7BDDDC5BDCEAEA6B38176B88285
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OptionsImage.Margin = 5
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      OnClick = ButNovoClick
    end
    object ButAlterar: TcxButton
      Left = 40
      Top = 0
      Width = 36
      Height = 33
      Hint = 'Alterar (Alt+A)'
      Caption = '      &A'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      OptionsImage.Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000520B0000520B000000010000000000002D2D2D00373C
        3E0018556F0058534E005160610052636B0054777B007C707800D47719008A5B
        520085787C008D787F00AD7B7300AD7B7B0096836700AD847300B5847300A392
        7B00EFA55200FFB55200E7AD6B00F8B26600F7BD6B0000009A000316AC00021E
        AA0029799A000A62A0000018C6000936C9001029D600106BFF00AD738400AD7B
        8400B57B8400FF00FF00299CEF00428CDE006D8AFD004ABDFF009C9C9C00B584
        8400B9858500BD848400BD848C00BEB1A100C68C8C00CE948C00D69C9400C3A8
        8200DEA58C00DEA59400E7B58400CEADA500EFC68C00F9C08600EFCE9400EFCE
        9C00FBCA9500DEC6BD00EFCEA500F7D6A500F7D6AD00FBD3A900E7CEBD00EFD6
        BD00F7D6B500F7DEB500F7DEBD00DEDEDE00E7CEC600EFCEC600EFDEC600E7D6
        CE00E7DECE00F7DEC600F7DECE00E7D6D600EFDED600F7E7C600F7E7CE00F7E7
        D600F7E7DE00F7EFDE00F7EFE700F7EFEF00FFF7EF00FFF7F700FFFFF700FFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002323230D2929
        29292929292929292929292929292929232323232320484F4443423E3D393938
        3838383838383829232323232320484F4B44423E3E3C39393838383838383829
        2323232323204C504B4B44423E3E3C3939383838383838292323232323205051
        504B4444423E3E3C393938383838382923232323232051452828282800031131
        282828282828382923232323232152535150504B030104050E31393938383829
        2323232323225454535150502D062502090E3139393838292323232323295445
        2828282828061A0B08090E312828382923232323232B55565454535150500737
        1508090E3139382923232323232C57585654545351500A3A371508090E313929
        23232323232E5745282828282828280C3F371508090E312923232323232E5759
        59575654545351500C3F371508090E2923232323232E57595959575654545351
        500C3F371508092923232323232F5745282828282828282828280C3A2A24271B
        23232323232F575959595959575654545351500C242724191723232323305759
        59595959595756545353534A27241D1E181C2323233057452828282828282828
        284E100F0C1C261F1C2323232333575959595959595958575646103414121C1C
        2323232323335759595959595959595958461036161329232323232323335759
        5959595959595959594910361629232323232323233359595959595959595959
        594D10362923232323232323233240414147404040403B3B3B35102923232323
        2323232323232323232323232323232323232323232323232323}
      OptionsImage.Margin = 7
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      OnClick = ButAlterarClick
    end
    object ButExcluir: TcxButton
      Left = 77
      Top = 0
      Width = 36
      Height = 33
      Hint = 'Excluir (Alt+E)'
      Caption = '   &E'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      OptionsImage.Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEEAA6BF0B477F0BA7FF0B77B
        EFB276F0AD6EEEAC6DEFAF6FEEAC6DFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF6CE97FAE2B1FA
        E2B1F8D7A3F4CA92F0BC81EFB073EFAF6FF2B77AF3C086F4C58BF2BF84EFAF72
        EEAC6DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFAE2
        B1FFFCD4FEF7CEFBE5B6F8D7A3F3C991F7BF86F4B175F0AD6EFFBF8BFFCC9FFF
        D9ADFFE2B4FBE5B6F3C187EEAC6DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFCF2C6FFFFD8FEF3C9FBE5B5F8D7A3F8CB95D0C284E2C18AF4C0
        8F7EAD5558A54182B763E9E1B4FFF7CFFFF6CAF2BC82EEAC6DFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFF6D09AFFFFD9FEF7CEFAE5B6F7D7A4FFCE9C
        A4BB6F3199283C9C2D007B000079000078001F931BD3E5B4FFFFE0F8DAA9EEAC
        6DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEEAB6CEEA969F4CA92FEF2C6FC
        EFC2F7DAA6FFCB97BAC07B018002007B00017F010481030D890B00760033A02E
        FBFCE0FAD4A0EEAC6DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEEAB6CEEAA
        6BEDA667EFB476F6D39EFAE2B1FFDEB0C9CE91068305007B000A8609B1DAABEB
        F6E9EEAC6D02810399C174FEB781EEAC6DEEAC6DFF00FFFF00FFFF00FFFF00FF
        FF00FFEEAD6FEFAF72EEAD6FEEAA6BEEA969EFAF6FF8BD86D3CC930281030078
        000079006DBD6AFBFEFAFFFFFF7DC5794A9A2FFAB57EEEAA6BEEAC6DFF00FFFF
        00FFFF00FFFF00FFFF00FFF2B57AF3B780F2B67EF2B57BF2B278F0B176F4AD72
        E3BC8745A74145A9424FAF4C67B760E7F3E2FFFFFFFFFFFFB1CC95E5B174EEAA
        6BEEAC6DFF00FFFF00FFFF00FFFF00FFEEAC6DF6C08CF7C190F7C08EF6BF8BF6
        BD89F4BC87F7BB84E2C693FAF6EDFFFFFFFFFFFFEEF4E9CAE6C5C0E2BCB1DCAD
        C7D3A3F3B67DEEAB6CEEAC6DFF00FFFF00FFFF00FFFF00FFF2B278FBCBA1FBCB
        A1FBC99EFAC99CFAC699F8C598FFC698CBC48B62B65BFFFFFFFFFFFFA3D59E0D
        880C038003007B00429D30FEC295F0B073F0B073FF00FFFF00FFFF00FFFF00FF
        F4C08BFED8B2FCD4ADFCD3ABFCD0A9FCD0A9FCD0A9FFCEA6F7D5B221921A66BA
        63FFFFFFFFFFFF83C67E007B00007B00379C2CFECCA4F4B57DF4B57DFF00FFFF
        00FFFF00FFFF00FFFAD1A3FFE2BCFEDEB7FEDDB6FEDCB5FEDAB4FED9B2FED7AF
        FFDEC28BBF7200790038A13462B75E1F951E017E01007B002F9927FCD5B4F8BD
        8AF8BD8AEEAC6DFF00FFFF00FFEFB274FEE7BFFEEDC5FEEAC2FEE9C0FEE7BFFE
        E5BDFEE5BDFEE3BBFFE2BCFBE9CB39A031007300007600007B00007B000A8709
        269721F8DDBCFCC99AFCC99AEEAC6DFF00FFFF00FFF3BF84FFF7CFFFF7CFFFF6
        CCFFF2CAFFF2C9FFF0C7FFEFC7FFEEC6FEEDC4FFEDCAE9E9C252AD48138B1109
        86083FA436CADEB17EBF6CEEE2BAFFD7ABFFD7ABEEAC6DFF00FFFF00FFF6D09A
        FFFFD9FFFBD3FFFBD3FFFBD3FFFBD3FFF8D1FFF8D0FFF8D0FFF7CFFFF6CCFFF8
        D1FFF8DAF0F0CCEAEEC6FFF3D4FFF2D0FFF2D0FCEDC7FCE6BBFCE6BBEEAC6DFF
        00FFFF00FFFAE2B1FFFFD9FFFBD3FFFBD3FFFBD3FFFBD3FFFBD3FFFBD3FFFBD3
        FFFBD3FFFCD4FFFED5FFFFD9FFFFDCFFFFD9FFFFD9FFFCD4FFF8D0FFF7CFFEF3
        C9FEF3C9F2B77AFF00FFFF00FFFBEABDFFFFD9FFFBD3FFFBD3FFFBD3FFFBD3FF
        FCD4FFFCD4FFFED5FFFFD9FFFFD9FCF2C6F7D499F4C481F4C481F6D095FBE6B6
        FFF6CCFFFFD8FFFED5FFFED5F3C086FF00FFFF00FFF4CA92FEFBD3FFFFD9FFFF
        D8FFFED5FFFCD4FFFBD3FEF7CEFBEBBBF8D9A1F3C07EEEA75CEB9D4EEB9D4EEB
        9D4EEBA159EFAF6FF8C188FCD9A7FFF2C9FFF2C9F3C991FF00FFFF00FFFF00FF
        F0BA7FF6CE97F4CB95F4C68FF3C28AF2BD83EFB274EEA965EDA45CEDA058EDA1
        55EDA154EDA154EDA359EEAA69F3B579F8BD86FABC84FBC48CF7BF86F8BD86FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFEDA355EEA762F0B073F8BC83FAC089FAC088FABF
        87FABF87F8BD86FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF4B67AFAC088
        FAC088FAC088FAC088FAC088FAC089FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFAC088FAC088FAC088FAC088FF00FFFF00FF}
      OptionsImage.Margin = 5
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ButImprimir: TcxButton
      Left = 114
      Top = 0
      Width = 36
      Height = 33
      Hint = 'Visualizar Impress'#227'o (Alt+I)'
      Caption = '   &I'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      OptionsImage.Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFA37875A37875A37875A37875A37875A37875A37875A37875A378
        75A37875A37875A37875A37875A37875A37875A37875A378758A5B5AFF00FFFF
        00FFFF00FFFF00FFFF00FF939798937E8CC9978FCCBFB9FFE2D1FFE0CFFFDFCC
        FFDEC9FFDDC7FFDAC2FFDAC1FFD8BDFFD7BCFFD5B8FFD4B6FFD2B2FFCEB6FFCC
        B38A5B5AFF00FFFF00FFFF00FFFF00FF5381B75381B76572ACA4899FCAABACFF
        EBD6FFE9D3FFE7CFFFE5CCFFE3C8FFE2C5FFDFBFFFDEBDFFDCB7FFDBB6FFD8B0
        FFD7AFFFD0A1FFCEB68A5B5AFF00FFFF00FFFF00FFFF00FFFF00FF5DBCFD3F86
        DF6572ACA4899FDDB8B2FFEBD6FFE9D3FFE7CFFFE5CCFFE3C8FFE2C5FFDFBFFF
        DEBDFFDCB7FFDBB6FFD8B0FFD2A7FFCEB78A5B5AFF00FFFF00FFFF00FFFF00FF
        FF00FFC5E7F35AB4F53F86DF6572ACA4899FDDB8B2FFEBD6FFE9D3FFE7CFFFE5
        CCFFE3C8FFE2C5FFDFBFFFDEBDFFDCB7FFDBB6FFD4A9FFD0BA8C5C5BFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF9E8D915FBBFC3F86DF6572ACA4899FDDB8B2
        FFEBD6FFE9D3FFE7CFFFE5CCFFE3C8FFE2C5FFDFBFFFDEBDFFDCB7FFD7AFFFD0
        BB8E5F5CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAF827ACABEB45DB7F63F
        86DF6572ACB7A8ABF5E1D1D9BBB0C4A09AC7A29DCFAAA4DDBBADF5D7BEFFDFBF
        FFDEBDFFD8B0FFD2BE91615FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB486
        7BF6EEE6FFF3E65FBCFC8AA6C89B9191C29E98D9B49AF7E6BBFEFDCBF7F3CBDE
        C9B6C5A099EBCCB6FFDFBFFFDBB6FFD2BF936460FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFB88A7DF7F0E9FFF4E9F5F4EFE6D7D1BA938EF4D8AFFFF9C8FFFE
        CDFFFEDAFFFFE0FFFFEDF4EEE6C19C96F5D7BEFFDCB7FFD4C1976763FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFBC8E7FF7F2ECFFF7EDFFF8F0D7B7B5E6C3A5
        FFF6C5FFF1BFFFFFD3FFFFE3FFFFF2FFFFFDFFFFFFE4D7C1CAA59AFFDEBDFFD4
        C29A6A65FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC19381F8F4F0FFF8F0FF
        FAF5CEAAA3F7EAC2FFE2B0FFF2C0FFFFD3FFFFE4FFFFF4FFFFF7FFFFE8F7F3CD
        C09C94FFE0C0FFD5C59E6D67FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC697
        81F9F6F3FFFAF5FFFBF8CCA79DFEF8CBFFD9A6FFE9B7FFFFCFFFFFDDFFFFE7FF
        FFE9FFFFE1FEFDD8BE9D94FFE2C5FFD6C7A17069FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFCB9B83FAF9F8FFFBF8FFFEFECEAA9FF7EEC4FFE5B8FFEDBCFFFC
        C9FFFFD0FFFFD7FFFFDAFFFFD4F7EEC8C09B90FFE3C8FFD7C9A5746CFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFCFA085FAFAFAFFFEFEFFFFFFD7B9B2ECDEC1
        FFF5DCFFE2BCFFE1AFFFF5C3FFF6C3FFF8C5FFF6C3ECD7B3C29C93FFE5CCFFD5
        C7A8776EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD4A587FBFBFBFFFFFFFF
        FFFFE7D5D5D6BCADF8F5F5FFFFFFFFE1B4FFE8B7FFDEACFFE8B6F8EABED0A997
        E0C4B8FFE7CFFFCEC1AB7A6FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9A9
        89FBFBFBFFFFFFFFFFFFFFFFFFD4B5B2D7C1BAECE2DAF7F2D4FEE8B5F7E9BDEC
        D9B6D7AD97C9A39DFFD7CCFFCFC4FFB8B2AE7C71FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFDDAD8BFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFD4BABAC8A599CDAF
        A0CFB0A2D4B3A3D0AA9DD9BBB6FFD7CCFFB8B8FFAAAAFF9B9BB17E73FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFE2B18DFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE6D9D9EDDDDBF1E1DEFFF8F0B28074B28074B28074B28074B280
        74B28074FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE6B58EFDFDFDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBF8FFFAF5B28074E9B688
        FDAC3CEF9521CD9168CC9D86FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE9B8
        90FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBF8FFFAF5FF
        F8F0B28074EBC89FFCC67FDAA279CFA188FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFEDBB91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFFFBF8FFFAF5B28074E9CDA5DEB08DD4A58AFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFF0BE93FEF1E5FBEEE2F7EBDFF5E9DDF2E5DA
        EEE2D7EBDFD4E9DCD2E6DAD0E2D5CCDFD2C9B28074DCA988D9AA8DFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF2C093DCA987DCA987DC
        A987DCA987DCA987DCA987DCA987DCA987DCA987DCA987DCA987B28074DCA987
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OptionsImage.Margin = 5
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ButSair: TcxButton
      Left = 151
      Top = 0
      Width = 36
      Height = 33
      Hint = 'Voltar (Alt+V)'
      Caption = '   &V'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      OptionsImage.Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDFB096EFD7CBFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFC1693AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFD1916FCC8661FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE6C3B0B95C2BE5C2B0FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBC5E
        2DC27147FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFC67B53C26131E4C1AFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFD3997BCA6635C37953FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDBAD95CF6837BC5F31FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDBAD
        95CC6A3AC7683BE3C0AFCE6C34CE6C34CE6C34CE6C34CE6C34CE6C34CE6C34CE
        6C34CE6C34CE6C34CE6C34CE6C34FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFDAAC95CB6D3FD07345D4A187CE6C34E67F44E57E43E57D42E57D
        42E47C41E47A40E3793FE2773EDB723BC96F3DF4E2D8FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFDAAC95D17446D87D50C5815FCC6A33E88044
        E27E3CE27D3BE17C3AE07A39E07939E5793DDE743BCA703DF4E2D8FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD1977BD2784CDC8357C4
        805FCB6933E77D41DE7936DE7836DD7735DD7635E3783CDE743BCA6F3DF4E2D8
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBF6F
        48DC8357DB845BC47F5EC96832E67B3FDD7634DC7533DC7432DE7435E3763CCB
        6833E4BBA4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFECD6CABE653AE2885DD27C53C88A6CC86732E67D44DC7839DC7738DE76
        38DA7334E0753ADD733DC66C3DF3E2D8FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFC6825FD47E54E28B60C7734AD6A994C66631E57D44
        DD7A3DE37B43E47B43DD783DDB773CE27841D56E3AC36A3BF3E1D8FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFD4A087C26C41E18A60E18C64BA653DF0
        DFD7C56430E57A43E37942DD743FD6703BE27840DA753BD9743AE1763FD76E3A
        BF602EDCAE95FF00FFFF00FFFF00FFFF00FFFF00FFCF977ABD663BDE895FE08A
        60D78760BA6C47FF00FFC36330E37942DC733EC66C3DC56B3DDB723DE0763ED9
        7239D87139DF733DDD7340C96838BF693CCD8E6DDAAC95C78260B85E32CA744A
        DF895FDD8358E08E66BF6D45E0BEAFFF00FFC1622FDB723DC46B3DF3E1D8E6C3
        B0BF602EDA703CDF743DD87039D66F37DA713CE07A48DE7D4DD6794BD17649D8
        8055DF875CE0865AD97A4CE18C63CB7B56C17E5EFF00FFFF00FFBD5F2EC46A3D
        F3E1D8FF00FFFF00FFEED7CBC1683BCF6837E07541DD7440D66E39D46B36D770
        3CD97543DA7746D97646D6713FD97A4CDF8B63CE7F5ABE7654FF00FFFF00FFFF
        00FFBE6739F2E1D8FF00FFFF00FFFF00FFFF00FFFF00FFC98461C06132D47243
        DF7C4DDF7D4DDC7A49DA7847DA7949DD8053E08A61D78760BF6D45BC7350FF00
        FFFF00FFFF00FFFF00FFF2E1D8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFEDD6CAC78260B85D30C3693DCF764BD0784ED07A50C7734ABA653DBA6C47
        E0BFAEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE7CABCD8AA94D7AA94D7AA94DB
        B4A1F0DFD7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OptionsImage.Margin = 5
      TabOrder = 4
      OnClick = ButSairClick
    end
    object ButSalvar: TcxButton
      Left = 282
      Top = 2
      Width = 36
      Height = 33
      Hint = 'Salvar ( Alt + S )'
      Caption = '   &S'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      OptionsImage.Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000320B0000320B00000001000000000000942121009429
        2900943131009C3131009C393900A5393900944242009C424200A5424200AD42
        4200A54A42009C424A009C4A4A00A54A4A00AD4A4A00B54A4A009C525200B552
        5200BD525200C6525200BD5A5A00C65A5A00CE5A5A009C636300A5636300C663
        6300CE6363009C6B6B00B56B6B00BD6B6B00C66B6B00CE6B6B00AD736B00B573
        6B009C737300A5737300B5737300BD737300C6737300CE737300B5847300A57B
        7B00AD7B7B00BD7B7B00C67B7B00CE7B7B00A5848400B5848400BD848400C684
        8400B58C8400A58C8C00AD8C8C00B58C8C00C68C8C00CE8C8C00BD949400D694
        94009C9C9C00BD9C9C00C69C9C00CE9C9C00CEA59C00ADA5A500CEA5A500D6A5
        A500C6ADAD00CEADAD00D6ADAD00B5B5B500BDB5B500DEB5B500BDBDB500B5BD
        BD00BDBDBD00D6BDBD00DEBDBD00C6C6C600CEC6C600DEC6C600E7C6C600C6CE
        CE00CECECE00D6CECE00DECECE00D6D6D600DEDED600DEDEDE00E7DEDE00E7E7
        DE00EFE7DE00E7E7E700EFE7E700F7E7E700EFEFE700F7EFE700EFEFEF00F7EF
        EF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00666666666666
        6666666666666666666666666666666666666666661E191A111B454545454545
        454545240102040C66666666281E1A1A141B332F43546265635E5B2401020415
        0C666666281E1A1A14222904213C5C636462602B010204150C666666281E1A1A
        14232E02072456606364632B010204150C666666281E1A1A14233402020C4D59
        6064672C010204150C666666281E1A1A112A350101023F525961673101020415
        0C666666281E1A1A112A421818173A4555606731010204140C666666281E1A1A
        1424413C3B3834343C44502608090E190C666666281E1A1A1A1A1A1A1A1A1A1A
        1919191A1A1A1A1A0C666666281E14191E2727272727272727272727272D1F1A
        0C666666280E0A1C36434B4B4B4B4B4B4B4B4B4B4B4F371A0C66666628093D62
        616161616161616161616161615C37150C666666280940676363636363636363
        63636363645C37140C66666628094067616161616161616161616161635C3714
        0C666666280940675B4E5252525252525252524D585C37140C66666628094067
        615C5C5C5C5C5C5C5C5C5C5C615C37140C666666280940675C53535353535353
        535353525B5C37140C666666280940675E5858585858585858585858605C3714
        0C666666280940675E5858585858585858585858605C37140C66666628094067
        5B52535353535353535353525B5C37140C666666280940676464646464646464
        64646464645C37150C66666666093D514D4D4D4D4D4D4D4D4D4D4D4D4D4D3611
        6666666666666666666666666666666666666666666666666666}
      OptionsImage.Margin = 5
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = ButSalvarClick
    end
    object ButCancelar: TcxButton
      Left = 323
      Top = 2
      Width = 36
      Height = 33
      Hint = 'Cancelar (Alt + C)'
      BiDiMode = bdLeftToRight
      Caption = '   &C'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      OptionsImage.Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000220B0000220B000000010000000000000031DE00FF00
        FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        0101010101010100000101010101010101010101010101010101010101010000
        0001010100000001010101010101010101010101010000000101010100000000
        0101010101010101010101000000000101010101000000000001010101010101
        0101000000000101010101010100000000000101010101010100000000010101
        0101010101010200000000010101010100000000010101010101010101010101
        0000000001010000000000010101010101010101010101010100000000000000
        0000010101010101010101010101010101010000020002000001010101010101
        0101010101010101010101000000020001010101010101010101010101010101
        0101000002000002020101010101010101010101010101010100000200020202
        0002010101010101010101010101010102020200020101020202020101010101
        0101010101010102020002020101010102020202010101010101010101010202
        0202020101010101010102020201010101010101010202020202010101010101
        0101010202020101010101010202020202010101010101010101010101020101
        0101010202020202010101010101010101010101010101010101010202020201
        0101010101010101010101010101010101010102020201010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101}
      OptionsImage.Margin = 5
      ParentBiDiMode = False
      TabOrder = 6
      OnClick = ButCancelarClick
    end
    object edtLocator: TcxTextEdit
      Left = 996
      Top = 8
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 91
    end
    object btnGetRequestOrder: TcxButton
      Left = 1093
      Top = 2
      Width = 43
      Height = 34
      Caption = '   &I'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0002000000040000000500000004000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000040000
        000A000000110000001400000011000000090000000300000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000050000000D0307
        10380F2455C01D448BFA152F63BD040810310000000900000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000050000000D0408133D1D45
        83EC5294CBFF63AEE5FF8AB5DAFF203E70C20000001100000004000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000040000000D040A143C214E8DEC5AA8
        DEFF4598E0FF93D4F6FFEAF8FEFF2C5696F00000001400000005000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000001000000040000000C050C163B265695EC5CA9DFFF3E94
        DDFF92D3F6FFEAF9FFFF76B2DDFF254878C20000001100000004000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0002000000030000000400000004000000040000000400000004000000030000
        000100000001000000040000000C0D0B0B392B5E9CEC5BABE0FF4096DFFF92D3
        F6FFEAF9FFFF86C8EEFF32619FEC070D16380000000A00000002000000000000
        0000000000000000000000000000000000000000000100000003000000050000
        00080000000B0000000E0000000F00000010000000100000000E0000000B0000
        0008000000070000000C110A08397B4C3EF58792A6FF4398E0FF93D4F6FFEAF9
        FFFF87C7EEFF3468A4EC070E183D0000000D0000000400000001000000000000
        00000000000000000000000000010000000200000004000000090C0807263B28
        21835C3D34C4775045F77A5145FF794F42FF794F43FF5C3B33CA3B26208C110B
        093700000014110A083B784C40EBAC8071FF835548FFA7BAC7FFEAF9FFFF88C8
        F0FF376CA9EC080F193C0000000D000000050000000100000000000000000000
        0000000000000000000100000002000000060604041749332C96856154F7B294
        89FFCFB8ADFFEBD9CFFFECDCD0FFECDBD0FFEBDBD0FFCFB8ACFFAE9084FF815A
        4EFF4E332BB76A4438EEA77D6FFF8F6354FFC3A79FFFC8B2AAFFB2CAD9FF3A71
        ADEC08101A3B0000000D00000005000000010000000000000000000000000000
        0000000000000000000200000006140E0C2F725246D9B59A8FFFE6D4CAFFF0E3
        DAFFF9F2EBFFFDF9F3FFFFFCF7FFFFFCF7FFFDFAF3FFFAF3EDFFF3E7DEFFE6D4
        CAFFAE9084FF7B5447FF745045FFBDA29AFFFDFCFBFFDDCEC8FF895F53F5110F
        0F390000000C0000000400000001000000000000000000000000000000000000
        00000000000100000005110C0B29886459EDD4C2B9FFEFE0D7FFF9F2EAFFF3EA
        DEFFD4BB9CFFC09D73FFB38855FFB48956FFC49F75FFD7BE9FFFF4EBDFFFFBF5
        F0FFF0E2D9FFCDB6ABFF825A4FFFB2A29DFFD4C6C1FF825C51EB140D0B390000
        000C000000040000000100000000000000000000000000000000000000000000
        000100000003050403127A594FD5D6C5BEFFEEE2D8FFFCF6EFFFDBC5ACFFB489
        59FFCDA872FFDDC18AFFEBD49DFFECD7A2FFE2C995FFD2B481FFBC9362FFDFCA
        B0FFFDF9F3FFF1E5DCFFCCB4A9FF815D52FF6F4D41EE110B09390000000C0000
        0004000000010000000000000000000000000000000000000000000000000000
        0001000000054836307FC1ACA3FFF0E4DDFFF8F0E8FFC4A17EFFBC915EFFDCB7
        7AFFE3BF7FFFE3C07FFFE4C585FFE7CC8FFFEBD39BFFEFDCABFFE7D4A4FFC7A2
        71FFCBAC86FFFAF5EDFFF0E3DAFFB5998EFF5A3E35BD00000015000000070000
        0001000000000000000000000000000000000000000000000000000000010000
        0003090706179B786DF5F2EBE7FFF3E8E1FFCEB094FFBD8F5CFFDFB371FFDFB7
        74FFE2BA79FFE3BE7FFFE5C385FFE6C78AFFE9CB91FFEBD198FFEED9A8FFF0DE
        B2FFCAA578FFD7BD9FFFF7EFE8FFE8D7CEFF8E695CFC150E0C3A000000080000
        0002000000000000000000000000000000000000000000000000000000010000
        000443332E6FC8B2AAFFF5EDE8FFECDDD0FFAE7A4FFFDAA867FFDEAE6DFFDFB2
        73FFE2B77AFFE4BB7FFFE4BF85FFE6C38BFFE9C790FFEAC994FFEBCD98FFEED6
        A9FFEDD6AEFFBF9065FFF1E4D8FFF1E7DFFFBAA095FF4A342E940000000B0000
        0003000000000000000000000000000000000000000000000000000000010000
        0005735950B5E5D9D6FFF3EAE3FFCCAA91FFC28A55FFDDA768FFDFAC6DFFDFAF
        73FFE2B379FFE4B77FFFE5BA83FFE7BF89FFE9C38FFFEAC493FFEBC696FFEBC9
        99FFF0D4AEFFD5AF87FFD8BAA0FFF5EBE4FFDAC6BDFF74544AD50000000E0000
        0004000000000000000000000000000000000000000000000000000000010000
        0005947369E0F8F4F3FFF3E9E2FFB17F5EFFD2955EFFDDA368FFE1AC76FFEAC4
        A0FFEDCBADFFEDC8A7FFE9C39CFFE7B98AFFE8BC8BFFE9BF90FFE9C092FFEAC2
        95FFECC9A0FFE5C29DFFC59877FFF6EEE8FFEADCD4FF8F6A5EFA020101130000
        0004000000000000000000000000000000000000000000000000000000010000
        0006A58379F1FFFEFEFFF3EBE5FFA46946FFD89961FFE1AA78FFF0D5C3FFF0D4
        C2FFEFCFBBFFEECDB4FFEECAAEFFECC7A7FFE8B98DFFE8B88CFFE8BA90FFE8BB
        91FFEABE95FFECC7A5FFBD8966FFF8F0EBFFF1E4DDFF9C7669FF0B0807220000
        0005000000010000000000000000000000000000000000000000000000010000
        0005AA897EF1FFFFFFFFF5EDE9FFA16544FFDB9861FFEECBB6FFF4DCD3FFF2D8
        CBFFF1D4C3FFEFCFBCFFEFCBB5FFEDC8AFFFEABF9FFFE7B189FFE7B38BFFE7B4
        8CFFE7B68EFFEAC1A2FFBF8669FFF7F1ECFFF2E7E1FF9F7A6EFF0907061E0000
        0004000000010000000000000000000000000000000000000000000000010000
        000498796FD7FAF7F6FFF8F2EFFFAB7158FFCF8B59FFF6E2DDFFF6E1DCFFF4DC
        D3FFF3D8CCFFF1D2C3FFEFCEBCFFEFCAB6FFEDC5ADFFE6AC85FFE6AE86FFE6AE
        89FFE7B08BFFE3B495FFC69278FFF6EFEAFFF0E6E2FF987568F4020101120000
        0004000000000000000000000000000000000000000000000000000000010000
        0003776058A8EAE0DCFFFBF8F7FFC39A88FFBC764EFFF7E6E4FFF8E6E5FFF6E1
        DDFFF4DCD4FFF3D7CCFFF1D1C3FFF0CDBCFFEEC7B3FFE5A67FFFE6A782FFE6A8
        83FFE7AC89FFD39C7EFFD6B2A0FFF5EDE8FFE4D7D2FF7F6358CC0000000C0000
        0003000000000000000000000000000000000000000000000000000000010000
        000244383361D6C2BBFFFFFEFEFFE7D6CEFF9F593DFFECCBBCFFF9EBECFFF8E6
        E5FFF6E1DDFFF4DBD4FFF3D6CCFFF1D1C3FFEBBDA5FFE3A27AFFE4A37CFFE4A3
        7CFFE5AA89FFBC7D65FFEDDED7FFF4ECE7FFCCB6AFFF53423B89000000090000
        0002000000000000000000000000000000000000000000000000000000000000
        000109070711AF9187E9F8F4F3FFFBF9F8FFBD9381FFAD6A4AFFF8E9E9FFF9EB
        ECFFF7E6E5FFF6E1DDFFF4DBD3FFF2D1C5FFE4A57FFFE19D74FFE29E75FFE29F
        77FFC6896CFFD4AD9DFFF5F0EAFFF6F0EDFFAE8C80FA120E0D28000000050000
        0001000000000000000000000000000000000000000000000000000000000000
        00010000000350413D6DDAC4BEFFFFFFFFFFF8F2F1FFB17F6AFFA86444FFE5BF
        AFFFF6E1DEFFF5DDD7FFEEC7B5FFE19F76FFE0996DFFE19A6EFFDA946BFFBF7F
        62FFC99A87FFF6EEEAFFF9F4F1FFD0BBB3FF5E4B449000000009000000030000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010202020791776EBFE8DAD6FFFFFFFFFFFBF8F6FFCDAC9EFF9F5D
        43FFBC744EFFCE855BFFDC9265FFDC9266FFD28A62FFC6825FFFB5765CFFDABB
        AEFFF7F2EEFFF9F5F2FFE5D9D4FF95776DD60B08081A00000004000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000020E0C0B16A98E83DAE9DDD7FFFFFFFFFFFCFAFAFFEBDC
        D5FFC69F90FFB27C66FFA46248FFA7664BFFBA856FFFD0A999FFEEE0D9FFF8F2
        EFFFFCF9F9FFE6D9D5FFAC8C82EA1A15132F0000000600000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000001000000020E0C0B17957D74C2DCC8C1FFFAF6F5FFFFFF
        FFFFFEFBFBFFFAF8F6FFF9F5F2FFF8F3F0FFF9F4F1FFFBF6F5FFFDFBFBFFFAF8
        F7FFD8C4BCFF9B8075D516121129000000060000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000002020202075345406DB99B90E9DDCA
        C2FFEEE5E1FFFAF8F7FFFFFFFFFFFFFFFFFFFAF7F6FFEEE5E1FFDBC7BFFFBA9C
        91F25B4B457F0706051200000005000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000003090807104036
        3256826D65A8A1877DCEB7998EEBBE9E92F49F847BCF877068B2463935610E0C
        0B19000000060000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0002000000030000000400000005000000060000000500000005000000040000
        0002000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000001000000010000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OptionsImage.Margin = 5
      TabOrder = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnGetRequestOrderClick
    end
    object edtManufactInvoice: TcxTextEdit
      Left = 782
      Top = 8
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 91
    end
  end
  object sqlGrid: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT A.ID_SUP_INVOICE AS ID,'
      'A.INVOICE_ID AS [INVOICE #],'
      'B.NAMEBUSINESS AS MANUFACTORY,'
      'C.COMPANYNAME AS COMPANY,'
      'A.DATE_INVOICE AS [INVOICE DATE],'
      'A.SALESREP,'
      'A.FREIGHT,'
      'A.TAX,'
      'A.MERCHANDISE,'
      'A.TOTAL,'
      'A.STATUS,'
      'A.ID_SUPPLIER,'
      'A.ID_COMPANY,'
      'A.ID_PAYMENT_METHOD,'
      'A.ID_REQUESTORDER'
      'FROM TBSUP_INVOICE A'
      'LEFT OUTER JOIN TBSUPPLIER B ON B.ID_SUPPLIER = A.ID_SUPPLIER'
      'LEFT OUTER JOIN TBCOMPANY C ON C.ID_COMPANY = A.ID_COMPANY'
      'WHERE (1=1) '
      '&WHERE1'
      '&WHERE2'
      '&WHERE3'
      '')
    Left = 513
    Top = 192
    MacroData = <
      item
        Value = Null
        Name = 'WHERE1'
        DataType = mdIdentifier
      end
      item
        Value = Null
        Name = 'WHERE2'
        DataType = mdIdentifier
      end
      item
        Value = Null
        Name = 'WHERE3'
        DataType = mdIdentifier
      end>
    object sqlGridID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID_SUP_INVOICE'
      ReadOnly = True
    end
    object sqlGridINVOICE: TStringField
      FieldName = 'INVOICE #'
      Origin = 'INVOICE_ID'
    end
    object sqlGridMANUFACTORY: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MANUFACTORY'
      Origin = 'NAMEBUSINESS'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object sqlGridCOMPANY: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPANY'
      Origin = 'COMPANYNAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object sqlGridINVOICEDATE: TSQLTimeStampField
      FieldName = 'INVOICE DATE'
      Origin = 'DATE_INVOICE'
    end
    object sqlGridSALESREP: TStringField
      FieldName = 'SALESREP'
      Origin = 'SALESREP'
      Size = 50
    end
    object sqlGridFREIGHT: TBCDField
      FieldName = 'FREIGHT'
      Origin = 'FREIGHT'
      Precision = 15
      Size = 2
    end
    object sqlGridTAX: TBCDField
      FieldName = 'TAX'
      Origin = 'TAX'
      Precision = 15
      Size = 2
    end
    object sqlGridTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 15
      Size = 2
    end
    object sqlGridSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object sqlGridMERCHANDISE: TBCDField
      FieldName = 'MERCHANDISE'
      Origin = 'MERCHANDISE'
      Precision = 15
      Size = 2
    end
    object sqlGridID_SUPPLIER: TIntegerField
      FieldName = 'ID_SUPPLIER'
      Origin = 'ID_SUPPLIER'
    end
    object sqlGridID_COMPANY: TIntegerField
      FieldName = 'ID_COMPANY'
      Origin = 'ID_COMPANY'
    end
    object sqlGridID_PAYMENT_METHOD: TIntegerField
      FieldName = 'ID_PAYMENT_METHOD'
      Origin = 'ID_PAYMENT_METHOD'
    end
    object sqlGridID_REQUESTORDER: TIntegerField
      FieldName = 'ID_REQUESTORDER'
      Origin = 'ID_REQUESTORDER'
    end
  end
  object dsGrid: TDataSource
    DataSet = sqlGrid
    Left = 372
    Top = 320
  end
  object TBCOMPANY: TFDTable
    Filtered = True
    IndexFieldNames = 'ID_COMPANY'
    Connection = DBDados.FDConnection
    UpdateOptions.UpdateTableName = 'TBCOMPANY'
    TableName = 'TBCOMPANY'
    Left = 655
    Top = 413
    object TBCOMPANYID_COMPANY: TIntegerField
      FieldName = 'ID_COMPANY'
      Origin = 'ID_COMPANY'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCOMPANYADD_DATE: TSQLTimeStampField
      FieldName = 'ADD_DATE'
      Origin = 'ADD_DATE'
    end
    object TBCOMPANYUPD_DATE: TSQLTimeStampField
      FieldName = 'UPD_DATE'
      Origin = 'UPD_DATE'
    end
    object TBCOMPANYTAX_ID: TStringField
      FieldName = 'TAX_ID'
      Origin = 'TAX_ID'
    end
    object TBCOMPANYCOMPANYNAME: TStringField
      FieldName = 'COMPANYNAME'
      Origin = 'COMPANYNAME'
      Size = 100
    end
    object TBCOMPANYTRADINGNAME: TStringField
      FieldName = 'TRADINGNAME'
      Origin = 'TRADINGNAME'
      Size = 50
    end
    object TBCOMPANYCOMPANYOWNER: TStringField
      FieldName = 'COMPANYOWNER'
      Origin = 'COMPANYOWNER'
      Size = 100
    end
    object TBCOMPANYPHONENUMBER: TStringField
      FieldName = 'PHONENUMBER'
      Origin = 'PHONENUMBER'
      Size = 15
    end
    object TBCOMPANYEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object TBCOMPANYADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Origin = 'ADDRESS1'
      Size = 100
    end
    object TBCOMPANYCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
      Size = 30
    end
    object TBCOMPANYST: TStringField
      FieldName = 'ST'
      Origin = 'ST'
      Size = 2
    end
    object TBCOMPANYCITY: TStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      Size = 40
    end
    object TBCOMPANYZIPCODE: TStringField
      FieldName = 'ZIPCODE'
      Origin = 'ZIPCODE'
      Size = 10
    end
    object TBCOMPANYID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
    end
    object TBCOMPANYESTIMATEDAYS: TIntegerField
      FieldName = 'ESTIMATEDAYS'
      Origin = 'ESTIMATEDAYS'
    end
    object TBCOMPANYTAX: TBCDField
      FieldName = 'TAX'
      Origin = 'TAX'
      Precision = 15
      Size = 2
    end
    object TBCOMPANYIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
      Size = 2147483647
    end
  end
  object DsCompany: TDataSource
    DataSet = TBCOMPANY
    Left = 687
    Top = 317
  end
  object sqlItem: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT '
      #9' I.ID_SUP_INVOICEITEM'
      #9',I.ID_SUP_INVOICE'
      #9',I.ID_SUPPLIER'
      #9',I.INVOICE_ID'
      #9',I.ID_PRODUCT'
      
        '        ,( P.PRODUCT_STYLE + '#39' '#39' + P.PRODUCT_STYLE_NAME  + '#39' '#39' +' +
        '  P.COLOR + '#39' '#39' + P.COLOR_NAME) AS PRODUCT_NAME'
      #9',I.WIDTH'
      #9',I.HEIGHT'
      #9',I.QTY'
      #9',I.TOTALAREA'
      #9',I.ROLLNUMBER'
      #9',I.DYELOT'
      #9',I.UNITPRICE'
      #9',I.AMOUNT'
      '        ,TP.DESCRIPTION AS [PRODUCT TYPE]'
      '        ,TS.DESCRIPTION AS [PRODUCT STYLE]'
      '        ,I.COUNTNEEDED'
      'FROM TBSUP_INVOICEITEM I'
      'INNER JOIN TBPRODUCT P ON P.ID_PRODUCT = I.ID_PRODUCT'
      'LEFT OUTER JOIN TBTYPEBRAND TP ON TP.ID_TYPEBRAND = P.ID_TYPE '
      'LEFT OUTER JOIN TBTYPEBRAND TS ON TS.ID_TYPEBRAND = P.STYLE'
      'WHERE I.ID_SUP_INVOICE = :ID_SUP_INVOICE'
      'AND I.ID_SUPPLIER      = :ID_SUPPLIER'
      'AND I.INVOICE_ID       = :INVOICE_ID')
    Left = 856
    Top = 225
    ParamData = <
      item
        Name = 'ID_SUP_INVOICE'
        DataType = ftInteger
        ADDataType = dtInt32
        ParamType = ptInput
      end
      item
        Name = 'ID_SUPPLIER'
        DataType = ftInteger
        ADDataType = dtInt32
        ParamType = ptInput
      end
      item
        Name = 'INVOICE_ID'
        DataType = ftString
        ADDataType = dtAnsiString
        ParamType = ptInput
      end>
    object sqlItemID_SUP_INVOICEITEM: TIntegerField
      FieldName = 'ID_SUP_INVOICEITEM'
      Origin = 'ID_SUP_INVOICEITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlItemID_SUP_INVOICE: TIntegerField
      FieldName = 'ID_SUP_INVOICE'
      Origin = 'ID_SUP_INVOICE'
      Required = True
    end
    object sqlItemID_SUPPLIER: TIntegerField
      FieldName = 'ID_SUPPLIER'
      Origin = 'ID_SUPPLIER'
    end
    object sqlItemINVOICE_ID: TStringField
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
    end
    object sqlItemID_PRODUCT: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = 'ID_PRODUCT'
    end
    object sqlItemPRODUCT_NAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUCT_NAME'
      Origin = 'PRODUCT_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 163
    end
    object sqlItemWIDTH: TFloatField
      FieldName = 'WIDTH'
      Origin = 'WIDTH'
    end
    object sqlItemHEIGHT: TFloatField
      FieldName = 'HEIGHT'
      Origin = 'HEIGHT'
    end
    object sqlItemQTY: TIntegerField
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object sqlItemTOTALAREA: TFloatField
      FieldName = 'TOTALAREA'
      Origin = 'TOTALAREA'
    end
    object sqlItemROLLNUMBER: TStringField
      FieldName = 'ROLLNUMBER'
      Origin = 'ROLLNUMBER'
      Size = 40
    end
    object sqlItemDYELOT: TStringField
      FieldName = 'DYELOT'
      Origin = 'DYELOT'
      Size = 40
    end
    object sqlItemUNITPRICE: TBCDField
      FieldName = 'UNITPRICE'
      Origin = 'UNITPRICE'
      Precision = 15
      Size = 2
    end
    object sqlItemAMOUNT: TBCDField
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      Precision = 15
      Size = 2
    end
    object sqlItemPRODUCTTYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUCT TYPE'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object sqlItemPRODUCTSTYLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUCT STYLE'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object sqlItemCOUNTNEEDED: TFloatField
      FieldName = 'COUNTNEEDED'
      Origin = 'COUNTNEEDED'
    end
  end
  object dsItem: TDataSource
    DataSet = sqlItem
    Left = 880
    Top = 409
  end
  object sqlTerms: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'select * from TBTERMS'
      'where tablename = :tablename and ID_PROCESS = :ID_PROCESS')
    Left = 781
    Top = 328
    ParamData = <
      item
        Name = 'TABLENAME'
        DataType = ftString
        ADDataType = dtInt32
        ParamType = ptInput
      end
      item
        Name = 'ID_PROCESS'
        DataType = ftInteger
        ADDataType = dtInt32
        ParamType = ptInput
      end>
    object sqlTermsID_TERMS: TFDAutoIncField
      FieldName = 'ID_TERMS'
      Origin = 'ID_TERMS'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlTermsTABLENAME: TStringField
      FieldName = 'TABLENAME'
      Origin = 'TABLENAME'
      Size = 30
    end
    object sqlTermsID_PROCESS: TIntegerField
      FieldName = 'ID_PROCESS'
      Origin = 'ID_PROCESS'
    end
    object sqlTermsDT_PROCESS: TDateField
      FieldName = 'DT_PROCESS'
      Origin = 'DT_PROCESS'
    end
    object sqlTermsNUM_DAYS: TIntegerField
      FieldName = 'NUM_DAYS'
      Origin = 'NUM_DAYS'
    end
    object sqlTermsDATE_DUE: TDateField
      FieldName = 'DATE_DUE'
      Origin = 'DATE_DUE'
    end
    object sqlTermsVALUE: TBCDField
      FieldName = 'VALUE'
      Origin = '[VALUE]'
      Precision = 12
      Size = 2
    end
    object sqlTermsADD_DATE: TSQLTimeStampField
      FieldName = 'ADD_DATE'
      Origin = 'ADD_DATE'
    end
    object sqlTermsUPD_DATE: TSQLTimeStampField
      FieldName = 'UPD_DATE'
      Origin = 'UPD_DATE'
    end
    object sqlTermsID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
    end
    object sqlTermsDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
  end
  object dsTerms: TDataSource
    DataSet = sqlTerms
    Left = 853
    Top = 328
  end
  object sqlPaymentMethod: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      ' SELECT ID_PAYMENT_METHOD, PAYMENT_DESCRIPTION'
      ' FROM TBPAYMENT_METHOD')
    Left = 716
    Top = 240
  end
  object dsPaymentMethod: TDataSource
    DataSet = sqlPaymentMethod
    Left = 732
    Top = 288
  end
end
