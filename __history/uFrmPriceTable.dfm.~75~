object frmPriceTable: TfrmPriceTable
  Left = 0
  Top = 0
  Caption = 'Pricing Table'
  ClientHeight = 673
  ClientWidth = 1124
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1124
    Height = 673
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheetList
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 669
    ClientRectLeft = 4
    ClientRectRight = 1120
    ClientRectTop = 24
    object cxTabSheetList: TcxTabSheet
      Caption = 'Pricing Table'
      ImageIndex = 0
      object cxGridPriceTable: TcxGrid
        Left = 0
        Top = 0
        Width = 1116
        Height = 645
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        RootLevelOptions.DetailTabsPosition = dtpTop
        object cxTableViewPriceTable: TcxGridDBTableView
          Navigator.Buttons.ConfirmDelete = True
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Hint = 'Primeiro'
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Hint = 'Anterior'
          Navigator.Buttons.Next.Hint = 'Pr'#243'ximo'
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Hint = #218'ltimo'
          Navigator.Buttons.Insert.Hint = 'Inserir registro'
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Hint = 'Excluir'
          Navigator.Buttons.Edit.Hint = 'Alterar'
          Navigator.Buttons.Post.Hint = 'Salvar'
          Navigator.Buttons.Cancel.Hint = 'Cancelar'
          Navigator.Buttons.Refresh.Hint = 'Atualizar'
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Hint = 'Filtro'
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dsGrid
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'ID_PRICELIST'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.IgnoreTimeForFiltering = True
          DateTimeHandling.MonthFormat = 'mmm'
          DateTimeHandling.YearFormat = 'yy'
          DateTimeHandling.DateFormat = 'dd/mm/yyyy'
          DateTimeHandling.HourFormat = 'hh:nn:ss'
          FilterRow.InfoText = 'Filter here'
          FilterRow.Visible = True
          NewItemRow.InfoText = 'Add New Price Table'
          NewItemRow.Visible = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Appending = True
          OptionsSelection.InvertSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsView.NoDataToDisplayInfoText = '<No Data>'
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.Indicator = True
          object cxTableViewPriceTableID_COMPANY: TcxGridDBColumn
            Caption = 'Company'
            DataBinding.FieldName = 'ID_COMPANY'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID_COMPANY'
            Properties.ListColumns = <
              item
                FieldName = 'COMPANYNAME'
              end>
            Properties.ListSource = dsCompanty
            Width = 200
          end
          object cxTableViewPriceTableID_LOCATION: TcxGridDBColumn
            Caption = 'Location'
            DataBinding.FieldName = 'ID_LOCATION'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID_LOCATION'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListSource = dsLocation
            Width = 120
          end
          object cxTableViewPriceTableCOMISSION: TcxGridDBColumn
            Caption = 'Comission %'
            DataBinding.FieldName = 'COMISSION'
          end
          object cxTableViewPriceTableDISCOUNT: TcxGridDBColumn
            Caption = 'Discount %'
            DataBinding.FieldName = 'DISCOUNT'
          end
          object cxTableViewPriceTableNAME: TcxGridDBColumn
            Caption = 'Nominal'
            DataBinding.FieldName = 'NAME'
            Width = 350
          end
          object cxTableViewPriceTableSTARTDATE: TcxGridDBColumn
            Caption = 'Start Date'
            DataBinding.FieldName = 'STARTDATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 120
          end
          object cxTableViewPriceTableEXPIREDDATE: TcxGridDBColumn
            Caption = 'Expired Date'
            DataBinding.FieldName = 'EXPIREDDATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 120
          end
          object cxTableViewPriceTableACTIVE: TcxGridDBColumn
            Caption = 'Default'
            DataBinding.FieldName = 'ACTIVE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Width = 100
          end
          object cxTableViewPriceTableColumn1: TcxGridDBColumn
            Caption = '   Create'
            DataBinding.FieldName = 'Botao'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.ViewStyle = vsButtonsOnly
            RepositoryItem = cxEditRepository1ButtonItem1
            Width = 53
          end
        end
        object cxGridLevelPriceTable: TcxGridLevel
          Caption = 'Price Table'
          GridView = cxTableViewPriceTable
        end
      end
    end
    object cxTabSheetItem: TcxTabSheet
      Caption = 'Pricing Table Item'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1116
        Height = 129
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Panel3: TPanel
          Tag = -1
          Left = 11
          Top = 7
          Width = 558
          Height = 31
          Alignment = taLeftJustify
          BevelInner = bvLowered
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label11: TLabel
            Left = 21
            Top = 6
            Width = 52
            Height = 14
            Caption = 'Company'
          end
          object edtCompanyName: TEdit
            Left = 79
            Top = 6
            Width = 466
            Height = 22
            Color = clInactiveCaption
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
          end
        end
        object Panel2: TPanel
          Tag = -1
          Left = 11
          Top = 42
          Width = 558
          Height = 31
          Alignment = taLeftJustify
          BevelInner = bvLowered
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Label1: TLabel
            Left = 21
            Top = 6
            Width = 47
            Height = 14
            Caption = 'Location'
          end
          object edtLocation: TEdit
            Left = 79
            Top = 5
            Width = 466
            Height = 22
            Color = clInactiveCaption
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
          end
        end
        object Panel4: TPanel
          Tag = -1
          Left = 11
          Top = 85
          Width = 558
          Height = 31
          Alignment = taLeftJustify
          BevelInner = bvLowered
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object Label2: TLabel
            Left = 21
            Top = 6
            Width = 44
            Height = 14
            Caption = 'Nominal'
          end
          object edtNominal: TEdit
            Left = 79
            Top = 5
            Width = 466
            Height = 22
            Color = clInactiveCaption
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
          end
        end
        object Panel5: TPanel
          Tag = -1
          Left = 603
          Top = 7
          Width = 233
          Height = 31
          Alignment = taLeftJustify
          BevelInner = bvLowered
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          object Label3: TLabel
            Left = 16
            Top = 7
            Width = 49
            Height = 14
            Caption = 'Star Date'
          end
          object edtStatDate: TEdit
            Left = 77
            Top = 6
            Width = 148
            Height = 22
            Color = clInactiveCaption
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
          end
        end
        object Panel6: TPanel
          Tag = -1
          Left = 603
          Top = 42
          Width = 233
          Height = 31
          Alignment = taLeftJustify
          BevelInner = bvLowered
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          object Label4: TLabel
            Left = 3
            Top = 6
            Width = 68
            Height = 14
            Caption = 'Expired Date'
          end
          object edtExpiredDate: TEdit
            Left = 77
            Top = 5
            Width = 148
            Height = 22
            Color = clInactiveCaption
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
          end
        end
        object rgActive: TRadioGroup
          Left = 603
          Top = 77
          Width = 233
          Height = 39
          Caption = 'Actived'
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Yes'
            'No')
          ParentFont = False
          TabOrder = 5
        end
      end
      object cxGridPriceTableItem: TcxGrid
        Left = 0
        Top = 129
        Width = 1116
        Height = 516
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        RootLevelOptions.DetailTabsPosition = dtpTop
        object cxGridDBTableViewPriceTableItem: TcxGridDBTableView
          Navigator.Buttons.ConfirmDelete = True
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Hint = 'Primeiro'
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Hint = 'Anterior'
          Navigator.Buttons.Next.Hint = 'Pr'#243'ximo'
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Hint = #218'ltimo'
          Navigator.Buttons.Insert.Hint = 'Inserir registro'
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Hint = 'Excluir'
          Navigator.Buttons.Edit.Hint = 'Alterar'
          Navigator.Buttons.Post.Hint = 'Salvar'
          Navigator.Buttons.Cancel.Hint = 'Cancelar'
          Navigator.Buttons.Refresh.Hint = 'Atualizar'
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Hint = 'Filtro'
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          DataController.DataSource = dsPriceItem
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'ID_PRICEITEM'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.IgnoreTimeForFiltering = True
          DateTimeHandling.MonthFormat = 'mmm'
          DateTimeHandling.YearFormat = 'yy'
          DateTimeHandling.DateFormat = 'dd/mm/yyyy'
          DateTimeHandling.HourFormat = 'hh:nn:ss'
          FilterRow.InfoText = 'Filter here'
          FilterRow.Visible = True
          NewItemRow.InfoText = 'Add New Price Table Item'
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsView.NoDataToDisplayInfoText = '<No Data>'
          OptionsView.Indicator = True
          object cxGridDBTableViewPriceTableItemID_PRICEITEM: TcxGridDBColumn
            Caption = 'Product ID'
            DataBinding.FieldName = 'ID_PRODUCT'
          end
          object cxGridDBTableViewPriceTableItemNAMEBUSINESS: TcxGridDBColumn
            Caption = 'SUPPLIER'
            DataBinding.FieldName = 'NAMEBUSINESS'
            Width = 200
          end
          object cxGridDBTableViewPriceTableItemTYPEOFPRODUCT: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'TYPEOFPRODUCT'
            Width = 100
          end
          object cxGridDBTableViewPriceTableItemTYPE: TcxGridDBColumn
            DataBinding.FieldName = 'TYPE'
            Width = 100
          end
          object cxGridDBTableViewPriceTableItemQTY: TcxGridDBColumn
            DataBinding.FieldName = 'QTY'
          end
          object cxGridDBTableViewPriceTableItemSTYLE: TcxGridDBColumn
            DataBinding.FieldName = 'STYLE'
            Width = 100
          end
          object cxGridDBTableViewPriceTableItemCOLOR: TcxGridDBColumn
            DataBinding.FieldName = 'COLOR'
            Width = 100
          end
          object cxGridDBTableViewPriceTableItemPRODUCT_NAME: TcxGridDBColumn
            Caption = 'PRODUCT NAME'
            DataBinding.FieldName = 'PRODUCT_NAME'
            Width = 200
          end
          object cxGridDBTableViewPriceTableItemPRICE_MINIMUM: TcxGridDBColumn
            Caption = 'U$ MINIMUM'
            DataBinding.FieldName = 'PRICE_MINIMUM'
          end
          object cxGridDBTableViewPriceTableItemPRICE_FINAL: TcxGridDBColumn
            Caption = 'U$ FINAL'
            DataBinding.FieldName = 'PRICE_FINAL'
          end
        end
        object cxGridLevelPriceTableItem: TcxGridLevel
          Caption = 'Pricing Table Item'
          GridView = cxGridDBTableViewPriceTableItem
        end
      end
    end
  end
  object sqlGrid: TFDQuery
    AfterEdit = sqlGridAfterEdit
    OnNewRecord = sqlGridNewRecord
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'Select * From TBPRICELIST '
      'WHERE &WHERE1'
      'order by ID_Company')
    Left = 488
    Top = 416
    MacroData = <
      item
        Value = Null
        Name = 'WHERE1'
        DataType = mdIdentifier
      end>
    object sqlGridID_PRICELIST: TFDAutoIncField
      FieldName = 'ID_PRICELIST'
      Origin = 'ID_PRICELIST'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlGridID_COMPANY: TIntegerField
      FieldName = 'ID_COMPANY'
      Origin = 'ID_COMPANY'
    end
    object sqlGridID_LOCATION: TIntegerField
      FieldName = 'ID_LOCATION'
      Origin = 'ID_LOCATION'
    end
    object sqlGridNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
    object sqlGridSTARTDATE: TDateField
      FieldName = 'STARTDATE'
      Origin = 'STARTDATE'
    end
    object sqlGridEXPIREDDATE: TDateField
      FieldName = 'EXPIREDDATE'
      Origin = 'EXPIREDDATE'
    end
    object sqlGridADD_DATE: TDateField
      FieldName = 'ADD_DATE'
      Origin = 'ADD_DATE'
    end
    object sqlGridUPD_DATE: TDateField
      FieldName = 'UPD_DATE'
      Origin = 'UPD_DATE'
    end
    object sqlGridID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
    end
    object sqlGridACTIVE: TStringField
      FieldName = 'ACTIVE'
      Origin = 'ACTIVE'
      FixedChar = True
      Size = 1
    end
    object sqlGridBotao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Botao'
      Size = 1
      Calculated = True
    end
    object sqlGridDISCOUNT: TBCDField
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      Precision = 15
      Size = 2
    end
    object sqlGridCOMISSION: TBCDField
      FieldName = 'COMISSION'
      Origin = 'COMISSION'
      Precision = 15
      Size = 2
    end
  end
  object dsGrid: TDataSource
    DataSet = sqlGrid
    Left = 536
    Top = 448
  end
  object sqlCompany: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'Select ID_COMPANY, COMPANYNAME, TRADINGNAME '
      'From TBCompany '
      'WHERE &WHERE1'
      'Order by  1')
    Left = 832
    Top = 384
    MacroData = <
      item
        Value = Null
        Name = 'WHERE1'
        DataType = mdIdentifier
      end>
    object sqlCompanyID_COMPANY: TIntegerField
      FieldName = 'ID_COMPANY'
      Origin = 'ID_COMPANY'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCompanyCOMPANYNAME: TStringField
      FieldName = 'COMPANYNAME'
      Origin = 'COMPANYNAME'
      Size = 100
    end
    object sqlCompanyTRADINGNAME: TStringField
      FieldName = 'TRADINGNAME'
      Origin = 'TRADINGNAME'
      Size = 50
    end
  end
  object dsCompanty: TDataSource
    DataSet = sqlCompany
    Left = 856
    Top = 472
  end
  object dxMemDataLocation: TdxMemData
    Active = True
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F020000000400000003000C0049445F4C4F43415449
      4F4E0028000000010005004E414D45000101000000010800000053484F57524F
      4F4D0102000000010900000057415245484F555345}
    SortOptions = []
    Left = 840
    Top = 248
    object dxMemDataLocationID_LOCATION: TIntegerField
      FieldName = 'ID_LOCATION'
    end
    object dxMemDataLocationNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
  end
  object dsLocation: TDataSource
    DataSet = dxMemDataLocation
    Left = 840
    Top = 312
  end
  object sqlPriceItem: TFDQuery
    AfterEdit = sqlPriceItemAfterEdit
    OnNewRecord = sqlPriceItemNewRecord
    Connection = DBDados.FDConnection
    SQL.Strings = (
      
        'SELECT I.ID_PRICEITEM, I.ID_PRICELIST, S.NAMEBUSINESS, TB.DESCRI' +
        'PTION AS TYPE, P.QTY, P.COLOR, P.PRODUCT_NAME , '
      
        'I.PRICE_MINIMUM, I.PRICE_FINAL, P.TYPEOFPRODUCT, P.STYLE, I.ID_P' +
        'RODUCT'
      'FROM TBPRICEITEM I'
      'INNER JOIN TBSUPPLIER S ON S.ID_SUPPLIER = I.ID_SUPPLIER'
      'INNER JOIN TBPRODUCT P ON P.ID_PRODUCT = I.ID_PRODUCT'
      
        'LEFT OUTER JOIN TBTYPEBRAND TB ON TB.ID_TYPEBRAND = P.ID_TYPE AN' +
        'D TB.CATEGORY = '#39'PRODUCT TYPE'#39
      'WHERE I.ID_PRICELIST = :ID_PRICELIST')
    Left = 220
    Top = 456
    ParamData = <
      item
        Name = 'ID_PRICELIST'
        DataType = ftInteger
        ADDataType = dtInt32
        ParamType = ptInput
        Value = 0
      end>
    object sqlPriceItemID_PRICEITEM: TFDAutoIncField
      FieldName = 'ID_PRICEITEM'
      Origin = 'ID_PRICEITEM'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlPriceItemID_PRICELIST: TIntegerField
      FieldName = 'ID_PRICELIST'
      Origin = 'ID_PRICELIST'
    end
    object sqlPriceItemNAMEBUSINESS: TStringField
      FieldName = 'NAMEBUSINESS'
      Origin = 'NAMEBUSINESS'
      Size = 100
    end
    object sqlPriceItemTYPE: TStringField
      FieldName = 'TYPE'
      Origin = 'TYPE'
      Size = 50
    end
    object sqlPriceItemQTY: TFloatField
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object sqlPriceItemCOLOR: TStringField
      FieldName = 'COLOR'
      Origin = 'COLOR'
      Size = 30
    end
    object sqlPriceItemPRODUCT_NAME: TStringField
      FieldName = 'PRODUCT_NAME'
      Origin = 'PRODUCT_NAME'
      Size = 500
    end
    object sqlPriceItemPRICE_MINIMUM: TBCDField
      FieldName = 'PRICE_MINIMUM'
      Origin = 'PRICE_MINIMUM'
      Precision = 15
      Size = 2
    end
    object sqlPriceItemPRICE_FINAL: TBCDField
      FieldName = 'PRICE_FINAL'
      Origin = 'PRICE_FINAL'
      Precision = 15
      Size = 2
    end
    object sqlPriceItemTYPEOFPRODUCT: TStringField
      FieldName = 'TYPEOFPRODUCT'
      Origin = 'TYPEOFPRODUCT'
      Size = 7
    end
    object sqlPriceItemSTYLE: TStringField
      FieldName = 'STYLE'
      Origin = 'STYLE'
      Size = 40
    end
    object sqlPriceItemID_PRODUCT: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = 'ID_PRODUCT'
    end
  end
  object dsPriceItem: TDataSource
    DataSet = sqlPriceItem
    Left = 212
    Top = 520
  end
  object cxEditRepository1: TcxEditRepository
    Left = 312
    Top = 368
    object cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Caption = 'Button'
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.ViewStyle = vsButtonsOnly
      Properties.OnButtonClick = cxEditRepository1ButtonItem1PropertiesButtonClick
    end
  end
  object sqlAux: TFDQuery
    Connection = DBDados.FDConnection
    Left = 284
    Top = 240
  end
end
