object frmSampleCheckout: TfrmSampleCheckout
  Left = 0
  Top = 0
  Caption = 'Sample Board Checkout'
  ClientHeight = 539
  ClientWidth = 1127
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
  object Page: TcxPageControl
    Left = 0
    Top = 0
    Width = 1127
    Height = 504
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxSampleForm
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 500
    ClientRectLeft = 4
    ClientRectRight = 1123
    ClientRectTop = 24
    object cxSampleForm: TcxTabSheet
      Caption = 'ID'
      ImageIndex = 0
      object Splitter1: TSplitter
        Left = 639
        Top = 0
        Height = 476
        ExplicitLeft = 768
        ExplicitTop = 112
        ExplicitHeight = 100
      end
      object pnlTop: TPanel
        Left = 0
        Top = 0
        Width = 639
        Height = 476
        Align = alLeft
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label9: TLabel
          Left = 635
          Top = 235
          Width = 3
          Height = 240
          Align = alRight
          ExplicitHeight = 13
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 637
          Height = 162
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label4: TLabel
            Left = 18
            Top = 95
            Width = 28
            Height = 13
            Caption = 'E-mail'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 292
            Top = 69
            Width = 41
            Height = 13
            Caption = 'Phone #'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 91
            Top = 46
            Width = 39
            Height = 13
            Caption = 'ZipCode'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 7
            Top = 25
            Width = 39
            Height = 13
            Caption = 'Address'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 27
            Top = 70
            Width = 19
            Height = 13
            Caption = 'City'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 34
            Top = 46
            Width = 12
            Height = 13
            Caption = 'ST'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 461
            Top = 45
            Width = 59
            Height = 13
            Caption = 'Return Date'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label57: TLabel
            Left = 215
            Top = 46
            Width = 35
            Height = 13
            Caption = 'County'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblShippingDate: TLabel
            Left = 460
            Top = 19
            Width = 60
            Height = 13
            Caption = 'Pick-up Date'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 19
            Top = 5
            Width = 27
            Height = 13
            Caption = 'Name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 50
            Top = 116
            Width = 134
            Height = 13
            Caption = 'How did you hear about us?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtEmail: TEdit
            Left = 50
            Top = 90
            Width = 386
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object edtCliente: TEditBusca
            Left = 368
            Top = 0
            Width = 20
            Height = 21
            TabOrder = 12
            Text = 'edtCliente'
            OnClick = edtClienteClick
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
          object edtCustomerName: TEdit
            Left = 50
            Top = 0
            Width = 315
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object edtZipCode: TEdit
            Left = 136
            Top = 45
            Width = 65
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
          object edtAddress: TEdit
            Left = 50
            Top = 22
            Width = 386
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object edtCity: TEdit
            Left = 50
            Top = 67
            Width = 197
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object edtST: TEdit
            Left = 50
            Top = 45
            Width = 25
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
          object DatePickup: TcxDateEdit
            Left = 531
            Top = 19
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 9
            Width = 87
          end
          object DateReturn: TcxDateEdit
            Left = 531
            Top = 42
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 10
            Width = 88
          end
          object spbCleanCustomer: TcxButton
            Left = 410
            Top = -2
            Width = 26
            Height = 23
            Hint = 'Clean Customer Info'
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
            TabOrder = 11
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = spbCleanCustomerClick
          end
          object edtPhone: TMaskEdit
            Left = 339
            Top = 67
            Width = 97
            Height = 21
            EditMask = '!\(999\)000-0000;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            TabOrder = 6
            Text = '(   )   -    '
          end
          object edtCounty: TEdit
            Left = 261
            Top = 45
            Width = 175
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object edtAbout: TEdit
            Left = 50
            Top = 135
            Width = 386
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object btnFollowup: TcxButton
            Left = 522
            Top = 104
            Width = 97
            Height = 52
            Caption = 'Follow Up'
            OptionsImage.Glyph.Data = {
              36100000424D3610000000000000360000002800000020000000200000000100
              2000000000000010000000000000000000000000000000000000000000000000
              000000000000000000000000000100000007000000130000001F000000270000
              002A000000270000002000000014000000070000000100000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000006000000170309074A0E2B1EA916432FDE1A4F37F41D58
              3DFF1A4E37F415412DDF0E291DAD0309064F0000001A00000007000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0001000000090103022E103323B3215F44FC2E8563FF359F77FF3AB085FF3BB8
              8BFF37AF84FF339E75FF2A825FFF1E5A40FC0F3021B8010302340000000A0000
              0001000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00080308063D194C36DF368465FF3CB38AFF35B484FF2DAE7CFF27AB78FF25AA
              76FF28AB78FF2CAE7CFF34B384FF3BB186FF297A59FF184632E2020705450000
              000A000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000040102
              02261B5039DD489A7CFF3CB98DFF2AAE7AFF27AB78FF28AB78FF28AC78FF27AB
              78FF27AB78FF27AC78FF27AC78FF29AC7AFF39B789FF2F8A68FF184833E20102
              0230000000060000000100000001000000010000000100000001000000010000
              0001000000010000000100000001000000000000000000000000000000121339
              2AAB449075FF47BE96FF29AD7DFF29AD7DFF29AE7DFF29AD7BFF29AD7DFF29AE
              7DFF29AE7DFF29AE7DFF29AD7DFF29AD7DFF29AE7DFF3CBA8CFF2C7F5FFF1033
              24B60000001D0000000600000006000000060000000600000005000000060000
              0005000000040000000400000003000000020000000100000001040D093F2871
              55FB6CCCADFF2FB383FF2CB280FF2CB180FF2CB180FF37B78AFF5CCAA6FF7ED9
              BFFF83DDC4FF67D1B0FF40BC92FF2CB180FF2CB180FF2FB382FF46B992FF2264
              47FC040B08560000001A00000015000000150000001500000015000000140000
              0013000000120000000F0000000C0000000800000005000000021237279652A1
              85FF58C9A3FF2EB484FF2EB484FF2FB483FF3ABB8EFF51B090FF3B876AFF257F
              5CFF38906FFF61BB9DFF76D8BBFF42BF95FF2EB484FF2EB484FF42BE94FF358D
              6CFF3A6464F96081ABFF094388FF094288FF094086FF073772E107336AD40732
              6AD4052A58B80420439503162F7101050B2C00000010000000071E5942D178C7
              AFFF43BF96FF32B788FF31B788FF3EBD92FF49AF8CFF25654BE9274A3E892A46
              3E6B264E418E2E8368FC64BFA2FF70D6B8FF32B788FF32B688FF3ABC8FFF48B1
              8DFF306A5DFF7FA9D3FF2B80D7FF2A7ED6FF297DD6FF2373CAFF206EC5FF1F6D
              C3FF1B66BAFF165CADFF1253A1FF0B458CFF062B59B80000000E267154EE90DD
              C8FF3CBD90FF36BB8CFF36BA8CFF5ACCA7FF307F61FF2C4C428929463E662846
              3D6128463E64669FA2FF38A07BFF91E2CCFF36BA8CFF36BA8CFF38BD91FF55C4
              A1FF296E55FF87AED2FF3289DBFF3087DAFF2F84DAFF2D82D8FF2C81D8FF2A7F
              D7FF297ED6FF277CD4FF267AD4FF3385D3FF093E80F2000000122B7E5EFB9CE6
              D2FF3FC197FF38BD91FF38BE91FF63D2B2FF286D50FD2F494274449175FF3978
              61DA234D3F8678ACB8FF2A9E73FF299C71FF28996FFF28966DFF28936BFF2890
              68FF298C67FF8DB6D9FF3991E0FF378EDFFF368EDDFF338BDCFF3288DCFF3186
              DAFF2F85D9FF2C84D9FF2B82D7FF3889D6FF0B4182EB000000122A7A5CED9AE0
              CEFF51CAA5FF3CC195FF3CC196FF61D2B2FF317A5EFF25493C90499177FF73C8
              AFFF3B9072FB438778FB91B0C7FF94B9D4FF9EC2DCFFA0C4DDFF9DC2DCFF99BE
              DAFF96BEDEFF9AC6EBFF4098E3FF3F97E2FF3C94E2FF3B93E0FF3991E0FF3790
              DEFF368DDEFF348BDCFF378EDDFF3A8AD2FF0C3F78D20000000E24694FCE87D1
              BCFF71D9BCFF3FC59BFF40C59BFF4DCBA6FF58B698FF225B44E73A8367FF90E4
              CEFF59CDABFF4BA386FF31715AFF7FA4A6FFB7D5E7FFA4D1F0FF7ABFEFFF6FBB
              EEFF71BBEEFF65B4ECFF60B1EBFF63B2EBFF60AFEBFF58A9E8FF4AA0E5FF3E97
              E3FF4198E3FF4B9FE4FF4A99DEFF2771B8FF06203A6A000000081948379063B5
              9BFF99E8D4FF4ACBA3FF43C89FFF43C89FFF52CFAAFF5CB99DFF337E61FF74DC
              BFFF44C9A0FF59D2AEFF67CCAFFF3D8D70FF41786BFF9ABAC4FFBEDAECFF9ACC
              EEFF579DD4FF337ABBFF195DA5FF16589EFF2869ABFF4487C3FF65AEE3FF6BB7
              EDFF51A2DFFF2F7CC2FF135496E4082643710000000A0000000305100C293892
              74FAA1E4D3FF75DDC1FF45CCA4FF46CCA4FF45CDA4FF54D1ADFF6DDBBDFF77DF
              C3FF46CCA4FF46CCA3FF4CCEA7FF68DAB9FF5FBDA0FF347D62FF548885FF98B8
              CFFF8CB2D4FF81B2D6FF70A1C9FF5482B1FF3D6DA4FF205797FF4080B9FF3884
              C4FF155795D608253F650000000C000000070000000300000001000000061C50
              3D9366B69CFFBAF1E4FF81E1C8FF5ED7B6FF58D5B2FF4FD1ACFF4AD0A9FF4ACF
              A9FF49D0A9FF4AD0AAFF4AD0A9FF49CFA9FF59D5B3FF71DABFFF50A98DFF3275
              5FFD87AAA9FFADC0D0FF335484FF2D4F80FF375886FF38639BFF1B63A2DE0924
              3C5B000000090000000600000003000000020000000100000000000000010104
              03102A795ECF7DC5AEFFC5F4EAFFA2ECDAFF7BE1C9FF75E0C5FF6FDEC1FF60DB
              B9FF57D5B3FF4DD2ADFF4DD2ADFF4DD4ADFF4DD2ADFF4FD5AEFF68DDBDFF8BD9
              C5FF287355FF8FA4C0FF4574ADFF4271ABFF204B88FF245A90FB080D142F0000
              0006000000030000000100000000000000000000000000000000000000000000
              0002050D0A1E2B7D61CF68BA9FFFC4EFE5FFC5F5EBFFA9EFDFFF92EAD6FF82E6
              CEFF7BE4CBFF73E1C6FF5FDBBAFF50D6B2FF60DBBBFF8BE5CFFF71C1A8FF3588
              6CEF739CA4FFB6D1EBFF75AEE2FF7EB3E4FF76ABDDFF254E8BFD11151D560303
              030B000000010000000000000000000000000000000000000000000000000000
              0000000000020104030D1E5644923D9E7DF77CC5AEFFAADFD1FFC3EDE5FFD6F8
              F2FF86E9D2FF84E8D1FF89E9D3FFA1EDDCFF8CD6C2FF449F7FF91C4C3B947D8D
              A0DCA1BEDDFF88BCEAFF6DABE3FF69A6DFFF7DB3E4FF5182B9FF1A2F53BA0707
              0719000000000000000000000000000000000000000000000000000000000000
              000000000000000000010000000406110D221B4F3D832A7A5FC638A17DFFDAFA
              F4FF91EDDAFFA6F0E1FFB3EADEFF65B89DFF256D54BA07140F300E111431718E
              B5F792C8EEFF93CDF5FF81C0EEFF70ADE4FF74ACE2FF76A9DBFF1D447CF40B0D
              1134000000010000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000001000000030000000939A681FFDFFB
              F6FFC1F4EAFF88CDB9FF368F70E0112F25560000000701010105446087D65882
              B6FFA8DCFAFFA5DAFAFF99D2F6FF7DBAEBFF6EABE2FF7FB3E3FF2C5794FF1F38
              60CD020202050000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000053BA884FFB0E2
              D5FF4FAC8EF81D5240850206051000000003000000000611244E133776FF5880
              B1FFAEDEF7FFB1E2FCFFA9DDFAFF8BC6F1FF72ADE3FF75A7D7FF204681FF1537
              74FC0203040B0000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000033CAB87FF2977
              5DB408161126000000030000000100000000000000000D2B5AB5265596FF3A60
              95FFA9D3EBFFAEDBF2FF99C6E3FF78ABD5FF6096CAFF5B87B8FF11326FFF0F38
              7CFF07152E660000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000020000
              00020000000100000000000000000000000000000000153F80EA3F76B5FF234B
              89FF8FB5CFFF678DB4FF244983FF133878FF123672FF173771FF0F3D80FF103E
              85FF0C2859B90000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000001C5097FF5D96D0FF2153
              98FF3F6699FF285DA2FF326BB2FF2D69B2FF235BA5FF194C95FF124792FF1347
              91FF113574EA0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000001F5497EA68A1D5FF4783
              C1FF295FA1FF5790CFFF74A9DCFF6DA3D6FF548CC7FF3671B4FF1E57A2FF174E
              99FF123B7BED0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000183D6A995691CCFF7BB3
              DEFF588BBDFFA3CCEFFFA6CCECFF90BDE3FF71A4D5FF538BC5FF3C76B6FF2059
              A0FF103266BD0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000040A1118255B99CF3B7B
              C3FF70A7DFFF82B2E0FFA5CAEAFFB7D7EFFF96BEE2FF6398CDFF346DAFFF1C4D
              91EE040D1A2D0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000915
              232F14325575225288B72B66A8DE2E72BEFF2863A8E720508CC9133156840207
              0D15000000000000000000000000000000000000000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000}
            TabOrder = 13
            OnClick = btnFollowupClick
          end
        end
        object Panel2: TPanel
          Left = 1
          Top = 235
          Width = 634
          Height = 240
          Align = alClient
          TabOrder = 1
          object cxGrid1: TcxGrid
            Left = 1
            Top = 1
            Width = 632
            Height = 238
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object cxGrid1DBTableViewItem: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsSampleCheckoutItem
              DataController.KeyFieldNames = 'SAMPLECHECKOUT_ITEM'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'AMOUT'
                  DisplayText = 'SubTotal'
                end
                item
                  Kind = skSum
                  FieldName = 'TOTALAREA'
                  DisplayText = 'Total Area'
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGrid1DBTableViewItemPRODUCT_NAME: TcxGridDBColumn
                Caption = 'Sample Name'
                DataBinding.FieldName = 'PRODUCT_NAME'
                Width = 500
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableViewItem
            end
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 163
          Width = 637
          Height = 72
          Align = alTop
          TabOrder = 2
          object Label1: TLabel
            Left = 7
            Top = 6
            Width = 65
            Height = 13
            Caption = 'Manufacturer'
          end
          object Label2: TLabel
            Left = 7
            Top = 37
            Width = 65
            Height = 13
            Caption = 'Sample Board'
          end
          object edtSupplier: TEditBusca
            Left = 78
            Top = 6
            Width = 358
            Height = 21
            TabOrder = 0
            OnClick = edtSupplierClick
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
          object edtSample: TEditBusca
            Left = 79
            Top = 37
            Width = 357
            Height = 21
            TabOrder = 1
            OnClick = edtSampleClick
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
      end
      object cxGrid2: TcxGrid
        Left = 642
        Top = 0
        Width = 477
        Height = 476
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object cxGrid2DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid2DBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsSample
          DataController.KeyFieldNames = 'ID_SAMPLECHECKOUT'
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
          Styles.OnGetContentStyle = cxGrid2DBTableView1StylesGetContentStyle
          object cxGrid2DBTableView1LAST_NAME: TcxGridDBColumn
            Caption = 'Customer Name'
            DataBinding.FieldName = 'LAST_NAME'
            Width = 150
          end
          object cxGrid2DBTableView1PHONE1: TcxGridDBColumn
            Caption = 'Phone #'
            DataBinding.FieldName = 'PHONE1'
            Width = 100
          end
          object cxGrid2DBTableView1EMAIL: TcxGridDBColumn
            Caption = 'E-mail'
            DataBinding.FieldName = 'EMAIL'
            Width = 100
          end
          object cxGrid2DBTableView1DATE_CHECKOUT: TcxGridDBColumn
            Caption = 'Pick up Date'
            DataBinding.FieldName = 'DATE_CHECKOUT'
            Width = 100
          end
          object cxGrid2DBTableView1DATE_RETURN: TcxGridDBColumn
            Caption = 'Return Date'
            DataBinding.FieldName = 'DATE_RETURN'
            Width = 100
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
    object TabReport: TcxTabSheet
      Caption = 'TabReport'
      ImageIndex = 1
      object pnlRelatorio: TPanel
        Left = 16
        Top = 32
        Width = 1153
        Height = 705
        Caption = 'Quotation/Order/Invoice'
        Color = 33023
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        Visible = False
        object ReportSampleBoard: TRLReport
          Left = 21
          Top = 24
          Width = 794
          Height = 1123
          AllowedBands = [btFooter]
          DataSource = dsSample
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          PageSetup.PaperSize = fpA4_Small
          BeforePrint = ReportSampleBoardBeforePrint
          object RLBand3: TRLBand
            Left = 38
            Top = 38
            Width = 718
            Height = 107
            BandType = btHeader
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object RLImageLogo: TRLImage
              Left = 211
              Top = 3
              Width = 296
              Height = 104
              Align = faCenterBottom
              Stretch = True
            end
            object LblProcess: TRLLabel
              Left = 575
              Top = 52
              Width = 140
              Height = 22
              Caption = 'Sample Order #'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText1: TRLDBText
              Left = 565
              Top = 81
              Width = 149
              Height = 16
              Alignment = taRightJustify
              DataField = 'ID_SAMPLECHECKOUT'
              DataSource = dsSample
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Text = ''
            end
          end
          object RLBand1: TRLBand
            Left = 38
            Top = 145
            Width = 718
            Height = 129
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object RLDBText7: TRLDBText
              Left = 2
              Top = 18
              Width = 65
              Height = 14
              DataField = 'LAST_NAME'
              DataSource = dsSample
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLDBText8: TRLDBText
              Left = 2
              Top = 33
              Width = 58
              Height = 14
              DataField = 'ADDRESS1'
              DataSource = dsSample
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLDBText9: TRLDBText
              Left = 2
              Top = 48
              Width = 26
              Height = 14
              DataField = 'CITY'
              DataSource = dsSample
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLDBText10: TRLDBText
              Left = 138
              Top = 48
              Width = 46
              Height = 14
              DataField = 'ZIPCODE'
              DataSource = dsSample
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLDBText11: TRLDBText
              Left = 2
              Top = 63
              Width = 46
              Height = 14
              DataField = 'COUNTY'
              DataSource = dsSample
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLLabel19: TRLLabel
              Left = 358
              Top = 78
              Width = 57
              Height = 14
              Caption = 'Sales Rep'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText21: TRLDBText
              Left = 438
              Top = 78
              Width = 92
              Height = 14
              DataField = 'USER_LASTNAME'
              DataSource = dsSample
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLLabel22: TRLLabel
              Left = 349
              Top = 48
              Width = 71
              Height = 14
              Caption = 'Pick-up Date'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText35: TRLDBText
              Left = 138
              Top = 63
              Width = 42
              Height = 14
              DataField = 'STATEE'
              DataSource = dsSample
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLDBText44: TRLDBText
              Left = 2
              Top = 78
              Width = 33
              Height = 14
              DataField = 'EMAIL'
              DataSource = dsSample
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLDBText46: TRLDBText
              Left = 438
              Top = 48
              Width = 91
              Height = 14
              DataField = 'DATE_CHECKOUT'
              DataSource = dsSample
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLDBText16: TRLDBText
              Left = 438
              Top = 94
              Width = 66
              Height = 14
              DataField = 'USER_EMAIL'
              DataSource = dsSample
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLDBText3: TRLDBText
              Left = 3
              Top = 94
              Width = 43
              Height = 14
              DataField = 'PHONE1'
              DataSource = dsSample
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLLabel2: TRLLabel
              Left = 539
              Top = 48
              Width = 67
              Height = 14
              Caption = 'Return Date'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText4: TRLDBText
              Left = 617
              Top = 48
              Width = 76
              Height = 14
              DataField = 'DATE_RETURN'
              DataSource = dsSample
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLDBText5: TRLDBText
              Left = 533
              Top = 78
              Width = 93
              Height = 14
              DataField = 'USER_FIRSTNAME'
              DataSource = dsSample
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLDBText6: TRLDBText
              Left = 438
              Top = 112
              Width = 70
              Height = 14
              DataField = 'USER_PHONE'
              DataSource = dsSample
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLLabel3: TRLLabel
              Left = 3
              Top = 3
              Width = 59
              Height = 14
              Caption = 'Customer'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand2: TRLBand
            Left = 38
            Top = 315
            Width = 718
            Height = 18
            AlignToBottom = True
            BandType = btFooter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand2BeforePrint
            object lblfooterAddress: TRLLabel
              Left = 305
              Top = 0
              Width = 108
              Height = 16
              Align = faCenterTop
              Alignment = taCenter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand4: TRLBand
            Left = 38
            Top = 296
            Width = 718
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object RLDBText2: TRLDBText
              Left = 20
              Top = 3
              Width = 86
              Height = 14
              DataField = 'PRODUCT_NAME'
              DataSource = dsSample
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
            Top = 274
            Width = 718
            Height = 22
            BandType = btColumnHeader
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object RLLabel1: TRLLabel
              Left = 18
              Top = 6
              Width = 79
              Height = 14
              Caption = 'Sample Board'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
      end
    end
  end
  object Panel27: TPanel
    Left = 0
    Top = 504
    Width = 1127
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
    object ButNovo: TcxButton
      Left = -1
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
    object ButExcluir: TcxButton
      Left = 36
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
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ButSair: TcxButton
      Left = 118
      Top = 2
      Width = 41
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
      TabOrder = 2
      OnClick = ButSairClick
    end
    object ButSalvar: TcxButton
      Left = 278
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
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = ButSalvarClick
    end
    object ButCancelar: TcxButton
      Left = 320
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
      TabOrder = 4
      OnClick = ButCancelarClick
    end
    object ButImprimir: TcxButton
      Left = 72
      Top = 2
      Width = 46
      Height = 33
      Hint = 'Visualizar Impress'#227'o (Alt+I)'
      Caption = '   &I'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000003000000040000
        0005000000050000000500000005000000050000000500000006000000060000
        0006000000060000000600000006000000060000000600000006000000040000
        0002000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000050000000A0000000F0000
        0011000000120000001200000013000000130000001400000014000000140000
        00150000001500000016000000160000001600000016000000140000000F0000
        0007000000020000000000000000000000000000000000000000000000000000
        0001000000010000000100000001000000030000000A7A5A4DC2A57867FFA577
        67FFA57767FFA47666FFA47665FFA37565FFA37565FFA37564FFA37363FFA273
        63FFA27262FFA17262FFA17262FFA17162FFA17161FFA07160FF775347C50000
        000F000000040000000200000001000000010000000100000000000000010000
        00030000000600000007000000090000000C00000014A97C6BFFF8F1EDFFF8F0
        EDFFF7F0EDFFF7F0EDFFF7F0EBFFF6EFEBFFF6EEE8FFF5EDE8FFF5EDE8FFF5EC
        E7FFF6EDE7FFF5ECE7FFF5ECE6FFF5ECE6FFF5ECE6FFF5ECE6FFA27363FF0000
        001B0000000F0000000C0000000A000000080000000500000002000000050000
        000F000000190000001F00000021000000250000002EAC8070FFF9F3EFFFDFB1
        77FFDFAF77FFDFAE76FFDEAE76FFDEAE74FFDCA76DFFDAA465FFDAA265FFDAA1
        64FFDAA063FFD9A062FFD89F61FFD99E5FFFD89D5FFFF6EDE7FFA37565FF0000
        003B0000002E0000002A000000280000002100000014000000070000000E2D1F
        1B618E6454EC9B6C5CFF9B6B5CFF976958FF8F6251FF996C5AFFF9F5F2FFE1B4
        7EFFE5BD89FFE5BD88FFE4BC88FFE5BB86FFE4B982FFE0AF74FFE0AF73FFDFAE
        73FFDFAD72FFDFAC70FFDFAB6EFFDEAA6CFFD89E5FFFF6EEE9FF905F50FF7B4D
        3EFF855444FF865645FF855545FF784D3EEE2517136A0000001400000016986E
        5FF0C39F8DFFCBAB9AFFDCC5B4FFD8C0B0FFD0B8A5FFA87B6BFFFAF6F3FFE3B9
        84FFE7C290FFE8C18FFFE8C08EFFE7C08CFFE7BE8BFFE2B47BFFE1B176FFE1B0
        75FFDFAF74FFDFAE72FFDFAD70FFDEAC6FFFD99F61FFF6F0EAFF9E705FFFCAB2
        A0FFD7C0B0FFDBC4B3FFC8A695FFBE9A88FF926656F10000002000000019A67A
        69FFC8A797FFCDAF9EFFDFCABBFFDBC4B4FFE0CFC3FFAB7F6FFFFBF7F5FFE5BE
        8AFFE9C595FFE9C596FFE9C495FFE9C493FFE8C392FFE5BC86FFE1B379FFE1B2
        77FFE0B076FFE0B074FFE0AE72FFDFAD70FFD9A062FFF8F1ECFFA07363FFDACA
        BEFFD9C3B4FFDEC8B9FFC9AA99FFC4A291FF9E6E5DFF0000002500000019A87B
        6BFFCBAB9BFFD0B3A4FFE3D0C3FFDFCABBFFA47E6DFFA57666FFFBF9F6FFE8C1
        90FFEBC99CFFEBC99BFFEAC99CFFEAC89AFFE9C799FFE8C595FFE2B57BFFE2B4
        7AFFE1B378FFE0B175FFDFAF74FFDFAD71FFDAA063FFF8F2EEFF986B5AFFA17B
        6BFFDEC9BBFFE1CDBFFFCCAE9FFFC7A595FFA0705FFF0000002600000018AA7E
        6DFFCEB0A1FFD3B8AAFFE7D7CCFFE5D3C6FF966C5BFF7A4835FF7A4836FF7A48
        35FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
        36FF7A4836FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF966C
        5BFFE5D2C6FFE5D3C6FFCFB3A5FFCAAA9BFFA07261FF0000002500000016AC80
        6FFFD1B6A7FFD6BEB1FFEBDDD5FFE8D9CEFFE8D9CFFFE8D9CFFFE8DACEFFE8D9
        CEFFE8D9CEFFE8D9CFFFE8D9CEFFE8DACFFFE8D9CFFFE8D9CFFFE8DACEFFE8D9
        CFFFE8DACFFFE8D9CEFFE8D9CEFFE8D9CFFFE8D9CEFFE8DACEFFE8DACFFFE8D9
        CFFFE8DACFFFE8D9CEFFD2B9ABFFCCB0A1FFA27363FF0000002300000015AE82
        72FFD4BBAFFFDAC4B9FFEFE5DDFFECE0D7FFECE0D7FFECE0D7FFECE0D8FFECE0
        D7FFECE0D8FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0
        D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0
        D8FFECE0D7FFECE0D7FFD6BEB3FFCFB4A8FFA37564FF0000002200000014AF84
        74FFD8C1B7FFDECBC1FFF4EBE6FFF0E7E0FFF0E7E0FFF0E7E0FFF0E7DFFFF0E7
        DFFFF0E7E0FFF0E7E0FFF0E7DFFFF0E7DFFFF0E7E0FFF0E7DFFFF0E7E0FFF0E7
        E0FFF0E7E0FFF0E6E0FFF0E6E0FFF0E7DFFFF0E7E0FFF0E6DFFFF0E7E0FFF0E7
        DFFFF0E7E0FFF0E7DFFFDAC4BBFFD3BAB0FFA47666FF0000002000000012B289
        78FFDCC7BEFFE1D0C8FFF6F1ECFFF4EDE8FFF5EEE9FFF7F3EFFFF9F5F2FFF9F6
        F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6
        F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F5F2FFF7F3EFFFF5EE
        E9FFF4EDE7FFF4EDE7FFDDCAC2FFD7C0B6FFA77B6AFF0000001F00000010B68D
        7DFFDFCCC4FFE4D5CEFFF9F5F2FFF8F3EFFFEAE4E1FF8C7A73FF664D45FF553C
        32FF553A32FF553B32FF543A31FF543A32FF543931FF543931FF533930FF5339
        30FF523930FF523830FF523830FF52372FFF51372EFF614942FF897770FFE9E3
        E0FFF8F3EFFFF7F2EEFFE0CFC7FFDAC5BCFFAB7F6FFF0000001D0000000FB992
        81FFE2D1CBFFE8DAD4FFFBF9F7FFE0DBD8FF674E45FF674A40FF6B4E44FF6D4F
        45FF6E4F45FF6E4F45FF6E4F45FF6D4F45FF6E4F45FF6D4F45FF6D4F45FF6D4F
        45FF6E4F45FF6D4F45FF6D4F45FF6D4F45FF6D4F45FF6C4D43FF65483EFF6149
        40FFDFD9D6FFFAF6F4FFE4D4CDFFDDCAC3FFAF8374FF0000001C0000000EBC97
        87FFE5D6CFFFEBDFD9FFFDFCFAFF918079FF6B4F45FF715449FF715349FF7153
        49FF705349FF715449FF715349FF715349FF705349FF71534AFF715349FF7154
        4AFF715349FF715349FF715449FF705349FF715449FF70534AFF715349FF684D
        42FF8C7A73FFFCFAF8FFE7D9D3FFE0CFC7FFB28979FF0000001A0000000CC09C
        8CFFE7DAD4FFECE1DDFFFEFDFCFF6C554AFF896C5FFF8D6F63FF8F7063FF9677
        69FF967769FF957769FF997B6DFF9D7F70FF9E7F70FF9D7F70FF9E7F70FF9E7F
        70FF9E7F70FF9E7F70FF9A7B6CFF967769FF967869FF967769FF8F7163FF8D6E
        61FF634B41FFFDFCFBFFE8DBD6FFE2D3CDFFB68E7EFF000000180000000BC5A1
        91FFEADEDAFFEEE4E1FFFEFEFEFF6E5649FFB29381FFB29381FFB29381FFB393
        81FFB29381FFB29381FFB29281FFB39381FFB29381FFB29381FFB29381FFB293
        81FFB29281FFB39281FFB29381FFB29381FFB29281FFB29381FFB29381FFB392
        81FF684F44FFFEFDFDFFEADEDBFFE6D8D3FFBA9484FF0000001600000009BB9B
        8EF1EFE6E2FFEFE7E3FFFFFEFEFF7F6759FFC6A692FF715349FF705349FF7152
        49FF705348FF705248FF705248FF705248FF705248FF705247FF6F5147FF6F51
        47FF6E5147FF6E5046FF6E5046FF6E5045FF6D5045FF6D4F45FF6D4F45FFC6A5
        92FF795F53FFFFFEFEFFECE2DDFFEDE1DEFFB59284F500000013000000068872
        69B0ECE1DCFFF8F4F2FFFEFEFEFF866F60FFCCAD97FFA97C6BFFF2E9E4FFEEE2
        DBFFEDE2DAFFEDE1DAFFEDE1DBFFECE0D9FFECE0D9FFEDE0D9FFEDDFD8FFECDF
        D8FFECDED8FFECDED7FFECDED8FFECDFD7FFEBDED7FFEEE3DDFFA27363FFC7A8
        93FF80685AFFFCFAFAFFF4EDEBFFEADDD9FF836C61B80000000D000000031F1B
        192EC5AA9FF0EEE3DEFFFAF6F5FF8E7666FFD6B59EFFAD8272FFF4EBE7FFEFE4
        DEFFEFE3DEFFEFE4DDFFEEE3DDFFEEE2DDFFEEE3DCFFEEE2DCFFEDE2DBFFEEE2
        DBFFEDE1DAFFEDE1DBFFEDE0DAFFEDE0D9FFECE0D9FFF0E6DFFFA47767FFCFAF
        99FF896F62FFF8F4F3FFEBE0DAFFBEA395F1201B183A00000007000000010000
        00031613112188746BACB99E90E6937C6FFF957F73FFB18876FFF4EEEAFFF1E7
        E1FFF1E6E1FFF0E6E0FFF0E5E1FFEFE5E0FFF0E5DFFFF0E5DEFFEFE4DEFFEFE4
        DEFFEEE4DEFFEFE3DDFFEFE2DDFFEEE2DCFFEEE3DCFFF1E8E2FFA97C6CFF907A
        6FFF8F7869FFB29587E7836E64B11512102A0000000800000003000000000000
        00010000000200000004000000050000000A00000016B68D7EFFF6F0EDFFF2E9
        E4FFF2E9E5FFF2E9E3FFF1E8E3FFF2E8E3FFF1E7E2FFF1E7E2FFF0E7E2FFF1E7
        E1FFF1E6E0FFF0E6E0FFF0E6E0FFF0E5DFFFEFE5DFFFF3EAE5FFAE8373FF0000
        0023000000130000000D00000009000000050000000200000001000000000000
        0000000000000000000100000001000000040000000EBB9484FFF8F3F0FFF4EC
        E8FFF3EBE8FFF3EBE7FFF3EBE7FFF3EBE6FFF3EAE5FFF3EAE5FFF3E9E5FFF2E9
        E4FFF2E9E4FFF2E8E4FFF1E8E3FFF1E7E2FFF1E7E2FFF5EDE9FFB2897AFF0000
        0018000000080000000400000002000000010000000000000000000000000000
        0000000000000000000000000000000000030000000CBF998AFFF9F5F3FFF6EF
        EBFFF6EEEBFFF5EEEBFFF5EEEAFFF5EDE9FFF5EDE9FFF5EDE9FFF4ECE8FFF3EB
        E8FFF4EBE7FFF4EBE6FFF3EBE6FFF3EAE6FFF3EAE5FFF5EFECFFB69080FF0000
        0014000000050000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000030000000BC3A08FFFFAF7F5FFF7F1
        EEFFF7F1EEFFF6F0EDFFF7F0EDFFF7F0ECFFF6F0ECFFF6EFEBFFF6EFEBFFF6EF
        EBFFF5EEEAFFF5EEEAFFF5EEE9FFF4EDE9FFF5EDE9FFF7F1EFFFBC9687FF0000
        0013000000050000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000200000009C7A495FFFAF8F7FFF8F4
        F1FFF9F3F1FFF9F3F0FFF8F2F0FFF7F2EFFFF8F3EFFFF7F2EFFFF7F2EFFFF7F2
        EEFFF7F1EDFFF7F0EDFFF7F0EDFFF6EFECFFF6F0EBFFF9F4F2FFC09C8DFF0000
        0011000000040000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000200000008CAA99AFFFDF9F8FFFAF6
        F4FFFAF6F4FFF9F6F4FFF9F5F2FFF9F5F2FFF9F5F2FFF9F5F1FFF8F4F1FFF9F4
        F1FFF8F3F0FFF8F3F0FFF8F3EFFFF8F2EFFFF7F2EFFFFAF6F4FFC4A293FF0000
        0010000000040000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000200000007CDAD9FFFFDFBFBFFFCF8
        F6FFFBF7F6FFFBF7F5FFFBF7F6FFFAF7F5FFFAF7F5FFFAF6F4FFFAF6F4FFFAF6
        F3FFF9F6F3FFF9F5F3FFFAF5F3FFF9F4F2FFF9F4F2FFFAF8F6FFC7A698FF0000
        000E000000040000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000100000005CFB1A2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBAC9CFF0000
        000B000000030000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000039B857ABFD1B3A5FFD1B3
        A5FFD1B3A4FFD1B3A4FFD0B2A4FFD1B2A4FFD0B2A4FFCFB2A3FFCFB2A3FFCFB2
        A3FFCFB0A3FFCFB1A2FFCFB0A2FFCEB0A2FFCEB0A2FFCEAFA1FF998277C10000
        0007000000020000000000000000000000000000000000000000}
      OptionsImage.Margin = 5
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = ButImprimirClick
    end
  end
  object sqlSample: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      
        '  SELECT C.LAST_NAME,  C.PHONE1, C.EMAIL, C.FOLDER, S.DATE_CHECK' +
        'OUT, S.DATE_RETURN, S.ID_SAMPLECHECKOUT,'
      
        '  S.ID_CUSTOMER, S.ABOUTUS, S.ID_USER , SA.PRODUCT_NAME, A.ADDRE' +
        'SS1, A.ZIPCODE, A.STATEE, A.CITY, A.COUNTY,'
      
        '  U.LASTNAME AS USER_LASTNAME, U.FIRST_NAME AS USER_FIRSTNAME, U' +
        '.EMAIL AS USER_EMAIL, U.PHONE_NUMBER AS USER_PHONE, U.ID_COMPANY'
      '  FROM TBSAMPLECHECKOUT S'
      '  INNER JOIN TBCUSTOMER C ON C.ID_CUSTOMER = S.ID_CUSTOMER'
      '  INNER JOIN TBADDRESS  A ON A.ID_CUSTOMER = S.ID_CUSTOMER'
      
        '  LEFT OUTER JOIN TBSAMPLECHECKOUT_ITEM I ON I.ID_SAMPLECHECKOUT' +
        ' = S.ID_SAMPLECHECKOUT'
      '  LEFT OUTER JOIN TBSAMPLE SA ON SA.ID_SAMPLE = I.ID_SAMPLE '
      '  LEFT OUTER JOIN TBUSER U ON U.ID_USER = S.ID_USER'
      '  WHERE (1=1) &WHERE1')
    Left = 836
    Top = 72
    MacroData = <
      item
        Value = Null
        Name = 'WHERE1'
        DataType = mdIdentifier
      end>
    object sqlSampleLAST_NAME: TStringField
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 50
    end
    object sqlSamplePHONE1: TStringField
      FieldName = 'PHONE1'
      Origin = 'PHONE1'
      Size = 15
    end
    object sqlSampleEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object sqlSampleDATE_CHECKOUT: TSQLTimeStampField
      FieldName = 'DATE_CHECKOUT'
      Origin = 'DATE_CHECKOUT'
    end
    object sqlSampleDATE_RETURN: TSQLTimeStampField
      FieldName = 'DATE_RETURN'
      Origin = 'DATE_RETURN'
    end
    object sqlSampleID_SAMPLECHECKOUT: TIntegerField
      FieldName = 'ID_SAMPLECHECKOUT'
      Origin = 'ID_SAMPLECHECKOUT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlSampleID_CUSTOMER: TIntegerField
      FieldName = 'ID_CUSTOMER'
      Origin = 'ID_CUSTOMER'
    end
    object sqlSampleID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
    end
    object sqlSampleABOUTUS: TStringField
      FieldName = 'ABOUTUS'
      Origin = 'ABOUTUS'
      Size = 40
    end
    object sqlSamplePRODUCT_NAME: TStringField
      FieldName = 'PRODUCT_NAME'
      Origin = 'PRODUCT_NAME'
      Size = 30
    end
    object sqlSampleADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Origin = 'ADDRESS1'
      Size = 400
    end
    object sqlSampleZIPCODE: TStringField
      FieldName = 'ZIPCODE'
      Origin = 'ZIPCODE'
      Size = 10
    end
    object sqlSampleSTATEE: TStringField
      FieldName = 'STATEE'
      Origin = 'STATEE'
      Size = 2
    end
    object sqlSampleCITY: TStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      Size = 50
    end
    object sqlSampleCOUNTY: TStringField
      FieldName = 'COUNTY'
      Origin = 'COUNTY'
      Size = 80
    end
    object sqlSampleUSER_LASTNAME: TStringField
      FieldName = 'USER_LASTNAME'
      Origin = 'USER_LASTNAME'
    end
    object sqlSampleUSER_FIRSTNAME: TStringField
      FieldName = 'USER_FIRSTNAME'
      Origin = 'USER_FIRSTNAME'
    end
    object sqlSampleUSER_EMAIL: TStringField
      FieldName = 'USER_EMAIL'
      Origin = 'USER_EMAIL'
      Size = 100
    end
    object sqlSampleUSER_PHONE: TStringField
      FieldName = 'USER_PHONE'
      Origin = 'USER_PHONE'
      Size = 15
    end
    object sqlSampleID_COMPANY: TIntegerField
      FieldName = 'ID_COMPANY'
      Origin = 'ID_COMPANY'
    end
    object sqlSampleFOLDER: TStringField
      FieldName = 'FOLDER'
      Origin = 'FOLDER'
      Size = 100
    end
  end
  object dsSample: TDataSource
    DataSet = sqlSample
    Left = 748
    Top = 72
  end
  object sqlSampleCheckoutItem: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      
        'SELECT I.SAMPLECHECKOUT_ITEM, I.ID_SAMPLECHECKOUT, I.ID_SAMPLE, ' +
        'S.PRODUCT_NAME'
      ' FROM TBSAMPLECHECKOUT_ITEM I '
      ' INNER JOIN TBSAMPLE S ON S.ID_SAMPLE = I.ID_SAMPLE'
      ' WHERE ID_SAMPLECHECKOUT = :ID_SAMPLECHECKOUT')
    Left = 453
    Top = 65
    ParamData = <
      item
        Name = 'ID_SAMPLECHECKOUT'
        DataType = ftInteger
        ADDataType = dtInt32
        ParamType = ptInput
      end>
    object sqlSampleCheckoutItemSAMPLECHECKOUT_ITEM: TIntegerField
      FieldName = 'SAMPLECHECKOUT_ITEM'
      Origin = 'SAMPLECHECKOUT_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlSampleCheckoutItemID_SAMPLECHECKOUT: TIntegerField
      FieldName = 'ID_SAMPLECHECKOUT'
      Origin = 'ID_SAMPLECHECKOUT'
    end
    object sqlSampleCheckoutItemID_SAMPLE: TIntegerField
      FieldName = 'ID_SAMPLE'
      Origin = 'ID_SAMPLE'
    end
    object sqlSampleCheckoutItemPRODUCT_NAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUCT_NAME'
      Origin = 'PRODUCT_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  object dsSampleCheckoutItem: TDataSource
    DataSet = sqlSampleCheckoutItem
    Left = 533
    Top = 73
  end
  object sqlAux: TFDQuery
    Connection = DBDados.FDConnection
    Left = 357
    Top = 67
  end
  object cxStyleRepository: TcxStyleRepository
    Left = 632
    Top = 72
    PixelsPerInch = 96
    object cxStylePending: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clRed
    end
    object cxStyleNormal: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
  end
  object TBCOMPANY: TFDTable
    Filtered = True
    IndexFieldNames = 'ID_COMPANY'
    Connection = DBDados.FDConnection
    UpdateOptions.UpdateTableName = 'TBCOMPANY'
    TableName = 'TBCOMPANY'
    Left = 879
    Top = 159
    object TBCOMPANYID_COMPANY: TIntegerField
      FieldName = 'ID_COMPANY'
      Origin = 'ID_COMPANY'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCOMPANYIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
      Size = 2147483647
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
    object TBCOMPANYCOMPANYNAME: TStringField
      FieldName = 'COMPANYNAME'
      Origin = 'COMPANYNAME'
      Size = 100
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
    object TBCOMPANYCOUNTY: TStringField
      FieldName = 'COUNTY'
      Origin = 'COUNTY'
      Size = 50
    end
  end
  object OpenPictureDialog: TOpenPictureDialog
    DefaultExt = '*.jpg'
    Left = 943
    Top = 429
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'PDF Document'
    Left = 517
    Top = 307
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'Web page'
    Left = 597
    Top = 267
  end
end
