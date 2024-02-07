object FrmBrandType: TFrmBrandType
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Miscellaneous'
  ClientHeight = 675
  ClientWidth = 984
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 675
    Align = alClient
    TabOrder = 0
    object Page: TcxPageControl
      Left = 1
      Top = 1
      Width = 982
      Height = 654
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = TabMaterial
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 650
      ClientRectLeft = 4
      ClientRectRight = 978
      ClientRectTop = 24
      object TabMaterial: TcxTabSheet
        Caption = 'Product Type'
        ImageIndex = 0
        object cxGridPriceType: TcxGrid
          Left = 0
          Top = 0
          Width = 974
          Height = 626
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          RootLevelOptions.DetailTabsPosition = dtpTop
          object cxGridDBTableViewType: TcxGridDBTableView
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
            DataController.DataSource = dsGridType
            DataController.Filter.Active = True
            DataController.KeyFieldNames = 'ID_TYPEBRAND'
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
            NewItemRow.InfoText = 'Add New Type'
            NewItemRow.Visible = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.CellMultiSelect = True
            OptionsView.NoDataToDisplayInfoText = '<No Data>'
            OptionsView.Indicator = True
            object cxGridDBTableViewTypeCATEGORY: TcxGridDBColumn
              Caption = 'Category'
              DataBinding.FieldName = 'CATEGORY'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                'PRODUCT TYPE'
                '')
              Width = 100
            end
            object cxGridDBTableViewTypeDESCRIPTION: TcxGridDBColumn
              Caption = 'Type Description'
              DataBinding.FieldName = 'DESCRIPTION'
              Width = 400
            end
            object cxGridDBTableViewTypePROFIT_MIN: TcxGridDBColumn
              Caption = 'Profit minimun %'
              DataBinding.FieldName = 'PROFIT_MIN'
              Width = 100
            end
            object cxGridDBTableViewTypePROFIT_REGULAR: TcxGridDBColumn
              Caption = 'Profit %'
              DataBinding.FieldName = 'PROFIT_REGULAR'
              Width = 100
            end
          end
          object cxGridLevelType: TcxGridLevel
            Caption = 'Product Type'
            GridView = cxGridDBTableViewType
          end
        end
      end
      object TabBrand: TcxTabSheet
        AlignWithMargins = True
        Caption = 'Product Style'
        ImageIndex = 1
        object cxGridBrand: TcxGrid
          Left = 0
          Top = 0
          Width = 968
          Height = 620
          Align = alClient
          TabOrder = 0
          RootLevelOptions.DetailTabsPosition = dtpTop
          object cxGridDBTableViewBrand: TcxGridDBTableView
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
            DataController.DataSource = dsGridBrand
            DataController.Filter.Active = True
            DataController.KeyFieldNames = 'ID_TYPEBRAND'
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
            NewItemRow.InfoText = 'Add New Brand'
            NewItemRow.Visible = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.CellMultiSelect = True
            OptionsView.NoDataToDisplayInfoText = '<No Data>'
            OptionsView.Indicator = True
            object cxGridDBTableViewBrandCATEGORY: TcxGridDBColumn
              Caption = 'Category'
              DataBinding.FieldName = 'CATEGORY'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                'STYLE')
              Width = 100
            end
            object cxGridDBTableViewBrandDESCRIPTION: TcxGridDBColumn
              Caption = 'Brand Description'
              DataBinding.FieldName = 'DESCRIPTION'
              Width = 400
            end
          end
          object cxGridLevelBrand: TcxGridLevel
            Caption = 'Product Style'
            GridView = cxGridDBTableViewBrand
          end
        end
      end
      object TabRoom: TcxTabSheet
        Caption = 'Room'
        ImageIndex = 2
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 974
          Height = 626
          Align = alClient
          TabOrder = 0
          RootLevelOptions.DetailTabsPosition = dtpTop
          object cxGridDBTableView1: TcxGridDBTableView
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
            DataController.DataSource = dsGridRoom
            DataController.Filter.Active = True
            DataController.KeyFieldNames = 'ID_MISCELLANEOUS'
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
            NewItemRow.InfoText = 'Add New Brand'
            NewItemRow.Visible = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.CellMultiSelect = True
            OptionsView.NoDataToDisplayInfoText = '<No Data>'
            OptionsView.Indicator = True
            object cxGridDBTableView1DESCRIPTION: TcxGridDBColumn
              Caption = 'Room'
              DataBinding.FieldName = 'DESCRIPTION'
              Width = 389
            end
          end
          object cxGridLevel1: TcxGridLevel
            Caption = 'Room'
            GridView = cxGridDBTableView1
          end
        end
      end
      object TabDisplay: TcxTabSheet
        Caption = 'Sample Board'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 3
        ParentFont = False
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 974
          Height = 626
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          RootLevelOptions.DetailTabsPosition = dtpTop
          ExplicitTop = -2
          object cxGridDBTableView2: TcxGridDBTableView
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
            DataController.DataSource = dsSample
            DataController.Filter.Active = True
            DataController.KeyFieldNames = 'ID_SAMPLE'
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
            NewItemRow.InfoText = 'Add New Brand'
            NewItemRow.Visible = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.CellMultiSelect = True
            OptionsView.NoDataToDisplayInfoText = '<No Data>'
            OptionsView.Indicator = True
            object cxGridDBTableView2ID_SUPPLIER: TcxGridDBColumn
              Caption = 'Manufacturer'
              DataBinding.FieldName = 'ID_SUPPLIER'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ID_SUPPLIER'
              Properties.ListColumns = <
                item
                  FieldName = 'NAMEBUSINESS'
                end>
              Properties.ListSource = dsSupplier
              Width = 200
            end
            object cxGridDBTableView2PRODUCT_NAME: TcxGridDBColumn
              Caption = 'Sample'
              DataBinding.FieldName = 'PRODUCT_NAME'
              Width = 200
            end
            object cxGridDBTableView2PRODUCT_DESC: TcxGridDBColumn
              Caption = 'Sample Description'
              DataBinding.FieldName = 'PRODUCT_DESC'
              Width = 200
            end
          end
          object cxGridLevel2: TcxGridLevel
            Caption = 'Samples Board'
            GridView = cxGridDBTableView2
          end
        end
      end
      object TabService: TcxTabSheet
        Caption = 'Services'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 974
          Height = 626
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          RootLevelOptions.DetailTabsPosition = dtpTop
          object cxGridDBTableView3: TcxGridDBTableView
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
            DataController.DataSource = dsService
            DataController.Filter.Active = True
            DataController.KeyFieldNames = 'ID_LABOR'
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
            NewItemRow.InfoText = 'Add New Type'
            NewItemRow.Visible = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.CellMultiSelect = True
            OptionsView.NoDataToDisplayInfoText = '<No Data>'
            OptionsView.Indicator = True
            object cxGridDBTableView3DESCRIPTION: TcxGridDBColumn
              Caption = 'Service Description'
              DataBinding.FieldName = 'DESCRIPTION'
              Width = 532
            end
          end
          object cxGridLevel3: TcxGridLevel
            Caption = 'Services'
            GridView = cxGridDBTableView3
          end
        end
      end
      object TabInstallments: TcxTabSheet
        Caption = 'Installments'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 5
        ParentFont = False
        object cxGrid4: TcxGrid
          Left = 0
          Top = 0
          Width = 974
          Height = 626
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          RootLevelOptions.DetailTabsPosition = dtpTop
          object cxGridDBTableView4: TcxGridDBTableView
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
            DataController.DataSource = dsInstallments
            DataController.Filter.Active = True
            DataController.KeyFieldNames = 'ID_INSTALLMENTS'
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
            NewItemRow.InfoText = 'Add New Type'
            NewItemRow.Visible = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.CellMultiSelect = True
            OptionsView.NoDataToDisplayInfoText = '<No Data>'
            OptionsView.Indicator = True
            object cxGridDBTableView4DESCRIPTION: TcxGridDBColumn
              Caption = 'Description'
              DataBinding.FieldName = 'DESCRIPTION'
            end
            object cxGridDBTableView4INTERVAL: TcxGridDBColumn
              Caption = '# Installments'
              DataBinding.FieldName = 'INTERVAL'
              Width = 139
            end
            object cxGridDBTableView4QTDEDAYS: TcxGridDBColumn
              Caption = 'Interval'
              DataBinding.FieldName = 'QTDEDAYS'
              Width = 116
            end
          end
          object cxGridLevel4: TcxGridLevel
            Caption = 'Services'
            GridView = cxGridDBTableView4
          end
        end
      end
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 655
      Width = 982
      Height = 19
      Panels = <>
    end
  end
  object sqlGridType: TFDQuery
    AfterEdit = sqlGridTypeAfterEdit
    OnNewRecord = sqlGridTypeNewRecord
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT * FROM TBTYPEBRAND'
      'WHERE CATEGORY = '#39'PRODUCT TYPE'#39)
    Left = 568
    Top = 168
    object sqlGridTypeID_TYPEBRAND: TFDAutoIncField
      FieldName = 'ID_TYPEBRAND'
      Origin = 'ID_TYPEBRAND'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlGridTypeCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Origin = 'CATEGORY'
      Size = 15
    end
    object sqlGridTypeDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object sqlGridTypeADD_DATE: TDateField
      FieldName = 'ADD_DATE'
      Origin = 'ADD_DATE'
    end
    object sqlGridTypeUPD_DATE: TDateField
      FieldName = 'UPD_DATE'
      Origin = 'UPD_DATE'
    end
    object sqlGridTypeID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
    end
    object sqlGridTypePROFIT_MIN: TFloatField
      FieldName = 'PROFIT_MIN'
      Origin = 'PROFIT_MIN'
    end
    object sqlGridTypePROFIT_REGULAR: TFloatField
      FieldName = 'PROFIT_REGULAR'
      Origin = 'PROFIT_REGULAR'
    end
  end
  object sqlGridBrand: TFDQuery
    AfterEdit = sqlGridBrandAfterEdit
    OnNewRecord = sqlGridBrandNewRecord
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT * FROM TBTYPEBRAND'
      'WHERE CATEGORY = '#39'STYLE'#39)
    Left = 672
    Top = 169
    object sqlGridBrandID_TYPEBRAND: TFDAutoIncField
      FieldName = 'ID_TYPEBRAND'
      Origin = 'ID_TYPEBRAND'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlGridBrandCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Origin = 'CATEGORY'
      Size = 15
    end
    object sqlGridBrandDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object sqlGridBrandADD_DATE: TDateField
      FieldName = 'ADD_DATE'
      Origin = 'ADD_DATE'
    end
    object sqlGridBrandUPD_DATE: TDateField
      FieldName = 'UPD_DATE'
      Origin = 'UPD_DATE'
    end
    object sqlGridBrandID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
    end
    object sqlGridBrandPROFIT_MIN: TFloatField
      FieldName = 'PROFIT_MIN'
      Origin = 'PROFIT_MIN'
    end
    object sqlGridBrandPROFIT_REGULAR: TFloatField
      FieldName = 'PROFIT_REGULAR'
      Origin = 'PROFIT_REGULAR'
    end
  end
  object dsGridType: TDataSource
    DataSet = sqlGridType
    Left = 568
    Top = 232
  end
  object dsGridBrand: TDataSource
    DataSet = sqlGridBrand
    Left = 672
    Top = 233
  end
  object sqlGridRoom: TFDQuery
    AfterEdit = sqlGridRoomAfterEdit
    OnNewRecord = sqlGridRoomNewRecord
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT * FROM TBMISCELLANEOUS'
      'WHERE VALUE = '#39'ROOM'#39)
    Left = 789
    Top = 169
    object sqlGridRoomID_MISCELLANEOUS: TFDAutoIncField
      FieldName = 'ID_MISCELLANEOUS'
      Origin = 'ID_MISCELLANEOUS'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlGridRoomVALUE: TStringField
      FieldName = 'VALUE'
      Origin = '[VALUE]'
    end
    object sqlGridRoomDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object sqlGridRoomADD_DATE: TDateField
      FieldName = 'ADD_DATE'
      Origin = 'ADD_DATE'
    end
    object sqlGridRoomUPD_DATE: TDateField
      FieldName = 'UPD_DATE'
      Origin = 'UPD_DATE'
    end
    object sqlGridRoomID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
    end
  end
  object dsGridRoom: TDataSource
    DataSet = sqlGridRoom
    Left = 797
    Top = 233
  end
  object sqlSupplier: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT ID_SUPPLIER, NAMEBUSINESS FROM TBSUPPLIER'
      'ORDER BY NAMEBUSINESS')
    Left = 405
    Top = 169
    object sqlSupplierID_SUPPLIER: TIntegerField
      FieldName = 'ID_SUPPLIER'
      Origin = 'ID_SUPPLIER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlSupplierNAMEBUSINESS: TStringField
      FieldName = 'NAMEBUSINESS'
      Origin = 'NAMEBUSINESS'
      Size = 100
    end
  end
  object dsSupplier: TDataSource
    DataSet = sqlSupplier
    Left = 405
    Top = 257
  end
  object sqlService: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT ID_LABOR, DESCRIPTION, ID_TYPEBRAND FROM TBLABOR')
    Left = 181
    Top = 241
    object sqlServiceID_LABOR: TFDAutoIncField
      FieldName = 'ID_LABOR'
      Origin = 'ID_LABOR'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlServiceDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 100
    end
    object sqlServiceID_TYPEBRAND: TIntegerField
      FieldName = 'ID_TYPEBRAND'
      Origin = 'ID_TYPEBRAND'
    end
  end
  object dsService: TDataSource
    DataSet = sqlService
    Left = 245
    Top = 257
  end
  object sqlInstallments: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT * FROM TBINSTALLMENTS')
    Left = 285
    Top = 145
    object sqlInstallmentsID_INSTALLMENTS: TFDAutoIncField
      FieldName = 'ID_INSTALLMENTS'
      Origin = 'ID_INSTALLMENTS'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlInstallmentsDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object sqlInstallmentsINTERVAL: TIntegerField
      FieldName = 'INTERVAL'
      Origin = '[INTERVAL]'
    end
    object sqlInstallmentsQTDEDAYS: TIntegerField
      FieldName = 'QTDEDAYS'
      Origin = 'QTDEDAYS'
    end
  end
  object dsInstallments: TDataSource
    DataSet = sqlInstallments
    Left = 309
    Top = 233
  end
  object sqlSample: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      
        'SELECT ID_SAMPLE, ID_SUPPLIER, PRODUCT_NAME, PRODUCT_DESC, ID_US' +
        'ER, ADD_DATE, UPD_DATE FROM TBSAMPLE'
      'ORDER BY ID_SUPPLIER')
    Left = 189
    Top = 329
    object sqlSampleID_SAMPLE: TFDAutoIncField
      FieldName = 'ID_SAMPLE'
      Origin = 'ID_SAMPLE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlSampleID_SUPPLIER: TIntegerField
      FieldName = 'ID_SUPPLIER'
      Origin = 'ID_SUPPLIER'
    end
    object sqlSamplePRODUCT_NAME: TStringField
      FieldName = 'PRODUCT_NAME'
      Origin = 'PRODUCT_NAME'
      Size = 30
    end
    object sqlSamplePRODUCT_DESC: TStringField
      FieldName = 'PRODUCT_DESC'
      Origin = 'PRODUCT_DESC'
      Size = 60
    end
    object sqlSampleID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
    end
    object sqlSampleADD_DATE: TSQLTimeStampField
      FieldName = 'ADD_DATE'
      Origin = 'ADD_DATE'
    end
    object sqlSampleUPD_DATE: TSQLTimeStampField
      FieldName = 'UPD_DATE'
      Origin = 'UPD_DATE'
    end
  end
  object dsSample: TDataSource
    DataSet = sqlSample
    Left = 205
    Top = 401
  end
end
