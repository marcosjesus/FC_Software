object FrmVendorsContractors: TFrmVendorsContractors
  Left = 0
  Top = 0
  Caption = 'Staff'
  ClientHeight = 722
  ClientWidth = 1255
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1255
    Height = 722
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheetVendor
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageControl1Change
    ClientRectBottom = 718
    ClientRectLeft = 4
    ClientRectRight = 1251
    ClientRectTop = 24
    object cxTabSheetVendor: TcxTabSheet
      Caption = 'Staff'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 0
      ParentFont = False
      object cxGridPosition: TcxGrid
        Left = 0
        Top = 0
        Width = 1247
        Height = 694
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
          DataController.KeyFieldNames = 'ID_CONTRACTORS'
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
          NewItemRow.InfoText = 'Add New Vendor or Contractor'
          NewItemRow.Visible = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Appending = True
          OptionsSelection.InvertSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsView.NoDataToDisplayInfoText = '<No Data>'
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.Indicator = True
          object cxTableViewPositionID_MAIN_USER: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'ID_MAIN_USER'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID_USER'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListSource = dsUser
            Width = 194
          end
          object cxTableViewPositionID_SUPPLIER: TcxGridDBColumn
            Caption = 'Service Supplier Company'
            DataBinding.FieldName = 'ID_SUPPLIER'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID_SUPPLIER'
            Properties.ListColumns = <
              item
                FieldName = 'NAMEBUSINESS'
              end>
            Properties.ListSource = dsSupplier
            Width = 142
          end
          object cxTableViewPositionNAME: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'NAME'
            Width = 200
          end
          object cxTableViewPositionID_POSITION: TcxGridDBColumn
            Caption = 'Position'
            DataBinding.FieldName = 'ID_POSITION'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID_POSITION'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListSource = dsVendor
            Width = 200
          end
          object cxTableViewPositionPHONE: TcxGridDBColumn
            Caption = 'Phone #'
            DataBinding.FieldName = 'PHONE'
            Width = 100
          end
          object cxTableViewPositionEMAIL: TcxGridDBColumn
            Caption = 'E-mail'
            DataBinding.FieldName = 'EMAIL'
            Width = 100
          end
          object cxTableViewPositionBUYER: TcxGridDBColumn
            Caption = 'Buyer'
            DataBinding.FieldName = 'BUYER'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'NO'
                ImageIndex = 0
                Tag = 1
                Value = 'N'
              end
              item
                Description = 'YES'
                ImageIndex = 0
                Value = 'Y'
              end>
            Width = 60
          end
          object cxTableViewPositionBotao: TcxGridDBColumn
            Caption = ' View Pricing Table'
            DataBinding.FieldName = 'Botao'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.ViewStyle = vsButtonsOnly
            RepositoryItem = cxEditRepository1ButtonItem1
            Width = 100
          end
        end
        object cxGridLevelPosition: TcxGridLevel
          Caption = 'Staff'
          GridView = cxTableViewPosition
        end
      end
    end
    object cxTabSheetPricing: TcxTabSheet
      Caption = 'Pricing Table'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1247
        Height = 97
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 48
          Top = 24
          Width = 96
          Height = 13
          Caption = 'Select Pricing Table]'
        end
        object edtPricingTable: TEditBusca
          Left = 48
          Top = 43
          Width = 489
          Height = 21
          TabOrder = 0
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
        object ButSalvar: TcxButton
          Left = 577
          Top = 31
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
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = ButSalvarClick
        end
        object ButDelete: TcxButton
          Left = 618
          Top = 31
          Width = 36
          Height = 33
          Hint = 'Delete (Alt + D)'
          BiDiMode = bdLeftToRight
          Caption = '   &D'
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
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = ButDeleteClick
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 97
        Width = 1247
        Height = 597
        Align = alClient
        Caption = 'Panel2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object cxGrid1: TcxGrid
          Left = 1
          Top = 1
          Width = 1245
          Height = 595
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
            DataController.DataSource = dsVendorPricingTable
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxGrid1DBTableView1COMPANYNAME: TcxGridDBColumn
              DataBinding.FieldName = 'COMPANYNAME'
              Width = 200
            end
            object cxGrid1DBTableView1NOMINAL: TcxGridDBColumn
              DataBinding.FieldName = 'NOMINAL'
              Width = 200
            end
            object cxGrid1DBTableView1LOCATION: TcxGridDBColumn
              DataBinding.FieldName = 'LOCATION'
              Width = 200
            end
            object cxGrid1DBTableView1VENDOR: TcxGridDBColumn
              Caption = 'SALES REP'
              DataBinding.FieldName = 'VENDOR'
              Width = 200
            end
            object cxGrid1DBTableView1STARTDATE: TcxGridDBColumn
              DataBinding.FieldName = 'STARTDATE'
              Width = 200
            end
            object cxGrid1DBTableView1EXPIREDDATE: TcxGridDBColumn
              DataBinding.FieldName = 'EXPIREDDATE'
              Width = 200
            end
            object cxGrid1DBTableView1ACTIVE: TcxGridDBColumn
              Caption = 'DEFAULT'
              DataBinding.FieldName = 'ACTIVE'
              Width = 200
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
  end
  object sqlVendor: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT * FROM TBPOSITION ORDER BY NAME')
    Left = 280
    Top = 360
  end
  object dsVendor: TDataSource
    DataSet = sqlVendor
    Left = 264
    Top = 280
  end
  object sqlGrid: TFDQuery
    AfterEdit = sqlGridAfterEdit
    BeforePost = sqlGridBeforePost
    OnNewRecord = sqlGridNewRecord
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'Select * From TBCONTRACTORS order by Name')
    Left = 648
    Top = 208
    object sqlGridBotao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Botao'
      Calculated = True
    end
    object sqlGridID_CONTRACTORS: TIntegerField
      FieldName = 'ID_CONTRACTORS'
      Origin = 'ID_CONTRACTORS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlGridID_MAIN_USER: TIntegerField
      FieldName = 'ID_MAIN_USER'
      Origin = 'ID_MAIN_USER'
    end
    object sqlGridNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
    object sqlGridID_POSITION: TIntegerField
      FieldName = 'ID_POSITION'
      Origin = 'ID_POSITION'
    end
    object sqlGridPHONE: TStringField
      FieldName = 'PHONE'
      Origin = 'PHONE'
      Size = 12
    end
    object sqlGridEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object sqlGridDRIVER_LICENSE: TStringField
      FieldName = 'DRIVER_LICENSE'
      Origin = 'DRIVER_LICENSE'
    end
    object sqlGridID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
    end
    object sqlGridCOMISSION: TBCDField
      FieldName = 'COMISSION'
      Origin = 'COMISSION'
      Precision = 15
      Size = 2
    end
    object sqlGridID_COMPANY: TIntegerField
      FieldName = 'ID_COMPANY'
      Origin = 'ID_COMPANY'
    end
    object sqlGridADD_DATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ADD_DATE'
    end
    object sqlGridUPD_DATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'UPD_DATE'
      ProviderFlags = []
    end
    object sqlGridID_SUPPLIER: TIntegerField
      FieldName = 'ID_SUPPLIER'
      Origin = 'ID_SUPPLIER'
    end
    object sqlGridBUYER: TStringField
      FieldName = 'BUYER'
      Origin = 'BUYER'
      FixedChar = True
      Size = 1
    end
  end
  object dsGrid: TDataSource
    DataSet = sqlGrid
    Left = 648
    Top = 272
  end
  object sqlUser: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      
        'select ID_USER, LastName +'#39','#39'+ First_Name as NAME, PHONE_NUMBER,' +
        ' EMAIL, ID_COMPANY from TBUser order by LastName')
    Left = 792
    Top = 272
    object sqlUserID_USER: TFDAutoIncField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlUserNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAME'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 41
    end
    object sqlUserPHONE_NUMBER: TStringField
      FieldName = 'PHONE_NUMBER'
      Origin = 'PHONE_NUMBER'
      Size = 15
    end
    object sqlUserEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object sqlUserID_COMPANY: TIntegerField
      FieldName = 'ID_COMPANY'
      Origin = 'ID_COMPANY'
    end
  end
  object dsUser: TDataSource
    DataSet = sqlUser
    Left = 792
    Top = 328
  end
  object cxEditRepository1: TcxEditRepository
    Left = 288
    Top = 440
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
  object sqlVendorPricingTable: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT VP.ID_VENDOR_PRICINGTABLE, '
      '           CP.COMPANYNAME,'
      '           P.NAME AS '#39'NOMINAL'#39', '
      
        #9'   CASE P.ID_LOCATION WHEN '#39'1'#39' THEN '#39'SHOW ROOM'#39' WHEN '#39'2'#39' THEN '#39 +
        'WAREHOUSE'#39' END LOCATION,'
      #9'   C.NAME AS VENDOR,'
      #9'   P.STARTDATE,'
      #9'   P.EXPIREDDATE,'
      #9'   P.ACTIVE'
      'FROM TBPRICELIST P'
      
        'INNER JOIN TBVENDOR_PRICINGTABLE VP ON VP.ID_PRICELIST = P.ID_PR' +
        'ICELIST'
      'INNER JOIN TBCOMPANY CP ON CP.ID_COMPANY = P.ID_COMPANY'
      
        'INNER JOIN TBCONTRACTORS C ON C.ID_CONTRACTORS = VP.ID_CONTRACTO' +
        'RS'
      'WHERE  VP.ID_CONTRACTORS = :ID_CONTRACTORS')
    Left = 460
    Top = 217
    ParamData = <
      item
        Name = 'ID_CONTRACTORS'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsVendorPricingTable: TDataSource
    DataSet = sqlVendorPricingTable
    Left = 460
    Top = 297
  end
  object sqlAux: TFDQuery
    Connection = DBDados.FDConnection
    Left = 484
    Top = 417
  end
  object sqlSupplier: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'select * from TBSUPPLIER'
      'WHERE &WHERE1'
      'order by ID_SUPPLIER')
    Left = 164
    Top = 200
    MacroData = <
      item
        Value = Null
        Name = 'WHERE1'
        DataType = mdIdentifier
      end>
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
    object sqlSupplierTRADININGNAME: TStringField
      FieldName = 'TRADININGNAME'
      Origin = 'TRADININGNAME'
      Size = 50
    end
    object sqlSupplierCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
      Size = 30
    end
    object sqlSupplierSTATEE: TStringField
      FieldName = 'STATEE'
      Origin = 'STATEE'
      Size = 2
    end
    object sqlSupplierADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Origin = 'ADDRESS1'
      Size = 400
    end
    object sqlSupplierADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Origin = 'ADDRESS2'
      Size = 400
    end
    object sqlSupplierPHONENUMBER: TStringField
      FieldName = 'PHONENUMBER'
      Origin = 'PHONENUMBER'
      Size = 15
    end
    object sqlSupplierZIPCODE: TStringField
      FieldName = 'ZIPCODE'
      Origin = 'ZIPCODE'
      Size = 10
    end
    object sqlSupplierINDUSTRY: TStringField
      FieldName = 'INDUSTRY'
      Origin = 'INDUSTRY'
      Size = 50
    end
    object sqlSupplierPRODUCT_SERVICE: TStringField
      FieldName = 'PRODUCT_SERVICE'
      Origin = 'PRODUCT_SERVICE'
      Size = 400
    end
    object sqlSupplierCONTACTNAME1: TStringField
      FieldName = 'CONTACTNAME1'
      Origin = 'CONTACTNAME1'
      Size = 50
    end
    object sqlSupplierCONTACTEMAIL1: TStringField
      FieldName = 'CONTACTEMAIL1'
      Origin = 'CONTACTEMAIL1'
      Size = 100
    end
    object sqlSupplierCONTACTPOSITION1: TStringField
      FieldName = 'CONTACTPOSITION1'
      Origin = 'CONTACTPOSITION1'
      Size = 50
    end
    object sqlSupplierCONTACTPHONENUMBER1: TStringField
      FieldName = 'CONTACTPHONENUMBER1'
      Origin = 'CONTACTPHONENUMBER1'
      Size = 15
    end
    object sqlSupplierCONTACTNAME2: TStringField
      FieldName = 'CONTACTNAME2'
      Origin = 'CONTACTNAME2'
      Size = 50
    end
    object sqlSupplierCONTACTEMAIL2: TStringField
      FieldName = 'CONTACTEMAIL2'
      Origin = 'CONTACTEMAIL2'
      Size = 100
    end
    object sqlSupplierCONTACTPOSITION2: TStringField
      FieldName = 'CONTACTPOSITION2'
      Origin = 'CONTACTPOSITION2'
      Size = 50
    end
    object sqlSupplierCONTACTPHONENUMBER2: TStringField
      FieldName = 'CONTACTPHONENUMBER2'
      Origin = 'CONTACTPHONENUMBER2'
      Size = 15
    end
    object sqlSupplierWEBSITE: TStringField
      FieldName = 'WEBSITE'
      Origin = 'WEBSITE'
      Size = 100
    end
    object sqlSupplierADDITIONINFO: TStringField
      FieldName = 'ADDITIONINFO'
      Origin = 'ADDITIONINFO'
      Size = 4000
    end
    object sqlSupplierID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
    end
    object sqlSuppliercity: TStringField
      FieldName = 'city'
      Origin = 'city'
      Size = 50
    end
    object sqlSupplieradd_date: TSQLTimeStampField
      FieldName = 'add_date'
      Origin = 'add_date'
    end
    object sqlSupplierupd_date: TSQLTimeStampField
      FieldName = 'upd_date'
      Origin = 'upd_date'
    end
  end
  object dsSupplier: TDataSource
    DataSet = sqlSupplier
    Left = 164
    Top = 272
  end
end
