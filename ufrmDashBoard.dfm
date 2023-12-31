object frmDashBoard: TfrmDashBoard
  Left = 0
  Top = 0
  Caption = 'DashBoard'
  ClientHeight = 519
  ClientWidth = 1323
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1323
    Height = 150
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxComboBoxOption: TcxComboBox
      Left = 0
      Top = 0
      Properties.Items.Strings = (
        ' Receivable '
        ' Payable'
        ' Receivable & Payable')
      TabOrder = 0
      Text = ' Receivable & Payable'
      OnClick = cxComboBoxOptionClick
      Width = 139
    end
    object Panel8: TPanel
      Left = 1
      Top = 24
      Width = 1321
      Height = 125
      Align = alBottom
      TabOrder = 1
      object cxPageControlTop: TcxPageControl
        Left = 1
        Top = 1
        Width = 1319
        Height = 123
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabSheetTopUnique
        Properties.CustomButtons.Buttons = <>
        Properties.HideTabs = True
        ClientRectBottom = 119
        ClientRectLeft = 4
        ClientRectRight = 1315
        ClientRectTop = 4
        object cxTabSheetTopBoth: TcxTabSheet
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 0
          ParentColor = False
          ParentFont = False
          object Label1: TLabel
            Left = 166
            Top = 7
            Width = 87
            Height = 13
            Caption = 'Receivable Due'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 678
            Top = 2
            Width = 70
            Height = 13
            Caption = 'Payable Due'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblVenceFuturo: TLabel
            Left = 366
            Top = 82
            Width = 84
            Height = 13
            Caption = 'lblVenceFuturo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnVencidos: TSpeedButton
            Left = 166
            Top = 26
            Width = 153
            Height = 39
            Caption = '0.00'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object btnVenceHoje: TSpeedButton
            Left = 366
            Top = 26
            Width = 153
            Height = 39
            Caption = '0.00'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object btnAPagar: TSpeedButton
            Left = 678
            Top = 26
            Width = 153
            Height = 39
            Caption = '0.00'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object btnPGVenceHoje: TSpeedButton
            Left = 878
            Top = 26
            Width = 153
            Height = 39
            Caption = '0.00'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblpgVenceFuturo: TLabel
            Left = 878
            Top = 82
            Width = 98
            Height = 13
            Caption = 'lblpgVenceFuturo'
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label3: TLabel
            Left = 399
            Top = 7
            Width = 35
            Height = 13
            Caption = 'Today'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 912
            Top = 7
            Width = 35
            Height = 13
            Caption = 'Today'
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object cxTabSheetTopUnique: TcxTabSheet
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 1
          ParentFont = False
          TabVisible = False
          ExplicitLeft = 5
          ExplicitTop = -25
          object btnuqvencidos: TSpeedButton
            Left = 174
            Top = 34
            Width = 153
            Height = 39
            Caption = '0.00'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnuqvencidosClick
          end
          object btnuqvencehoje: TSpeedButton
            Left = 350
            Top = 34
            Width = 153
            Height = 39
            Caption = '0.00'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnuqvencehojeClick
          end
          object btnuqavencer: TSpeedButton
            Left = 542
            Top = 34
            Width = 153
            Height = 39
            Caption = '0.00'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnuqavencerClick
          end
          object btnuqrecebidos: TSpeedButton
            Left = 718
            Top = 34
            Width = 153
            Height = 39
            Caption = '0.00'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnuqrecebidosClick
          end
          object btnuqtotalperiodo: TSpeedButton
            Left = 902
            Top = 34
            Width = 153
            Height = 39
            Caption = '0.00'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnuqtotalperiodoClick
          end
          object Label5: TLabel
            Left = 224
            Top = 15
            Width = 42
            Height = 13
            Caption = 'Overdue'
          end
          object Label6: TLabel
            Left = 400
            Top = 15
            Width = 45
            Height = 13
            Caption = 'Due Date'
          end
          object Label7: TLabel
            Left = 592
            Top = 15
            Width = 49
            Height = 13
            Caption = 'To de Due'
          end
          object Label8: TLabel
            Left = 768
            Top = 15
            Width = 44
            Height = 13
            Caption = 'Received'
          end
          object Label9: TLabel
            Left = 960
            Top = 15
            Width = 24
            Height = 13
            Caption = 'Total'
          end
          object SpeedButton1: TSpeedButton
            Left = 1088
            Top = 1
            Width = 33
            Height = 30
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000020000000705120D39113D2A9E19593EDD1F6A49FF1E6A48FF1B5D
              3EE313422EAB0717104900000009000000020000000000000000000000000000
              000201020210113C299D20724EFF229A6DFF22B481FF24C78FFF24C890FF23B5
              81FF229C6FFF20724FFF154831B5010503190000000300000000000000010102
              020E174E36C0218A61FF25C58EFF26C992FF25CA93FF28CB93FF3AD3A3FF45D7
              ABFF27CA93FF25C18BFF218860FF19593CD5020503180000000200000005113C
              2995238A63FF27C993FF26CA94FF27CB95FF30CE9AFF42D0A4FF1F9063FF0D7F
              4DFF29CB95FF27CB95FF29CB95FF238F66FF144731AF00000009040F0B2D2176
              53FA2BC693FF29CB95FF2BCC97FF3FD5A7FF42C198FF228056FFABCABBFF0D7E
              4CFF32D09CFF2DCE99FF2ACB96FF2DC996FF247C58FF07191147113A288F2DA1
              78FF2ECD98FF36D19EFF51DAB2FF31A077FF448968FFDEEAE5FFF9F4F0FF0D7D
              4BFF5BE0B9FF5ADFB8FF4DD9B0FF30CF9BFF30A67DFF154933AF195A3ECA35C1
              93FF44D6ABFF51CEA7FF1F7C56FF86B19CFFFAF9F8FFF8F2EEFFF8F0EBFF0D7B
              4AFF0C7748FF0C7444FF228F65FF3BD4A4FF36C395FF1C694AE51C6B4AE946D1
              A4FF33A980FF296D4DFFC3D3CAFFFBF7F5FFF8F2EEFFF8F4F0FFF9F4F0FFFFFF
              FFFFFFFFFFFFFFFFFFFF0C6D41FF43D9AAFF49D5ABFF207853FA1D6B4BE35CD8
              B3FF30A980FF296E4CFFAEB7A9FFECE2DDFFF8F3EFFFF9F6F3FFFAF7F4FFE2D6
              D1FFE0D4CEFFE0D3CDFF0C6B3FFF48DBAFFF62DFBBFF227D59FC195E43C367D0
              B1FF50DEB2FF45CCA2FF1C7751FF73947EFFE4DBD5FFF7F4F2FFFBF9F6FF0B71
              42FF0C6E41FF0C6B40FF1D885CFF52E0B5FF6CD7B7FF1F7050DF113C2B7D5BB7
              98FF61E3BEFF54E1B9FF56E1BAFF319C77FF3B7255FFC8C8C0FFF3F0EDFF0C6E
              41FF5DE7BFFF5AE5BFFF58E3BBFF63E4C0FF65C1A5FF164F399E040E0A1F2C89
              67F58CE8CEFF5BE3BDFF5DE5BFFF5FE8C1FF4EC6A1FF1E6948FF95A898FF0B69
              3EFF61E9C5FF5FE8C1FF5FE5BFFF91EBD4FF2F9670FC07181236000000021242
              307C4CAE8CFF97F0DAFF67E8C4FF62EAC4FF67EAC8FF64E4C2FF2C8462FF0C65
              3BFF67EAC8FF6EECC9FF9EF3DCFF52B493FF16543D9A00000005000000000002
              0105195D44A550B393FFA3EDDAFF95F2D9FF86EFD6FF78EED0FF79EFD1FF87F0
              D7FF96F2DDFFA0ECD8FF4CB592FF1C6C4FB80103030C00000001000000000000
              000000000002124633782F9F77F76AC9ACFF89DEC6FFA7EDDBFFA9F0DEFF8CE1
              C9FF6DCEAFFF30A67DF916563F8F010201080000000100000000000000000000
              00000000000000000001040F0B1B144E3A7E207F5FC226926DDA269670DF2185
              63C816543F850617112900000003000000010000000000000000}
            ParentFont = False
            OnClick = SpeedButton1Click
          end
          object SpeedButton2: TSpeedButton
            Left = 1266
            Top = -1
            Width = 33
            Height = 30
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000020000000705120D39113D2A9E19593EDD1F6A49FF1E6A48FF1B5D
              3EE313422EAB0717104900000009000000020000000000000000000000000000
              000201020210113C299D20724EFF229A6DFF22B481FF24C78FFF24C890FF23B5
              81FF229C6FFF20724FFF154831B5010503190000000300000000000000010102
              020E174E36C0218A61FF25C58EFF26C992FF44D7ABFF3AD3A1FF28CB94FF26CA
              92FF27CA93FF25C18BFF218860FF19593CD5020503180000000200000005113C
              2995238A63FF27C993FF26CA94FF27CB95FF0D824EFF1F9063FF42D1A5FF31CE
              9AFF29CB95FF27CB95FF29CB95FF238F66FF144731AF00000009040F0B2D2176
              53FA2BC693FF29CB95FF2BCC97FF2FCF9BFF0C804EFFABCBBBFF227F56FF43C0
              98FF42D6A7FF2DCE99FF2ACB96FF2DC996FF247C58FF07191147113A288F2DA1
              78FF2ECD98FF4AD8ACFF59DEB8FF5ADFB8FF0D7F4DFFF8F4F0FFDEEAE5FF4488
              68FF32A077FF52DCB2FF39D3A3FF30CF9BFF30A67DFF154933AF195A3ECA35C1
              93FF38D2A2FF239165FF0C7849FF0D7B4AFF0C7C4BFFF7EFEAFFF9F2EDFFFAFA
              F8FF86B09CFF207B54FF52CFAAFF48D8ACFF36C395FF1C694AE51C6B4AE946D1
              A4FF40D6A8FF0D7143FFFFFFFFFFFFFFFFFFFFFFFFFFF8F4F0FFF9F4F0FFF8F3
              F0FFFBF8F6FFC3D3CAFF296D4CFF35AA81FF49D5ABFF207853FA1D6B4BE35CD8
              B3FF45D9ACFF0C6E42FFDFD0CAFFE0D2CDFFE1D4CEFFF9F6F3FFFAF7F4FFF9F6
              F2FFECE3DFFFAEB9ABFF296D4CFF32AA81FF62DFBBFF227D59FC195E43C367D0
              B1FF50DEB2FF1C895DFF0C6E41FF0C7043FF0B7244FFFAF8F6FFF8F5F2FFE5DD
              D9FF74957FFF1D7651FF48CEA5FF52E0B5FF6CD7B7FF1F7050DF113C2B7D5BB7
              98FF61E3BEFF54E1B9FF57E3BCFF5AE4BFFF0C6E42FFF2EEEAFFC8CAC2FF3A73
              55FF339D77FF59E3BDFF58E3BBFF63E4C0FF65C1A5FF164F399E040E0A1F2C89
              67F58CE8CEFF5BE3BDFF5DE5BFFF5FE8C1FF0C6B3FFF95A797FF1E6948FF50C6
              A4FF61E9C5FF5FE8C1FF5FE5BFFF91EBD4FF2F9670FC07181236000000021242
              307C4CAE8CFF97F0DAFF67E8C4FF62EAC4FF0D673CFF2B8462FF65E5C3FF69ED
              CBFF67EAC8FF6EECC9FF9EF3DCFF52B493FF16543D9A00000005000000000002
              0105195D44A550B393FFA3EDDAFF95F2D9FF86EFD6FF78EED0FF79EFD1FF87F0
              D7FF96F2DDFFA0ECD8FF4CB592FF1C6C4FB80103030C00000001000000000000
              000000000002124633782F9F77F76AC9ACFF89DEC6FFA7EDDBFFA9F0DEFF8CE1
              C9FF6DCEAFFF30A67DF916563F8F010201080000000100000000000000000000
              00000000000000000001040F0B1B144E3A7E207F5FC226926DDA269670DF2185
              63C816543F850617112900000003000000010000000000000000}
            ParentFont = False
            OnClick = SpeedButton2Click
          end
          object dbMonthYear: TDBEdit
            Left = 1125
            Top = 3
            Width = 138
            Height = 24
            DataField = 'EXTENSION'
            DataSource = dsTempo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = dbMonthYearEnter
          end
          object pnlFilter: TPanel
            Left = 0
            Top = 74
            Width = 1311
            Height = 41
            Align = alBottom
            TabOrder = 1
            ExplicitLeft = 16
            ExplicitTop = 79
            object btnPrint: TSpeedButton
              Left = 1155
              Top = 1
              Width = 81
              Height = 34
              Caption = 'Print'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                000000000000000000030000000C000000120000001400000014000000150000
                0015000000140000000D00000003000000000000000000000000000000000000
                00000000000000000009896256C2BD8A78FFBE8A78FFBD8A78FFBD8978FFBD89
                78FFBE8978FF876356C30000000B000000000000000000000000000000030000
                000E0000001500000021C08D7CFFF6EEE9FFF5EDE9FFF5EDE9FFF5ECE8FFF4EC
                E8FFF5ECE7FFBF8D7BFF00000026000000180000000F000000040000000C7B50
                42C5A76E5BFF9F6755FFC2917FFFF7F0ECFFE2B47DFFE2B37AFFE1B077FFE0AE
                72FFF6EEEAFFC2907FFF845545FF895847FF613E32C70000000E00000011BB7E
                6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFE0B1
                76FFF7F0EDFFC59483FFE0CBBCFFEBD8CBFFB67763FF0000001400000010BE85
                71FFF1E5DAFFECDBD0FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
                35FF7A4835FF7A4835FFEBDBCFFFF1E2D8FFB97C69FF000000130000000EC28B
                78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7
                DDFFF2E7DEFFF2E7DDFFF2E5DEFFF5EDE6FFBC826EFF000000120000000CC793
                7FFFFAF4F1FFCDBEB8FF6F5448FF614337FF614035FF5F3F34FF5E3F33FF5D3D
                32FF5D3D34FF6A4C44FFCABCB6FFF9F5F1FFC18875FF000000100000000ACC99
                86FFFDFAFAFF7D6054FF745043FF744F43FF744E43FF734E43FF734E42FF724D
                42FF724C41FF724C40FF73584DFFFDFAFAFFC58F7CFF0000000E00000008CF9F
                8DFFFFFFFFFF7A5A4CFF8E695AFFF9F4F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5
                DEFFF6EFEBFF866253FF704F43FFFFFFFFFFCA9683FF0000000B00000005BE95
                84E9F5ECE8FF866656FF977262FFFAF6F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7
                E1FFF8F2EEFF8E6A5BFF7A5B4CFFF5EAE6FFBA8E7DEA00000008000000023429
                2545A78375CC947262FFA07B6AFFFCF9F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EA
                E3FFF9F5F3FF977263FF876658FFA68072CE3428234800000003000000000000
                0001000000030000000AC89B89FFFDFBFAFFF5EDE8FFF4EDE8FFF5EDE7FFF5EC
                E7FFFBF7F6FFC59685FF00000011000000040000000200000000000000000000
                00000000000000000005CA9E8DFFFEFCFCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EF
                EAFFFCFAF8FFC89A89FF00000009000000000000000000000000000000000000
                00000000000000000003CDA291FFFEFEFDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFC
                FBFFFDFBFAFFCB9F8DFF00000007000000000000000000000000000000000000
                000000000000000000019A796DBFCFA493FFCEA493FFCEA493FFCEA492FFCDA3
                91FFCDA391FF98786BC100000004000000000000000000000000}
              ParentFont = False
              OnClick = btnPrintClick
            end
            object btnFiltro: TSpeedButton
              Left = 600
              Top = 10
              Width = 33
              Height = 25
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000020000000A0000
                000E0000000A000000050000000A0000000F0000000B00000003000000000000
                000000000000000000000000000000000000000000000000000913543BC11974
                52FF12533AC10000001314553BC21B7653FF13543BC20000000A000000000000
                00000000000000000000000000040000000D00000011000000131D7A56FF58D6
                B3FF1C7955FF0000001A1D7957FF55D4B1FF1C7856FF0000000E000000000000
                000000000000000000000000000C4F413BBB755E59FF31282577207E5BFF5ED8
                B8FF1F7D5AFF00000019207D5AFF58D6B3FF1F7C59FF0000000D000000000000
                000000000000000000000000000F8B756CFFEBE8E7FF4F4A4776248461FF9EEC
                DBFF23835FFF0000001622815DFF5CD7B6FF217F5CFF0000000C000000000000
                000000000000000000000000000E877169FFE5E0DDFF5B5450802A6F54DD2889
                66FF1D654BC300000010258461FF5FD9B9FF248360FF0000000B000000000000
                000000000000000000010000000E846E67FFE4DDDAFFA79A93DC3F322F900000
                000E000000060000000A278865FF62DABBFF268663FF00000009000000000000
                000000000001000000061A151449836C64FFDDD5D0FFC2B4ACFF775F59FF1A15
                144A0000000700000008298B68FFA1EDDDFF288A67FF00000007000000000000
                000100000006292220637E6861FB96837BFFB3A49DFF9A877EFF9A857BFF7F69
                62FB28211F630000000B206A4FC12C8E6BFF20684FC100000004000000000000
                000429221F5E86716AFFA89890FFD9D1CCFFCBBEB7FFAFA096FFA39086FFAB97
                8AFF846F68FF27201E6000000008000000040000000300000001000000010504
                041374625CE8AC9A92FFD5CDC7FFF0EDEAFFD7CFC9FFC0B5AEFFA7968DFFAD99
                8CFF9C887EFF725F58E80404031400000001000000000000000000000003322A
                276A94817AFFC2B6AEFFEEEBE8FFFBFAF9FFE0DBD7FFD2C9C3FFB1A29BFFAD99
                8CFFA69387FF8B766FFF3027256C000000040000000000000000000000055A4B
                47B2B5A79FFFE4DFD9FFF9F8F6FFF8F8F5FFF8F8F5FFF8F8F5FFF6F6F3FFE7E3
                DEFFD5CCC4FFA6958DFF564844B300000006000000000000000000000005816E
                67F4EEECE8FFCCC4C0FFAB9D98FF79635CFF77615AFF77615AFF79635CFFAB9D
                98FFCCC4C0FFEBE8E4FF7A665FEF00000006000000000000000000000003433A
                3773A99791F9D8D1CBFFEDEBE7FFF5F5F2FFF8F8F5FFF8F8F5FFF5F4F1FFEAE7
                E3FFD2CAC4FF9E8E86F93D333174000000030000000000000000000000010000
                0003110E0E214A403C7E71625DBE7F6E68D598847DFF97837BFF7C6A64D56C5D
                58BF453C387F110F0E2500000003000000010000000000000000}
              OnClick = btnFiltroClick
            end
            object btnCleanFiltro: TSpeedButton
              Left = 600
              Top = 10
              Width = 33
              Height = 25
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000020000000A00000010000000090000000200000000000000000000
                00020000000A000000120000000C000000030000000000000000000000000000
                00020000000F0F0742921D0F7EEF0603347A0000000E00000002000000020000
                000F0804347C1D0F7EF00F084194000000120000000200000000000000000000
                0008120B47923233AFFF3648CCFF1D1EA5FF0603357A0000000F0000000F0703
                357C1F20A5FF3747CCFF2D2FAEFF120B46950000000B00000000000000000000
                000C281C8DF1596CD8FF3B51D3FF3A4FD2FF1E22A6FF0602347D0502357E2022
                A6FF3A50D3FF3A50D3FF4C5FD4FF291D8CF10000001000000000000000000000
                0006130F3C734D4FBAFF667EE0FF415AD6FF415AD7FF1F24A7FF2529A8FF415A
                D7FF415AD7FF5B72DEFF484AB8FF130F3C790000000900000000000000000000
                00010000000A16123F73585CC1FF758DE6FF4A64DBFF4A65DBFF4A65DBFF4A64
                DBFF6983E3FF5356C0FF16123F780000000C0000000200000000000000000000
                0000000000010000000A191643755D63C7FF6783E5FF5774E2FF5774E2FF5774
                E2FF565CC6FF1916437A0000000D000000020000000000000000000000000000
                00000000000100000009100E3D734A50BEFF7492EBFF6383E7FF6483E7FF6383
                E7FF3840B6FF0B0839780000000C000000020000000000000000000000000000
                0001000000071413416E555CC5FF85A1EFFF7897EDFF9CB6F4FF9DB7F5FF7997
                EEFF7796EDFF414ABCFF0E0C3C730000000A0000000100000000000000000000
                00041818456B636CCFFF93AFF3FF83A1F1FFA6BFF7FF676DCAFF7E87DDFFAFC7
                F8FF83A3F2FF83A1F1FF5058C4FF121040710000000600000000000000000000
                00065759C3EFAFC6F6FF8EADF4FFABC4F8FF6F76D0FF1817456F24244F70868E
                E1FFB5CCF9FF8DACF4FFA1B8F4FF5758C3EF0000000900000000000000000000
                000331326B8695A0EAFFC0D3F9FF7880D7FF1C1C496B00000006000000072527
                526C8B93E6FFC1D3F9FF949EE9FF303168870000000500000000000000000000
                00010000000431336B825E62CBEC1F204D680000000500000001000000010000
                00052728536B5E62CBEC31326883000000070000000100000000000000000000
                0000000000000000000200000004000000020000000100000000000000000000
                0001000000030000000500000004000000010000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              Visible = False
              OnClick = btnCleanFiltroClick
            end
            object edtFiltro: TcxTextEdit
              Left = 375
              Top = 14
              Properties.CharCase = ecUpperCase
              Properties.MaxLength = 20
              TabOrder = 0
              Width = 224
            end
            object cbxFiltro: TcxComboBox
              Left = 234
              Top = 13
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'DESCRIPTION'
                'NAME'
                'AMOUNT'
                '')
              TabOrder = 1
              Text = 'DESCRIPTION'
              Width = 136
            end
            object rgStatus: TcxRadioGroup
              Left = 0
              Top = -3
              Caption = 'Status'
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Pending'
                  Value = '1'
                end
                item
                  Caption = 'Paid'
                  Value = '2'
                end
                item
                  Caption = 'Both'
                  Value = '3'
                end>
              ItemIndex = 2
              TabOrder = 2
              Height = 40
              Width = 228
            end
          end
        end
      end
    end
  end
  object cxPageControlBody: TcxPageControl
    Left = 0
    Top = 150
    Width = 1323
    Height = 369
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheetDetail
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 365
    ClientRectLeft = 4
    ClientRectRight = 1319
    ClientRectTop = 24
    object cxTabSheetChart: TcxTabSheet
      Caption = 'cxTabSheetChart'
      ImageIndex = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1315
        Height = 341
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 401
          Top = 1
          Height = 339
          ExplicitLeft = 9
          ExplicitTop = 2
        end
        object Splitter2: TSplitter
          Left = 901
          Top = 1
          Height = 339
          Align = alRight
          ExplicitLeft = 832
          ExplicitTop = 80
          ExplicitHeight = 100
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 400
          Height = 339
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGrid2: TcxGrid
            Left = 1
            Top = 1
            Width = 398
            Height = 337
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LockedStateImageOptions.ShowText = True
            RootLevelOptions.DetailTabsPosition = dtpTop
            object cxGridDBChartView1: TcxGridDBChartView
              Categories.DataBinding.FieldName = 'WEEKNR'
              DataController.DataSource = dsIncExpChart
              DiagramColumn.Active = True
              DiagramStackedBar.AxisCategory.TickMarkLabels = False
              DiagramStackedBar.AxisCategory.Title.Alignment = cpaCenter
              DiagramStackedBar.Values.CaptionPosition = cdvcpInsideBase
              DiagramStackedBar.StackedStyle = sds100Percent
              Legend.Position = cppNone
              ToolBox.DiagramSelector = True
              object cxGridDBChartDataGroup1: TcxGridDBChartDataGroup
                DataBinding.FieldName = 'ACCOUNT'
              end
              object cxGridDBChartDataGroup2: TcxGridDBChartDataGroup
                DataBinding.FieldName = 'WEEKNR'
              end
              object cxGridDBChartSeries1: TcxGridDBChartSeries
                DataBinding.FieldName = 'AMOUNT'
                ValueCaptionFormat = '#,##0'
              end
            end
            object cxGridLevel1: TcxGridLevel
              Caption = 'Income vs Expense'
              GridView = cxGridDBChartView1
              Options.DetailFrameColor = clYellow
            end
          end
        end
        object Panel5: TPanel
          Left = 404
          Top = 1
          Width = 497
          Height = 339
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object cxGridTMAQ_ApontamentoGrafico01: TcxGrid
            Left = 1
            Top = 1
            Width = 495
            Height = 337
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LockedStateImageOptions.ShowText = True
            RootLevelOptions.DetailTabsPosition = dtpTop
            object cxTableViewTMAQ_ApontamentoGrafico01: TcxGridDBChartView
              Categories.DataBinding.FieldName = 'Month'
              DataController.DataSource = dsSalesChart
              DiagramColumn.Active = True
              DiagramStackedBar.AxisCategory.TickMarkLabels = False
              DiagramStackedBar.AxisCategory.Title.Alignment = cpaCenter
              DiagramStackedBar.Values.CaptionPosition = cdvcpInsideBase
              DiagramStackedBar.StackedStyle = sds100Percent
              Legend.Position = cppNone
              ToolBox.DiagramSelector = True
              object cxTableViewTMAQ_ApontamentoGrafico01DataGroup1: TcxGridDBChartDataGroup
                DataBinding.FieldName = 'Month'
              end
              object cxTableViewTMAQ_ApontamentoGrafico01DataGroup2: TcxGridDBChartDataGroup
                DataBinding.FieldName = 'Month'
              end
              object cxTableViewTMAQ_ApontamentoGrafico01Series1: TcxGridDBChartSeries
                DataBinding.FieldName = 'SALES'
                ValueCaptionFormat = '#,##0'
              end
            end
            object cxGridLevelTMAQ_ApontamentoGrafico01: TcxGridLevel
              Caption = 'Sales Qty'
              GridView = cxTableViewTMAQ_ApontamentoGrafico01
              Options.DetailFrameColor = clYellow
            end
          end
        end
        object Panel6: TPanel
          Left = 904
          Top = 1
          Width = 410
          Height = 339
          Align = alRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
    end
    object cxTabSheetDetail: TcxTabSheet
      Caption = 'cxTabSheetDetail'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1315
        Height = 341
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Indicator = True
          Bands = <
            item
            end>
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBBandedTableView1
        end
      end
    end
  end
  object sqlSalesChart: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      
        'SELECT CONVERT(varchar(3), DT_PROCESS, 100)  as Month , COUNT(1)' +
        ' AS SALES FROM TBPROCESS'
      'WHERE TABLENAME = '#39'TBINVOICE'#39
      'AND STATUS = '#39'ACCEPTED'#39
      'GROUP BY CONVERT(varchar(3), DT_PROCESS, 100)')
    Left = 581
    Top = 287
    object sqlSalesChartMonth: TStringField
      FieldName = 'Month'
      Origin = '[Month]'
      ReadOnly = True
      Size = 3
    end
    object sqlSalesChartSALES: TIntegerField
      FieldName = 'SALES'
      Origin = 'SALES'
      ReadOnly = True
    end
  end
  object dsSalesChart: TDataSource
    DataSet = sqlSalesChart
    Left = 581
    Top = 351
  end
  object sqlGrid: TFDQuery
    Connection = DBDados.FDConnection
    Left = 44
    Top = 254
  end
  object dsGrid: TDataSource
    DataSet = sqlGrid
    Left = 44
    Top = 318
  end
  object sqlTempo: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      
        'SELECT ID_TIME, MES, ANO, (CONVERT(VARCHAR,ANO) + '#39' '#39' + EXTENSIO' +
        'N) AS EXTENSION  FROM TBTIME')
    Left = 1134
    Top = 191
    object sqlTempoID_TIME: TFDAutoIncField
      FieldName = 'ID_TIME'
      Origin = 'ID_TIME'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlTempoMES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
    end
    object sqlTempoANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'ANO'
    end
    object sqlTempoEXTENSION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EXTENSION'
      Origin = 'EXTENSION'
      ProviderFlags = []
      ReadOnly = True
      Size = 46
    end
  end
  object dsTempo: TDataSource
    DataSet = sqlTempo
    Left = 1142
    Top = 279
  end
  object sqlIncExpChart: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      
        'SELECT '#39'RECEIVABLE'#39' AS ACCOUNT, DATEPART(WEEK, DATE_DUE) WEEKNR ' +
        ', SUM(PAYMENT_AMOUNT) AS AMOUNT FROM TBRECEIVABLE '
      
        'WHERE PAYMENT_STATUS = '#39'PAID'#39' AND DATEPART(YEAR, DATE_DUE) = :An' +
        'o'
      'GROUP BY DATEPART(WEEK, DATE_DUE) '
      'UNION ALL'
      
        'SELECT '#39'PAYABLE'#39' AS ACCOUNT, DATEPART(WEEK, DATE_DUE) WEEKNR , S' +
        'UM(PAYMENT_AMOUNT) AS AMOUNT FROM TBPAYABLE'
      
        'WHERE PAYMENT_STATUS = '#39'PAID'#39' AND DATEPART(YEAR, DATE_DUE) = :An' +
        'o'
      'GROUP BY DATEPART(WEEK, DATE_DUE) ')
    Left = 173
    Top = 287
    ParamData = <
      item
        Name = 'ANO'
        DataType = ftInteger
        ADDataType = dtInt32
        ParamType = ptInput
      end>
    object sqlIncExpChartACCOUNT: TStringField
      FieldName = 'ACCOUNT'
      Origin = 'ACCOUNT'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object sqlIncExpChartWEEKNR: TIntegerField
      FieldName = 'WEEKNR'
      Origin = 'WEEKNR'
      ReadOnly = True
    end
    object sqlIncExpChartAMOUNT: TFMTBCDField
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
  end
  object dsIncExpChart: TDataSource
    DataSet = sqlIncExpChart
    Left = 173
    Top = 351
  end
  object cxStyleRepository: TcxStyleRepository
    Left = 88
    Top = 48
    PixelsPerInch = 96
    object cxStyleInsatisfatorio: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyleCondicional: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyleSatisfatorio: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clLime
      TextColor = clWhite
    end
  end
end
