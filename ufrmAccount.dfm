object frmAccount: TfrmAccount
  Left = 0
  Top = 0
  Caption = 'Conta'
  ClientHeight = 587
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 531
    Height = 41
    Align = alTop
    Caption = 'Conta'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Page: TcxPageControl
    Left = 0
    Top = 41
    Width = 531
    Height = 546
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Properties.ActivePage = TabUsuario
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 542
    ClientRectLeft = 4
    ClientRectRight = 527
    ClientRectTop = 24
    object TabUsuario: TcxTabSheet
      Caption = 'Usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 523
        Height = 113
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lblFavorecido: TLabel
          Left = 5
          Top = 3
          Width = 57
          Height = 16
          Caption = 'Full Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblCategoria: TLabel
          Left = 24
          Top = 31
          Width = 36
          Height = 16
          Caption = 'E-mail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblSubCategoria: TLabel
          Left = 5
          Top = 58
          Width = 55
          Height = 16
          Caption = 'Password'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 12
          Top = 84
          Width = 48
          Height = 16
          Caption = 'Phone #'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 436
          Top = 3
          Width = 12
          Height = 16
          Caption = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtPwd: TEdit
          Left = 69
          Top = 57
          Width = 425
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edtEmail: TEdit
          Left = 69
          Top = 30
          Width = 425
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtFullname: TEdit
          Left = 69
          Top = 3
          Width = 356
          Height = 21
          CharCase = ecUpperCase
          Color = clMenu
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtphone: TEdit
          Left = 69
          Top = 84
          Width = 425
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object edtID: TEdit
          Left = 461
          Top = 3
          Width = 33
          Height = 21
          CharCase = ecUpperCase
          Color = clMenu
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 113
        Width = 523
        Height = 120
        Align = alTop
        TabOrder = 1
        object Label2: TLabel
          Left = 24
          Top = 6
          Width = 34
          Height = 16
          Caption = 'Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 24
          Top = 36
          Width = 69
          Height = 16
          Caption = 'Saldo Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 262
          Top = 6
          Width = 42
          Height = 16
          Caption = 'Apelido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 24
          Top = 63
          Width = 224
          Height = 16
          Caption = 'Pasta para armazenar extrato bancario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 215
          Top = 36
          Width = 89
          Height = 16
          Caption = 'Dt. Saldo Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cboBanco: TComboBox
          Left = 64
          Top = 6
          Width = 145
          Height = 21
          TabOrder = 0
        end
        object edtSaldoInicial: TcxCurrencyEdit
          Left = 99
          Top = 36
          Properties.DisplayFormat = 'U$ ,0.00;-U$ ,0.00'
          TabOrder = 2
          Width = 110
        end
        object edtPathSalvar: TcxButtonEdit
          Left = 24
          Top = 85
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          TabOrder = 3
          OnClick = edtPathSalvarClick
          Width = 468
        end
        object edtApelido: TEdit
          Left = 320
          Top = 6
          Width = 174
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object dtStartDate: TcxDateEdit
          Left = 320
          Top = 36
          TabOrder = 4
          Width = 172
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 233
        Width = 523
        Height = 229
        Align = alClient
        TabOrder = 2
        object cxGrid1: TcxGrid
          Left = 1
          Top = 1
          Width = 521
          Height = 227
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxGrid1DBTableView1CellDblClick
            DataController.DataSource = dsUsuarioBanco
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Indicator = True
            OptionsView.ShowColumnFilterButtons = sfbAlways
            object cxGrid1DBTableView1NAME: TcxGridDBColumn
              Caption = 'Nome do Banco'
              DataBinding.FieldName = 'NAME'
              Width = 117
            end
            object cxGrid1DBTableView1APELIDO: TcxGridDBColumn
              Caption = 'Apelido'
              DataBinding.FieldName = 'APELIDO'
              Width = 114
            end
            object cxGrid1DBTableView1PATH: TcxGridDBColumn
              Caption = 'Pasta de Arquivo'
              DataBinding.FieldName = 'PATH'
              Width = 179
            end
            object cxGrid1DBTableView1SALDO_INICIAL: TcxGridDBColumn
              Caption = 'Saldo Inicial'
              DataBinding.FieldName = 'SALDO_INICIAL'
              Width = 150
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 462
        Width = 523
        Height = 56
        Align = alBottom
        BorderStyle = bsSingle
        TabOrder = 3
        object btnSalvar: TcxButton
          Left = 67
          Top = 4
          Width = 97
          Height = 35
          Caption = '&Save'
          LookAndFeel.SkinName = 'Office2007Blue'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0001000000010000000200000004000000050000000600000007000000070000
            0006000000050000000400000002000000010000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000001000000010000
            0003000000060000000B0000001000000015000000180000001A0000001A0000
            001800000016000000110000000C000000070000000400000001000000010000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000010000000100000003000000070000
            000E0000001707140E4D133324951D4E38D11D513BD9246448FF246448FF1E51
            3BD91C4E38D11233249607140F4F000000190000001000000008000000040000
            0001000000010000000000000000000000000000000000000000000000000000
            000000000000000000000000000100000001000000040000000B000000150C21
            176B1F563FE1257151FF278963FF299D72FF2AA176FF2BB07FFF2BAF80FF2AA2
            76FF2A9E72FF278964FF267151FF20573FE20C21186D000000180000000D0000
            0005000000010000000100000000000000000000000000000000000000000000
            0000000000000000000100000001000000050000000D040C09361C503ACF2678
            56FF2AA074FF2CB180FF2BB180FF2CB081FF2CB081FF2CB180FF2CB181FF2CB1
            80FF2CB080FF2CB081FF2CB180FF2AA074FF277957FF1D5039D1040C093A0000
            0010000000060000000100000001000000000000000000000000000000000000
            00000000000000000001000000050000000E09191255236248F029946BFF2CB1
            81FF2CB181FF2CB181FF2CB282FF2CB282FF2CB282FF2CB282FF2DB282FF2DB2
            82FF2CB182FF2CB281FF2CB181FF2CB181FF2CB181FF29956CFF246248F10919
            135A000000120000000600000001000000000000000000000000000000000000
            000000000000000000040000000C09191253256C4EFA2A9F74FF2CB181FF2DB1
            82FF2CB283FF2DB283FF2DB283FF2EB283FF2EB284FF2EB384FF2EB383FF2EB3
            84FF2EB384FF2EB283FF2EB383FF2EB383FF2DB282FF2DB182FF2A9F74FF256D
            4FFA091A12590000001000000005000000010000000000000000000000000000
            00000000000200000009050F0B38246549EE2EA47AFF2EB383FF2DB283FF2EB3
            83FF2EB384FF2EB385FF2EB484FF51C7A2FF60CFAEFF37B98DFF2EB485FF2FB5
            85FF2FB485FF2EB485FF2EB485FF2EB384FF2EB383FF2EB384FF2FB384FF2FA5
            7AFF23644AEF050F0B3E0000000C000000030000000100000000000000000000
            000100000005000000101D513BCB2E9770FF30B385FF2EB384FF2EB484FF2EB4
            85FF2FB586FF2FB586FF50C6A1FF32916EFF1E7652FF4AB995FF30B587FF31B6
            87FF30B686FF30B587FF30B587FF2FB586FF2EB486FF2EB485FF2EB485FF30B4
            86FF2E9871FF1D533CD000000016000000070000000100000000000000000000
            00020000000A0C231A652D7D5CFF34B689FF2EB384FF2EB485FF2FB586FF30B5
            86FF31B688FF4EC59FFF389774FF7CAE9AFFA2C4B6FF2F8C6AFF41BF95FF32B7
            89FF32B789FF31B688FF31B689FF31B688FF30B588FF30B686FF2FB486FF2EB4
            85FF34B68AFF2D7E5EFF0D241A6B0000000E0000000300000001000000010000
            00040000000F205B43DD32A67DFF30B587FF2FB586FF30B587FF31B688FF31B7
            88FF4BC49DFF3E9F7CFF6BA28BFFF9F5F1FFF5EFEAFF45896CFF4CB491FF35BB
            8DFF34B98BFF34B98AFF33B98AFF32B989FF32B789FF32B688FF31B688FF30B5
            87FF31B688FF33A77DFF215E44DF000000160000000700000001000000020000
            0007091B144E308061FF37B98BFF30B587FF30B688FF31B688FF33B78AFF48C4
            9BFF46A786FF5A967DFFF6F4F0FFF3E8DFFFF3E8DFFFC8D9D0FF247A58FF4FC5
            9EFF35BB8DFF35BB8DFF34BA8CFF34BA8BFF34BA8BFF33B98AFF32B989FF31B7
            88FF31B688FF37B98CFF308162FF0A1D15570000000B00000002000000020000
            0009153B2B923A9B78FF35B98BFF32B788FF32B989FF33B98BFF46C39AFF4CAF
            8EFF4A8A6FFFF4F4F1FFF4EAE2FFF4E9E0FFF3E8E0FFF7EDE7FF699D87FF409D
            7CFF3FC094FF37BC8FFF37BC8EFF36BB8EFF36BB8DFF35BA8DFF34BA8BFF34B9
            8BFF32B78AFF36BA8CFF3B9C79FF153C2C980000000E00000003000000020000
            000B1E553FC63DAC86FF35B88CFF33B78AFF33B98BFF45C398FF54B797FF4084
            67FFEAEFEAFFF5EBE3FFF2E6DEFFEDDFD6FFF4E9E1FFF4E9E0FFE3E8E1FF2570
            50FF56C19EFF39BE91FF39BE90FF38BD90FF37BC8FFF37BC8EFF35BB8DFF35BB
            8CFF33B98BFF35B98DFF3EAD87FF1E5640CA0000001100000004000000030000
            000C256A4EEC3EB88EFF34BA8CFF35B98CFF3FBF94FF57BD9DFF347B5CFFE5EC
            E8FFF6EDE6FFF1E6DDFFCAC3B6FF9DAA97FFEFE3DCFFF4EAE2FFF6EBE5FF9DBD
            AFFF318464FF4FC8A2FF3ABF94FF3ABF92FF39BE91FF38BD90FF37BD8FFF36BB
            8EFF35BB8CFF35BB8CFF3FB98FFF256D50ED0000001300000005000000030000
            000C287455FA43C096FF35BA8BFF36BB8DFF37B488FF1F704EFFC9D0C8FFF7ED
            E7FFF1E5DEFFBEBCB0FF2E7354FF246F4EFFB5B7A8FFF1E6DFFFF4EAE3FFF6F1
            ECFF548B72FF4EAD8DFF42C49AFF3CC195FF3BC094FF3BBF92FF39BE90FF39BD
            90FF37BC8EFF35BB8DFF44C197FF287657FA0000001300000005000000030000
            000B287656FA4CC49BFF35BC8DFF37BC8EFF37BC8EFF24805CFF608A72FFE4D5
            CCFFB2B5A7FF2C7757FF3CBD96FF3BBB93FF2B7151FFC8C3B6FFF4E9E2FFF5EB
            E4FFE1E8E2FF2D7355FF5FCAABFF40C59AFF3EC197FF3CC195FF3BC094FF3ABF
            92FF38BD90FF38BC8EFF4EC59DFF297859FA0000001200000005000000020000
            000A267052EC55C39FFF39BD91FF38BE90FF3ABE92FF3CC096FF257E5BFF4A7C
            61FF2B7F5EFF41CBA3FF45D3ACFF46D3ADFF39B28DFF3C7457FFDACFC5FFF5EB
            E4FFF7EDE8FFADC7BAFF2E8061FF5ED8B7FF43CDA4FF40C99FFF3DC399FF3CBF
            94FF3ABF92FF3BBF92FF56C5A0FF277256ED0000001100000004000000020000
            0008205D46C559BD9DFF3DC094FF3CC296FF43CDA6FF45D2ACFF44CEA8FF319D
            7AFF46D2ACFF48D5B0FF49D5B0FF49D5B0FF49D5B1FF34A481FF4C7B60FFE0D2
            CAFFF5ECE5FFF9F3EFFF699882FF459D7FFF57D6B3FF44CFA6FF43CDA4FF41C8
            A0FF3DC196FF3FC196FF5BBF9FFF205F47C80000000E00000003000000010000
            00061643328F58B194FF49CDA6FF47D2ACFF48D3AEFF49D5AFFF49D5B0FF4AD7
            B2FF4BD7B2FF4CD8B4FF4DD7B4FF4DD8B4FF4CD8B4FF4DD7B4FF329B78FF4B7B
            61FFDFD2C9FFF6EBE5FFEFF0ECFF468066FF58B699FF55D6B1FF45CFA7FF45CE
            A5FF43CAA3FF48C9A2FF58B295FF174433940000000B00000003000000010000
            00040B201848409E80FF63DEC0FF4BD4B1FF4CD7B2FF4DD7B3FF4ED7B4FF4FD8
            B4FF4FD9B7FF50DAB7FF50DAB7FF51DAB8FF51DAB7FF50DAB7FF51D9B7FF38A6
            84FF47795EFFDDD0C7FFF6ECE7FFF0F2EFFF478368FF61C1A5FF56D5B3FF47CF
            A8FF46CDA6FF62D8B8FF409C7DFF0B20184E0000000700000002000000000000
            0002000000072D7D62DA6CD4BBFF55D9B7FF51D8B5FF51D9B6FF53DAB8FF53DB
            BAFF54DCB9FF55DBBAFF55DCBBFF56DCBBFF55DCBAFF56DDBBFF56DDBAFF55DC
            BAFF40B090FF487A60FFD9CCC4FFF3E9E3FFEDF1EDFF4B876DFF67C7ACFF57D6
            B3FF4ED2ADFF6ECFB6FF29785DDC0000000E0000000400000001000000000000
            0001000000041231275B48A98CFF72E5CAFF56DBB9FF56DBBAFF58DCBCFF58DC
            BCFF59DDBDFF59DEBDFF5ADFBEFF5ADFBFFF5BDFBFFF5ADFBEFF5ADFBEFF59DE
            BDFF59DDBCFF47BB9AFF367559FFBAB9ADFFECDFD8FFDDDFDAFF237150FF45BA
            96FF70DFC3FF46A487FF10302561000000080000000200000000000000000000
            000000000002000000062B765EC66CCEB6FF6AE3C6FF5CDDBDFF5DDEBFFF5EDE
            C0FF5EDFC0FF5FE1C2FF60E1C2FF5FE1C2FF60E1C2FF5FE0C2FF5EE1C1FF5EE0
            C1FF5DDFBFFF5CDFBEFF55CFAFFF2E8464FF72937DFF8FA392FF2D8463FF63D8
            B9FF6DCBB1FF287259C80000000C000000040000000100000000000000000000
            00000000000100000003081410283B9679EC7EDFCBFF6FE4C9FF63E0C3FF63E0
            C3FF64E1C4FF65E2C4FF64E3C5FF64E3C5FF64E3C5FF65E3C5FF64E2C5FF63E2
            C4FF63E2C3FF61E0C1FF5FDFBFFF5EDEBDFF48B797FF2A8362FF61D2B5FF80DB
            C6FF379274ED07140F2D00000006000000020000000000000000000000000000
            00000000000000000001000000041028204644A689F982DFCBFF7EEAD3FF69E2
            C6FF69E3C7FF6AE4C7FF6AE4C8FF6AE5C9FF6AE4C8FF6AE4C8FF6AE4C8FF69E4
            C7FF68E3C6FF66E2C4FF64E0C2FF62DFC1FF61DDBEFF7AE5CDFF82DCC7FF40A2
            83FA0E271F4A0000000700000002000000000000000000000000000000000000
            000000000000000000000000000100000004102921453F9E81EE77D5BEFF93F1
            DFFF7BE9D1FF6FE5CAFF6FE6CBFF70E6CBFF70E6CBFF6FE7CCFF6EE6CBFF6DE6
            CAFF6CE4C8FF6BE3C6FF69E2C5FF75E5CBFF92EEDAFF75D2BAFF3B9B7CEE0F28
            204A000000070000000200000001000000000000000000000000000000000000
            000000000000000000000000000000000001000000030814102335856DC85ABF
            A3FF8BE4D2FF9DF4E5FF8DEFDCFF82EBD5FF7EEBD4FF75E8CFFF74E8CEFF7DEA
            D2FF7FEAD3FF8CEDDAFF9DF2E2FF8BE4D0FF58BEA1FF318469CA071410280000
            0006000000020000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000100000002000000051738
            2E563D987CDA54BD9EFF75D4BCFF8EE6D3FF94EAD9FFA7F5E8FFA7F5E8FF95EA
            D9FF8DE6D3FF73D3BAFF52BB9CFF399679DA16392E5B00000007000000040000
            0002000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000001000000010000
            0003000000040D201A32255A4A82388D73C53B957ACE49B896FC49BA98FC3A95
            7ACF378D74C6235A4A840C201A34000000060000000400000002000000010000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0001000000010000000200000003000000040000000500000005000000050000
            0005000000040000000400000003000000020000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000001000000010000000100000001000000010000
            0001000000010000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnSalvarClick
        end
        object btnCancelar: TcxButton
          Left = 337
          Top = 4
          Width = 97
          Height = 35
          Caption = '&Close'
          LookAndFeel.SkinName = 'Office2007Blue'
          ModalResult = 8
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
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnCancelarClick
        end
      end
    end
  end
  object sqlUsuario: TFDQuery
    Connection = DBDados.FDConnection
    Left = 268
    Top = 129
  end
  object dsUsuario: TDataSource
    DataSet = sqlUsuario
    Left = 204
    Top = 153
  end
  object sqlAux: TFDQuery
    Connection = DBDados.FDConnection
    Left = 240
    Top = 353
  end
  object sqlUsuarioBanco: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      
        'SELECT UB.ID_USERBANK, CAST(B.NAME AS VARCHAR(100)) AS NAME, UB.' +
        'SALDO_INICIAL, UB.PATH, UB.APELIDO, UB.ID_BANK FROM TBUSERBANK U' +
        'B'
      'INNER JOIN TBUSER U ON U.ID_USER = UB.ID_USER'
      'INNER JOIN TBBANKING B ON B.ID_BANKING = UB.ID_BANK'
      'WHERE 1 = 1 AND UB.ID_USER = :ID_USER')
    Left = 444
    Top = 137
    ParamData = <
      item
        Name = 'ID_USER'
        DataType = ftInteger
        ADDataType = dtInt32
        ParamType = ptInput
      end>
    object sqlUsuarioBancoID_USERBANK: TFDAutoIncField
      FieldName = 'ID_USERBANK'
      Origin = 'ID_USERBANK'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlUsuarioBancoNAME: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAME'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object sqlUsuarioBancoSALDO_INICIAL: TBCDField
      FieldName = 'SALDO_INICIAL'
      Origin = 'SALDO_INICIAL'
      Precision = 15
      Size = 2
    end
    object sqlUsuarioBancoPATH: TStringField
      FieldName = 'PATH'
      Origin = 'PATH'
      Size = 100
    end
    object sqlUsuarioBancoAPELIDO: TStringField
      FieldName = 'APELIDO'
      Origin = 'APELIDO'
    end
    object sqlUsuarioBancoID_BANK: TIntegerField
      FieldName = 'ID_BANK'
      Origin = 'ID_BANK'
    end
  end
  object dsUsuarioBanco: TDataSource
    DataSet = sqlUsuarioBanco
    Left = 364
    Top = 137
  end
  object sqlBank: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'select * from TBBANKING'
      'order by name')
    Left = 368
    Top = 264
    object sqlBankID_BANKING: TFDAutoIncField
      FieldName = 'ID_BANKING'
      Origin = 'ID_BANKING'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlBankNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 80
    end
  end
  object dsBank: TDataSource
    DataSet = sqlBank
    Left = 360
    Top = 368
  end
end
