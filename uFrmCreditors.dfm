object FrmCreditors: TFrmCreditors
  Left = 0
  Top = 0
  Caption = 'Account Payable'
  ClientHeight = 496
  ClientWidth = 1073
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl: TcxPageControl
    Left = 0
    Top = 0
    Width = 1073
    Height = 441
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheetList
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageControlChange
    ClientRectBottom = 437
    ClientRectLeft = 4
    ClientRectRight = 1069
    ClientRectTop = 24
    object cxTabSheetList: TcxTabSheet
      Caption = 'Accounts Payable'
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
        Width = 1065
        Height = 413
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
          DataController.DataSource = dsGrid
          DataController.KeyFieldNames = 'ID_PAYABLE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'DISCOUNT'
            end
            item
              Kind = skSum
              FieldName = 'TAX'
            end
            item
              Kind = skSum
              FieldName = 'SHIPPING'
            end
            item
              Kind = skSum
              FieldName = 'TOTAL'
            end
            item
              Kind = skSum
              FieldName = 'SUBTOTAL'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.Indicator = True
          object cxGrid2DBTableView1ID_PAYABLE: TcxGridDBColumn
            DataBinding.FieldName = 'ID_PAYABLE'
            Width = 100
          end
          object cxGrid2DBTableView1EXPENSECATEGORY: TcxGridDBColumn
            DataBinding.FieldName = 'EXPENSECATEGORY'
            Width = 144
          end
          object cxGrid2DBTableView1NAMEBUSINESS: TcxGridDBColumn
            DataBinding.FieldName = 'NAMEBUSINESS'
            Width = 112
          end
          object cxGrid2DBTableView1INVOICE_ID: TcxGridDBColumn
            AlternateCaption = 'j'
            DataBinding.FieldName = 'INVOICE_ID'
            Width = 100
          end
          object cxGrid2DBTableView1DATE_DUE: TcxGridDBColumn
            DataBinding.FieldName = 'DATE_DUE'
            Width = 100
          end
          object cxGrid2DBTableView1PAYMENT_AMOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'PAYMENT_AMOUNT'
            Width = 113
          end
          object cxGrid2DBTableView1PAYMENT_STATUS: TcxGridDBColumn
            DataBinding.FieldName = 'PAYMENT_STATUS'
            Width = 124
          end
          object cxGrid2DBTableView1INVOICE_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'INVOICE_DATE'
            Width = 100
          end
          object cxGrid2DBTableView1METHOD: TcxGridDBColumn
            DataBinding.FieldName = 'METHOD'
            Width = 100
          end
          object cxGrid2DBTableView1DESCRIPTION: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIPTION'
            Width = 100
          end
          object cxGrid2DBTableView1INTERNALCOD: TcxGridDBColumn
            DataBinding.FieldName = 'INTERNALCOD'
            Width = 100
          end
          object cxGrid2DBTableView1DBUSER: TcxGridDBColumn
            DataBinding.FieldName = 'DBUSER'
            Width = 100
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
    object cxTabSheetForm: TcxTabSheet
      Caption = 'Registration Form'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      ExplicitLeft = 20
      ExplicitTop = -24
      object Panel1: TPanel
        Tag = -2
        Left = 0
        Top = 0
        Width = 1065
        Height = 27
        Align = alTop
        Alignment = taLeftJustify
        BevelInner = bvLowered
        Caption = '     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 710
        object Label1: TLabel
          Left = 317
          Top = 7
          Width = 367
          Height = 14
          Caption = 
            'Please fill out this form as completely and accurantely as possi' +
            'ble '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object pnl3: TPanel
        Tag = -2
        Left = 0
        Top = 123
        Width = 710
        Height = 27
        Alignment = taLeftJustify
        BevelInner = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label11: TLabel
          Left = 43
          Top = 6
          Width = 74
          Height = 14
          Caption = 'Manufacturer'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdiCodigo: TrsSuperEdit
          Tag = -2
          Left = 444
          Top = 3
          Width = 0
          Height = 22
          Alignment = taRightJustify
          Format = foInteger
          TagName = 'TRE_TREINAMENTO_ID'
          CT_Titulo = 'Consulta de Treinamento'
          CT_TableName = 'TRE_TREINAMENTO'
          CT_NumFields = 4
          CT_ColTit = 'ID;CursoID;NomeCurso;DataRealiza'#231#227'o'
          CT_ColField = 'TRE_TREINAMENTO_ID;CUR_ID;CUR_NOMCURSO;TRE_DTREALIZACAO'
          CT_RetField1 = 0
          CT_RetControl1 = EdiCodigo
          CT_RetField2 = 0
          CT_Test = False
          CT_ConsTab = True
          CT_KeyValue = EdiCodigo
          CT_Search = False
          MaxLength = 15
          Text = ''
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
        object btnLimpaSupplier: TcxButton
          Left = 664
          Top = 3
          Width = 26
          Height = 23
          Hint = 'Limpar campo Treinamento'
          OptionsImage.Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777777777777777777000000077777777077777700777777707777770307
            77777077777703307777770FBFBFB03307777770FBFBFB03307777770FBFBFB0
            3307777770FBFBFB03077777770FBFBFB00777777770FBFBFB07777777770000
            0077777777777777777777777777777777777777777777777777}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnLimpaSupplierClick
        end
        object edtSupplier: TEditBusca
          Left = 128
          Top = 4
          Width = 530
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
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
      end
      object pnl1: TPanel
        Tag = -2
        Left = 0
        Top = 69
        Width = 710
        Height = 27
        Alignment = taLeftJustify
        BevelInner = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label2: TLabel
          Left = 16
          Top = 8
          Width = 100
          Height = 14
          Caption = 'Expense Category'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rsSuperEdit1: TrsSuperEdit
          Tag = -2
          Left = 444
          Top = 3
          Width = 0
          Height = 22
          Alignment = taRightJustify
          Format = foInteger
          TagName = 'TRE_TREINAMENTO_ID'
          CT_Titulo = 'Consulta de Treinamento'
          CT_TableName = 'TRE_TREINAMENTO'
          CT_NumFields = 4
          CT_ColTit = 'ID;CursoID;NomeCurso;DataRealiza'#231#227'o'
          CT_ColField = 'TRE_TREINAMENTO_ID;CUR_ID;CUR_NOMCURSO;TRE_DTREALIZACAO'
          CT_RetField1 = 0
          CT_RetControl1 = rsSuperEdit1
          CT_RetField2 = 0
          CT_Test = False
          CT_ConsTab = True
          CT_KeyValue = rsSuperEdit1
          CT_Search = False
          MaxLength = 15
          Text = ''
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
        object cxLookupComboBoxExpense: TcxLookupComboBox
          Left = 127
          Top = 2
          Properties.KeyFieldNames = 'ID_EXPENSECATEGORY'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRIPTION'
            end>
          Properties.ListSource = dsExpenseCategory
          TabOrder = 1
          Width = 562
        end
      end
      object pnl4: TPanel
        Tag = -2
        Left = 0
        Top = 151
        Width = 710
        Height = 27
        Alignment = taLeftJustify
        BevelInner = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object Label3: TLabel
          Left = 64
          Top = 8
          Width = 52
          Height = 14
          Caption = 'Invoice ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 473
          Top = 8
          Width = 66
          Height = 14
          Caption = 'Invoice Date'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rsSuperEdit2: TrsSuperEdit
          Tag = -2
          Left = 444
          Top = 3
          Width = 0
          Height = 22
          Alignment = taRightJustify
          Format = foInteger
          TagName = 'TRE_TREINAMENTO_ID'
          CT_Titulo = 'Consulta de Treinamento'
          CT_TableName = 'TRE_TREINAMENTO'
          CT_NumFields = 4
          CT_ColTit = 'ID;CursoID;NomeCurso;DataRealiza'#231#227'o'
          CT_ColField = 'TRE_TREINAMENTO_ID;CUR_ID;CUR_NOMCURSO;TRE_DTREALIZACAO'
          CT_RetField1 = 0
          CT_RetControl1 = rsSuperEdit2
          CT_RetField2 = 0
          CT_Test = False
          CT_ConsTab = True
          CT_KeyValue = rsSuperEdit2
          CT_Search = False
          MaxLength = 15
          Text = ''
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
        object edtInvoice: TcxTextEdit
          Left = 128
          Top = 3
          TabOrder = 1
          Width = 145
        end
        object InvoiceDate: TcxDateEdit
          Left = 545
          Top = 3
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 145
        end
      end
      object pnl5: TPanel
        Tag = -2
        Left = 0
        Top = 179
        Width = 710
        Height = 28
        Alignment = taLeftJustify
        BevelInner = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object Label4: TLabel
          Left = 69
          Top = 5
          Width = 47
          Height = 14
          Caption = 'Data Due'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rsSuperEdit3: TrsSuperEdit
          Tag = -2
          Left = 444
          Top = 3
          Width = 0
          Height = 22
          Alignment = taRightJustify
          Format = foInteger
          TagName = 'TRE_TREINAMENTO_ID'
          CT_Titulo = 'Consulta de Treinamento'
          CT_TableName = 'TRE_TREINAMENTO'
          CT_NumFields = 4
          CT_ColTit = 'ID;CursoID;NomeCurso;DataRealiza'#231#227'o'
          CT_ColField = 'TRE_TREINAMENTO_ID;CUR_ID;CUR_NOMCURSO;TRE_DTREALIZACAO'
          CT_RetField1 = 0
          CT_RetControl1 = rsSuperEdit3
          CT_RetField2 = 0
          CT_Test = False
          CT_ConsTab = True
          CT_KeyValue = rsSuperEdit3
          CT_Search = False
          MaxLength = 15
          Text = ''
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
        object InvoiceDateDue: TcxDateEdit
          Left = 128
          Top = 4
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 145
        end
      end
      object pnl6: TPanel
        Tag = -2
        Left = 0
        Top = 206
        Width = 710
        Height = 27
        Alignment = taLeftJustify
        BevelInner = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object Label5: TLabel
          Left = 72
          Top = 7
          Width = 44
          Height = 14
          Caption = 'Amount'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rsSuperEdit4: TrsSuperEdit
          Tag = -2
          Left = 444
          Top = 3
          Width = 0
          Height = 22
          Alignment = taRightJustify
          Format = foInteger
          TagName = 'TRE_TREINAMENTO_ID'
          CT_Titulo = 'Consulta de Treinamento'
          CT_TableName = 'TRE_TREINAMENTO'
          CT_NumFields = 4
          CT_ColTit = 'ID;CursoID;NomeCurso;DataRealiza'#231#227'o'
          CT_ColField = 'TRE_TREINAMENTO_ID;CUR_ID;CUR_NOMCURSO;TRE_DTREALIZACAO'
          CT_RetField1 = 0
          CT_RetControl1 = rsSuperEdit4
          CT_RetField2 = 0
          CT_Test = False
          CT_ConsTab = True
          CT_KeyValue = rsSuperEdit4
          CT_Search = False
          MaxLength = 15
          Text = ''
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
        object edtAmount: TcxCurrencyEdit
          Left = 128
          Top = 4
          TabOrder = 1
          Width = 145
        end
      end
      object pnl7: TPanel
        Tag = -2
        Left = 0
        Top = 234
        Width = 710
        Height = 34
        Alignment = taLeftJustify
        BevelInner = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object Label6: TLabel
          Left = 446
          Top = 9
          Width = 93
          Height = 14
          Caption = 'Payment Method'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 3
          Top = 9
          Width = 114
          Height = 14
          Caption = 'Payment Description'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rsSuperEdit5: TrsSuperEdit
          Tag = -2
          Left = 444
          Top = 4
          Width = 0
          Height = 22
          Alignment = taRightJustify
          Format = foInteger
          TagName = 'TRE_TREINAMENTO_ID'
          CT_Titulo = 'Consulta de Treinamento'
          CT_TableName = 'TRE_TREINAMENTO'
          CT_NumFields = 4
          CT_ColTit = 'ID;CursoID;NomeCurso;DataRealiza'#231#227'o'
          CT_ColField = 'TRE_TREINAMENTO_ID;CUR_ID;CUR_NOMCURSO;TRE_DTREALIZACAO'
          CT_RetField1 = 0
          CT_RetControl1 = rsSuperEdit5
          CT_RetField2 = 0
          CT_Test = False
          CT_ConsTab = True
          CT_KeyValue = rsSuperEdit5
          CT_Search = False
          MaxLength = 15
          Text = ''
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
        object cxLookupComboBoxPaymentMethod: TcxLookupComboBox
          Left = 545
          Top = 6
          Properties.KeyFieldNames = 'ID_PAYMENT_METHOD'
          Properties.ListColumns = <
            item
              FieldName = 'PAYMENT_DESCRIPTION'
            end>
          Properties.ListSource = dsPaymentMethod
          TabOrder = 1
          Width = 145
        end
        object edtPaymentDesc: TcxTextEdit
          Left = 128
          Top = 6
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 50
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 297
        end
      end
      object pnl2: TPanel
        Tag = -2
        Left = 0
        Top = 96
        Width = 710
        Height = 27
        Alignment = taLeftJustify
        BevelInner = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label9: TLabel
          Left = 64
          Top = 8
          Width = 52
          Height = 14
          Caption = 'Company'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rsSuperEdit6: TrsSuperEdit
          Tag = -2
          Left = 444
          Top = 3
          Width = 0
          Height = 22
          Alignment = taRightJustify
          Format = foInteger
          TagName = 'TRE_TREINAMENTO_ID'
          CT_Titulo = 'Consulta de Treinamento'
          CT_TableName = 'TRE_TREINAMENTO'
          CT_NumFields = 4
          CT_ColTit = 'ID;CursoID;NomeCurso;DataRealiza'#231#227'o'
          CT_ColField = 'TRE_TREINAMENTO_ID;CUR_ID;CUR_NOMCURSO;TRE_DTREALIZACAO'
          CT_RetField1 = 0
          CT_RetControl1 = rsSuperEdit6
          CT_RetField2 = 0
          CT_Test = False
          CT_ConsTab = True
          CT_KeyValue = rsSuperEdit6
          CT_Search = False
          MaxLength = 15
          Text = ''
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
        object cxLookupComboBoxCompany: TcxLookupComboBox
          Left = 127
          Top = 3
          Properties.DropDownRows = 20
          Properties.KeyFieldNames = 'ID_COMPANY'
          Properties.ListColumns = <
            item
              FieldName = 'COMPANYNAME'
            end>
          Properties.ListSource = DsCompany
          TabOrder = 1
          Width = 562
        end
      end
      object rgStatus: TcxRadioGroup
        Left = 0
        Top = 28
        Caption = 'Status'
        Properties.Columns = 4
        Properties.Items = <
          item
            Caption = 'Open'
            Value = '1'
          end
          item
            Caption = 'Paid'
            Value = '2'
          end
          item
            Caption = 'Overdue'
            Value = '3'
          end
          item
            Caption = 'Void'
            Value = '4'
          end>
        ItemIndex = 0
        TabOrder = 8
        Height = 40
        Width = 710
      end
    end
  end
  object Panel27: TPanel
    Left = 0
    Top = 441
    Width = 1073
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object ButNovo: TcxButton
      Left = 2
      Top = 2
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
      Left = 37
      Top = 2
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
      Left = 72
      Top = 2
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
    object ButSair: TcxButton
      Left = 142
      Top = 2
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
      TabOrder = 3
      OnClick = ButSairClick
    end
    object ButSalvar: TcxButton
      Left = 281
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
      TabOrder = 4
      OnClick = ButSalvarClick
    end
    object ButCancelar: TcxButton
      Left = 322
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
      TabOrder = 5
      OnClick = ButCancelarClick
    end
    object ButImprimir: TcxButton
      Left = 107
      Top = 2
      Width = 36
      Height = 33
      Hint = 'Exportar para Excel'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      OptionsImage.Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006A006A6A6A006A006A6A6A006A
        006A6A6A006A006A6A6A006A006A6A6A006A006A6A6A006A006A6A6A006A006A
        6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6A6A6A006A00
        6A6A6A006A006A6A6A006A006A6A6A006A006A6A6A006A006A6A6A006A006A6A
        6A006A006A6A6A006A0092635DA6696BA6696BA6696AA5696AA5696AA5696AA5
        696A006A006A6A6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF006A006A6A6A966760F8E0BCFBE2BAF8DAB1F6D7
        A6F4D39FF3D098F3CC916A6A6A006A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6A6A006A00966762F2D9BD
        F4DABBF2D4B1F0D0AAEFCEA1EECA9CEDC695006A006A6A6AFFFFFF006A00006A
        00006A00FFFFFFFFFFFFFFFFFFFFFFFF006A00006A00006A00FFFFFF006A006A
        6A6A966762F2DDC6F6E1C1F2D8B8F2D4B1F0D0A9EFCEA3EECA9C6A6A6A006A00
        FFFFFFFFFFFF006A00006A00006A00FFFFFFFFFFFF006A00006A00006A00FFFF
        FFFFFFFF6A6A6A006A00966762F3E1CBF7E3C7F3DCC0F2D8B7F2D4B0F0D1AAEF
        CEA3006A006A6A6AFFFFFFFFFFFFFFFFFF006A00006A00006A00006A00006A00
        006A00FFFFFFFFFFFFFFFFFF006A006A6A6A966763F4E6D4F8E7D0F6E0C7F3DC
        BFF2D8B8F2D5B1F0D1AA6A6A6A006A00FFFFFFFFFFFFFFFFFFFFFFFF006A0000
        6A00006A00006A00FFFFFFFFFFFFFFFFFFFFFFFF6A6A6A006A00986A63F6EADA
        FAEBD9F6E3CFF4DEC6F3DCC0F2D8B8F0D4B1006A006A6A6AFFFFFFFFFFFFFFFF
        FFFFFFFF006A00006A00006A00006A00FFFFFFFFFFFFFFFFFFFFFFFF006A006A
        6A6A9D6D66F7EEE2FAEFE1F7E7D4F6E2CCF4E0C6F3DCBFF2D8B76A6A6A006A00
        FFFFFFFFFFFFFFFFFF006A00006A00006A00006A00006A00006A00FFFFFFFFFF
        FFFFFFFF6A6A6A006A00A37268F8F2EBFBF3E9F8EBDDF7E6D4F6E2CEF4E0C6F3
        DCBF006A006A6A6AFFFFFFFFFFFF006A00006A00006A00FFFFFFFFFFFF006A00
        006A00006A00FFFFFFFFFFFF006A006A6A6AA7766AFBF7F3FCF8F0FAEFE6F7EA
        DDF8E7D4F6E3CCF4DEC66A6A6A006A00FFFFFF006A00006A00006A00FFFFFFFF
        FFFFFFFFFFFFFFFF006A00006A00006A00FFFFFF6A6A6A006A00AC7A6CFEFBFA
        FFFEFBFCF4EDF8EEE6F8EBDDF8E9D4F7E3CE006A006A6A6AFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF006A006A
        6A6AB07E6DFEFCFBFFFFFFFFFAF6FCF3EBFAEFE5FAEDDDF8E7D46A6A6A006A00
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF6A6A6A006A00B5826FFCFBFBFFFFFFFFFEFEFFF8F6FCF4EDFAF0E5F8
        EBDD006A006A6A6A006A006A6A6A006A006A6A6A006A006A6A6A006A006A6A6A
        006A006A6A6A006A006A6A6A006A006A6A6ABA8670FCFBFBFFFFFFFFFFFFFFFE
        FEFFFAF4FBF4EDFAF0E56A6A6A006A006A6A6A006A006A6A6A006A006A6A6A00
        6A006A6A6A006A006A6A6A006A006A6A6A006A006A6A6A006A00BF8A73FEFCFB
        FFFFFFFFFFFFFFFFFFFFFFFEFEFAF4FCF3EDFAEFE5FAEBDCF7E7D4F6E2CCF4DD
        C4F6DDBFF2D9B7E0C6A5BAA78C897068FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFC58E74FEFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEF8F6FBF4EBFAEFE3
        F8EADCF7E7D4FFF2DAFAEED3D5C9B2B6AC98A9A18E87726BFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFCB9275FEFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFCFEFAF4FBF3EAFBF2E5FAEEDDCCA696A4766A986F6A926C69916C6D92695D
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF9777FEFCFCFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFCFEF8F3FFFBF2F4E7DCB0827AB47A5CD09159D0
        8745E68823B06D58FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD59A78FEFCFC
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFFFCF4E9E2AF81
        7AC68E67EFB062FFAB35C27952FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFD59A78FEFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF4EDEAAF827EC58E66FFBB59C2805CFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFD59A79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF8F6F7B18784D19762C4886DFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68D0906BD0906BD0906BD090
        6BD0906BD0906BD0906BD0906BD0906BD0906BD5936CB27760A06664FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 477
    Width = 1073
    Height = 19
    Panels = <
      item
        Text = 'User'
        Width = 300
      end
      item
        Text = 'Date created'
        Width = 300
      end
      item
        Text = 'Date modified'
        Width = 300
      end>
  end
  object sqlGrid: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT P.ID_PAYABLE'
      '   ,P.INVOICE_ID'
      '   ,P.INVOICE_DATE'
      '   ,S.NAMEBUSINESS'
      '   ,E.INTERNALCOD'
      '   ,E.DESCRIPTION AS EXPENSECATEGORY'
      '   ,P.PAYMENT_DESCRIPTION AS DESCRIPTION'
      '   ,P.DATE_DUE'
      '   ,P.PAYMENT_AMOUNT'
      '   ,P.PAYMENT_STATUS'
      '   ,M.PAYMENT_DESCRIPTION AS METHOD'
      '   ,(U.LASTNAME + '#39','#39' + U.FIRST_NAME) AS DBUSER'
      '   ,P.ID_SUPPLIER'
      '   ,P.ID_EXPENSECATEGORY'
      '   ,P.ID_PAYMENT_METHOD'
      '   ,P.ID_USER'
      '   ,P.ID_COMPANY'
      '   ,P.ADD_DATE'
      '   ,P.UPD_DATE'
      ''
      'FROM  TBPAYABLE P'
      'LEFT OUTER JOIN TBSUPPLIER S ON S.ID_SUPPLIER = P.ID_SUPPLIER'
      
        'LEFT OUTER JOIN TBEXPENSECATEGORY E ON E.ID_EXPENSECATEGORY = P.' +
        'ID_EXPENSECATEGORY'
      
        'LEFT OUTER JOIN TBPAYMENT_METHOD M ON M.ID_PAYMENT_METHOD = P.ID' +
        '_PAYMENT_METHOD'
      'LEFT OUTER JOIN TBUSER U ON U.ID_USER = P.ID_USER')
    Left = 796
    Top = 312
    object sqlGridID_PAYABLE: TFDAutoIncField
      FieldName = 'ID_PAYABLE'
      Origin = 'ID_PAYABLE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlGridINVOICE_ID: TStringField
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
    end
    object sqlGridINVOICE_DATE: TDateField
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
      Required = True
    end
    object sqlGridNAMEBUSINESS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAMEBUSINESS'
      Origin = 'NAMEBUSINESS'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object sqlGridINTERNALCOD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INTERNALCOD'
      Origin = 'INTERNALCOD'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object sqlGridEXPENSECATEGORY: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EXPENSECATEGORY'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object sqlGridDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'PAYMENT_DESCRIPTION'
      Size = 50
    end
    object sqlGridDATE_DUE: TDateField
      FieldName = 'DATE_DUE'
      Origin = 'DATE_DUE'
      Required = True
    end
    object sqlGridPAYMENT_AMOUNT: TBCDField
      FieldName = 'PAYMENT_AMOUNT'
      Origin = 'PAYMENT_AMOUNT'
      Required = True
      Precision = 15
      Size = 2
    end
    object sqlGridPAYMENT_STATUS: TStringField
      FieldName = 'PAYMENT_STATUS'
      Origin = 'PAYMENT_STATUS'
      Required = True
      Size = 10
    end
    object sqlGridMETHOD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'METHOD'
      Origin = 'PAYMENT_DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object sqlGridDBUSER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DBUSER'
      Origin = 'DBUSER'
      ProviderFlags = []
      ReadOnly = True
      Size = 41
    end
    object sqlGridID_SUPPLIER: TIntegerField
      FieldName = 'ID_SUPPLIER'
      Origin = 'ID_SUPPLIER'
      Required = True
    end
    object sqlGridID_EXPENSECATEGORY: TIntegerField
      FieldName = 'ID_EXPENSECATEGORY'
      Origin = 'ID_EXPENSECATEGORY'
    end
    object sqlGridID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
      Required = True
    end
    object sqlGridID_PAYMENT_METHOD: TIntegerField
      FieldName = 'ID_PAYMENT_METHOD'
      Origin = 'ID_PAYMENT_METHOD'
    end
    object sqlGridID_COMPANY: TIntegerField
      FieldName = 'ID_COMPANY'
      Origin = 'ID_COMPANY'
      Required = True
    end
    object sqlGridADD_DATE: TSQLTimeStampField
      FieldName = 'ADD_DATE'
      Origin = 'ADD_DATE'
      Required = True
    end
    object sqlGridUPD_DATE: TSQLTimeStampField
      FieldName = 'UPD_DATE'
      Origin = 'UPD_DATE'
    end
  end
  object sqlExpenseCategory: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      
        'select ID_EXPENSECATEGORY, (INTERNALCOD + '#39'     !     '#39' + DESCRI' +
        'PTION) as DESCRIPTION'
      'from [dbo].[TBEXPENSECATEGORY]')
    Left = 876
    Top = 320
    object sqlExpenseCategoryID_EXPENSECATEGORY: TFDAutoIncField
      FieldName = 'ID_EXPENSECATEGORY'
      Origin = 'ID_EXPENSECATEGORY'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlExpenseCategoryDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 61
    end
  end
  object dsExpenseCategory: TDataSource
    DataSet = sqlExpenseCategory
    Left = 820
    Top = 224
  end
  object sqlPaymentMethod: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      ' SELECT ID_PAYMENT_METHOD, PAYMENT_DESCRIPTION'
      ' FROM TBPAYMENT_METHOD')
    Left = 820
    Top = 168
  end
  object dsPaymentMethod: TDataSource
    DataSet = sqlPaymentMethod
    Left = 932
    Top = 152
  end
  object dsGrid: TDataSource
    DataSet = sqlGrid
    Left = 820
    Top = 96
  end
  object DsCompany: TDataSource
    DataSet = TBCOMPANY
    Left = 503
    Top = 348
  end
  object TBCOMPANY: TFDTable
    Filtered = True
    IndexFieldNames = 'ID_COMPANY'
    Connection = DBDados.FDConnection
    UpdateOptions.UpdateTableName = 'TBCOMPANY'
    TableName = 'TBCOMPANY'
    Left = 583
    Top = 340
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
  end
  object sqlAux: TFDQuery
    Connection = DBDados.FDConnection
    Left = 228
    Top = 160
  end
end
