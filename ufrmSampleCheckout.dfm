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
            Top = 94
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
            Top = 89
            Width = 386
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = 'email@teste.com'
          end
          object edtCliente: TEditBusca
            Left = 368
            Top = 0
            Width = 20
            Height = 21
            TabOrder = 1
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
            TabOrder = 2
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
            TabOrder = 4
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
            TabOrder = 6
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
            TabOrder = 7
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
            TabOrder = 8
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
            TabOrder = 9
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
            TabOrder = 10
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
            TabOrder = 11
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
            TabOrder = 12
          end
          object cxButton1: TcxButton
            Left = 488
            Top = 98
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
            OnClick = cxButton1Click
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
              DataController.KeyFieldNames = 'ID_PROCESS_ITEM'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'AMOUT'
                  Column = cxGrid1DBTableViewItemAMOUT
                  DisplayText = 'SubTotal'
                end
                item
                  Kind = skSum
                  FieldName = 'TOTALAREA'
                  Column = cxGrid1DBTableViewItemTOTALAREA
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
              object cxGrid1DBTableViewItemID_PRODUCT: TcxGridDBColumn
                Caption = 'Product ID'
                DataBinding.FieldName = 'ID_PRODUCT'
              end
              object cxGrid1DBTableViewItemDESCRIPTION: TcxGridDBColumn
                Caption = 'Product Type'
                DataBinding.FieldName = 'DESCRIPTION'
                Width = 100
              end
              object cxGrid1DBTableViewItemTRADININGNAME: TcxGridDBColumn
                Caption = 'Manufacture'
                DataBinding.FieldName = 'TRADININGNAME'
                Width = 100
              end
              object cxGrid1DBTableViewItemSTYLE: TcxGridDBColumn
                Caption = 'Product Style'
                DataBinding.FieldName = 'STYLE'
                Width = 100
              end
              object cxGrid1DBTableViewItemPRODUCT: TcxGridDBColumn
                Caption = 'Product/Service'
                DataBinding.FieldName = 'PRODUCT'
                Width = 250
              end
              object cxGrid1DBTableViewItemWIDTH: TcxGridDBColumn
                Caption = 'Width'
                DataBinding.FieldName = 'WIDTH'
              end
              object cxGrid1DBTableViewItemHEIGHT: TcxGridDBColumn
                Caption = 'Length'
                DataBinding.FieldName = 'HEIGHT'
              end
              object cxGrid1DBTableViewItemTOTALAREA: TcxGridDBColumn
                Caption = 'Total Area'
                DataBinding.FieldName = 'TOTALAREA'
              end
              object cxGrid1DBTableViewItemQTY: TcxGridDBColumn
                Caption = 'Number of Box'
                DataBinding.FieldName = 'QTY'
              end
              object cxGrid1DBTableViewItemRATE: TcxGridDBColumn
                Caption = 'Rate U$'
                DataBinding.FieldName = 'RATE'
              end
              object cxGrid1DBTableViewItemAMOUT: TcxGridDBColumn
                Caption = 'SubTotal U$'
                DataBinding.FieldName = 'AMOUT'
              end
              object cxGrid1DBTableViewItemTAXBLE: TcxGridDBColumn
                Caption = 'Tax'
                DataBinding.FieldName = 'TAXBLE'
                Width = 100
              end
              object cxGrid1DBTableViewItemROOM: TcxGridDBColumn
                Caption = 'Room'
                DataBinding.FieldName = 'ROOM'
                Width = 100
              end
              object cxGrid1DBTableViewItemREQ_PURCHASE_ORDER: TcxGridDBColumn
                DataBinding.FieldName = 'REQ_PURCHASE_ORDER'
                Visible = False
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
            Caption = 'Manufactorer'
          end
          object Label2: TLabel
            Left = 7
            Top = 37
            Width = 65
            Height = 13
            Caption = 'Sample Board'
          end
          object edtSupplier: TEditBusca
            Left = 80
            Top = 6
            Width = 385
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
          object edtSample: TEditBusca
            Left = 79
            Top = 37
            Width = 386
            Height = 21
            TabOrder = 1
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
    object ButImprimir: TcxButton
      Left = 74
      Top = 2
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
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ButSair: TcxButton
      Left = 112
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
      TabOrder = 4
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
      TabOrder = 5
      OnClick = ButCancelarClick
    end
  end
  object sqlSample: TFDQuery
    AfterScroll = sqlSampleAfterScroll
    Connection = DBDados.FDConnection
    SQL.Strings = (
      
        '  SELECT C.LAST_NAME, C.PHONE1, C.EMAIL,  S.DATE_CHECKOUT, S.DAT' +
        'E_RETURN, S.ID_SAMPLECHECKOUT,'
      '  S.ID_CUSTOMER, S.ABOUTUS, S.ID_USER  '
      '  FROM TBSAMPLECHECKOUT S'
      '  INNER JOIN TBCUSTOMER C ON C.ID_CUSTOMER = S.ID_CUSTOMER'
      '  INNER JOIN TBADDRESS  A ON A.ID_CUSTOMER = S.ID_CUSTOMER')
    Left = 868
    Top = 128
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
  end
  object dsSample: TDataSource
    DataSet = sqlSample
    Left = 836
    Top = 288
  end
  object FDQuery2: TFDQuery
    Left = 357
    Top = 273
  end
  object DataSource2: TDataSource
    Left = 413
    Top = 345
  end
end
