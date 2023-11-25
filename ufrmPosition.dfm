object frmPosition: TfrmPosition
  Left = 0
  Top = 0
  Caption = 'Position'
  ClientHeight = 733
  ClientWidth = 1091
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
  object cxGridPosition: TcxGrid
    Left = 0
    Top = 0
    Width = 1091
    Height = 733
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    RootLevelOptions.DetailTabsPosition = dtpTop
    object cxTableViewPosition: TcxGridDBTableView
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
      DataController.KeyFieldNames = 'ID_POSITION'
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
      NewItemRow.InfoText = 'Add New Position'
      NewItemRow.Visible = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Appending = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.NoDataToDisplayInfoText = '<No Data>'
      OptionsView.Indicator = True
      object cxTableViewPositionNAME: TcxGridDBColumn
        Caption = 'Position'
        DataBinding.FieldName = 'NAME'
      end
      object cxTableViewPositionPRICINGTABLEVIEW: TcxGridDBColumn
        Caption = 'View Pricing Table'
        DataBinding.FieldName = 'PRICINGTABLEVIEW'
        Width = 100
      end
    end
    object cxGridLevelPosition: TcxGridLevel
      Caption = 'Position'
      GridView = cxTableViewPosition
    end
  end
  object sqlGrid: TFDQuery
    AfterEdit = sqlGridAfterEdit
    OnNewRecord = sqlGridNewRecord
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT * FROM TBPOSITION ORDER BY NAME')
    Left = 88
    Top = 192
    object sqlGridID_POSITION: TIntegerField
      FieldName = 'ID_POSITION'
      Origin = 'ID_POSITION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlGridNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 80
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
    object sqlGridPRICINGTABLEVIEW: TStringField
      FieldName = 'PRICINGTABLEVIEW'
      Origin = 'PRICINGTABLEVIEW'
      FixedChar = True
      Size = 1
    end
  end
  object dsGrid: TDataSource
    DataSet = sqlGrid
    Left = 160
    Top = 192
  end
end
