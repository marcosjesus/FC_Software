object frmRequestOrder: TfrmRequestOrder
  Left = 0
  Top = 0
  Caption = 'Request Order'
  ClientHeight = 518
  ClientWidth = 1029
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 499
    Width = 1029
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
  object Panel27: TPanel
    Left = 0
    Top = 463
    Width = 1029
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object ButSair: TcxButton
      Left = 44
      Top = 2
      Width = 40
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
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = ButSairClick
    end
    object cxButton1: TcxButton
      Left = 3
      Top = 2
      Width = 40
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
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton1Click
    end
  end
  object cxPage: TcxPageControl
    Left = 0
    Top = 0
    Width = 1029
    Height = 463
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Properties.ActivePage = cxTabSheetForm
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 459
    ClientRectLeft = 4
    ClientRectRight = 1025
    ClientRectTop = 24
    object cxTabSheetGrid: TcxTabSheet
      Caption = 'Resquest Order'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 0
      ParentFont = False
      object Splitter1: TSplitter
        Left = 0
        Top = 323
        Width = 1021
        Height = 4
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 300
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 327
        Width = 1021
        Height = 108
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
          Navigator.Buttons.Insert.Enabled = False
          Navigator.Buttons.Append.Enabled = False
          Navigator.Buttons.Delete.Enabled = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsEmail
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGrid2DBTableView1SELECT: TcxGridDBColumn
            DataBinding.FieldName = 'SELECT'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            HeaderGlyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000090000
              000D0000000F0000000F0000000F0000000F0000000F00000010000000100000
              0010000000100000001000000011000000100000000A00000002825A4EC0B47D
              6BFFB37C6BFFB37C6AFFB27B69FFB27A69FFB17A68FFB17967FFB17967FFB079
              66FFB07865FFB07764FFAF7665FFB07664FF7E5548C20000000AAA7361FFF0E5
              E3FFF6E9E7FFF4E8E5FFF5E8E5FFF5E8E5FFF4E8E5FFF4E8E5FFF4E8E5FFF4E8
              E5FFF4E8E5FFF4E8E5FFF5EBE7FFF0E5E3FFA56A59FF0000000EB88575FFC099
              8EFFF5EDEAFFF6EDE8FFF5ECE8FFF6ECE7FFF5ECE8FFF6ECE7FFF5ECE8FFF5EC
              E8FFF5ECE8FFF6EDE8FFF5EDEAFFBE988CFFB37D6CFF0000000EBA8979FFEBDD
              D7FFCAA89CFFF7F0EEFFF7EEEBFFF7EEEBFFEDDFDCFFE1D1CCFFE1D1CCFFEEE2
              DEFFF7EEEBFFF7F0EEFFCAA89EFFE5CFC6FFB5816FFF0000000DBB8C7CFFF7EE
              EBFFE5CFC6FFD2B5AAFFFAF4F1FFEADFDAFFAD8D82FF8C6153FF9F7E72FFDBCB
              C5FFF2EAE6FFD2B5ABFFE5D0C7FFF0DFD9FFB78574FF0000000CBD8F7FFFF8F0
              ECFFF0E1DBFFE4CDC4FFCEB1A7FFAC8A7EFFEDE4E1FFFFFFFFFFE9E0DDFF9773
              68FFBD9D92FFDFC7BEFFF0E1DBFFF1E1DAFFB98877FF0000000BBE9282FFF7F0
              EDFFF0E3DDFFD7BFB7FFB8998EFFF9F6F5FFF9F5F3FFF6EDECFFF9F4F3FFF8F5
              F3FFA08175FFBFA298FFEEDED9FFF0E2DDFFBA8C7BFF0000000ABE9485FFF8F2
              EFFFCFB6ABFFD4BEB6FFFDFBFBFFFAF5F3FFF9F2F0FFF9F2F0FFF9F2F0FFFAF5
              F3FFFCFBFAFFC0A9A0FFB39186FFF1E4DEFFBC8F7EFF00000009BF9587FFCFB3
              A7FFEADFDBFFFDFCFCFFFBF7F6FFF9F6F5FFF9F6F5FFFBF8F5FFF9F6F5FFFAF6
              F6FFF9F8F6FFFDFCFCFFE1D5D1FFA88377FFBD9182FF00000008B4897AFFFAF7
              F5FFFEFDFDFFFDFBFAFFFDFBFAFFFDFAFAFFFDFBFBFFFDFBFBFFFDFBFAFFFDFB
              FAFFFDFBFAFFFDFBFBFFFEFDFDFFF8F5F3FFB38576FF00000006967D73BFCCAB
              9EFFCCAA9DFFCBA99CFFCBA99CFFCAA89BFFCAA89BFFCAA79AFFC9A69AFFC9A6
              99FFC8A597FFC8A597FFC7A397FFC6A396FF92776DC100000004000000020000
              0002000000030000000300000003000000030000000300000004000000040000
              0004000000040000000400000004000000040000000300000001000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Width = 49
            IsCaptionAssigned = True
          end
          object cxGrid2DBTableView1NAME: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'NAME'
            Width = 203
          end
          object cxGrid2DBTableView1POSITION: TcxGridDBColumn
            Caption = 'Position'
            DataBinding.FieldName = 'POSITION'
            Width = 225
          end
          object cxGrid2DBTableView1CITY: TcxGridDBColumn
            Caption = 'City'
            DataBinding.FieldName = 'CITY'
            Width = 100
          end
          object cxGrid2DBTableView1STATEE: TcxGridDBColumn
            Caption = 'ST'
            DataBinding.FieldName = 'STATEE'
            Width = 100
          end
          object cxGrid2DBTableView1EMAIL: TcxGridDBColumn
            Caption = 'E-mail'
            DataBinding.FieldName = 'EMAIL'
            Width = 269
          end
          object cxGrid2DBTableView1PHONE1: TcxGridDBColumn
            Caption = 'Phone1'
            DataBinding.FieldName = 'PHONE1'
            Width = 100
          end
          object cxGrid2DBTableView1PHONE2: TcxGridDBColumn
            Caption = 'Phone2'
            DataBinding.FieldName = 'PHONE2'
            Width = 100
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 1021
        Height = 323
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Enabled = False
          Navigator.Buttons.Delete.Enabled = False
          Navigator.Visible = True
          OnCellClick = cxGridDBTableView1CellClick
          DataController.DataSource = dsGrid
          DataController.KeyFieldNames = 'ID_REQUESTORDER'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              FieldName = 'COUNTNEED'
              Column = cxGridDBTableView1COUNTNEED
            end>
          DataController.Summary.FooterSummaryItems.OnSummary = cxGridDBTableView1DataControllerSummaryFooterSummaryItemsSummary
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'COUNTNEED'
              Column = cxGridDBTableView1COUNTNEED
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfAlwaysVisible
          object cxGridDBTableView1SELECTED: TcxGridDBColumn
            Caption = 'Select'
            DataBinding.FieldName = 'SELECTED'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'Y'
            Properties.ValueUnchecked = 'N'
            Width = 52
          end
          object cxGridDBTableView1MANUFACTORY: TcxGridDBColumn
            Caption = 'Manufacturer'
            DataBinding.FieldName = 'MANUFACTORY'
            Width = 150
          end
          object cxGridDBTableView1GROUPNUMBER: TcxGridDBColumn
            Caption = 'Grouped'
            DataBinding.FieldName = 'GROUPNUMBER'
          end
          object cxGridDBTableView1ID_PROCESS: TcxGridDBColumn
            Caption = 'Order ID'
            DataBinding.FieldName = 'ID_PROCESS'
            Width = 70
          end
          object cxGridDBTableView1ID_ORIGEN: TcxGridDBColumn
            Caption = 'Quotation ID'
            DataBinding.FieldName = 'ID_ORIGEN'
            Width = 70
          end
          object cxGridDBTableView1PRODUCT: TcxGridDBColumn
            Caption = 'Product'
            DataBinding.FieldName = 'PRODUCT'
            Width = 397
          end
          object cxGridDBTableView1COUNTNEED: TcxGridDBColumn
            Caption = 'Qty Requested'
            DataBinding.FieldName = 'COUNTNEED'
            Width = 100
          end
          object cxGridDBTableView1ESTIMATEDCOST: TcxGridDBColumn
            Caption = 'Estimate Cost $'
            DataBinding.FieldName = 'ESTIMATEDCOST'
            Width = 115
          end
          object cxGridDBTableView1DATE_ORDERED: TcxGridDBColumn
            Caption = 'Data Ordered'
            DataBinding.FieldName = 'DATE_ORDERED'
            Width = 100
          end
          object cxGridDBTableView1STYLE: TcxGridDBColumn
            DataBinding.FieldName = 'STYLE'
          end
        end
        object cxGridLevel1: TcxGridLevel
          Caption = 'Order'
          GridView = cxGridDBTableView1
        end
      end
    end
    object cxTabSheetForm: TcxTabSheet
      Caption = 'Report'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      TabVisible = False
      object pnlRelatorio: TPanel
        Left = 19
        Top = 16
        Width = 838
        Height = 432
        Caption = 'Quotation/Order/Invoice'
        Color = 8388863
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        Visible = False
        object ReportSale: TRLReport
          Left = 14
          Top = 8
          Width = 794
          Height = 1123
          DataSource = dsGrid2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          object RLBand3: TRLBand
            Left = 38
            Top = 38
            Width = 718
            Height = 43
            BandType = btHeader
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object LblProcess: TRLLabel
              Left = 3
              Top = 7
              Width = 160
              Height = 22
              Caption = 'Purchase  Order #'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLDraw1: TRLDraw
              Left = 3
              Top = 35
              Width = 712
              Height = 7
              DrawKind = dkLine
            end
            object RLDBText1: TRLDBText
              Left = 169
              Top = 13
              Width = 107
              Height = 16
              DataField = 'GROUPNUMBER'
              DataSource = dsGrid2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLLabel25: TRLLabel
              Left = 579
              Top = 13
              Width = 33
              Height = 16
              Caption = 'Date'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLSystemInfo1: TRLSystemInfo
              Left = 620
              Top = 13
              Width = 39
              Height = 16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
          end
          object RLGroup1: TRLGroup
            Left = 38
            Top = 81
            Width = 718
            Height = 216
            DataFields = 'GROUPNUMBER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object RLBand2: TRLBand
              Left = 0
              Top = 0
              Width = 718
              Height = 19
              BandType = btHeader
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              object RLLabel2: TRLLabel
                Left = 16
                Top = 1
                Width = 37
                Height = 16
                Caption = 'From'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLLabel3: TRLLabel
                Left = 424
                Top = 1
                Width = 20
                Height = 16
                Caption = 'To'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object RLBand4: TRLBand
              Left = 0
              Top = 19
              Width = 718
              Height = 145
              BandType = btColumnHeader
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              object RLDBText2: TRLDBText
                Left = 16
                Top = 1
                Width = 84
                Height = 14
                DataField = 'COMPANYNAME'
                DataSource = dsGrid2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText3: TRLDBText
                Left = 16
                Top = 15
                Width = 110
                Height = 14
                DataField = 'COMPANY_ADDRESS'
                DataSource = dsGrid2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText4: TRLDBText
                Left = 16
                Top = 29
                Width = 84
                Height = 14
                DataField = 'COMPANY_CITY'
                DataSource = dsGrid2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText5: TRLDBText
                Left = 144
                Top = 29
                Width = 104
                Height = 14
                DataField = 'COMPANY_ZIPCODE'
                DataSource = dsGrid2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText6: TRLDBText
                Left = 16
                Top = 44
                Width = 104
                Height = 14
                DataField = 'COMPANY_COUNTY'
                DataSource = dsGrid2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText7: TRLDBText
                Left = 424
                Top = 1
                Width = 83
                Height = 14
                DataField = 'MANUFACTORY'
                DataSource = dsGrid2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLLabel5: TRLLabel
                Left = 16
                Top = 125
                Width = 31
                Height = 16
                Caption = 'SKU'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLLabel6: TRLLabel
                Left = 477
                Top = 123
                Width = 129
                Height = 16
                Caption = 'Total Area (SQFeet)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLDraw2: TRLDraw
                Left = 3
                Top = 139
                Width = 712
                Height = 7
                DrawKind = dkLine
              end
              object RLLabel19: TRLLabel
                Left = 484
                Top = 91
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
              object RLDBText22: TRLDBText
                Left = 16
                Top = 58
                Width = 137
                Height = 14
                DataField = 'COMPANY_PHONENUMBER'
                DataSource = dsGrid2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLLabel21: TRLLabel
                Left = 128
                Top = 91
                Width = 68
                Height = 14
                Caption = 'P.O Number'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLLabel22: TRLLabel
                Left = 224
                Top = 91
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
              object RLLabel23: TRLLabel
                Left = 304
                Top = 91
                Width = 64
                Height = 14
                Caption = 'Pick-up Via'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLDBText36: TRLDBText
                Left = 144
                Top = 44
                Width = 74
                Height = 14
                DataField = 'COMPANY_ST'
                DataSource = dsGrid2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText8: TRLDBText
                Left = 424
                Top = 15
                Width = 44
                Height = 14
                DataField = 'NAME_1'
                DataSource = dsGrid2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText9: TRLDBText
                Left = 424
                Top = 29
                Width = 33
                Height = 14
                DataField = 'EMAIL'
                DataSource = dsGrid2
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
              Left = 0
              Top = 181
              Width = 718
              Height = 106
              BandType = btSummary
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              object RLLabel13: TRLLabel
                Left = 520
                Top = 45
                Width = 44
                Height = 14
                Caption = 'Shipping'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLLabel14: TRLLabel
                Left = 520
                Top = 64
                Width = 45
                Height = 14
                Caption = 'Discount'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object RLLabel15: TRLLabel
                Left = 536
                Top = 85
                Width = 30
                Height = 14
                Caption = 'Total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLDBResult3: TRLDBResult
                Left = 570
                Top = 45
                Width = 145
                Height = 14
                Alignment = taRightJustify
                DataField = 'ESTIMATE_SHIPPING'
                DisplayMask = '0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBResult4: TRLDBResult
                Left = 564
                Top = 65
                Width = 151
                Height = 14
                Alignment = taRightJustify
                DataField = 'ESTIMATE_DISCOUNT'
                DisplayMask = '0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBResult5: TRLDBResult
                Left = 581
                Top = 85
                Width = 134
                Height = 14
                Alignment = taRightJustify
                DataField = 'ESTIMATE_TOTAL'
                DisplayMask = '0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
            end
            object RLBand6: TRLBand
              Left = 0
              Top = 164
              Width = 718
              Height = 17
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              object RLDBText12: TRLDBText
                Left = 16
                Top = 2
                Width = 24
                Height = 14
                DataField = 'SKU'
                DataSource = dsGrid2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText13: TRLDBText
                Left = 68
                Top = 1
                Width = 51
                Height = 14
                DataField = 'PRODUCT'
                DataSource = dsGrid2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText14: TRLDBText
                Left = 540
                Top = 0
                Width = 64
                Height = 14
                Alignment = taRightJustify
                DataField = 'COUNTNEED'
                DataSource = dsGrid2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
            end
          end
          object RLBand1: TRLBand
            Left = 38
            Top = 297
            Width = 718
            Height = 72
            BandType = btFooter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
  object sqlGrid: TFDQuery
    AfterPost = sqlGridAfterPost
    CachedUpdates = True
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT '
      'A.ID_REQUESTORDER,'
      'CONVERT(VARCHAR, A.REQ_DATE, 103) AS REQ_DATE,'
      'A.ID_PROCESS,'
      'E.NAMEBUSINESS AS MANUFACTORY,'
      'E.FOLDER,'
      'F.STYLE,'
      
        '(F.PRODUCT_STYLE + '#39' '#39' +  F.PRODUCT_STYLE_NAME + '#39' '#39' +  F.COLOR ' +
        ' + '#39' '#39' +  F.COLOR_NAME ) AS PRODUCT,'
      'F.SKU,'
      'B.COMPANYNAME,'
      'B.ADDRESS1 AS COMPANY_ADDRESS,'
      'B.ST AS COMPANY_ST,'
      'B.CITY AS COMPANY_CITY,'
      'B.ZIPCODE AS COMPANY_ZIPCODE,'
      'B.PHONENUMBER AS COMPANY_PHONENUMBER,'
      'B.COUNTY AS COMPANY_COUNTY,'
      'C.NAME,'
      'A.COUNTNEED,'
      'A.ESTIMATEDCOST,'
      'A.DATE_ORDERED,'
      'A.GROUPNUMBER,'
      'A.SELECTED,'
      'A.ID_SUPPLIER,'
      'G.ADDRESS1, '
      'G.ZIPCODE, '
      'G.CITY, '
      'G.COUNTY,'
      'G.STATEE,'
      'H.NAME,'
      'H.POSITION,'
      'H.EMAIL,'
      'H.PHONE1,'
      'H.PHONE2,'
      'K.ID_ORIGEN,'
      'CASE WHEN A.TABLENAME = '#39'TBORDER_ITEM'#39' THEN '#39'ORDER'#39' END SOURCE,'
      'A.EMAIL AS VENDOREMAIL'
      'FROM [DBO].[TBREQUESTORDER] A'
      'INNER JOIN TBCOMPANY B ON A.ID_COMPANY = B.ID_COMPANY'
      'INNER JOIN TBCONTRACTORS C ON C.ID_CONTRACTORS = A.ID_CONTRACTOR'
      
        'INNER JOIN TBPROCESS K ON K.ID_PROCESS = A.ID_PROCESS AND RTRIM(' +
        'K.TABLENAME) = '#39'TBORDER'#39
      'INNER JOIN TBSUPPLIER E ON E.ID_SUPPLIER = A.ID_SUPPLIER'
      'INNER JOIN TBPRODUCT F ON F.ID_PRODUCT = A.ID_PRODUCT'
      'LEFT OUTER JOIN TBADDRESS G ON G.ID_SUPPLIER = E.ID_SUPPLIER'
      
        'LEFT OUTER JOIN TBCONTACT H ON H.ID_ADDRESS = G.ID_ADDRESS AND H' +
        '.ID_SUPPLIER = G.ID_SUPPLIER'
      'WHERE A.STATUS = '#39'PENDING'#39' AND A.TABLENAME = '#39'TBORDER_ITEM'#39)
    Left = 180
    Top = 393
    object sqlGridID_REQUESTORDER: TIntegerField
      FieldName = 'ID_REQUESTORDER'
      Origin = 'ID_REQUESTORDER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object sqlGridID_PROCESS: TIntegerField
      FieldName = 'ID_PROCESS'
      Origin = 'ID_PROCESS'
      ProviderFlags = []
    end
    object sqlGridMANUFACTORY: TStringField
      FieldName = 'MANUFACTORY'
      Origin = 'MANUFACTORY'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object sqlGridSTYLE: TStringField
      FieldName = 'STYLE'
      Origin = 'STYLE'
      ProviderFlags = []
      Size = 50
    end
    object sqlGridSKU: TStringField
      FieldName = 'SKU'
      Origin = 'SKU'
      ProviderFlags = []
    end
    object sqlGridCOMPANYNAME: TStringField
      FieldName = 'COMPANYNAME'
      Origin = 'COMPANYNAME'
      ProviderFlags = []
      Size = 100
    end
    object sqlGridNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      ProviderFlags = []
      Size = 50
    end
    object sqlGridCOUNTNEED: TFloatField
      FieldName = 'COUNTNEED'
      Origin = 'COUNTNEED'
    end
    object sqlGridESTIMATEDCOST: TBCDField
      FieldName = 'ESTIMATEDCOST'
      Origin = 'ESTIMATEDCOST'
      ProviderFlags = []
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      currency = True
      Precision = 15
      Size = 2
    end
    object sqlGridDATE_ORDERED: TSQLTimeStampField
      FieldName = 'DATE_ORDERED'
      Origin = 'DATE_ORDERED'
      ProviderFlags = []
    end
    object sqlGridREQ_DATE: TStringField
      FieldName = 'REQ_DATE'
      Origin = 'REQ_DATE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object sqlGridSOURCE: TStringField
      FieldName = 'SOURCE'
      Origin = 'SOURCE'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
    object sqlGridPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      ProviderFlags = []
      ReadOnly = True
      Size = 163
    end
    object sqlGridGROUPNUMBER: TIntegerField
      FieldName = 'GROUPNUMBER'
      Origin = 'GROUPNUMBER'
    end
    object sqlGridSELECTED: TStringField
      FieldName = 'SELECTED'
      Origin = 'SELECTED'
      FixedChar = True
      Size = 1
    end
    object sqlGridID_SUPPLIER: TIntegerField
      FieldName = 'ID_SUPPLIER'
      Origin = 'ID_SUPPLIER'
      ReadOnly = True
    end
    object sqlGridADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Origin = 'ADDRESS1'
      ReadOnly = True
      Size = 400
    end
    object sqlGridZIPCODE: TStringField
      FieldName = 'ZIPCODE'
      Origin = 'ZIPCODE'
      ReadOnly = True
      Size = 10
    end
    object sqlGridCITY: TStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      ReadOnly = True
      Size = 50
    end
    object sqlGridCOUNTY: TStringField
      FieldName = 'COUNTY'
      Origin = 'COUNTY'
      ReadOnly = True
      Size = 80
    end
    object sqlGridSTATEE: TStringField
      FieldName = 'STATEE'
      Origin = 'STATEE'
      ReadOnly = True
      Size = 2
    end
    object sqlGridNAME_1: TStringField
      FieldName = 'NAME_1'
      Origin = 'NAME'
      ReadOnly = True
      Size = 60
    end
    object sqlGridPOSITION: TStringField
      FieldName = 'POSITION'
      Origin = '[POSITION]'
      ReadOnly = True
      Size = 50
    end
    object sqlGridEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      ReadOnly = True
      Size = 100
    end
    object sqlGridPHONE1: TStringField
      FieldName = 'PHONE1'
      Origin = 'PHONE1'
      ReadOnly = True
      Size = 15
    end
    object sqlGridPHONE2: TStringField
      FieldName = 'PHONE2'
      Origin = 'PHONE2'
      ReadOnly = True
      Size = 15
    end
    object sqlGridCOMPANY_ADDRESS: TStringField
      FieldName = 'COMPANY_ADDRESS'
      Origin = 'COMPANY_ADDRESS'
      ReadOnly = True
      Size = 100
    end
    object sqlGridCOMPANY_ST: TStringField
      FieldName = 'COMPANY_ST'
      Origin = 'COMPANY_ST'
      ReadOnly = True
      Size = 2
    end
    object sqlGridCOMPANY_CITY: TStringField
      FieldName = 'COMPANY_CITY'
      Origin = 'COMPANY_CITY'
      ReadOnly = True
      Size = 40
    end
    object sqlGridCOMPANY_ZIPCODE: TStringField
      FieldName = 'COMPANY_ZIPCODE'
      Origin = 'COMPANY_ZIPCODE'
      ReadOnly = True
      Size = 10
    end
    object sqlGridCOMPANY_PHONENUMBER: TStringField
      FieldName = 'COMPANY_PHONENUMBER'
      Origin = 'COMPANY_PHONENUMBER'
      ReadOnly = True
      Size = 15
    end
    object sqlGridCOMPANY_COUNTY: TStringField
      FieldName = 'COMPANY_COUNTY'
      Origin = 'COMPANY_COUNTY'
      ReadOnly = True
      Size = 50
    end
    object sqlGridID_ORIGEN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_ORIGEN'
      Origin = 'ID_ORIGEN'
      ProviderFlags = []
      ReadOnly = True
    end
    object sqlGridFOLDER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOLDER'
      Origin = 'FOLDER'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object sqlGridVENDOREMAIL: TStringField
      FieldName = 'VENDOREMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
  end
  object dsGrid: TDataSource
    DataSet = sqlGrid
    Left = 124
    Top = 385
  end
  object cxSmallImages: TcxImageList
    FormatVersion = 1
    DesignInfo = 25166570
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0005000000130000001A0000001B0000001C0000001D0000001E0000001F0000
          00210000002200000023000000240000001D0000000800000000000000000000
          0011BC7E4CFFBB7D4BFFBA7B48FFB87A48FFB87846FFB77745FFB67643FFB575
          42FFB47340FFB3723FFFB3713EFFB1703DFF0000001C00000000000000000000
          0014BE8350FFF9EDE0FFF9ECDFFFF9EBDEFFF8EADDFFF8EADCFFF8E9DBFFF8E8
          DAFFF7E8D9FFF7E7D8FFF7E7D7FFB47340FF0000002300000000000000000000
          0012C18755FFFCF1E6FFFBF1E5FFFBEFE4FFFBEFE2FFFAEEE1FFFAEDE0FFFAED
          E0FFF9ECDEFFF9EBDDFFF9EBDDFFB67643FF0000002100000000000000000000
          0010C48A59FFFEF4EBFFFDF4EBFFFDF3E9FFFDF2E9FFFDF2E7FFFCF1E6FFFCF0
          E5FFFCF0E3FFFBEEE2FFFBEEE1FFB87A47FF0000001F00000000000000000000
          000FC78F5DFFFFF9F2FFFFF7F0FFFFF7EFFFFEF7EEFFFEF6ECFFFEF5ECFFFEF5
          EAFFFEF3E9FFFDF3E8FFFCEFE3FFBB7D4AFF0000001D00000000000000000000
          000DCA9361FFFFFAF4FFFFF9F3FFFFF9F2FFFFF9F1FFFFF8F1FFFFF8F0FFFFF7
          EFFFFFF6EEFFFDF3E9FFFBEFE3FFBE814EFF0000001B00000000000000000000
          000BCD9666FFFFFAF6FFFFFAF5FFFFFAF4FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9
          F1FFFEF5ECFFFCF1E6FFFAEDE0FFC18553FF0000001A00000000000000000000
          000ACF9B6BFFFFFBF6FFFFFBF6FFFFFAF5FFFFFAF4FFFFFAF5FFFFF9F3FFFEF7
          F0FFFCF2E8FFFAEDE1FFF7E8D9FFC38957FF0000001800000000000000000000
          0008D29F6FFFFFFCF8FFFFFBF8FFFFFBF7FFFFFBF7FFFFFBF6FFFEF7F1FFFCF3
          EBFFFAEFE3FFF7E8DBFFF5E2D1FFC78D5BFF0000001600000000000000000000
          0007D5A374FFFFFDFAFFFFFCF9FFFFFCF9FFFFFCF8FFFEF9F4FFFCF4ECFFFAEF
          E4FFF6E7DAFFF4E1D0FFF0DAC6FFC99160FF0000001400000000000000000000
          0006D9A779FFFFFDFBFFFFFDFBFFFFFDFAFFFEF9F5FFFCF5EEFFFAF0E7FFF7EB
          DFFFD09A6AFFCF9868FFCE9767FFCC9564FF0000000D00000000000000000000
          0005DBAB7EFFFFFEFDFFFFFEFBFFFEFAF7FFFCF6F0FFFAF1E9FFF7EADFFFF5E6
          D8FFD29E6EFFFFFCF9FFB7B5B2DC0303032A0000000400000000000000000000
          0003DDAF83FFFFFEFCFFFEFBF8FFFCF7F1FFFAF2EAFFF7EBE1FFF4E5D7FFF2E0
          D0FFD5A273FFB7B4B2DB03030326000000040000000000000000000000000000
          0002E0B387FFDFB185FFDFB083FFDDAE82FFDCAD80FFDBAB7EFFDAAA7CFFD8A8
          7AFFD8A678FF0303032400000003000000000000000000000000000000000000
          0000000000020000000300000003000000040000000500000005000000060000
          0007000000060000000200000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00800100008001000080010000800100008001000080010000800100008001
          000080010000800100008001000080010000800100008003000080070000C00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          000E000000190000001C0000001F000000220000002400000026000000270000
          0029000000290000002900000020000000090000000100000000113F5CBB0C60
          96FF065A92FF065992FF055992FF055992FF055992FF055992FF055993FF0559
          92FF065992FF055992FF055B92FE0002033C00000005000000000B5F96FB4098
          C2FF6AB5D3FF37C7ECFF0AB8E6FF0AB4E5FF0AB0E3FF0AADE1FF09A9DFFF08A7
          DDFF08A2DCFF089DDAFF0880B7FF043E5AC20000000E0000000008669EFF5BBA
          E6FF2586B2FF90E7F8FF1ACCF3FF1BC9F1FF18C6EFFF14C1ECFF0CBCEAFF0BB8
          E8FF0AB4E6FF0AAFE4FF0AA2D9FF0973A6FC0000001D000000000A74AAFF6BC8
          F2FF3894BEFF97CEE2FF58DFF8FF3BD7F6FF38D4F5FF30D0F3FF25CAF0FF18C4
          EEFF10BFEBFF10BBEAFF0FB7E8FF0B83B6FF03273690000000000C82B6FF83D4
          F6FF3DAEDEFF3E8EB7FFB3F3FDFF61E3FAFF5DE1F9FF52DDF8FF44D9F5FF32D3
          F3FF21CCF1FF15C7EFFF15C4EDFF11ACD9FF096C9BF2000000000F8CBFFF9DE2
          F9FF26BBF1FF3385B3FFBDDBE9FF9AF0FDFF86ECFCFF77E9FBFF64E3F9FF4DDE
          F7FF37D8F5FF25D1F2FF1CCEF2FF1BCBF1FF0B7BAFFF02161D650F8FC4FFB8ED
          FCFF3ACAF5FF51B1D8FF5A98BDFFF9FEFFFFF3FDFFFFE8FCFEFFD7F9FEFFC1F5
          FDFFA6F0FCFF88EBFBFF6AE3F9FF58DEF7FF31B0D6FF0F6289E10F93C8FFD0F6
          FEFF55DBF9FF4AD4F7FF206FA4FF055D98FF065D98FF055D98FF065D98FF065D
          98FF065D98FF065E98FF065E98FF065D98FF065D98FF065F99FF1097CDFFE3FB
          FFFF76EBFDFF69E7FCFF5BE1FBFF4FDBF9FF44D6F9FF39D0F8FF31CBF6FF2AC6
          F5FF25C2F3FF21BDF2FF1EB9F1FF0B6FA2FF0000000900000000119BD0FFEFFD
          FFFF9AF4FFFF85F2FFFF7BEFFEFF6CEAFDFF6CE8FCFFB3F2FDFFA1ECFCFF8DE6
          FBFF76DFFAFF62D8F8FF47C5EEFF0B73A6FF0000000600000000119ED4FFF7FE
          FFFFCCF8FEFFA0F5FFFF7DE7F8FF0F91C5FF0F8EC2FF0E8BBEFF0D87BBFF0D85
          B7FF0D82B4FF0C7EB1FF1581B0FB10495FB200000002000000002AA4D3FBE0F3
          FAFFEEF4F6FBD9F2F9FF279DCAFB000000020000000200000002000000030000
          0003000000030000000300000003000000020000000000000000305C6CAF2AA5
          D3FB11A0D5FF28A1D0FB2E5969AF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF00000001000000010000000100000001000000010000000100000000
          000000000000000000000001000000010000000100000003000007FF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          000C000000160000001A0000001B0000001C0000001D0000001E0000001F0000
          00210000002200000023000000240000002100000013000000040000000A7054
          36C9B56F38FFB36C34FF242424FF1F1F1FFF1C1C1CFF181818FF141414FF1111
          11FF0E0E0EFF0B0B0BFFA1541AFFA05218FF694420D20000001300000011BC77
          40FFEEC18FFFEFCA9FFF333333FF2E2E2EFF2A2A2AFF272727FF222222FF1F1F
          1FFFE7BE90FF171717FFE5BD8DFFDDAA6EFFA15319FF0000002000000011C07D
          47FFF1C694FFF1CDA5FF444444FF3F3F3FFF3B3B3BFF363636FF323232FF2D2D
          2DFFE9C092FF262626FFE6BD8FFFDFAE70FFA3561BFF000000220000000FC583
          4DFFF3CA9AFFF3D1A8FF575757FF525252FF4D4D4DFF484848FF434343FF3E3E
          3EFFE9C293FF353535FFE8BF91FFE1AE73FFA5591FFF000000200000000EC988
          52FFF5CEA1FFF5D5AEFF6A6A6AFF656565FF606060FF5B5B5BFF565656FF5151
          51FF4C4C4CFF474747FFE9C292FFE3B076FFA85D24FF0000001E0000000CCE8D
          58FFF8D4A8FFF8D8B3FFF5D5ADFFF4D0A6FFF1CDA1FFEFCA9DFFEEC89BFFEDC8
          9AFFEDC598FFECC496FFEAC495FFE4B377FFAA6027FF0000001C0000000BD292
          5DFFFBD7AEFFF8D1A7FFF6CE9EFFF3C997FFF0C490FFEEC08AFFECBD84FFEBBB
          83FFE9BA81FFE9B880FFE8B67CFFE7B57BFFAE652CFF0000001B00000009D797
          63FFFDDCB4FFDBA36BFFDAA26AFFD9A169FFD9A068FFD89E66FFD69D65FFD69C
          64FFD59A62FFD49961FFD3975FFFE8B77DFFB16931FF0000001900000008DA9C
          68FFFFDFBBFFD99F67FFFBFBFBFFFAFAFAFFF8F8F8FFF7F7F7FFF5F5F5FFF4F4
          F4FFF2F2F2FFF1F1F1FFD0935BFFE9BA81FFB56E37FF0000001700000006DEA0
          6DFFFFE5C1FFD69B64FFFDFDFDFF8E8E8EFF8B8B8BFF8A8A8AFF878787FF8484
          84FF828282FFF5F5F5FFCD8F57FFEBBC83FFB9733CFF0000001500000005E1A4
          70FFFFE7C7FFD3975FFFFFFFFFFFFFFFFFFFFEFEFEFFFDFDFDFFFCFCFCFFFBFB
          FBFFFAFAFAFFF8F8F8FFCA8B54FFEEBD86FFBD7842FF0000001400000004E3A6
          73FFFFEACDFFD1925CFFFFFFFFFFADADADFFABABABFFA9A9A9FFA7A7A7FFA5A5
          A5FFA3A3A3FFFBFBFBFFC88750FFEFC089FFC27D47FF0000001200000002E5A8
          75FFFFF0D2FFCE8E58FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFC6844DFFF1C28BFFC6834DFF0000000E00000001806F
          57C0E5A875FFCB8B55FFACACACFFACACACFFACACACFFACACACFFACACACFFACAC
          ACFFACACACFFACACACFFC4814BFFCD8C57FF735A3CC500000007000000000000
          0001000000020000000300000003000000040000000500000005000000060000
          000700000008000000090000000A0000000A0000000600000001}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000700000010000000180000
          00210000001D0000000E00000002000000000000000000000000000000000000
          0002000000060000000C000000130000002A03030355070707980B0A0ABE2D2D
          2DEE0C0C0CE401010170000000190000000400000000000000000000000A0000
          0021030303520A0A0A90191919BC353535EC383737FB848584FFC0C8C4FFBDBF
          BFFF4C4C4CFF252525FB030303A1000000240000000900000001303030AF7070
          70ED2D2D2DFC383838FF424242FF525252FF6F6D6FFFB9C2BDFF6FD09DFFC8CF
          CCFF575455FF6C6C6CFF414141FF0C0C0CCB000000450000000F9C9C9CFCF9F9
          F9FF7E7E7EFF828282FFB2B2B2FFDDDDDDFFEAEAEBFFEDEFEDFFE0E6E3FFD8D9
          D8FF5F5F5FFF6D6D6DFF777777FF606060FF191919E90303036EA8A8A8F3FFFF
          FFFFF7F7F7FFFBFBFBFFF3F3F3FFE5E5E5FFDBDBDBFFCCCCCCFFC3C2C3FFBBBB
          BBFF979797FF686868FF797979FF808080FF808080FF232323F5B6B6B6F7F1F1
          F1FFE4E4E4FFDBDBDBFFD5D5D5FFCDCDCDFFCBCBCBFFCACACAFFC7C8C8FFBCBC
          BDFFAEB1B5FF8D8F91FF747272FF828282FF929292FF383838F93F3F3F94D6D6
          D6FFE0E0E0FFDBDDDDFFD4D6D9FFCDCDCDFFBBBBB9FFA0A09FFF95918CFF8F8A
          80FF62462CFF3B3127FF949799FF808080FF949494FF404040F0000000024141
          4196D3D3D4FFD4D3D1FFBB9A76FFC2B8ACFFC7BDAFFFCDC0ACFFCBBBA3FFD1C2
          A9FFC2955DFF875F3BFFB2B7BBFFA8A8A8FF999999FF4A4A4AF7000000000000
          00002C2C2C7BB6B5B5F4DAAF7EFFF3E6D9FFEFE7DDFFE9E0D1FFE5D9C8FFE1D4
          C2FFD9C6ABFFA8723CFF8E8D8BFB727476F2646464EB353535C8000000000000
          000000000000090909377E6E5DC8F1DDC6FFF6F4F1FFF0EAE1FFECE3D9FFE7DE
          D1FFE6DECFFFBD8D52FF1E171079000000170000000E00000007000000000000
          000000000000000000000202011BCCAD86ECFDFEFEFFF9F7F3FFF4F0EAFFF0EA
          E1FFEDE7DDFFDFCDB7FF40250E9E000000000000000000000000000000000000
          00000000000000000000000000004C3D2C91FAF0E6FFFFFFFFFFFBFBF9FFF8F7
          F3FFF4F1EBFFF3F1ECFFBD9566F8080501380000000000000000000000000000
          000000000000000000000000000004030224D8BD9EF1FFFFFFFFFFFFFFFFFEFD
          FDFFFAF9F7FFF8F3EFFFEADDCCFF6B4019C80000000B00000000000000000000
          000000000000000000000000000000000000392F247CD5B693EFCAAA87EAB393
          6DDEAD8B61DC8E6C43C9825E37C6563615AF0705043000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F80700008003000000000000000000000000000000000000000000000000
          000000000000C0000000E0000000F0070000F8030000F8010000FC010000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000010000
          000700000010000000190000001D0000001F0000002000000021000000230000
          0024000000250000002500000023000000180000000B00000002000000060000
          084F020235B8050569F5050573FF050572FF040471FF050470FF050470FF0404
          6FFF04046FFF04046FFF040466F7020235C50000095F0000000A0000000D0203
          36B50B1494FF0E22AFFF0D24B6FF0B22B3FF0921B2FF0921B1FF0921B0FF0921
          B0FF0921AFFF0920AFFF081CA4FF070E86FF030235C400000018000000110709
          73F4172EBFFF1632CAFF1732C7FF1E38C8FF102CC3FF0B27C0FF0A26BFFF0D2A
          C0FF1B36C4FF142FC0FF0F28BAFF081CA4FF040466F70000002200000011090D
          87FF1F3CD4FF1E3BD2FF8C9AE4FFE2E5F5FF344DD0FF112FC8FF0F2DC7FF2E47
          CDFFE3E7F8FF8A99E3FF122EC0FF0920AFFF04046FFF000000240000000F0B11
          8FFF2844DBFF2943D8FFD0D3EFFFFCFAF8FFE1E4F5FF334CD1FF2F49D0FFE2E6
          F7FFFFFEFFFFD0D5F3FF1632C2FF0920B0FF040471FF000000220000000D0E16
          99FF3651E2FF2C49E0FF334CD7FFCFD2EEFFFCF9F7FFE5E6F4FFE6E8F4FFFEFC
          FCFFCFD5F2FF233DCBFF0D29C2FF0921B2FF040573FF000000210000000B121C
          A3FF4962E9FF3755EAFF2D4AE1FF344DD7FFD4D6EDFFFBF9F5FFFCF9F6FFD5D9
          F0FF253FCEFF0F2CCAFF0A28C2FF0922B3FF050674FF0000001F0000000A1622
          ADFF7E90F0FF6A80F2FF5C71E6FF6274DDFFE5E4EEFFFAF6F2FFFAF7F3FFE3E3
          F1FF354DD2FF1231CCFF0D29C5FF0A22B5FF050676FF0000001D000000081B2A
          B8FF8E9DF4FF6679EBFF6A7ADFFFE4E1EAFFF8F3EDFFD7D8EBFFD6D7EBFFFAF6
          F2FFE1E2F0FF344DD1FF122FC8FF0D24B8FF06067AFF0000001B000000071F31
          C1FFA3B0F7FF6D7EE6FFE3E0E6FFF6EFE8FFD5D4E7FF5266DCFF4B60DAFFD2D3
          EAFFF9F5F1FFE0E0EEFF223BCBFF0F27BDFF080982FF00000019000000062438
          CBFFB8C2FAFF7182E6FFA9AEE0FFD6D3E3FF5C6EDDFF5269EBFF4862EAFF485E
          D9FFD1D2E8FF919CE1FF1B37CCFF122BC0FF0A0D88FF00000017000000042538
          BCF1B6BFF6FF9BA7F1FF6F80E5FF6475E5FF5F75ECFF5C75F6FF526CF3FF455E
          E7FF3F57DEFF334CDAFF223DD4FF152BBDFF0B1080F40000001300000002131B
          59A47786E6FFBBC4F6FFC2CBFBFFB2BEFAFF9EACF8FF8A9AF6FF7489F3FF647A
          EFFF516AEBFF405BE5FF2840D2FF1524ADFF060940B10000000C000000010203
          0B3B141D5AA42B40C4F12E44D9FF2C41D5FF2A3ED0FF283ACBFF2536C5FF2231
          C0FF1E2CB9FF1C28B3FF162099F3080C46AE0101094800000005000000000000
          0001000000020000000300000004000000050000000500000006000000070000
          0008000000090000000B0000000B000000080000000400000001}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000BA7B49FFB87946FFB777
          44FFB57542FFB47340FFB2713EFFB2703DFFB06D3AFFAF6D39FF000000050000
          000C0000001100000014000000170000001A0000001DBE824EFFFFF4E9FFFEF3
          E8FFFEF3E6FFFEF2E6FFFEF1E5FFFEF1E3FFFDF0E1FFB2713DFF00121E7B0343
          6EE504548CFF03518AFF044F88FF034E86FF034D85FFC28755FFFFF5EBFFCB8E
          5EFFC88C5BFFC68958FFC48655FFC18452FFFDF0E2FFB67642FF044773E3198E
          BEFF17B9E6FF15B3E2FF13AFDEFF11ABDBFF1198C5FFC68D5CFFFFF7EDFFFFF6
          ECFFFFF6ECFFFFF5EBFFFFF5EAFFFEF2E5FFFCEEE0FFB97A48FF055F97FF37CA
          EFFF1DBEE9FF1AB9E6FF16B5E2FF14B1DFFF12A0CDFFCB9362FFFFF7EFFFE0A5
          77FFDDA374FFDAA071FFD89D6EFFD59A6BFFFAEADBFFBE804DFF06649CFF48D1
          F3FF23C3EDFF1FBFEAFF1DBBE7FF1AB8E5FF18AAD5FFCF9969FFFFF9F1FFFFF8
          F1FFFFF8F0FFFEF5ECFFFCF0E5FFFAECDEFFF7E6D6FFC18653FF0769A0FF59D8
          F6FF29C9F1FF27C5EEFF23C2ECFF22C0EAFF1EB5DFFFD39F70FFFFFAF4FFFFF9
          F2FFFEF5EEFFFCF1E7FFFAEDDFFFF6E5D4FFF4DFCBFFC68C5AFF086FA6FF72E0
          F9FF3AD0F5FF34CDF2FF2EC9F0FF29C6EEFF26BEE6FFD7A577FFFFFAF5FFFEF7
          EFFFFCF2EAFFFAEDE2FFF7E9DAFFCE9767FFCB9463FFC99260FF0975ACFF8EE8
          FCFF4ED9F9FF48D6F7FF41D2F5FF39CFF3FF30C9EEFFDBAB7EFFFEF8F1FFFCF3
          EBFFFAEEE4FFF7E9DBFFF5E4D4FFD19D6EFFFFF9F3FFB2ADA8D50A7BB2FFA7EE
          FDFF63E0FCFF5EDDFBFF55DAF9FF4CD7F8FF43CFF2FFDFB186FFDEAF82FFDCAD
          80FFDAAA7DFFD9A87AFFD7A576FFD6A374FFB2AEABD5020201170B84B7FFBCF3
          FEFF7BE7FEFF74E5FDFF69DCF5FF59C3DDFF4FB4D0FF48B7D3FF40BEDDFF38C5
          E6FF34CBEEFF075C93FF000000150000000000000000000000000D8BBEFFCFF7
          FFFF92ECFFFF77C8DBFF61A8BDFF5BA4B9FF58ABC3FF53B5CEFF4CBDD9FF43C6
          E4FF3BCDEFFF086197FF000000110000000000000000000000000F92C4FFDFFA
          FFFFC1864AFFBE8145FFBC7C3FFFB9783AFFB67535FFB47132FFB26F2FFFB06C
          2DFF43D1F1FF08669DFF0000000E000000000000000000000000109ACBFFEAFB
          FFFFE9C190FFE6BA87FFE2B47DFFDFAE74FFDCA86CFFD9A266FFD69E5FFFBA79
          3CFF4DDFFEFF076CA2FF0000000B0000000000000000000000000E7DA1E084CD
          E7FFEEFCFFFFEAFAFDFFF0D5B0FFEFCB9EFFECC595FFE5C294FFA9EFFDFF95ED
          FEFF45B0D5FF075984E300000007000000000000000000000000032029700F7F
          A4E012A2D1FF119CCDFF7BBCC8FFFCE5C2FFF0DBB9FF7DA4A4FF0D86BAFF0C82
          B6FF096189E10218237500000003000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FE0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000070000000700000007000000070000000700000007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0001000000060000001000000016000000110000000800000002000000020000
          0009000000160000001E000000170000000A0000000200000000000000000000
          00050B04004C4A1B02B2963602F2411701A20903004600000008000000080B04
          0055471C02B9893502F33B1601A30903004C0000000A00000000000000000000
          000B522205AF1F0D0177000000131708005F411701A200000011000000125023
          05B7200D0184000000151508005F3C1701A30000001700000000000000000000
          000DB9570FF20100002700000006000000139A3904F20000001700000019B252
          10F40201003800000008000000148D3805F30000001D00000000000000000000
          00085D2F09AB2311037201000028331603947F3507DE02010035030100389748
          10E53218059602010037220E02834C2004B80000001500000000000000000000
          00030D0701445E300AABBF5E12F3A55012EDB45E20FF210E038B2613068DB359
          1CFF994A10E5B85712F4562707B60C0500530000000800000000000000000000
          0001000000030000000800000010170E05645C2F14E3512910F16C3A1EF17F48
          20E5180E06700000001B00000010000000070000000200000000000000000000
          00000000000000000000000000040604033C291B12D25D4536FF704C39FF3A1C
          0CD6070401480000000700000000000000000000000000000000000000000000
          000000000000000000000000000948413FC6DEDCDCFF9B8D85FF645952FFCBC0
          B9FF331E14CB0000001100000001000000000000000000000000000000000000
          000000000000000000020C0B0A50B6AFACFBDAD9D7FF1F1917AA201F1FACDEDF
          E0FF8B807AFB0605045D00000006000000000000000000000000000000000000
          00000000000000000004413E3CA9DBD9D9FF48413CCE0000001A0000001C5652
          51D1D1D1D1FF21201EB40000000D000000010000000000000000000000000000
          0000000000010505042DBCB7B5FC8B8482F00303033800000003000000030605
          053E9B9591F28A8885FD0403033D000000040000000000000000000000000000
          0000000000013D3C3B94B0ACABFF1413136A0000000300000000000000000000
          00051E1A1973ABA098FF2D2927A00000000A0000000100000000000000000000
          00000303032192908BED3534339E000000030000000000000000000000000000
          000100000007463D38A67C6B61F00303032F0000000300000000000000000000
          00003332307F6B6A63D00000000F000000000000000000000000000000000000
          00000000000100000016745F51D42E27248A0000000700000000000000000000
          000A6A6760B90707073300000000000000000000000000000000000000000000
          000000000000000000020908073B5D4638BD0000001000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0080010000800100008001000080010000800100008001000080010000F00F
          0000F0070000E0070000E0030000C0030000C1810000C3810000C7C100008FE1
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000050000
          0012000000190000001A0000001B0000001C0000001D0000001E0000001F0000
          001900000007000000000000000000000000000000000000000000000010C185
          53FFC08452FFBE8350FFBE824FFFBD804DFFBB7E4BFFBB7C4AFFBA7B48FFB87A
          47FF00000019000000000000000000000000000000000000000000000013C389
          57FFFDF4EBFFFDF3E9FFFDF3E8FFFCF2E7FFFCF1E5FFFCF0E5FFFBEFE3FFBB7D
          4AFF0000001E000000000000000000000000000000000000000000000011C78E
          5CFFFFF8F0FFFEF7EFFFFEF6EEFFFEF5EDFFFEF5ECFFFEF4EBFFFDF3E9FFBE81
          4EFF000000320000001E0000001F000000200000001A000000070000000FC991
          60FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9F1FFFFF8F1FFFFF7EFFFFDF4EBFFC185
          53FFBD804DFFBB7E4BFFBB7C4AFFBA7B48FFB87A47FF000000190000000ECC95
          65FFFFFAF4FFFFFAF5FFFFF9F3FFFFFAF4FFFFF9F2FFFEF5EDFFFCF1E7FFC389
          57FFE5D3C3FFFCF1E5FFFCF0E5FFFBEFE3FFBB7D4AFF0000001E0000000CCF99
          6AFFFFFBF7FFFFFBF6FFFFFAF5FFFFFAF5FFFEF7F0FFFCF2EAFFFAEEE2FFC78D
          5BFFE3D1C1FFFEF5ECFFFEF4EBFFFDF3E9FFBE814EFF0000001C0000000BD29E
          6EFFFFFCF8FFFFFCF8FFFFFBF7FFFEF8F2FFFCF3EBFFFAEFE5FFF7E9DCFFC991
          60FFE2D1C2FFFFF8F1FFFFF7EFFFFDF4EBFFC18553FF0000001B00000009D5A2
          73FFFFFCFAFFFFFCF9FFFEF9F5FFFCF5EDFFFAEFE6FFF6E8DBFFF4E2D1FFCC95
          64FFE3D4C6FFFFF9F2FFFEF5EDFFFCF1E7FFC38957FF0000001900000008D8A6
          77FFFFFDFBFFFEFAF6FFFCF5EFFFFAF1E8FFF7EBE0FFD19C6DFFD09B6BFFCF99
          69FFEBDED3FFFEF7F0FFFCF2EAFFFAEEE2FFC78D5BFF0000001700000006DAAA
          7DFFFEFBF7FFFCF6F1FFFAF1E9FFF7EBE0FFF5E6D8FFD3A071FFF3EBE4FFDFD0
          C2FFF8EFE7FFFCF3EBFFFAEFE5FFF7E9DCFFC99160FF0000001500000004DDAE
          82FFDCAD80FFDBAB7EFFDAAA7CFFD8A87AFFD8A678FFD7A475FFE6DACFFFF7EF
          E9FFFBF4ECFFFAEFE6FFF6E8DBFFF4E2D1FFCC9564FF00000013000000010000
          00040000000500000006000000070000000ED8A677FFF4EEE9FFFAF4EFFFFBF4
          EEFFFAF1E8FFF7EBE0FFD19C6DFFD09B6BFFCF9969FF0000000D000000000000
          000000000000000000000000000000000006DAAA7DFFFEFBF7FFFCF6F1FFFAF1
          E9FFF7EBE0FFF5E6D8FFD3A071FFB7B6B3DC0303032900000004000000000000
          000000000000000000000000000000000004DDAE82FFDCAD80FFDBAB7EFFDAAA
          7CFFD8A87AFFD8A678FFD7A475FF030303260000000400000000000000000000
          0000000000000000000000000000000000010000000400000005000000060000
          0007000000080000000900000007000000030000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00001F0000001F0000001F0000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000F8000000F8010000F803
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000B0000001A0000002000000015000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000C050403632F211ADE3F2B1EF6070606B6000000290000
          0009000000010000000000000000000000000000000000000000000000000000
          0000000000040101013F67564AF2F2CDABFFFFD1A4FF533C2DFF0D0E0ED30000
          00470000000E0000000100000000000000000000000000000000000000050000
          000B000000120C0C0B8CD5C4B6FFFFE9D2FFFFE5C9FF90735EFF414344FF1A1B
          1BE90101016200000014000000030000000000000000000000000101013F1411
          0FC608070790101010B4F3EAE3FFFFF1E5FFFFEFDFFFA29386FF8D8D8DFF7878
          78FF272727F8030303880000001A0000000400000000000000002A2929D0E7D7
          C7FF675547FF2F2F2FFFBBB9B8FFFFFFFDFFE6DFD9FFBDB9B6FFCBCBCBFFB6B6
          B6FF8D8D8DFF1D1D1DFF0C0C0CA9000000210000000700000001787978F8FFFF
          FFFFA99D94FF8B8B8BFF656565FF8B8A8AFFBBBBBBFFE1E3E3FFE7E7E7FFE1E1
          E1FFBDBDBDFF6D6D6DFF686868FF1A1A1AC6000000350000000B6D6D6DF0E3E4
          E4FFD0D0D0FFE0E0E0FFC4C4C4FF6A6A6AFF646464FFA9A9A9FFE0E0E0FFF0F0
          F0FFD4D4D4FFD1D1D1FFC5C5C5FF9D9D9DFF3E3E3EE204040452171717655F5F
          5FDABDBDBDFFDCDCDCFFF0F0F0FFC5C5C5FF787878FF585858FF707070FFAFAF
          AFFFE0E0E0FFF2F2F2FFEBEBEBFFE3E3E3FFCCCCCCFF5B5B5BE5000000000000
          00050B0B0B4928282886737373D7BABABAFBD9D9D9FFC5C5C5FF9C9C9CFF9F9F
          9FFF9F9F9FFFC0C0C0FFE9E9E9FFF3F3F3FFF3F3F3FFA7A7A7FB000000000000
          00000000000000000000000000010808083D21212179717171CCB0B0B0F4D4D4
          D4FFCCCCCCFFA9A9A9FF858585EDBFBFBFF9DADADAFF5F5F5FBD000000000000
          0000000000000000000000000000000000000000000000000003040404291D1D
          1D715B5B5BBB828282DC0909093D080808391F1F1F720202021C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000E07F0000C01F0000C00F00000007000000030000000000000000
          0000000000000000000080000000F0000000FE000000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000030323700C0C
          A5F0000000000000000000000000000000100D0DBAFF01011A60000000000000
          000002440CC0037414FF027114FF026E13FF013308B000030030000000100E10
          BBFF01011250000000000000000001011A600D0DBAFF00000010000000000000
          000002470CC002510FD000070140000B015001490DD0013C0AC000000000080B
          5AB00C0E91E008096AC0080869C00A0A8FE0060658B000000000000000000000
          0000034A0DC002480CC0000000000000000000160370026F13FF000000000204
          1B601018BEFF04052F8004053B900D0DBAFF01011A6000000000000000000000
          0000034C0EC0034B0EC0000000100008014002500ED0024E0DD0000000000000
          0010131FC0FF0102125002031A600E10BBFF0000001000000000000000000000
          000003500FC0058A19FF048718FF048217FF037014F000010020000000000000
          00000A135DB0080D4BA0080C5BB007095AB00000000000000000000000000000
          000003530FC003510FC00000000000020020036513E000180470000000000000
          000003061C601322ADF0131EC0FF02031B600000000000000000000000000000
          0000035511C0035310C00000000000000000035B11D0023F0BB0000000000000
          000000000010172BC5FF1422C2FF000000100000000000000000000000000000
          0000045711C007981DFF06951CFF06931AFF058E1AFF000D0250000000000000
          0000000000000001063000010630000000000000000000000000000000000000
          0000000501300009024000090240000901400000001000000000000000000000
          0000000000000000000300000006000000030000000000000000000000000000
          0001000000050000000D000000100000000B0000000300000000000000000000
          0000000000020D05004C220C007C000000110000000400000001000000000000
          00050100002D13030082110200880F0100780000000B00000000000000000000
          0000381D078CCB8332FBD88F36FF311402940100002500000012000000120000
          001F17070080A73602FFDB700CFFA83602FF0000001200000000000000000000
          0000A36A2AE5FFE4C1FFFFDFADFFE5AA5FFF86410EDE461D04AD381502A35E23
          03CCB6550DFAEB9522FFF6A124FFBF590BFD0000000C00000000000000000000
          000007050132A87B44E0F8DFC0FFFFECD0FFFEDDB3FFEFC084FFE9B368FFF0BC
          6AFFFBC56CFFF1B04CFFD8872AFF934812E80000000400000000000000000000
          000000000000030201235B3B17A9DBB077FCF0D3ADFFFAE0C1FFFADDB7FFF1CA
          97FFDCA258FF8A4C19DB1307015E020100240000000000000000000000000000
          00000000000000000000000000020F0903474B31139A6B4116BA6A3C13BC5C34
          11B02212066E0201001E00000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0038C0000018C0000081CC000081C0000081C00000C3C80000C3CC0000C3C0
          0000E7C10000E3810000C0810000C0010000C0010000C0010000E0030000F00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000010000
          0008000003420000023300000007000000010000000000000000000000000000
          0000000000000000000000000002000000080000000800000002000000040000
          0A6802024BDD010130BE0000023D000000060000000000000000000000000000
          00000000000000000002000000120000096B000009690000000D0000000B0101
          208A0D0DBFFF0A0AAAFF01012BB4000001300000000500000000000000000000
          0000000000030000001200000E8103035BE9020248D300000130000000020000
          0121070750A41011D7FF0909A3FF000022A90000002300000004000000000000
          00020000001000000F83030365EB0808B2F901012B8F0000000E000000000000
          00030000012006064DA11211D7FF09099EFF00001DA000000017000000050000
          000F0000108504046BEE0809C1FF03033A9A0000001400000003000000000000
          0000000000020000011C0606489C1313D9FF0A0A98FF000017970000001B0000
          128A050572F10B0BC6FF030345A1000000150000000300000000000000000000
          0000000000000000000200000016060642951313DAFF0A0A90FD00002CCA0707
          7FF70D0DCAFF05054DA60000001E000000030000000000000000000000000000
          00000000000000000000000000020000000F060642961314D4FD0E0FB3FF1111
          D2FF070757AD0000012700000004000000000000000000000000000000000000
          000000000000000000000000000300000125050535A01515DBFF1414DBFF1313
          D1FB03032D940000000F00000002000000000000000000000000000000000000
          000000000000000000030000022E010125A810109FFF1A1ADFFF0F0F90D21212
          B8ED080980F000000F7D0000000B000000020000000000000000000000000000
          0000000000020000043C040435B41414ACFF1E1EE1FF0C0C62AE000005330303
          216F0F0F9BDE070773EC00000E790000000A0000000100000000000000000000
          00020000094C09094BC11B1BBDFF2222E5FF0E0E64AE0000042F000000040000
          00060202175F0F0F88D1080870EB00000E770000000900000001000000010202
          125D10106DD22020CCFF2727E7FF111165AC0000052E00000002000000000000
          00010000000501010F4F0E0D76C3090970EB00000E75000000060000021F1111
          68BF2727DBFF2A2AE9FF111163A80000042B0000000200000000000000000000
          000000000000000000040000083D0B0B62B1070752C800000123000000000505
          1A5A1F1FA4D611115EA300000426000000010000000000000000000000000000
          0000000000000000000000000002000002220101093B00000003000000000000
          00000101062A0000011600000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0003F0000003E0000001C000000080000080000000C0010000E0030000F007
          0000F0070000E0030000C0010000800000000080000001E0000083F00000CFF9
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000002000000090000000B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000020000000E341D0FA0773F19DD000000000000
          0000000000000000000000000000000000010000000500000008000000030000
          000000000000000000030000000E351E0FA0C79A69FF8C4A22EC000000000000
          00000000000000000000000000020000000911090463945931EC0000000A0000
          0004000000090201002C4B2B16BAC69560FFDFC295FF61381CC8000000000000
          0000000000010000000402010027462713B7B07949FFB27142FF040201360F09
          055B3B2313A6996139F9D2A66EFFEECD94FFCCA379FF22140B7B000000000000
          000200000007170E076B925D36F3D7AE76FFF3D597FFB5794BFFA66C41FFB47E
          50FFCEA26DFFEECC90FFEFCD92FFEEDEB6FF95623CE90000001A000000020302
          0129583720BFC19261FFF2D49AFFF5DA9FFFF6DA9DFFF4D79DFFF4D79CFFF4D6
          9AFFF3D59AFFF3D89FFFF5ECC5FFCAA176FF140D085E0000000500000003A37B
          55EBEADDBCFFFBF7D4FFFCF3CCFFFCF3CEFFFCF2CAFFFAECC0FFF8E6B6FFF6E3
          B2FFF6ECC3FFF1EBCAFFCDA981FF271B127D0000000800000001000000010403
          022A72573EC4DABE99FFFAF7D8FFFDFAD9FFFDF7D4FFFDFDE1FFF5EFD0FFEADB
          BAFFD6B892FF9E7653E816100B5E000000070000000100000000000000000000
          0001000000051F19126AB79571F2ECDFBDFFFEFDDFFFB48358FF977452E1654D
          37BB221A12700000001300000004000000010000000000000000000000000000
          0000000000000000000302020121604C38B3DABF9AFFBC8D63FF0000000B0000
          0005000000030000000100000000000000000000000000000000000000000000
          00000000000000000000000000010000000417130E5BA07C5BE80000000E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000200000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000001000010221C165F8A715BBED1AC8AEAE4BC99F5E4BC99F5D1AC
          8AEA8A715BBE221C165F01000010000000000000000000000000000000000000
          000009070632866D57BCF9CCA5FFFAD1ACFFFCD4B0FFFDD6B4FFFDD6B4FFFCD4
          B0FFFAD1ACFFF9CCA5FF866D57BC090706320000000000000000000000000907
          0532B18F70D9F8CDA8FFFBD5B3FFFCD8BAFFFBDBBEFFFBDCC0FFFBDCC0FFFBDB
          BEFFFCD8BAFFFBD5B3FFF8CDA8FFB18F70D909070532000000000000000C8469
          50BCF6C79EFFF8CFABFFF9D3B2FFF9D8BAFFFADBC0FFFADDC3FFFADDC3FFFADB
          C0FFF9D8BAFFF9D3B2FFF8CFABFFF6C69EFF846950BC0000000C2018115EF0BB
          8CFFF4C297FFF5C79FFFF6CAA5FFF6D0ADFFF7D3B2FFF7D4B5FFF7D4B5FFF7D2
          B2FFF6D0ADFFF6CAA5FFF5C79FFFF4C297FFF0BB8CFF2018115E836346BFEDB4
          80FFF0B785FFF0BA8AFFF1BC8FFFF1BF93FFF2C297FFF2C399FFF2C399FFF2C2
          97FFF1BF93FFF1BC8FFFF0BA8AFFF0B785FFEDB481FF836346BFBF8C60EAE9AB
          72FFEAAD73FFEAAD75FFEBAE77FFEBAE79FFEBB079FFEBAF7AFFEBAF79FFEBAF
          78FFEBAE79FFEBAE77FFEAAD75FFEAAD73FFE9AB72FFBF8C60EAC8915EF5E3A1
          64FFE3A165FFE3A164FFE3A165FFE5A56DFFE6AB76FFE7AF7BFFE7AF7BFFE6AA
          76FFE5A56DFFE3A165FFE3A165FFE3A165FFE3A164FFC8915EF5C28553F5DD97
          58FFDD9657FFDC9657FFE0A169FFE4AC7AFFE4AE7DFFE4AF7EFFE4AF7EFFE4AE
          7DFFE4AC7BFFE0A169FFDC9657FFDD9657FFDD9757FFC28552F5AA7041EAD58E
          4FFFD68E4DFFDA9C63FFE1AE7EFFE1AE80FFE1AD7EFFE1AD7EFFE1AD7EFFE1AE
          7DFFE1AE7EFFE1AE80FFDA9C62FFD68E4DFFD58E4EFFAA7042EA6D4426BFCB83
          45FFD18B4AFFDDA97AFFE0B389FFE0B187FFE0B288FFE0B187FFE0B188FFE0B2
          87FFE0B188FFE0B38AFFDDA97AFFD18A4AFFCB8346FF6D4526BF1A0F085EC074
          3BFFCC8748FFE0B691FFE0B794FFE0B793FFE0B793FFE0B793FFE0B793FFE0B7
          93FFE0B793FFE0B794FFE0B691FFCC8748FFC0743AFF1A0F085E0000000C6439
          1BBCC2783EFFDFB995FFE3C0A2FFE2BF9FFFE2BF9FFFE2BF9FFFE2BF9FFFE2BF
          9FFFE2BF9FFFE3C1A2FFDFB995FFC2793EFF64391BBC0000000C000000000704
          023288502CD9D3A179FFE9CFB8FFEAD1BAFFE9CEB7FFE8CDB6FFE8CDB6FFE9CF
          B7FFEAD1BAFFE9D0B8FFD3A17AFF88512CD90704023200000000000000000000
          0000070402326C4931BCD9AE92FFE8CEBCFFEDD9C9FFF0E0D2FFF0E0D2FFEDD9
          C9FFE8CFBCFFD9AE92FF6C4931BC070402320000000000000000000000000000
          000000000000000000101C140F5F796253BEBFA594EAD3B6A6F5D3B6A6F5BFA5
          94EA796253BE1C140F5F00000010000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0070000C003000080010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080010000C0030000E007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000040505053F1C1C1C92353535C8494949EB494949EB3535
          35C81C1C1C920505053F00000004000000000000000000000000000000000000
          000000000019191919904A4A4AEE575757FF5A5A5AFF5C5C5CFF5C5C5CFF5A5A
          5AFF575757FF4A4A4AEE19191990000000190000000000000000000000000000
          0019232323AD525252FF575757FF5C5C5CFF606060FF626262FF626262FF6060
          60FF5C5C5CFF575757FF525252FF232323AD0000001900000000000000031414
          1490464646FF4E4E4EFF545454FF5B5B5BFF5F5F5FFF626262FF626262FF5F5F
          5FFF5B5B5BFF545454FF4E4E4EFF464646FF14141490000000030202023E3232
          32F13C3C3CFF424242FF484848FF4D4D4DFF515151FF545454FF545454FF5151
          51FF4D4D4DFF484848FF424242FF3C3C3CFF323232F10202023E0D0D0D932B2B
          2BFF2E2E2EFF323232FF353535FF383838FF3B3B3BFF3D3D3DFF3D3D3DFF3B3B
          3BFF383838FF353535FF323232FF2E2E2EFF2B2B2BFF0D0D0D93131313C82020
          20FF212121FF232323FF242424FF232323FF232323FF232323FF232323FF2323
          23FF232323FF242424FF232323FF212121FF202020FF131313C8141414EC1717
          17FF171717FF171717FF171717FF232323FF2F2F2FFF373737FF373737FF2F2F
          2FFF232323FF171717FF171717FF171717FF171717FF141414EC0F0F0FEC1111
          11FF101010FF111111FF2A2A2AFF434343FF474747FF474747FF474747FF4747
          47FF434343FF2A2A2AFF111111FF101010FF111111FF0F0F0FEC070707C80A0A
          0AFF090909FF272727FF4D4D4DFF4E4E4EFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
          4CFF4E4E4EFF4D4D4DFF272727FF090909FF0A0A0AFF070707C8020202960404
          04FF090909FF4B4B4BFF5E5E5EFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B
          5BFF5B5B5BFF5E5E5EFF4B4B4BFF090909FF040404FF02020296000000450000
          00F60B0B0BFF6B6B6BFF6F6F6FFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E
          6EFF6E6E6EFF6F6F6FFF6B6B6BFF0B0B0BFF000000F600000045000000060000
          00A1080808FF737373FF868686FF828282FF828282FF828282FF828282FF8282
          82FF828282FF868686FF737373FF080808FF000000A100000006000000000000
          0027070707C85D5D5DFFA7A7A7FFA7A7A7FFA3A3A3FFA2A2A2FFA2A2A2FFA3A3
          A3FFA7A7A7FFA7A7A7FF5D5D5DFF070707C80000002700000000000000000000
          00000000002B1A1A1AB2828282FFB3B3B3FFBFBFBFFFC7C7C7FFC7C7C7FFBFBF
          BFFFB3B3B3FF828282FF1A1A1AB20000002B0000000000000000000000000000
          0000000000000000000E0A0A0A5B454545BA888888E79E9E9EF49E9E9EF48888
          88E7454545BA0A0A0A5B0000000E000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0070000C003000080010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080010000C0030000E007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000101C1C1C5F767676BEB3B3B3EAC4C4C4F5C4C4C4F5B3B3
          B3EA767676BE1C1C1C5F00000010000000000000000000000000000000000000
          0000070707326E6E6EBCD1D1D1FFD8D8D8FFDCDCDCFFDEDEDEFFDEDEDEFFDCDC
          DCFFD8D8D8FFD1D1D1FF6E6E6EBC070707320000000000000000000000000707
          07328F8F8FD9D2D2D2FFDBDBDBFFDEDEDEFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
          DFFFDEDEDEFFDBDBDBFFD2D2D2FF8F8F8FD907070732000000000000000C6767
          67BCCCCCCCFFD8D8D8FFD9D9D9FFDBDBDBFFDCDCDCFFDEDEDEFFDEDEDEFFDCDC
          DCFFDBDBDBFFD9D9D9FFD8D8D8FFCCCCCCFF676767BC0000000C1818185EBABA
          BAFFCDCDCDFFD0D0D0FFD2D2D2FFD4D4D4FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
          D6FFD4D4D4FFD2D2D2FFD0D0D0FFCDCDCDFFBABABAFF1818185E606060BFBABA
          BAFFC5C5C5FFC5C5C5FFC7C7C7FFC8C8C8FFC9C9C9FFCACACAFFCACACAFFC9C9
          C9FFC8C8C8FFC7C7C7FFC5C5C5FFC5C5C5FFBABABAFF606060BF898989EAB5B5
          B5FFB8B8B8FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
          B9FFB9B9B9FFB9B9B9FFB8B8B8FFB8B8B8FFB5B5B5FF898989EA8C8C8DF5ADAD
          ADFFACACACFFACACACFFACACACFFB1B1B1FFB5B5B5FFB8B8B8FFB8B8B8FFB5B5
          B5FFB1B1B1FFACACACFFACACACFFACACACFFADADADFF8C8C8DF5848485F5A2A2
          A2FFA1A1A1FFA1A1A1FFABABABFFB5B5B5FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
          B6FFB5B5B5FFABABABFFA1A1A1FFA1A1A1FFA2A2A2FF848485F5727272EA9696
          96FF989898FFA4A4A4FFB3B3B3FFB4B4B4FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
          B3FFB4B4B4FFB3B3B3FFA4A4A4FF989898FF969696FF727272EA464647BF8989
          89FF929292FFAEAEAEFFB6B6B6FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5
          B5FFB5B5B5FFB6B6B6FFAEAEAEFF929292FF898989FF464647BF1010105E7777
          79FF898989FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
          B9FFB9B9B9FFB9B9B9FFB8B8B8FF898989FF777779FF1010105E0000000C3A3A
          3CBC79797AFFB8B8B8FFC1C1C1FFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBE
          BEFFBEBEBEFFC1C1C1FFB8B8B8FF79797AFF3A3A3CBC0000000C000000000404
          0432525253D9A1A1A1FFCFCECEFFCFCFCFFFCDCDCDFFCCCCCCFFCCCCCCFFCDCD
          CDFFCFCFCFFFCFCFCEFFA1A1A1FF525253D90404043200000000000000000000
          000004040432494949BCAFAEAFFFCECECEFFD7D7D7FFDEDEDEFFDEDEDEFFD7D7
          D7FFCECECEFFAFAFAFFF484949BC040404320000000000000000000000000000
          000000000000000000101414145F616161BEA3A4A4EAB6B6B6F5B6B6B6F5A3A3
          A4EA616161BE1414145F00000010000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0070000C003000080010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080010000C0030000E007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000005060636191B1B8565696AF5535454F55252
          52F5575757F55E5E5EF5696A6AF57B7F7FF5464748BF0D0D0E4D000000000000
          0000000000000000000000000000434344B9606060FF606060FF787878FF9090
          90FFA9A9A9FFBCBCBCFFC8C8C8FFCAC9C9FFBDBDBCFF7D8080FF000000000000
          00000000000000000000000000003A3A3AADC8C8C8FF6A6A6AFF848484FF9595
          95FFA8A8A8FFBDBDBDFFD4D4D4FFE9E9E9FFFFFFFFFF7B7B7BF6000000000000
          0000000000000000000000000000353535ADE9E9E9FFBFBFBFFF6C6C6CFFA0A0
          A0FFB2B2B2FFC6C6C6FFDCDCDCFFEAEAEAFFFFFFFFFF8A8A8AF6000000000000
          0000000000000000000000000000343535ADCCCCCCFFE9E9E9FFAEAEAEFF7D7B
          79FFC6C3BFFFD6D6D6FFE9E9E9FFF4F4F4FFFFFFFFFF929292F6000000000000
          0000000000000000000000000000373431AABFBDBAFFCECCC9FFE6E2DDFF8994
          A3FF768EA8FFB8B5B1FFC0C0C0FFD3D3D3FFF4F4F4FFA4A4A4FF093E77CE1D57
          8CD6326590D6496D8BD000010429242F41B97A8BA2FF6286B2FF4677B4FF2769
          BCFF10254AB903030329808585D0818485D67D7D7DD65D5D5DCE2C88CFFF68CF
          F9FF41A8E6FF3093D8FF2786CFFF1D7BCCFF1979CDFF1D82D6FF2392E5FF2BA1
          F3FF00143FAA0000000000000000000000000000000000000000378BC7F68FEB
          FFFF69DBFFFF60D6FFFF54D2FFFF4BCDFFFF42C6FFFF3DC1FFFF3ABCFFFF34B1
          FCFF011B43AD00000000000000000000000000000000000000004494CFF6A8F3
          FFFF78E1FEFF6CDAFEFF5DD4FEFF52CEFEFF4AC8FEFF42C2FEFF3CBEFFFF3EB8
          FBFF021F48AD0000000000000000000000000000000000000000469AD5F6C8FE
          FFFF94EDFFFF83E6FFFF6EDEFEFF5ED7FEFF54D1FEFF50CEFFFF4CCBFFFF56C7
          FDFF01214BAD00000000000000000000000000000000000000004DADEAFF96D7
          F6FFA2E2FAFFA9EBFCFFAAF1FFFFA1F0FFFF8BE4FFFF71D4F9FF5AC1F1FF45A4
          E0FF163C63B900000000000000000000000000000000000000000911154D2E63
          83BF5BACDBF54EA2D8F5489BD4F54699D0F54195CDF53E95CBF54E9ACAF50E24
          3785050709360000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000F8000000F8000000F8000000F8000000F8000000F800
          000000000000001F0000001F0000001F0000001F0000001F0000001F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000E0000006200000009000000000000
          00000000000000000000000000000000000000000000000000000000001E0101
          014700000000000000000000000A020202AD010101FF00000083000000000000
          0000000000000000000000000000000000000000000000000000050505691A1A
          1AF10101014400000008070707B00A0A0AFF060606E700000041000000000000
          00000000000000000000000000000000000000000000000000000F1111AA2525
          25FF1A1A1AE60F0F0FC1161616FF0F0F0FE70000003900000000000000000000
          0000010000122D241D78765F4EC4896D57D6896E57D4615042BE343231ED2B2C
          2CFF282828FF232323FF191919E9010101360000000000000000000000000706
          04308E7259D1E6CBB4FFF8E9DCFFFFF7EFFFFFFEF4FFC5B9AFFF373636FF3536
          36FF313131FF2C2C2CFF212121E9020202430000000000000000020101199876
          56D5F6DDC7FFFFF0E1FFFFF1E5FFFFF0E4FFFFF7EAFFA19A94FF3F4040FF4343
          43FF3D3D3DFF373738FF323232FF282828F301010135000000003F2D1D89ECC5
          A1FFFDE4CDFFFDE8D4FFFFECDDFFFFEEE1FFFEEDDFFF777471FF505151FF4E4F
          4FFF454648FF404142F41D1E1FB1050505500000001100000000A87C52DCF7D5
          B6FFFBDFC5FFFDE6D1FFFFEAD9FFFFF0DFFFE0D0C3FF646464FF595A5BFF6D6B
          69FF9D8E81FF604E3FC600000000000000000000000000000000CB9A6AF0FAD9
          BBFFFADABFFFFDE3CCFFFFE7D4FFFFEFDBFFCABBB0FF827E7BFFB9AA9EFFEDD1
          B9FFFFDFC2FF89694DD200000000000000000000000000000000CDA074F1FBE2
          CBFFFADDC3FFFCE1C9FFFEE4CEFFFEE4CEFFF8DFCAFFF6DEC8FFFFE7CEFFFFE2
          C8FFFDE4CDFF8E6E52D600000000000000000000000000000000B48D66E1FAE4
          D0FFFDE8D6FFFDE9D9FFFEEADAFFFEEADAFFFFEBDBFFFFECDCFFFDE9D9FFFEEA
          D9FFF6E0CBFF7C6048C500000000000000000000000000000000533F2E99F5D9
          BEFFFDEEE1FFFDEDDFFFFEEFE2FFFEEFE3FFFEEFE3FFFEEFE2FFFDEDE0FFFFF1
          E5FFEBCBAEFF2E231A770000000000000000000000000000000005040328C29E
          7EE7FCEFE2FFFEF4ECFFFEF2E8FFFEF1E7FFFEF1E7FFFFF2E8FFFFF6EDFFFAE9
          DAFF977759D1010101160000000000000000000000000000000000000000110E
          0B45BE9E7FE5F6E0CCFFFDF2E8FFFFF9F5FFFFF9F4FFFCF1E6FFF2D9C0FF9B7D
          5DD20706042F0000000000000000000000000000000000000000000000000000
          00000504032654423299B59475E0D0AB87F1D0AA84F1A88867DA413224890201
          0118000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFF80000FF300000FF000000FF010000C003000080030000000100000001
          0000000F0000000F0000000F0000000F0000000F0000000F0000801F0000C03F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000002204040470060606B0050606D4050505EB020304EB0102
          03D4020202B00101017000000022000000000000000000000000000000000000
          000A09090980171718EB272626FF3F3D3CFF525151FF5D5B5BFF5C5A59FF4D4B
          4BFF353331FF171616FF060607EB020202800000000A00000000000000141717
          17B2494747FF918C87FFCCC3BCFFEADFD7FFEFD2B0FFEEBF86FFECBD83FFECCD
          ABFFE8DCD3FFC7BCB4FF867D78FF32302EFF080808B2000000141313138D8C89
          86FFE7DFD9FFFFF9F2FFFFF7F3FFF3D8B7FFE1A557FFDB9E4EFFD99B4BFFD89A
          4AFFEECFABFFFFF3ECFFFFF5EAFFE1D6CDFF76716DFF0808088D1C1B1B75FFFF
          FAFFFFFAF5FFFAF4EFFFFAF4F0FFEBBF88FFE3A95DFFE2A960FFDEA558FFDA9D
          4CFFE1B175FFF8EFE8FFF7EDE6FFFDF2EAFFFFF6EEFF161515751E1E1E75FFFF
          FFFFFFFDFBFFFBF8F5FFFBF9F6FFEEC18AFFF1CD9FFFF3DBBBFFE3AB63FFDEA1
          52FFE4B67CFFF9F4F0FFF9F2EDFFFEF7F1FFFFFAF4FF191818751D1D1D8DA3A2
          A2FFEEEDEDFFFFFFFFFFFFFFFFFFFAE3C6FFF3C993FFF1CC9BFFE7AC61FFE5AA
          5DFFF5DDBFFFFFFFFFFFFFFFFDFFEAE5E2FF8F8C8BFF1212128D000000143232
          32B27B7B7BFFB3B3B2FFE0E0E0FFF6F7F8FFFAE6CBFFFBD29FFFFAD2A1FFF8E3
          CAFFF5F4F4FFDBDADAFFA8A7A6FF646464FF232324B200000014000000000000
          000A1B1B1B80595959EB6F6F6FFF828283FF919296FF999C9FFF989A9DFF8C8E
          91FF787979FF626262FF484949EB161616800000000A00000000000000000000
          0000000000000101012216161670343434B0484848D4575757EB555555EB4545
          45D4303030B01313137001010122000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000E00700008001000000000000000000000000
          000000000000000000000000000080010000E0070000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000012245490E5688DB2F9345B92E9143B70D0031C
          3D9D000816620001042E0000000A000000000000000000000000000000000000
          00000000000000000000001A2D79878E9EFFFFFFE4FFFBF7E3FFECE4D1FFCFCF
          C2FFABB5B3FF798FA2FD4A688BF327456CDD0A2442AE0110237F000000000000
          00000000000000000000076DB1E36B7988FFFFE0BFFFFFFFF3FFFFFFE8FFFFFE
          DEFFFFFAD2FFFFF3C5FFFFE9B6FFF5DCA7FFE4CD98FF497392FB000000000000
          00000000000002131F6235A2E8FF57A0CBFF6B829FFFA1B0C4FFBFC2CBFFD7CF
          CBFFEFDDC9FFFFE8C7FFFFEDC2FFFFEDBBFFFFF2AFFF00000000000000000000
          000000000000095DA1E566B9E8FF7ED8FBFF089FEDFF0A94E3FF0F88D9FF1A7D
          CBFF2C7ABDFF5081AEFF768EA5FF989DA3FFC8BDA2FF00000000000000000000
          000003141D5C1E88D3FF74C5ECFF4ACCF5FF1EBCF4FF21B9F5FF1BB3F4FF14A8
          F1FF0D9CEBFF048CE1FF007BD3FF006EC6FF0D67B8FF0C5AA5F8000000000000
          00002280B3E066C1EEFF75D8F5FF2CCFF5FF2CCBF6FF28C5F6FF24BDF6FF1EB2
          F2FF1AA8ECFF179EE8FF1495E2FF108BDAFF0A7ED3FF0636539C000000000412
          195552BCEDFFAAEBFBFF5AE5F9FF2ED9F6FF30D1F4FF2ECFF8FF29C9FAFF23BE
          F7FF1DB0F2FF19A4EAFF1598E3FF108AD9FF0E618ECC00000000000000002580
          B2DF8FDDF7FF97EFFBFF37E6F8FF30CDECFF25B1DEFF25B0E0FF24B1E3FF21AE
          E6FF1DA8E5FF1AA4E7FF1599E4FF1383C1EC000000100000000005141A573AAB
          ECFFA0E6F9FF5DE9FAFF32E1F6FF2EC4E7FF28B6E0FF25AEDCFF22A5D8FF1E9D
          D3FF1B96D0FF1BA3E4FF189DDFFA01080B380000000000000000398BAFDB69CA
          F3FF87E6FAFF35E0F9FF36DBF3FF30C9EAFF2DC3E6FF2BBBE2FF27B3DFFF24AA
          D9FF22AFE4FF1FB1F0FF06222D700000000000000000000000006EB9CCE8B3F1
          FCFF51DCF9FF2EDCF8FF38DFF5FF37DBF2FF34D5EFFF30CAEBFF2CC0E5FF2ABC
          E5FF27C0F3FF0F4F67A6000000000000000000000000000000001A292B6B92DC
          EDF72ACDF6FE32D9F8FF39E1F8FF3BE6F7FF3CE7F7FF38E0F7FF34D6F4FF2FD0
          F5FF1D89A7D20000000000000000000000000000000000000000000000000102
          031D0313174F082329680F3D44861A656CA925919BCA2DAEBDDF2DB7CEE828A7
          C0E0000101160000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F0070000F0000000F0000000E0010000E0010000C0000000C000
          000080010000800100000003000000070000000F0000001F0000801F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000A05023C45270E96864E1DCBB56B28E9B46825E9844A
          18CB43240B960A05013C00000000000000000000000000000000000000000000
          00000000001145291094DB9147FAF3B46DFFF4C791FFF3CDA0FFF3CA9DFFF2BF
          86FFF0A85AFFD68130FA40220A94000000110000000000000000000000000000
          00116E4420B6F2B36CFFF7D7B1FFEFEAE4FFEAEEF3FFE7EEF6FFE5ECF4FFE3E7
          ECFFE6DFD8FFF0C799FFED9C47FF643712B6000000110000000000000000492F
          1794F4BA77FFF7E4CCFFF0F4F8FFEDEFF1FFEAE4DEFFE7D9CCFFE4D6C9FFE4E1
          DDFFE1E4E8FFE0E4E9FFEDD1B0FFED9D48FF41220A94000000000B07033AE4A9
          65FAF9E1C1FFF4F7FBFFF2F5F8FFEEE1D4FFE29F5DFFDE934AFFDC8E43FFDC9A
          5BFFE4DDD6FFE2E4E7FFE0E5EAFFF0C89BFFD78231FA0904013A51391F97F8CD
          97FFF9F6F1FFF6F8FAFFF5F6F6FFF2F1F0FFE7B582FFE09245FFDD8D3FFFE1B2
          84FFE8E9E9FFE6E6E7FFE2E4E7FFE6E1D9FFF0A95DFF45250C979A7344CDFBE0
          BCFFFAFCFFFFF9F9F9FFF8F7F7FFF6FBFFFFEDCBA9FFE29649FFE09448FFE7CC
          B2FFEBF0F5FFE8E8E8FFE5E6E6FFE5E8EBFFF2C189FF884C1BCDCA9D64E9FCE8
          CDFFFCFEFFFFFBFBFAFFF9F9F9FFF8FEFFFFEFCFAEFFE59C50FFE39A4FFFEACE
          B2FFEEF1F6FFEBEBEBFFE8E8E8FFE6EBF0FFF3CC9EFFB56C28E9CDA168E9FDEA
          D0FFFEFFFFFFFCFCFCFFFBFDFDFFF8F1E9FFECBA83FFE7A45AFFE59F54FFECD1
          B6FFF0F4F8FFEEEEEEFFEBEBEBFFE9EDF3FFF4CFA1FFB66E2AE9A07D51CDFDE5
          C5FFFFFFFFFFFEFEFEFFFDFEFFFFF9F0E6FFEFC291FFEBB172FFE8A55DFFEED4
          B8FFF3F7FBFFF1F1F0FFEDEEEEFFECEFF2FFF4C791FF8A5320CD57432B97FBDA
          ADFFFFFCF9FFFFFFFFFFFEFEFEFFFCFDFDFFF7E4CFFFF2D4B1FFF2D4B4FFF4EC
          E3FFF4F6F7FFF2F2F2FFEFF1F4FFF1ECE5FFF3B46CFF482A10970C09063AEFC6
          8DFAFDECD5FFFFFFFFFFFFFFFFFFFBF3E8FFF0BD80FFEEB26CFFEEB87BFFF6EB
          DFFFF7F8FAFFF4F4F6FFF3F6FAFFF7D7AFFFDD9548FA0A06023A000000005341
          2A94FAD6A4FFFEF2E2FFFFFFFFFFFFFFFFFFFBEEDEFFF6D8B4FFF4D3ADFFF9F2
          EBFFF9FBFEFFF7FBFEFFF9E4CBFFF3B469FF482D149400000000000000000100
          00117E6542B6FBD6A3FFFDEBD3FFFEFBF7FFFFFFFFFFFFFFFFFFFEFFFFFFFDFF
          FFFFFBF7F2FFFBE0BDFFF5BA72FF724B24B60000001100000000000000000000
          00000100001153412A94EFC58BFAFAD9AAFFFCE3C2FFFDE8CDFFFDE7CAFFFBDE
          B8FFF9CC92FFE8AC65FA4D341A94000000110000000000000000000000000000
          000000000000000000000D0A063C56422B969D7C50CBCFA269E9CEA064E99974
          45CB533B21960C08043C00000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F00F0000C003000080010000800100000000000000000000000000000000
          0000000000000000000000000000000000008001000080010000C0030000F00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000000000CD82
          45FFCC7E41FFC97A3CFFC77637FFC57232FFC36E2EFFC16B2AFFBF6927FFBE66
          24FFBD6422FFBC6320FFBB611EFFBB611EFFBB611EFF0000000000000000EEAF
          76FFFFEDCAFFFFE9C4FFFFE8C1FFFFE6BEFFFFE6BCFFFFE4B9FFFFE3B6FFFFE2
          B3FFFFE1B0FFFFE0ADFFFFDEAAFFFFE5B2FFBB611EFF0000000000000000EEB0
          77FFFFE9CBFFFFE6C5FFFFE5C2FFFFE3BEFFFFE2BBFFFFE0B8FFFFDEB5FFFFDE
          B1FFFFDCAEFFFFDAABFFFFD9A7FFFFDFADFFBB621FFF0000000000000000EFB1
          79FFFFEDD3FFD7AC74FFE7BB80FFE1B986FFC6A177FFA5835FFF9D7B59FFAB8D
          68FFD4B58CFFF9D8ACFFFFDCAEFFFFE2B3FFBC6421FF0000000000000000EFB3
          7CFFFFF1DCFFD4A35AFFD6BC9DFFB58857FFBD762DFFCC8A35FFCD9946FFA081
          49FF705535FFB39871FFF8D9AEFFFFE5BAFFBE6624FF0000000000000000F0B6
          82FFFFF3E1FFDCA44BFF9D6522FFDA8F2EFFF59C34FFE59437FFEAA03EFFFFCD
          5EFFDCBD74FF7B5F3DFFD1B38CFFFFE8C1FFBF6927FF0000000000000000F1B9
          87FFFFF4E5FFDFB97CFFF9B133FFEFA02BFFB36F21FFB79470FFD6B48FFFC080
          37FFDFAC52FFA88752FFB2926CFFFFEAC7FFC16C2CFF0000000000000000F2BD
          8DFFFFF5E8FFF0E2CDFFE7B44AFFEEA629FFBE7623FF9B5D1FFFA36422FFB36E
          2AFFB97027FFA26629FF9B7859FFFFEDCEFFC37031FF0000000000000000F3C2
          93FFFFF6EBFFEDE0CCFFEAD3A2FFF5C243FFCC8A22FFE2A95BFFE7B169FFD38A
          2FFFF9A035FFC88231FFA4876BFFFFEED1FFC67537FF0000000000000000F4C6
          9BFFFFF8EFFFE2D1B8FFECD5A1FFF7E2A7FFC19B41FF997752FFB79260FFD18C
          28FFF7A533FFAE793CFFDBC5A9FFFFEFD5FFC97B3FFF0000000000000000F5CB
          A3FFFFFAF2FFFFF7EDFFE3D3B1FFF0DBA1FFF5DC86FFD7B03CFFDFA328FFF0A9
          2AFFD69739FFC3A57DFFF8E5CCFFFFF0D7FFCD8348FF0000000000000000F7D0
          ABFFFFFBF5FFFFF9F1FFFDF5ECFFDECDABFFE3D091FFE9D26AFFE8BD44FFE6B7
          49FFC5A679FFE4CEABFFE4C99EFFFFF1D9FFD18B50FF0000000000000000F8D6
          B3FFFFFCF8FFFFFAF4FFFFFAF3FFFFF9F2FFF9F2E7FFF0E4D4FFEBDBC4FFEDD9
          B5FFE5CA98FFE4C792FFE9D2B3FFFFF1DBFFD6945CFF0000000000000000F9DB
          BBFFFFFDFBFFFFFBF6FFFFFBF5FFFFFAF5FFFFFAF4FFFFFAF3FFFFFAF3FFFFF8
          F0FFFFF7ECFFFFF3E6FFFFF1DEFFFFF2DEFFDB9D68FF0000000000000000FBE0
          C6FFFFFFFFFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFCFFFFFEFCFFFFFEFCFFFFFC
          F9FFFFFBF4FFFFF8EEFFFFF5E7FFFFF5E5FFDEA673FF0000000000000000FCE1
          C3FFFBE3C9FFFBE1C5FFFBDEC0FFFBDDBDFFFADBB9FFFAD9B6FFFAD7B3FFFAD6
          B1FFF9D4ADFFF9D3ABFFF8D0A7FFF8CEA4FFE4AD79FF00000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00800100008001000080010000800100008001000080010000800100008001
          0000800100008001000080010000800100008001000080010000800100008001
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          000E00000014000000150000001700000018000000190000001B0000001C0000
          001E0000001F0000002000000021000000230000001C000000080000000BBF7E
          4CFFBE7D4BFFBE7C4AFFBD7C49FFBD7B48FFBC7A48FFBC7A47FFBB7947FFBB79
          46FFBA7845FFBA7745FFB97745FFB97744FFB97643FF0000001C0000000CC181
          4FFFF8DDC1FFFADDBFFFFBDFC1FFFCE1C3FFF9DBBDFFF0CEABFFECC8A4FFEBC6
          A3FFE9C4A0FFE8C29DFFE7BF9AFFE5BC97FFB87644FF000000210000000AC385
          53FFEFD1B4FFF9E1C6FFFFE9D0FFFFE9CEFFF2D4B4FFB87946FFB77744FFB575
          42FFB47340FFB3723EFFB2703CFFB16F3BFFB16F3BFFB16F3BFF00000008C589
          58FFFBE6D1FFF2D6BAFFF3D8BDFFFDE7CFFFEED0B2FFBD804DFFFFFFFFFFFFFF
          FFFFEEEEEEFFDEDEDEFFEEEEEEFFFFFFFFFFFFFFFFFFB1703CFF00000006C88B
          5CFFFFF1E1FFFFF0DEFFF8E2CDFFF1D6BCFFE7C5A7FFC18754FFFFFFFFFF9292
          92FF1B1B1BFF8C8C8CFFDEDEDEFFFFFFFFFFFFFFFFFFB47340FF00000005C98F
          61FFFFF4E8FFFFF3E5FFFFF3E4FFFDEDDAFFCA9C76FFC68D5CFFFFFFFFFF2929
          29FFBFBFBFFF1E1E1EFFD9D9D9FFFFFFFFFFFFFFFFFFB77845FF00000004CB92
          65FFFFF7EDFFFFF5EAFFE9D1BAFFB58156FFB68358FFCB9463FFFFFFFFFF1313
          13FFD9D9D9FF040404FFD9D9D9FFFFFFFFFFFFFFFFFFBC7E4BFF00000003CD95
          68FFF6E9DDFFCBA281FFB57C50FFE2C9B4FFEEDBCAFFD09B6BFFFFFFFFFF1B1B
          1BFFD9D9D9FF0A0A0AFFD9D9D9FFFFFFFFFFFFFFFFFFC08552FF00000002C58C
          5EFFBD885DFFDDC0A8FFFCF7F1FFFFFBF7FFF2E4D6FFD4A172FFD39F6FFF2424
          24FFCF9969FF111111FFCB9463FFC99160FFC78F5DFFC58C5AFF00000001CC98
          6EFFF9F2EBFFFFFDFBFFFFFDFBFFFFFDFAFFFBF6F0FFF2E5D9FFEEDECFFF2D2D
          2DFFEEDECFFFEEDDCEFFEEDDCEFFE7D1BEFFB97E4FFF0000001000000001DBB0
          8DFFDAAF8BFFD8AD89FFD8AD88FFD6AB86FFD5A983FFD3A781FFD2A580FF3636
          36FFCFA17AFFCD9F77FF181818FFCA9A72FFC8986FFF0000000B000000000000
          0000000000010000000200000002000000030000000400000005000000064040
          40FF0303034502020245202020FF0000000B0000000900000003000000000000
          0000000000000000000000000000000000000000000000000000000000000808
          0855242424C01E1E1EC004040455000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0000000FF87
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          000E00000014000000150000001700000018000000190000001B0000001C0000
          001E0000001F0000002000000021000000230000001C000000080000000BBF7E
          4CFFBE7D4BFFBE7C4AFFBD7C49FFBD7B48FFBC7A48FFBC7A47FFBB7947FFBB79
          46FFBA7845FFBA7745FFB97745FFB97744FFB97643FF0000001C0000000CC181
          4FFFF8DDC1FFFADDBFFFFBDFC1FFFCE1C3FFFDE1C3FFFDE1C2FFFCE0C1FFFBDE
          BFFFF9DBBBFFF7D9B8FFF6D5B4FFF3D1B0FFBA7846FF000000210000000AC385
          53FFEFD1B4FFF9E1C6FFFFE9D0FFFFE9CEFFFFE8CDFFFFE7CCFFFFE7CBFFFFE6
          CAFFFFE5C8FFFDE3C5FFF7D8B9FFECC7A4FFBC7B48FF0000001F00000008C589
          58FFFBE6D1FFF2D6BAFFF3D8BDFFFDE7CFFFFFEBD3FFFFEBD2FFFFEAD1FFFFE9
          CFFFFDE4CAFFF3D4B4FFF0D0AFFFF8DCBFFFBE7D4CFF0000001D00000006C88B
          5CFFFFF1E1FFFFF0DEFFF8E2CDFFF1D6BCFFF6DDC5FFE9CDB1FFE9CDB2FFF6DC
          C2FFF0D2B5FFF7DEC4FFFFEBD3FFFFEAD1FFC0814FFF0000001B00000005C98F
          61FFFFF4E8FFFFF3E5FFFFF3E4FFFDEDDAFFD1A987FF9D602FFF9D602FFFD0A9
          85FFFAE5CFFFFEECD7FFFFEED9FFFFEDD8FFC28452FF0000001900000004CB92
          65FFFFF7EDFFFFF5EAFFE9D1BAFFB58156FFB88960FFEEDBC9FFEEDBC8FFB685
          5CFFAF7A4DFFE3C3A3FFFBE6D0FFFDEDD9FFC48757FF0000001600000003CD95
          68FFF6E9DDFFCBA281FFB57C50FFE2C9B4FFFFF9F1FFFFF8F0FFFFF8EFFFFFF7
          EEFFDFC4ADFFA96F41FFC19269FFEDCFB2FFC78B5CFF0000001400000002C58C
          5EFFBD885DFFDDC0A8FFFCF7F1FFFFFBF7FFFFFBF5FFFFFAF4FFFFFAF4FFFFFA
          F3FFFFFAF2FFFBF3E9FFD5B498FFAA6D3EFFB77848FF0000001200000001CC98
          6EFFF9F2EBFFFFFDFBFFFFFDFBFFFFFDFAFFFFFDF9FFFFFCF9FFFFFCF8FFFFFC
          F8FFFFFCF7FFFFFBF6FFFFFBF6FFF6ECE2FFBC8354FF0000001000000001DBB0
          8DFFDAAF8BFFD8AD89FFD8AD88FFD6AB86FFD5A983FFD3A781FFD2A580FFD0A3
          7CFFCFA17AFFCD9F77FFCB9D75FFCA9A72FFC8986FFF0000000B000000000000
          0000000000010000000200000002000000030000000400000005000000060000
          00060000000800000008000000090000000B0000000900000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0000000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000202020FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000373737FF000000000000000000000000C06D
          27FFFDFAF8FFC06C27FFFDFAF8FFC06B27FFFDFAF7FFC06B28FFFCFAF7FFC06A
          28FFFCFAF7FF5D5D5DFF565656FF505050FF4A4A4AFF444444FF00000000FDFB
          F9FFFDFBF8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFA
          F7FFFDFAF7FFFCFAF7FFFCFAF7FF696969FF000000000000000000000000C171
          26FFFDFBF9FFFDFBF9FFFDFBF9FFFDFBF8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFA
          F8FFFDFAF8FFFDFAF7FFFDFAF7FF838383FF000000000000000000000000FDFB
          F9FFFDFBF9FFFDFBF9FFFDFBF9FFFDFBF9FFFDFBF9FFFDFBF9FFFDFAF8FFFDFA
          F8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFAF8FF000000000000000000000000C275
          27FFFDFBFAFFFDFBFAFFD0CFE7FF0E0E98FF0A0996FF050593FFB9B8DDFF0505
          91FFFDFBF8FFFDFAF8FFFDFAF8FFBF6C26FF000000000000000000000000FDFC
          FAFFFDFCFAFFFDFCFAFF1E1DA3FFBEBDE1FFFDFBFAFFE5E3EFFF090997FFE4E2
          EFFFFDFBF9FFFDFBF9FFFDFBF9FFFDFBF8FF000000000000000000000000C47B
          28FFFDFCFAFFFDFCFAFF2C2CABFFE7E6F2FFFDFCFAFFE6E4F1FF13139EFFFDFB
          F9FFFDFBF9FFFDFBF9FFFDFBF9FFBF6E25FF000000000000000000000000FDFC
          FBFFFDFCFBFFFDFCFAFFD8D7ECFF3333AFFF2C2CACFF2525A8FF1E1EA5FFFDFB
          FAFFFDFBFAFFFDFBFAFFFDFBF9FFFDFBF9FF000000000000000000000000C783
          2BFFFEFCFBFFFEFCFBFFFDFCFBFFFDFCFBFFFDFCFAFFE9E8F3FF2C2CAEFFFDFC
          FAFFFDFCFAFFFDFCFAFFFDFBFAFFC07224FF000000000000000000000000FEFD
          FCFFFEFDFBFFFEFDFBFFFEFDFBFF5353C0FF4B4BBCFF4343B9FFBAB9E3FFFDFC
          FAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFF000000000000000000000000CA89
          2FFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFBFFFEFDFBFFFEFDFBFFFEFCFBFFFDFC
          FBFFFDFCFBFFFDFCFBFFFDFCFAFFC27724FF000000000000000000000000FEFD
          FCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFBFFFEFD
          FBFFFEFCFBFFFEFCFBFFFDFCFBFFFDFCFBFF000000000000000000000000CE90
          33FFFEFDFDFFCC8D30FFFEFDFCFFCB8A2EFFFEFDFCFFC9862CFFFEFDFCFFC783
          2AFFFEFDFBFFC68128FFFEFDFBFFC47D26FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFB0000FFFB000080000000800300008003000080030000800300008003
          000080030000800300008003000080030000800300008003000080030000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000231F1BFF211D19FF1F1B17FF1D1915FF1B1713FF1A15
          12FF060504800000001A00000000000000000000000000000000000000000000
          000000000000000000000202013F26211EFF241F1BFF00000000000000000706
          057F1B1814FF0705058000000000000000000000000000000000000000000000
          00000000000000000000000000002B2623FF292420FF00000000000000000000
          002A201C18FF15120ED500000000000000000000000000000000000000000000
          0000000000000000000000000000302B28FF2E2925FF00000000000000000100
          002A24201CFF181513D500000000000000000000000000000000000000000000
          000000000000000000000000000036312DFF332E2BFF00000000000000000A09
          087F292521FF0A09088000000000000000000000000000000000000000000000
          00000000000000000000000000003B3632FF393430FF36312EFF342F2BFF312C
          28FF110F0E9C0000001A00000000000000000000000000000000000000000000
          0000000000000000000000000000403C37FF3E3935FF000000000807065F3631
          2DFF141311A00000000000000000000000000000000000000000000000000000
          000000000000000000000000000046403CFF443E3AFF000000000000000F3C37
          33FF332E2CF00000000000000000000000000000000000000000000000000000
          000000000000000000000404043F4B4642FF49433FFF000000000908085F413C
          39FF191715A00000000000000000000000000000000000000000000000000000
          00000000000000000000524D49FF504B47FF4E4844FF4B4642FF494440FF1C19
          19A0030302380000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000F00F0000F18F0000F98F0000F98F0000F98F
          0000F80F0000F91F0000F91F0000F11F0000F01F0000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000D0C0A9F1E1A17F11F1B17FF1D1915FD0A09079F0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000027241F1BFF1D1916ED000000090000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001B1714CC26231EFF030303540000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000807076F2B2723FF14110FB10000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000152F2B28FC2D2926FC0000
          0012000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001A1816B1342F2BFF0808
          076C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000006060657393430FF211E
          1CC9000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000009373430F03C37
          33FF010101270000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001917169C413C
          39FF110F0E840000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001D1B1A9F3A3533E24741
          3EFF423D39FA1A17169F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000F07F0000F87F0000FC7F0000FC7F0000FC3F
          0000FE3F0000FE3F0000FE1F0000FF1F0000FE0F0000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001D1814FF1B1713FF191511FF17140FFF16120EFF14100DFF1310
          0CFF120E0BFF120F0AFF120E0BFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000001A08070680161310D51D1915FF1B1713FF130E
          0DD5060504800000001A00000000000000000000000000000000000000000000
          000000000000000000000A09088026211EFF100D0CAA0101013F0101013F0D0B
          09AA1B1814FF0705058000000000000000000000000000000000000000000000
          000000000000000000001F1D1AD52B2623FF0202013F00000000000000000201
          013F201C18FF15120ED500000000000000000000000000000000000000000000
          00000000000000000000332E2AFF302B28FF0000000000000000000000000000
          000024201CFF221E1AFF00000000000000000000000000000000000000000000
          00000000000000000000383430FF36312DFF0000000000000000000000000000
          0000292521FF27231EFF00000000000000000000000000000000000000000000
          000000000000000000003E3935FF3B3632FF0000000000000000000000000000
          00002F2A26FF2C2723FF00000000000000000000000000000000000000000000
          00000000000000000000433E3AFF403C37FF0000000000000000000000000000
          000034302BFF312D29FF00000000000000000000000000000000000000000000
          0000000000000000000048433FFF46403CFF0000000000000000000000000000
          0000393431FF37322EFF00000000000000000000000000000000000000000000
          0000000000000000000C4D4844FF4B4642FF0000000C00000000000000000000
          000C3F3A36FF3C3733FF0000000C000000000000000000000000000000000000
          000000000000353230CB524D49FF504B47FF312D2BCB00000000000000002D2A
          27CB443F3BFF423C38FF282522CB000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000E0070000FFFF0000F00F0000F00F0000F18F0000F3CF0000F3CF
          0000F3CF0000F3CF0000F3CF0000E1870000E1870000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002D2824FF2A2622FF282420FF26211EFF241F1BFF211D19FF1F1B17FF1D19
          15FF1B1814FF1A1512FF181410FF16130FFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000038332FFF35302CFF332E2AFF302B28FF2E2925FF2B2723FF292420FF2722
          1EFF24201CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000433D39FF403B37FF3E3935FF3B3632FF393430FF36312EFF342F2BFF312C
          28FF2F2A26FF2C2723FF2A2621FF27231FFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004D4844FF4B4541FF48433FFF46403CFF443E3AFF413C38FF3E3A36FF3C37
          33FF393431FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000056514DFF544F4BFF524D49FF504B47FF4E4844FF4B4642FF494440FF4741
          3EFF443F3BFF423C38FF3F3A36FF3D3834FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000C0030000FFFF0000C01F0000FFFF
          0000C0030000FFFF0000C01F0000FFFF0000C0030000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002D2824FF2A2622FF282420FF26211EFF241F1BFF211D19FF1F1B17FF1D19
          15FF1B1814FF1A1512FF181410FF16130FFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000332E2AFF302B28FF2E2925FF2B2723FF292420FF2722
          1EFF24201CFF221E1AFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000433D39FF403B37FF3E3935FF3B3632FF393430FF36312EFF342F2BFF312C
          28FF2F2A26FF2C2723FF2A2621FF27231FFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000048433FFF46403CFF443E3AFF413C38FF3E3A36FF3C37
          33FF393431FF37322EFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000056514DFF544F4BFF524D49FF504B47FF4E4844FF4B4642FF494440FF4741
          3EFF443F3BFF423C38FF3F3A36FF3D3834FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000C0030000FFFF0000F00F0000FFFF
          0000C0030000FFFF0000F00F0000FFFF0000C0030000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002D2824FF2A2622FF282420FF26211EFF241F1BFF211D19FF1F1B17FF1D19
          15FF1B1814FF1A1512FF181410FF16130FFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000302B28FF2E2925FF2B2723FF292420FF2722
          1EFF24201CFF221E1AFF201C18FF1E1A16FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000433D39FF403B37FF3E3935FF3B3632FF393430FF36312EFF342F2BFF312C
          28FF2F2A26FF2C2723FF2A2621FF27231FFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000046403CFF443E3AFF413C38FF3E3A36FF3C37
          33FF393431FF37322EFF342F2CFF322D29FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000056514DFF544F4BFF524D49FF504B47FF4E4844FF4B4642FF494440FF4741
          3EFF443F3BFF423C38FF3F3A36FF3D3834FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000C0030000FFFF0000F8030000FFFF
          0000C0030000FFFF0000F8030000FFFF0000C0030000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00020000000900000011000000120000000A0000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0008190E056E6B3A14D0693914D1180D04700000000900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000E724016CEFEE0C0FFFDD9B4FF6C3B15D00000001000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000C784418CDFFF3E8FFFFECD9FF724016CF0000000F000000005E5E5EFF5C5C
          5CFF595959FF565656FF545454FF515151FF0000000000000000000000000000
          00061B0F05667B471ACC794619CD1B0F056A0000000700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00020000000B00000016000000170000000D0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0005170C0464683813CA653713CA160C04660000000600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00086F3E15C8FEE0C0FFFDD9B4FF683A14CA0000000A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0007754218C7FFF3E8FFFFECD9FF6F3E15C900000009000000005E5E5EFF5C5C
          5CFF595959FF565656FF545454FF515151FF0000000000000000000000000000
          0003180E055D784519C7764418C7190E05610000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000060000000B0000000C000000070000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0002150B045C653813C5633513C5140B045E0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00036C3C15C3FEE0C0FFFDD9B4FF663813C40000000500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0002724017C2FFF3E8FFFFECD9FF6C3C15C400000004000000005E5E5EFF5C5C
          5CFF595959FF565656FF545454FF515151FF0000000000000000000000000000
          0001160D0556754419C2734218C2160D04590000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0081FF000081FF000081FF00008103000081FF000081FF000081FF000081FF
          00008103000081FF000081FF000081FF000081FF00008103000081FF0000E3FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004E2C09D273400DFF492808CD000000000000000000000000000000000000
          0000040200344B2805D7693806FF683806FF0000000000000000000000000000
          0000000000003D2208BA0E08015A000000000000000000000000000000000000
          00000100001E693908FC683808FC000000180000000000000000000000000000
          0000000000000C070154442609C3000000000000000000000000000000000000
          00001D0F02846D3B08FF301A04AB000000000000000000000000000000000000
          0000000000000000000361370DE7020100270000000000000000000000000000
          00065B3209E76E3C0AFF07040042000000000000000000000000000000000000
          0000000000000000000021130587251505900000000000000000000000000D07
          0157703E0CFF4E2B08D500000000000000000000000000000000000000000000
          0000000000000000000002010021784511FF774410FF75420FFF74420EFF7341
          0EFF72400DFF140B026C00000000000000000000000000000000000000000000
          00000000000000000000000000003E240AB711090260000000000302002D7541
          0FFF693A0DF30000000F00000000000000000000000000000000000000000000
          00000000000000000000000000000C070151492A0BC6000000002B1806997643
          10FF281605960000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000003653A10E7060300396E3F10F37744
          11FF0302002D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001F12058146280BC17A4612FF4629
          0AC3000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000101001E7A4614FC7B4713FF0E08
          0257000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003E240BB46F4012F00000
          0006000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000C7C30000E7C30000E7C70000E3870000F38F0000F00F
          0000F90F0000F91F0000F81F0000FC3F0000FC3F0000FE3F0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004F2D
          0AD274410EFF4A2908CD00000000000000000000000000000000000000000402
          00344C2906D76A3807FF693806FF000000006C6C6CFF6C6C6CFF000000000000
          00003E2408BA0E08025A00000000000000000000000000000000000000000100
          001E6A3A08FC693908FC00000018000000000000000000000000000000000000
          00000D070154452709C300000000000000000000000000000000000000001D10
          03846E3B09FF311A04AB000000000000000074410FFF00000000000000000000
          00000000000362380DE702010027000000000000000000000000000000065C33
          09E76F3D0BFF0704004200000000794714FF774411FF75420FFF000000000000
          00000000000022130587261505900000000000000000000000000D070157723F
          0DFF4E2C09D50000000000000000000000007B4916FF00000000000000000000
          00000000000002010021794511FF784511FF774410FF75420FFF74420EFF7341
          0EFF140B026C000000000000000000000000814E1CFF00000000000000000000
          000000000000000000003E250AB7110A0260000000000302002D76430FFF6A3B
          0EF30000000F000000000000000000000000875524FF00000000000000000000
          000000000000000000000C0702514A2B0CC6000000002B190699774411FF2917
          0596000000000000000000000000000000008E5D2EFF00000000000000000000
          0000000000000000000000000003653B11E7060300396F4011F3794511FF0302
          002D000000000000000000000000956739FF926334FF905F2FFF000000000000
          00000000000000000000000000002012058147290CC17B4713FF47290BC30000
          00000000000000000000000000000000000095673AFF00000000000000000000
          00000000000000000000000000000101001E7B4715FC7C4814FF0E0802570000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003F250BB46F4113F0000000060000
          00006C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF00008F840000CF870000CF8D0000C7080000E71D0000E01D
          0000F21D0000F23D0000F0380000F87D0000F87F0000FC400000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000005000000140000001B0000001C0000001D0000001E0000
          001F000000210000002200000023000000240000001D00000008000000000000
          00000000000000000012BB7D4BFFBA7B48FFB87A48FFB87846FFB77745FFB676
          43FFB57542FFB47340FFB3723FFFB3713EFFB1703DFF0000001C000000000000
          00000000000000000015BE824EFFF9ECDFFFF9EBDEFFF8EADDFFF8EADCFFF8E9
          DBFFF8E8DAFFF7E8D9FFF7E7D8FFF7E7D7FFB47340FF00000023000000000000
          00000000000000000013C18553FFFBF1E5FFFBEFE4FFFBEFE2FFFAEEE1FFFAED
          E0FFFAEDE0FFF9ECDEFFF9EBDDFFF9EBDDFFB67643FF00000021000000000000
          00000000000000000011B4865CFFC8D5DBFFFDF3E9FFFDF2E9FFFDF2E7FFFCF1
          E6FFFCF0E5FFFCF0E3FFFBEEE2FFFBEEE1FFB87A47FF0000001F000000000000
          000000000000011B2880145E8AFF004775FF72A2BEFFFEF7EEFFFEF6ECFFFEF5
          ECFFD7E3CAFFF2EDE0FFFDF3E8FFFCEFE3FFBB7D4AFF0000001D000000000000
          0000042B3D93045F92F40691C8FF01A5ECFF005A94FF72A4C0FFFFF8F1FFFFF8
          F0FF84C088FF22893DFFFDF3E9FFFBEFE3FFBE814EFF0000001B000000000821
          2B770D71A6F420BFE5FF17C8F1FF0CBAEFFF03ACEDFF005E97FF72A4C1FFFFF9
          F2FF0A8E20FF057B24FFFCF1E6FFFAEDE0FFC18553FF0000001A00010114186D
          9AE33FBBDDFF44DEF4FF2BD5F4FF1ACCF1FF0FBDEFFF04AFEDFF006299FF72A5
          C3FF0B921FFF067E24FFFAEDE1FFF7E8D9FFC38957FF000000180B191E61228B
          C5FFC5F5FAFF68E7F4FF4ADFF4FF2BC8E7FF139DCBFF11C2F1FF07B4EEFF0056
          8BFF08874AFF078323FFF7E8DBFFF5E2D1FFC78D5BFF00000016000000002570
          98DBB4E1EFFFC8F5FAFF6DE2F0FF000101FF29B7D9FF22D2F4FF0B93C7FF3489
          B4FF0D9A1DFF7EB67DFFF4E1D0FFF0DAC6FFC99160FF00000014000000000000
          0000267399DBB5E1F0FFCAF6FAFF070E0FFF59E4F4FF21A8D4FF3B9BC5FF13B2
          16FF83C47DFF949554FFCF9868FFCE9767FFCC9564FF0000000D000000000000
          00000000000027749CDCB6E1F0FF242C2CFF45B4DAFF49A6D1FF18C511FFB3DA
          A2FFDEDFC5FFD29E6EFFFFFCF9FFB7B5B2DC0303032A00000004000000000000
          000000000000000000044EA1C7FF143646FF5AAFD7FFFAF2EAFFF7EBE1FFF4E5
          D7FFF2E0D0FFD5A273FFB7B4B2DB030303260000000400000000000000000000
          00000000000000000002755D45FF4A5C5EFFDDAE82FFDCAD80FFDBAB7EFFDAAA
          7CFFD8A87AFFD8A678FF03030324000000030000000000000000000000000000
          0000000000000000000000000041000000420000000400000005000000050000
          0006000000070000000600000002000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0000000E0000000E0000000E0000000E0000000E0000000C00000008000
          0000000000000000000080000000C0000000E0000000E0010000E0030000F007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D1DB7FF071095FF071093FF061091FF060E8FFF050D8CFF050C8AFF050B
          88FF040B86FF030A84FF030982FF030881FF0000000000000000000000000000
          00001021BFFF0F20BEFF0F1FBCFF0E1EBAFF0D1EB8FF0D1DB7FF0C1CB5FF0B1B
          B3FF0B1AB2FF0B1AB0FF0A19AFFF0919ADFF0000000000000000000000000000
          00001324C8FF1323C6FF1122C4FF1122C2FF1121C0FF0F20BFFF0F1FBDFF0F1F
          BBFF0E1EBAFF0D1DB8FF0D1CB6FF0C1CB4FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000060A76DC070B9CFF040660CB0000000000000000000000000000
          146001025FD102038EFF02038DFF000000000000000000000000000000000000
          00000000000000000003080C85E7000003270000000000000000000000000000
          0006030478E7030491FF00000942000000000000000000000000000000000000
          0000000000000000000003052E87030534900000000000000000000000000001
          1257050897FF030467D500000000000000000000000000000000000000000000
          00000000000000000000000002210B14A9FF0A12A7FF0910A5FF080FA2FF070D
          9FFF060A9CFF01011B6C00000000000000000000000000000000000000000000
          0000000000000000000000000000070C58B701031860000000000000052D0910
          A4FF080D93F30000000F00000000000000000000000000000000000000000000
          000000000000000000000000000001021151090E69C60000000004073C990B13
          A8FF030639960000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000030D1692E7000108390D159EF30D16
          ACFF0000052D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000005082E810A1167C10F1BB2FF080F
          66C3000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000021E1220B4FC111EB6FF0203
          1457000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000B115EB4111EA5F00000
          0006000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C0030000C0030000C0030000FFFF0000E3870000E3870000F38F
          0000F00F0000F90F0000F91F0000F81F0000FC3F0000FC3F0000FE3F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0005000000130000001A0000001B0000001C0000001D0000001E0000001F0000
          00210000002200000023000000240000001D0000000800000000000000000000
          0011BC7E4CFFBB7D4BFFBA7B48FFB87A48FFB87846FFB77745FFB67643FFB575
          42FFB47340FFB3723FFFB3713EFFB1703DFF0000001C00000000000000000000
          0014BE8350FFF9EDE0FFF9ECDFFFF9EBDEFFF8EADDFFF8EADCFFF8E9DBFFF8E8
          DAFFF7E8D9FFF7E7D8FFF7E7D7FFB47340FF0000002300000000000000000000
          0012C18755FFFCF1E6FFBEB2A5FF836F5EFF97816DFFD7C6B5FFFAEDE0FFFAED
          E0FFF9ECDEFFF9EBDDFFF9EBDDFFB67643FF0000002100000000000000000000
          0010C48A59FFFEF4EBFF65584DFFF8F8F8FFF8F8F8FF9A8471FFFCF1E6FF7776
          75FF727170FF6D6C6CFFFBEEE1FFB87A47FF0000001F00000000000000000000
          000FC78F5DFFFFF9F2FF5B5048FFF8F8F8FFF8F8F8FF897664FFFEF5ECFFFEF5
          EAFFFEF3E9FFFDF3E8FFFCEFE3FFBB7D4AFF0000001D00000000000000000000
          000DCA9361FFFFFAF4FFB3ACA6FF5C5249FF6A5C51FFC4B9AFFFFFF8F0FFFFF7
          EFFFFFF6EEFFFDF3E9FFFBEFE3FFBE814EFF0000001B00000000000000000000
          000BCD9666FFFFFAF6FFFFFAF5FFFFFAF4FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9
          F1FFFEF5ECFFFCF1E6FFFAEDE0FFC18553FF0000001A00000000000000000000
          000ACF9B6BFFFFFBF6FFC6BCB3FF937D6CFFA9917CFFE2D4C8FFFFF9F3FFFEF7
          F0FFFCF2E8FFFAEDE1FFF7E8D9FFC38957FF0000001800000000000000000000
          0008D29F6FFFFFFCF8FF6B5E53FFF8F8F8FFF8F8F8FFAB937EFFFEF7F1FF8785
          83FF82807DFF7A7977FFF5E2D1FFC78D5BFF0000001600000000000000000000
          0007D5A374FFFFFDFAFF5B524BFFF8F8F8FFF8F8F8FF95806DFFFCF4ECFFFAEF
          E4FFF6E7DAFFF4E1D0FFF0DAC6FFC99160FF0000001400000000000000000000
          0006D9A779FFFFFDFBFFB1AEABFF5C534BFF6C5E53FFC5B9AFFFFAF0E7FFF7EB
          DFFFD09A6AFFCF9868FFCE9767FFCC9564FF0000000D00000000000000000000
          0005DBAB7EFFFFFEFDFFFFFEFBFFFEFAF7FFFCF6F0FFFAF1E9FFF7EADFFFF5E6
          D8FFD29E6EFFFFFCF9FFB7B5B2DC0303032A0000000400000000000000000000
          0003DDAF83FFFFFEFCFFFEFBF8FFFCF7F1FFFAF2EAFFF7EBE1FFF4E5D7FFF2E0
          D0FFD5A273FFB7B4B2DB03030326000000040000000000000000000000000000
          0002E0B387FFDFB185FFDFB083FFDDAE82FFDCAD80FFDBAB7EFFDAAA7CFFD8A8
          7AFFD8A678FF0303032400000003000000000000000000000000000000000000
          0000000000020000000300000003000000040000000500000005000000060000
          0007000000060000000200000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00800100008001000080010000800100008001000080010000800100008001
          000080010000800100008001000080010000800100008003000080070000C00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001B0E0366AB56
          12FFA95410FFA7520EFFA6510DFFA44F0BFFA34D0AFF02010022020100229F4B
          08FF9E4A07FF9D4906FF9C4805FF9C4805FF9C4805FF180B00661C0F0366B05A
          16FFAE5814FFAB5611FFA95410FFA7520EFFA6510DFF0000001100000000A14D
          0AFFA04B09FF9F4B08FF9E4A07FF9D4905FF9C4805FF180B00661D0F0466733C
          11CC000000000000001125130477AB5612FF934A0FEE00000000000000008F45
          0AEEA34E0AFF221002770000001100000000642F04CC190B0166000000000000
          00000D0602449C5116EEB15C17FF6F3A0ECC0C06014400000000000000000B05
          0144693408CCA34F0BFF8D4309EE0B0500440000000000000000000000000000
          0011A2571CEEB7611DFF884814DD000000110000000000000000000000000000
          0000000000117D3D0ADDA44F0CFF8E440AEE0000001100000000000000002A17
          0877BF6924FFBC6621FF28150677000000000000000000000000000000000000
          00000000000024120377A7530FFFA6520EFF2311027700000000000000007F48
          1BCCC46E29FFC16B26FF07040133000000000000000000000000000000000000
          00000000000006030033AA5612FFA95510FF6B3509CC00000000000000009858
          24DDC9732DFFC6702AFF00000000000000000000000000000000000000000000
          00000000000000000000AF5A16FFAD5813FF7F400DDD00000000000000009C5B
          26DDCE7732FFCA742FFF00000011000000000000000000000000000000000000
          00000000000000000011B35E19FFB15B17FF834310DD00000000000000007345
          1FBBD47E38FFD07B35FF160D0555000000000000000000000000000000000000
          000000000000140B0355B7621CFFB55F1BFF60320DBB00000000000000002316
          0A66DB8A41FFD8863EFF5E3819AA000000000000000000000000000000000000
          000000000000542E0FAABC6621FFB9631EFF1D0F046600000000000000000000
          0000915F2FCCDF9247FFDB8D42FF2E1C0D770000000000000000000000000000
          00002A180977C36D28FFC16B26FF794216CC0000000000000000000000000000
          0000010000117C552CBBE3994CFFDE9046FF8A5427CC2D1A0C772C1A0A77824B
          1ECCC9732EFFC7712CFF693B17BB000000110000000000000000000000000000
          0000000000000000000025190D66644322AADC8D44FFD5823AFFD27A35FFCF78
          33FF5B3516AA2012076600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000000000000080000021840000C183000083C1000087E1000087E1
          00008FF1000087E1000087E1000087E10000C3C30000C0030000F00F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000040000001000000014000000150000001500000015000000110000
          0005000000010000000100000001000000010000000100000000000000000000
          00000000000EB4754CFFB2744BFFB1734AFFB17249FFB07148FFAF7148FF0000
          0015000000110000001600000016000000160000001200000005000000000000
          000000000011B87950FFECC9B1FFEECFBAFFF0D7C5FFF2DDCEFFB4754BFF0000
          0023B2734AFFB17249FFB07249FFAF7147FFAF7047FF00000011000000000000
          000000000010BB7C53FFE3B18FFFE5B899FFE7C0A5FFEAC8B0FFB87950FF0000
          0025B6784FFFF2E0D4FFF2E0D1FFF2DDCEFFB3744BFF00000014000000000000
          00000000000FBE8055FFE0AA87FFE1B08FFFE4B899FFE6BEA2FFBB7C53FF0000
          0022BA7B52FFEBCBB4FFEBC9B2FFEBC6ADFFB7784FFF00000013000000000000
          00000000000EC08258FFDCA37DFFDEA985FFE0AE8DFFE3B495FFBD8056FF0000
          0020BC7E54FFE7BEA3FFE8BEA1FFE7BB9DFFBA7C53FF00000012000000000000
          00000000000AC18459FFC18359FFC18359FFC08359FFC08258FFBF8258FF0000
          0017BF8157FFBE8157FFBE8056FFBD8056FFBD7E55FF0000000D000000000000
          00020000000B0000001400000017000000180000001900000019000000140000
          000C000000150000001C0000001C0000001A0000000F00000003000000000000
          0008C3865CFFC3865CFFC3865BFFC3865BFFC3865BFFC3865BFFC3855BFF0000
          0013C3855BFFC2855BFFC1845AFFC2845AFF0000000B00000000000000000000
          0009C4875CFFD3976EFFD3976EFFD4986FFFD49970FFD59A71FFC4875CFF0000
          0016C3865CFFD89D76FFD99F77FFC3865BFF0000000D00000000000000000000
          0008C4875CFFD59F7AFFD6A17BFFD6A17CFFD7A07BFFD69F79FFC4875CFF0000
          0013C4875CFFE0B497FFE1B598FFC4865CFF0000000B00000000000000000000
          0006C3865BFFDEB59AFFDEB397FFDCB091FFDAAB8BFFDAA988FFC4875CFF0000
          0010C4875DFFC4875CFFC5885DFFC4875DFF0000000800000000000000000000
          0005C2855AFFE7CCB7FFE8CBB7FFE6C7B1FFE2BFA6FFDFB69AFFC4865BFF0000
          0009000000060000000800000009000000070000000200000000000000000000
          0005C18459FFF5E9E1FFF5EBE3FFF5E8DFFFF1E1D5FFEDD7C8FFC2855BFF0000
          0007000000000000000000000000000000000000000000000000000000000000
          0003C18358FFC18459FFC18459FFC18459FFC18459FFC18459FFC28459FF0000
          0004000000000000000000000000000000000000000000000000000000000000
          0001000000020000000300000003000000040000000400000004000000030000
          0001000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000020000000B01050B54092551CA0C3673ED0C34
          71EC072147C201050B560000000C000000020000000000000000000000000000
          000000000000000000010000000A0513278E1A5199FF3284C6FF3894D5FF3793
          D4FF2C7CC0FF134992FF0310248F0000000B0000000100000000000000000000
          000000000000000000050208105E2560A3FF48A2DDFF42A1DFFF41A1DEFF409F
          DEFF3F9EDDFF3A98D7FF1A5299FF01050B540000000600000000000000000000
          0000000000020000001115447EE7529FD5FF4AA8E2FF48A6E1FF47A5E1FF45A4
          E0FF44A3E0FF42A2DFFF3485C6FF0B2A56CD0000000B00000000000000000000
          00010000000D0C2543AA3B79B6FFADE4FDFF97DDFCFF82D3FBFF80D2FAFF7DD1
          FAFF7AD0FAFF79CFFAFF78CCF5FF174789F50000000D00000000000000000000
          00050C233B9C4181BBFFA7DBF5FF4680B8FFA2E0FCFFB9E9FDFF9EDFFCFFB6E9
          FDFF9BDEFCFFB3E7FCFF88CBEFFF1E5394F90000000D00000000000000000000
          00063574ACF4B0D8EFFF4B86BEFF3072B3FFA6E2FDFF1F5FA4FFA2E1FDFF1C5B
          A1FF9FDFFCFF1B569EFFA4E1FBFF245D9EFA0000000C00000000000000000000
          00031529398B448BC5FF112A43A5357AB9FFAAE5FDFF2164AAFFAEE5FDFF2060
          A6FFABE4FDFF1D5CA2FFACD5EDFF2A66A4FA0000000900000000000000000000
          0001000000040504032C0E0B094A3A82BFFFAFE6FEFF2469AEFFB2DAF0FF2265
          ABFFB0D8EFFF2160A3FC3475B5FF0E21338D0000000500000000000000000000
          00000A08073A55443AA5110E0C4E3F89C4FFB8EAFEFF276FB3FF4087C2FF325D
          83D73D84C0FF1024358C00000009000000040000000100000000000000000000
          00002B231F76725E50BE0201011D4088BFF9D7F4FEFF276EB0F90201011F120F
          0C51070505340000000300000001000000000000000000000000000000000000
          00003E342C8C7E6959C60000000E4590C9FCBBDFF2FF2A76B7FC000000097D66
          57C73D322A8C0000000000000000000000000000000000000000000000000000
          00002C252075766355BE0C0A083E142938874A98D0FF142938870A08073A735E
          51BE2B231E750000000000000000000000000000000000000000000000000000
          000009070635584A41A46C5B50B60F0D0B46000000070F0D0B466C594CB65748
          3EA4090706350000000000000000000000000000000000000000000000000000
          0000000000011C18155D594B42A4756357BC7F6D5FC5746355BC574A41A41C17
          145D000000010000000000000000000000000000000000000000000000000000
          0000000000000000000108060631251F1C6A3F362F8A251F1C6A080605310000
          0001000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000070000
          0006000000020000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000007B4623DB331D
          0F9A0000000A0000000200000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000091562FEACB9D
          69FF331E109B0000000A00000002000000000000000000000003000000080000
          0005000000010000000000000000000000000000000000000000643F26C3E4C1
          8FFFCB9D65FF492B18B70201002800000008000000040000000A93572FEC1209
          04650000000B000000030000000100000000000000000000000021160D73D1A6
          7AFFF5D498FFD7AE74FF9A633BF83A2313A40F09055904020136B16E3FFFAF77
          47FF462712B90201002B0000000600000002000000000000000000000014996C
          48E8F1DAAEFFF5D699FFF2D295FFCFA670FFB48151FFA66C41FFB47648FFF1D0
          94FFD3A971FF915932F3190E07710000000C000000030000000100000003130E
          0957CFA67CFFFAE7BDFFF6DCA3FFF6DA9DFFF4D79DFFF4D79CFFF4D69AFFF3D5
          9AFFF2D498FFEDCB92FFBD8B59FF57351DC30302013100000004000000000000
          0004271C1377D2AC84FFF5E3C1FFFBEDC8FFFBF0CAFFFBF2CDFFFCF2CCFFFBF0
          C8FFF9EABEFFF6E0AEFFF7E2B7FFE8CDA8FF9C6C45EC00000007000000000000
          00010000000415100B59A07C58E7DABD9CFFECDCC2FFF6EDD8FFFEFBE9FFFDF6
          D3FFFCF7D9FFF9F3DDFFD6B590FF705136C80503023200000003000000000000
          0000000000000000000200000010211A126E654E38BA977452E1B48156FFFEFB
          E5FFEBDBC2FFB69069F320181170000000090000000300000000000000000000
          000000000000000000000000000100000002000000050000000BBB8B61FFD9BC
          9BFF604A36B50302012600000005000000010000000000000000000000000000
          000000000000000000000000000000000000000000000000000EA07C5AE91713
          0E5D000000060000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000040000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000070000000E00000013000000150000
          00130000000F0000000800000002000000000000000000000000000000000000
          000000000001000000040000000F160D056C553316C4884F22EF9C5B27FF864E
          21F0523115C4150C056D00000011000000050000000100000000000000000000
          00010000000602010029543316BDAF713AFFC9965EFFD6A871FFDCAF77FFD5A7
          70FFC7945DFFA76A35FF4D2D13BF0201002C0000000600000001000000000000
          000405030137935D2CECC69058FFD6A972FFCE9759FFC78847FFC48541FFC789
          47FFCF9759FFD5A770FFBE8954FF854E23ED0201002E00000004000000020000
          00107D4F26D7CE9B64FFD3A56EFFC48645FFD6B18DFFEDDED1FFFAF7F6FFEEDF
          D1FFD9B38EFFC58745FFD8A970FFC6935FFF4E2E13BD0000000F000000051C13
          096DC38A4EFFDCB37EFFB97B41FFDDC5B3FFC5BBB6FFECE5E2FFF3EDEBFFF2EC
          E8FFEDE5E0FFDFC8B6FFC48948FFDEB581FFB07540FF160D056B000000086342
          22BED6AA74FFCC985FFFCFA783FFD2C3BCFF5E4E45FFAEA19BFFE6DCD8FFEAE0
          DBFFE7DBD5FFE2D3CCFFCFA783FFD09C60FFCEA06BFF563316C000000009A26D
          3BEDE3C192FFC38949FFD4BAA9FFDCCAC1FFC7B6AEFF64524BFFAB9C96FFD3C5
          BEFFD0C1B9FFCDBBB2FFD4BAA8FFC38848FFE0BC8BFF8C5425EBBE7E43FFBA7A
          3DFFB67437FFB16E30FFAF6A2CFFAC6629FFC89F7DFFD1C6C0FF584A4EFF2B3A
          B0FF192CBEFF101FB6FFD2B9ABFFBF8241FFE8C89AFFA5662FFBC4884DFFEDD1
          A7FFE6C08CFFE3B67DFFCE9557FFD4B08EFFF2EBE7FFF2EBE8FFE6DFDAFFF2EB
          E8FFECE3DEFFD0B7ABFFCBAC99FFC28749FFE5C697FFA36730F6C78C50FFF0D9
          B4FFE9C998FFE7C291FFC3884BFFE8D8CAFFF9F6F4FFF9F6F4FFF9F6F4FFF9F6
          F4FFF3ECE9FFCCB0A2FFC3956DFFD1A26BFFDAB482FF98632EEBC98F53FFF3E0
          BDFFE2BF91FFEFD6AFFFE5C08FFFC58D55FFDFC9BAFFF8F5F3FFF8F5F3FFE8DC
          D6FFD1B8ACFFC6A188FFBD8346FFE9CFA2FFCE9E66FF3D281497CA9156FFDFBA
          8CFFA37345E6EAD0A8FFF1DDB6FFE8CA9EFFC48C52FFC19167FFC5A288FFC6A3
          8BFFC19268FFBD8044FFE2C293FFDFBE8DFF996535E700000006CD9459FF3124
          157F04030128AE8050EBE7CAA3FFF4E6C4FFF2E0BBFFDAB686FFC7945CFFC189
          4EFFD1A56FFFECD7ACFFE7CCA2FFC18950FD07040235000000013224167E0000
          00000000000101010019604529B1D7AB77FFE3C59AFFECD6B1FFF5E8C7FFF5E7
          C6FFEFDCB8FFD9B181FF9E6C3DE60503022D0000000100000000000000000000
          0000000000000000000000000002120D074E47331E987E5935CBBF8950F9B782
          4CF48A6138D53223148300000003000000010000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000AC9786009B7E
          68009A7D6600997D6600987C6500977C6400967B6400967A6300957963009478
          610093776100927761009176600091755F0091755F00A3907F009D816900FBF5
          EF00F9F0E900F9F0E800F8EEE700F8EEE600F7EDE400F7ECE300F6EBE100F6EA
          E000F5E9E000F5E9DF00F5E9DE00F3E7DD00F4E7DC0090765F009E816A00FCF6
          F000FAEFE800F9EFE600F8EEE500F8ECE400F7ECE300F6EBE200F5EAE000F5E9
          DE00F4E8DE00F4E7DC00F3E6DB00F3E6DA00F4E8DC00927760009F826B00FCF6
          F200F9F0E900F9EFE800F9EFE600F9EEE600F7ECE400F7ECE300F6EBE100F5EA
          E000F5E9DF00F5E8DD00F4E7DC00F4E6DB00F4E9DE0093776000A1836C00FCF7
          F300FAF1EA00FAF0E900F9F0E800F8EEE700F8EDE500F8EDE400F7EBE300F6EB
          E100F6EAE000F6E9DF00F5E8DE00F4E7DC00F4E9DF0094786200A1846C00FCF8
          F400FBF2EB00FAF2EB00FAF0EA00F9F0E800F9EFE700F8EDE500F7ECE400F7EC
          E300F6EBE200F6EAE000F5E9DF00F4E8DD00F5E9E000947A6200A2846D00FDF8
          F500FCF3ED00FBF2EB00FAF1EA00FAF0E900FAEFE700F9EEE600F8EEE500F8EC
          E400F7EBE200F7EBE100F6EAE000F5E9DF00F5EAE000967A6400A2856D00FDF8
          F600FCF4EE00FCF3ED00FAF2EC00FBF1EB00FAF1E900F9EFE800F8EEE700F8ED
          E600F7EDE400F7ECE300F6EBE100F6EADF00F6EBE100977B6500CE853F00E0AC
          7D00DA9A6100D9995F00D8975D00D89A6200BEA38B00B5947900B3937700B291
          7600B3937900B89A8100AE8C7000AD8A6F00B08E74009A735300CC833C00F1D4
          BC00E7B08500E6AF8300E8B68F00C97C3700DECEC100C6AB9500C6A99400CBB1
          9E009E795900D8C5B700C1A38D00C1A38C00C6AB96009B745400CD833D00F2D6
          BF00E8B28700E7B08500E9B79000C97D3800DFCFC300DFCFC200DDCDC000DCCC
          BE009F795900DAC8BA00D9C7B800D7C5B600D7C4B5009C745500CD843D00F2D7
          C100F2D7BF00F2D5BE00F1D3BB00CA7E3800A27E5D00A17D5C00A17C5C00A07A
          5A009F7959009E7858009D7757009D7656009C755500AA8D7600D0996500CC84
          3D00CC833C00CB813B00CB803900CD9461000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000003FF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000002000000080000000F0000001300000015000000170000
          0018000000160000000D00000003000000000000000000000000000000000000
          000000000000000000062C231B8F9A7A5FFF97765DFF95745BFF927259FF8F70
          57FF8D6E55FF2A211A9B0000000D000000000000000000000000000000000000
          000000000000000000089E7D61FFFFFFFFFFDCD8D2FFDBD6D0FFDAD5CEFFD9D3
          CCFFBFB0A4FF8D6E55FF00000013000000000000000000000000000000000000
          0003000000070000000E29221A8FD2C8BFFFDBD9D5FFCFC9C4FFCCC7C2FFC3B9
          B2FFA39180FF271F189D0000001F000000110000000800000001000000020D0A
          08507A5F4AE9927259FF907158FF8F6F57FF8E6F56FF8D6D55FF8B6C54FF8A6C
          53FF896B52FF876A50FF866850FF705742ED0E0B08620000000800000004795F
          4AE6CEC3B9FFE4E0DCFFE2DFDBFFE2DED9FFE0DDD8FFE0DCD6FFDEDAD5FFDED9
          D3FFDDD8D2FFDCD6D0FFDBD6CFFFBFB1A5FF6B5541EA00000010000000049876
          5DFFE5E3DEFFC38C57FFB1621CFFAC5D17FFA95914FFA75712FFA75813FFA858
          13FFA85813FFA85813FFB77B48FFDBD6CFFF876850FF00000013000000039877
          5DFFE6E3E0FFBB7029FFE29D5FFFDF985BFFDB9356FFD78D51FFD3874DFFD083
          49FFCD7D45FFCA7941FFA85813FFDCD6D0FF876952FF00000012000000029A79
          5FFFE7E5E1FFC27932FFE7A364FFE49E5FFFDF995BFFDB9356FFD88E52FFD489
          4DFFD1834AFFCD7E46FFA85813FFDCD8D2FF886A52FF00000010000000019B7B
          60FFE7E5E2FFC8813AFFEEB680FFEAAD75FFE5A46AFFE0995CFFDC9457FFD88E
          53FFD5894EFFD1844AFFA85813FFDDD8D3FF8A6B53FF0000000E000000019D7C
          61FFE9E6E3FFCD8940FFF4C79AFFF2C498FFEFBF93FFEAB483FFE5A66FFFDE97
          5CFFD98F54FFD58A4FFFA85813FFDFDAD4FF8B6D54FF0000000D000000019D7D
          63FFE9E8E4FFD49248FFF7CFA6FFF6CCA4FFF3C9A2FFF0C69FFFEFC39CFFE9B6
          89FFE2A36EFFD99054FFA75712FFDFDBD6FF8C6E56FF0000000B000000009F7D
          63FFEAE8E5FFDA9A50FFF9D6B1FFF8D4AFFFF6D2ADFFF5D0ABFFF2CCA9FFF0CA
          A7FFEEC6A3FFE6B082FFA85813FFE0DCD6FF8E6E56FF0000000900000000A080
          63FFF0EFECFFE2B27AFFDA994FFFD49148FFCD8840FFC78039FFC27932FFBB70
          29FFB56822FFB1621DFFBA7E4AFFE1DDD9FF8F7057FF00000007000000008469
          53E7E6DED7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3DBD4FF785C48E900000004000000000907
          063F634F3EC9A08063FF9F7E63FF9E7C61FF9D7C61FF9B7B60FF9A7A5FFF9977
          5EFF98775DFF97765CFF95755BFF5B4839CB0907054400000002}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000100000008000000130000001E00000026000000270000
          0021000000170000000A00000002000000000000000000000000000000000000
          000000000003000000120D07035B3E2311AB784420DDA55E2CF7A45D2CF77943
          20E0402410B30E08046700000019000000040000000000000000000000000000
          00030000001429180C8D9A623DEBCFA283FFD6BEACFFDFD4CCFFDED3CBFFD5BB
          A8FFC99A79FF965D38EF2D190B9D0000001F0000000400000000000000010000
          000E28180B89BD865CF9DEC4B1FFE5E2DEFFE4E0DCFFE3DFDBFFE2DFDAFFE2DD
          D9FFE0DCD7FFD3B7A4FFB57852FB2D190B9D0000001900000002000000050B07
          034F98653FE7E3CAB8FFE7E3E1FFE6E2DFFFE5E1DEFFE4E0DCFFE3DFDBFFE2DE
          DAFFE1DDD9FFE1DBD7FFD4B7A3FF965D38EF0E0803660000000A0000000A3922
          109ADAAF8FFFEFEDEBFFE8E5E2FFE6E4E0FFE6E2DFFFE6E2DEFFE4E0DCFFE3DF
          DBFFE2DEDAFFE2DDD9FFE1DCD7FFC99B78FF3F2410B2000000160000000E7545
          22D0ECD7C7FFECE9E6FFE9E6E3FFE8E4E2FFE7E3E0FFE6E2DFFFE5E2DEFFE4E0
          DCFFE3DFDBFFE2DFDAFFE2DDD9FFD5BBA8FF794320DF0000002000000010A866
          33F2FAF3EFFFECEAE8FFEAE7E4FFE9E6E3FFE8E5E2FFBB7540FFBB7540FFBB75
          40FFBB7540FFBB7540FFE2DEDAFFDFD3CAFFA55D2CF7000000250000000EA766
          33F1FAF4EFFFF1EFEDFFEBE8E6FFEAE7E4FFE9E6E3FFBB7540FFE6E4E0FFE6E2
          DFFFE5E2DEFFE4E0DCFFE3DFDBFFDFD4CCFFA55D2CF6000000240000000A7246
          23CBEDD8C8FFF7F6F5FFECEAE6FFEAE8E5FFEAE6E4FFBB7540FFE8E5E2FFE7E3
          E0FFE6E2DFFFE5E1DEFFE5E0DCFFD7BEACFF774321DB0000001C000000063520
          118FDBB292FFFDFDFCFFF2F1EFFFEBE9E6FFEBE8E5FFBB7540FFEAE6E3FFE8E5
          E2FFE7E4E0FFE6E2DFFFE6E2DDFFCFA283FF3D2211A800000012000000020906
          0341956640E0EBD5C3FFFBFBFAFFF2F1EEFFECE9E6FFBB7540FFEAE6E4FFEAE6
          E2FFE8E5E2FFE6E4E0FFDEC4B1FF97623CE90D07035800000007000000000000
          000522150B74BE8B61F6EBD5C3FFFDFDFCFFF7F6F5FFF1EFEDFFECEAE8FFECE9
          E6FFEFEDEAFFE3CBB8FFBD865DF928170B8A0000001000000001000000000000
          00010000000622150B7495653FE0DBB292FFEDD8C8FFFAF4EFFFFAF3EFFFECD7
          C7FFD9AF8FFF96633DE526160B85000000120000000300000000000000000000
          00000000000100000005090603403520118E714523CAA76633F1A76532F17345
          22CE382110970B06034C0000000C000000020000000000000000000000000000
          000000000000000000000000000200000005000000080000000C0000000D0000
          000C000000090000000400000001000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000130B0454573312B494561FEAB06623FF94561DEA5732
          10B4120B03540000000000000000000000000000000000000000000000000000
          000001000015523113AEBD793DFFD79D65FFE3AF7BFFE8B583FFE2AD79FFD59A
          61FFBA7434FF502F10AE01000015000000000000000000000000000000000302
          0024935A24E7CA8D53FFEFC8A0FFEBBE90FFECC093FFEDC59BFFEEC69EFFECC3
          99FFE9BC8EFFC7884CFF332C36E700000118000000000000000000000003784B
          20CFD29D67FFBA7637FFDDA975FFDBAB79FFCA9155FFC28243FFC98F53FFDAA8
          76FFE1B385FF605C68FF246EB9FF001239AE0000000000000000180F075DC78B
          50FFF1C79CFFE4B280FFB87333FF58391CAE0906023900000000090602395738
          1AAE5C5865FF50ACE7FF54C5FFFF1250A2FF00050F57000000005D3D1DB4E0B4
          87FFF2C69BFFD8A36EFF59391BB10201001E552E0FB7A6591CFF552D0DB70201
          001E022248AB3E96D7FF64CBFFFF3091D8FF011C47B400000000A06A37EAF1CE
          A8FFF3C99EFFC08349FF0503012D5D3717BAD19966FFEAB783FFCD8E55FF6136
          14C00002042D1961B1FF6BCFFFFF44B4F4FF04357FE700000000C28447FFF7D7
          B4FFF5CDA3FFB47239FF00000006A86934F3EDC59CFFECC190FFE9B580FFAE67
          2EF9000000060A4EA6FF6ACFFFFF4EC0FDFF04479CF900000000A77441EAF4D2
          AEFFF8D3ACFFBD7D47FF0503012D674325BADAA674FFF0CBA2FFD8A472FF6C45
          24C00002052D1963B4FF61CDFEFF4CBAF5FF04418AE70000000065472AB4E9C1
          98FFFAD9B7FFD8A575FF553418B40201001B614127B1BE814BF9604025B10201
          001B02224AAB479BD8FF60CDFEFF3AA0E3FF042A57B40000000019120B5AD7A4
          71FFFBDFBEFFE8BE95FFAE6A35FF573519B70805023900000006080502395733
          18B74F5B68FF47A9E5FF78D6FEFF1F79C8FF010A155700000000000000038560
          3CCCE3B789FFD19B64FFE9C098FFD9A676FFBE814DFFB06E38FFBC7E4BFFD8A3
          73FFE9BC90FF6B7C89FF3494D8FF042E58AE0000000000000000000000000403
          0124AB7F52E7E1B486FFFCDFBFFFFCDFBDFFFBD9B3FFFBD6AEFFFAD4ABFFFAD5
          ADFFF9D4AEFFDCAB79FF626A6EE7000101180000000000000000000000000000
          00000101001563492FAEDBA875FFEFCBA3FFF9DAB8FFFDE1C1FFF8D9B7FFEDC7
          A0FFD4A16CFF5F4329AE01000015000000000000000000000000000000000000
          00000000000000000000120D094B4937249683623FC9C99561F9825F3EC94835
          2196110D084B0000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000000000B0AB
          A7FF969089FF958E87FF938D86FF938C85FF928B84FF918A83FF8F8982FF8F88
          80FF8D8780FF8C857DFF8C857CFF8B847BFFA6A29BFF00000000000000009A93
          8DFFF9F4F0FFF4EAE1FFF3E9E0FFF3E9E0FFF2E8DEFFF3E8DEFFF2E7DEFFF2E7
          DCFFF2E7DDFFF1E6DCFFF1E6DBFFF0E5DBFF8C857CFF00000000000000009B95
          8FFFFAF6F1FFF4EAE2FFF4EAE1FFF4EAE0FFAFA297FF8C7D72FFF2E8DEFFF3E7
          DDFFF2E7DDFFF2E7DCFFF1E6DCFFF1E6DBFF8C857DFF00000000000000009D97
          91FFFBF7F3FFF5EBE2FF87786DFFC4B9AEFF67584CFF9A8D82FFF3E9DEFFF3E8
          DEFFF2E8DEFFF2E7DDFFF1E6DCFFF1E6DCFF8E877EFF00000000000000009F99
          93FFFBF7F4FFF4ECE3FF605145FF695C50FF514336FF9B8E82FFE3D8CEFFF3E8
          DFFFF2E8DEFFF2E7DEFFF2E7DDFFF1E7DCFF8F8981FF0000000000000000A19B
          95FFFBF8F5FFF5EDE3FF67584CFF9A9084FF8F8678FF706357FF918377FFF3E9
          DFFFF3E9DFFFF3E8DEFFF2E7DDFFF2E7DDFF908A83FF0000000000000000A29C
          97FFFCF9F6FFF6ECE4FF6E5F55FF9E968AFF817368FF9B8E83FFF3EAE1FFF3E9
          E0FFF3E9DFFFF3E9DEFFF3E7DEFFF2E7DDFF928B84FF0000000000000000A49F
          99FFFCFAF7FFF6EDE4FF74665BFF8B7E73FFA79B91FFF5EBE2FFF4EBE2FFF4EA
          E1FFF3E9E0FFF3E9E0FFF3E8DEFFF2E8DEFF948E86FF0000000000000000A5A0
          9BFFFCFAF8FFF6EEE6FF786A5FFFB0A49AFFF5ECE4FFF5EBE2FFF5EBE2FFF4EB
          E2FFF3EAE1FFF3EAE0FFF3E9DFFFF3E8DFFF958F88FF0000000000000000A7A1
          9DFFFDFBF9FFF6EDE6FFB3A89FFFF1E8E1FFEEE6DEFFEDE5DDFFEBE4DBFFEBE3
          DAFFEAE1D9FFE9E0D7FFECE3DAFFF1E7DEFF97918BFF0000000000000000A9A3
          9FFFFDFBFAFFF5EDE5FFD0A77CFFC28C53FFBE894FFFBB854DFFB88249FFB47E
          46FFB17A42FFAD773FFFB88F64FFECE2D9FF98938DFF0000000000000000AAA5
          A0FFFDFCFAFFF5EDE6FFC79258FFF9DCC2FFF5CAA4FFF4C8A1FFF2C59EFFF2C4
          9BFFF0C297FFEFC094FFAD773FFFE9E0D7FF9A958EFF0000000000000000ABA6
          A2FFFEFCFBFFF5EDE6FFCA945BFFF9DEC5FFF8DBC1FFF7D8BDFFF6D6B9FFF5D4
          B5FFF3D1AFFFF3CDABFFB17A43FFEAE2D8FF9D9790FF0000000000000000ACA7
          A4FFFEFDFCFFF6EFE8FFD6AC80FFCA945AFFC89258FFC58F55FFC28C52FFBF89
          4FFFBB854CFFB78249FFBF9668FFEEE5DEFF9F9993FF0000000000000000AEA9
          A5FFFEFDFCFFFEFDFCFFFDFBFAFFFBFAF8FFFAF8F7FFF9F7F5FFF9F6F4FFF7F4
          F2FFF5F3F0FFF4F1EDFFF6F2EEFFF9F5F1FFA09A95FF0000000000000000BFBB
          B9FFAEA9A5FFADA8A4FFACA7A3FFABA7A2FFABA6A1FFAAA5A0FFA8A49FFFA8A2
          9EFFA7A19CFFA6A09BFFA49F99FFA39D98FFB6B1ADFF00000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          0007000000060000000300000006000000080000000400000001000000000000
          000000000000000000000000000000000000000000000000000303020D4D2216
          8CEA0A0637A200000016090536A3140A73EA01000B4F00000004000000000000
          0001000000060000000A0000000B0000000B0000000B000000112A1F94EA6E85
          EAFF404FCBFF1B137BE63A47C9FF5B73E4FF150C76E700000007000000000000
          00065F4038BDB37A68FFB37967FFB37967FFB27867FFDCC6BEFF746AC0FF7680
          DDFF6C8BEFFF5771E5FF6281EDFF6871D8FF100B3E9F00000005000000000000
          0008B57C6AFFFBF7F3FFFBF6F3FFFBF6F3FFFBF5F2FFFAF5F3FFEFECEFFF4C45
          BDFF6985EBFF7394F2FF5F78E7FF211C84E40000001300000002000000000000
          0008B67E6CFFFCF8F5FFF8EFECFFF7EEEAFFF7EEEAFFF9F5F3FF807CD4FF6A7D
          E2FF93B0F6FFA0B3F2FF8AA6F4FF5C6DDBFF110F42A000000004000000000000
          0008B8826EFFFCF9F6FFF8F0ECFFF8F0ECFFF7EFECFFFAF8F7FF6160D8FFB1C3
          F6FF8D99EAFF5E5CD2FF8995E7FFA6B8F3FF342E9BE300000004000000000000
          0007BA8472FFFDF9F8FFF8F1EEFFF8F0EDFFF8F0ECFFFAF5F3FFCECDEEFF6463
          DEFF9291E2FFF2F1F3FF8982D3FF3C39AAE704040D4600000002000000000000
          0007BB8775FFFDFBF9FFF9F1EFFFF9F2EEFFF8F1EEFFF8F0EDFFFAF5F3FFFAF8
          F7FFFAF7F6FFFCF9F8FFE3CFC9FF0000000C0000000200000000000000000000
          0006BD8A77FFFDFBFAFFF9F2F0FFF9F2F0FFF8F2EFFFF9F1EFFFF8F1EEFFF9F1
          EEFFF8F0EDFFFDFAF8FFBB8674FF000000080000000000000000000000000000
          0006BF8D7AFFFEFCFBFFFAF4F1FFFAF4F1FFFAF2F1FFFAF2F0FFF9F2EFFFF9F2
          EEFFF8F1EEFFFDFBF9FFBD8977FF000000080000000000000000000000000000
          0005C39381FFFEFDFDFFFBF6F4FFFBF5F4FFFBF4F2FFFAF4F2FFFAF4F1FFF9F3
          F1FFFAF3F1FFFEFCFBFFC18F7DFF000000070000000000000000000000000000
          0004C69887FFFFFEFEFFFBF7F6FFFCF6F6FFFBF6F5FFFBF6F4FFFBF5F4FFFAF5
          F3FFFAF5F3FFFEFDFDFFC59684FF000000060000000000000000000000000000
          0003C99B8AFFFFFEFEFFFBF7F6FFFCF7F6FFFCF6F5FFFBF6F5FFFCF6F5FFFBF5
          F5FFFBF6F4FFFFFEFEFFC79887FF000000050000000000000000000000000000
          0003CA9E8DFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
          FEFFFFFEFEFFFFFEFEFFC99B8AFF000000040000000000000000000000000000
          0002745E56BFD0AB9CFFD0AB9CFFD0AA9CFFCFA99BFFCFA99AFFCFA999FFCFA8
          99FFCEA899FFCFA898FF735C54C0000000030000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFDFFF2F1F1FFE8E6
          E7FFDDDBDBFFD0CCCDFFBFBCBDFFB8BBB9FFE7E5E6FFFFFFFFFFFFFAFFFFF0EB
          EEFFD6D3D4FFCAC9C8FFB8BAB5FFB9B5B6FFBCBCBCFFBEC4C2FFC4CDCBFFC7D5
          D2FFD0E2DFFFD9EEEBFFE5FBF9FFD9F8EFFFD0CCCDFFFFFFFFFF6BBC84FF7AB6
          8FFF8BBDA1FFB2D6C6FFDBEFEEFFDDF8F0FFEDFFFFFFE8FCFCFFD0EAE1FFD8EF
          E9FFA5CBB0FF94BF9DFF88B690FFE3F9F7FFCDCBCCFFFFFFFFFF96C9A5FFA8CD
          C2FFCCE6DAFFA1C7AAFF7EB084FFE2F3F3FF5A965CFF579358FF498A49FFF2FF
          FFFF4B8B4BFF5F9A62FF589559FFEAFEFFFFC9CAC9FFFFFFFFFF9BCCA7FF7EB6
          9FFFC0DAC8FF519052FF4E8F50FFBDDACAFF6FA575FF609B64FF69A16DFFEDFA
          FEFF94BE9CFFBAD7C4FFCCE3D9FFE1F7F3FFC6C9C8FFFFFFFFFFA0D3AFFF448F
          6AFFFCFFFFFFB5D5BEFFD4E8DFFFE8F5F2FFFFFFFFFFFFFFFFFFFBFFFFFFECF9
          F8FFB4D5BFFF9EC6A8FF78AE81FFF1FDFDFFC6CBC9FFFFFFFFFF9DD2ADFF5A94
          73FFFFFFFFFFCAE4D7FFBEDDCAFFACD3BBFF8ABB9AFF002800FF54875FFFFFFF
          FFFF7BB88FFF61A978FF4D9E66FFEDF9F6FFCCCFCFFFFFFFFFFF9CD2ADFF87AD
          97FFE8F2EDFFF6FBF8FF71B88FFF80C6A0FF186130FF577C5AFFF7FFFFFFFAFC
          FCFFE1F0E8FFE9F4EEFFFFFFFFFFFFFFFFFFD2D3D3FFFFFFFFFFA1D8B3FF6796
          79FFB0CDBBFFFFFFFFFFFFFFFFFF449369FF125C29FFA4DCC1FFFFFFFFFFFFFF
          FFFFC8E5D6FF8AC8A7FF6CB991FFD7EEE1FFDDDADCFFFAFAFAFFA6DAB6FF5D8D
          6EFF88B096FFFFFFFFFFA7D1BDFF026730FFC4DECEFF68B88EFF59B082FFE3F1
          E9FFC3E2D2FF5BB084FF6EBA91FFCBE7D9FFE5E2E4FFF8F8F8FF95D5A9FF8BA8
          94FF5C916DFFFFFFFFFF6EB393FFB9D7C6FFFFFFFFFFFFFFFFFFF7FEFBFFFDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FFFFFFFFFFA8E2BBFFB8CB
          BEFF4A825AFFD3E1D7FFC1D2C4FFB5CBBCFF9EBDA8FF90B29AFF82A88DFF719D
          7EFF5F916EFF457A54FF75C78FFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF5CC1
          7DFFCACDCAFF699575FF759F81FF77A082FF78A183FF7AA285FF7BA386FF7DA4
          88FF7FA68AFF789C82FF88D19FFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF5BC07CFFB8D5C1FFD6D9D7FFCBD4CDFFCBD4CDFFCBD4CDFFCBD4CDFFCBD4
          CDFFCBD4CDFFCED1CFFF84CB9AFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC2ECCFFF83CE9BFF90D3A5FF8FD3A5FF8FD3A5FF8FD3A5FF8FD3
          A5FF8FD3A5FF90D3A6FF7ECA96FFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7
          F6FFF8F8D9FFFCFCDAFFFCFCDAFFFCFCDAFFFCFCDAFFFCFCDAFFFCFCDAFFFCFC
          DAFFFCFCDAFFFCFCDAFFFCFCDAFFF8F8D9FFF7F7F6FFFFFFFFFFFFFFFFFFE9E9
          DDFF0000CAFF0505D9FF0505D7FF0000D7FF0000D7FF0000D8FF0000D9FF0000
          D7FF0303D7FF0505D7FF0505D8FF0000CAFFE7E7DCFFFFFFFFFFFFFFFFFFCCCC
          E7FF0000FFFF0000FDFF0000FDFF6969FEFF4B4BFFFF9C9CFAFF9999F1FF9696
          FFFF0F0FFFFF0303FEFF0000FFFF0000FFFFCACAE7FFFFFFFFFFFFFFFFFFCFCF
          E7FF0000FDFF0505FCFF0505FDFF5E5EF9FFCBCBDCFF9696F2FF9D9DE9FF9F9F
          EDFF3C3CEDFF0707FEFF0303FBFF0000FDFFCECEE8FFFFFFFFFFFFFFFFFFC6C6
          E8FF1111EBFF2C2CEDFF3E3EEEFF2C2CEFFF2121F2FF2A2AF0FF2828F1FF2727
          F1FF2F2FF0FF3232EEFF2B2BEDFF1111EBFFC6C6E8FFFFFFFFFFFFFFFFFFEAEA
          E3FFFFFFE2FFFFFFEAFF9E9EF5FFFFFFF2FFFFFFF7FFFFFFF9FFFFFFF9FFFFFF
          F6FFFFFFF3FFFFFFEFFFFFFFE9FFFFFFE2FFEAEAE3FFFFFFFFFFFFFFFFFFE4E4
          E4FFE5E5E6FFFEFEEDFF7F7FF8FF2D2DFDFFFFFFFAFFFFFFFDFFFFFFFDFFFFFF
          FAFFFFFFF6FFF4F4F2FFF3F3EDFFE5E5E6FFE4E4E4FFFFFFFFFFFFFFFFFFE5E5
          E5FFE8E8E8FFF0F0F1FFFFFFF5FFE8E8FBFF4444FFFF9C9CFEFFA3A3FEFF6D6D
          FEFF2828FDFF5050FBFF3232FCFFFFFFE7FFE4E4E5FFFFFFFFFFFFFFFFFFE5E5
          E5FFEAEAEAFFF4F4F4FFF8F8F9FFFFFFFEFFA4A4FDFFFAFAFEFF7878FDFFFFFF
          FEFFFFFFFEFFFFFFF7FFFFFFF1FFE9E9EBFFE5E5E5FFFFFFFFFFFFFFFFFFE7E7
          E7FFECECECFFF4F4F4FFFBFBFBFFFFFFFEFFA1A1FEFF8383FFFFFFFFFDFFFDFD
          FDFFFFFFFFFFFAFAFAFFF2F2F3FFEBEBEBFFE7E7E7FFFFFFFFFFFFFFFFFFE7E7
          E7FFECECECFFF3F3F3FFFCFCFCFFFFFFFFFF3131FDFFFFFFFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFBFBFBFFF2F2F2FFEBEBEBFFE7E7E7FFFFFFFFFFFFFFFFFFE8E8
          E8FFECECECFFF3F3F3FFFFFFFAFFD5D5FFFF6A6AFDFFFFFFFEFFFDFDFDFFFEFE
          FEFFFFFFFFFFF9F9F9FFF3F3F3FFEAEAEAFFE8E8E8FFFFFFFFFFFFFFFFFFE5E5
          E5FFF4F4F4FFF6F6F6FFFFFFF8FF8080FFFF7D7DFFFFFFFFFEFFFEFEFEFFFFFF
          FFFFFEFEFEFFF8F8F8FFF2F2F2FFE9E9E9FFE6E6E6FFFFFFFFFFFFFFFFFFFEFE
          FEFFE9E9E9FFF1F1F1FFF2F2F2FFFFFFF5FFF0F0F6FFF7F7F6FFF6F6F6FFF6F6
          F6FFF4F4F4FFF2F2F2FFF0F0F0FFE8E8E8FFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000EBEBEBFFBABA
          BAFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBD
          BDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBABABAFFEBEBEBFFBABABAFFF7F7
          F7FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFDFFFFFFFFFFFFFFFDFEFEFFFBFB
          FBFFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFF7F7F7FFBABABAFFBDBDBDFFFFFF
          FFFFBBBBBBFFB4B4B4FFC0C0C0FFFFFFFFFFF5EEE6FFB57B43FFFAF5F1FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFBDBDBDFFBDBDBDFFFFFF
          FFFFB5B5B5FFAEAEAEFFBDBFC0FFF9EEE4FFB07439FFDFC6AEFFF1E7DDFFF1E7
          DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFBDBDBDFFBDBDBDFFFFFF
          FFFFB7B7B7FFAFAFAFFFC1C4C8FFD6B28DFFAF7136FFBE8E5DFFBB8754FFB882
          4CFFC4986BFFF9F5F1FFFFFFFFFFFFFFFFFFFCFCFCFFBDBDBDFFBDBDBDFFFFFF
          FFFFB7B7B7FFAFAFAFFFBCBCBDFFFFFFFFFFC79E75FFCFAC88FFFFFFFFFFFFFF
          FFFFD0AD8AFFC29465FFFFFFFFFFFFFFFFFFFCFCFCFFBDBDBDFFBDBDBDFFFFFF
          FFFFB7B7B7FFAFAFAFFFBCBCBCFFFFFFFFFFFFFFFFFFDABFA4FFF7F1EBFFFFFF
          FFFFFFFFFFFFBA8550FFF2E8DFFFFFFFFFFFFCFCFCFFBDBDBDFFBDBDBDFFFFFF
          FFFFB7B7B7FFAFAFAFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1
          EBFFFFFFFFFFBA8754FFF2E8DEFFFAF5F0FFFDFEFFFFBDBDBDFFBDBDBDFFFFFF
          FFFFB7B7B7FFAFAFAFFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBBF
          A4FFCFAC88FFBE8D5DFFDEC5ADFFB47B43FFFFFFFFFFBDBDBDFFBDBDBDFFFFFF
          FFFFB4B4B4FFACACACFFB9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC79F75FFAF7136FFB0743AFFF5EDE6FFFEFFFFFFBDBDBDFFBDBDBDFFFFFF
          FFFFD3D3D3FFCECECEFFD6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFD6B18DFFF8EFE5FFFFFFFFFFFCFCFCFFBDBDBDFFBDBDBDFFFFFF
          FFFFC6C6C6FFC0C0C0FFCFCFCFFFD5D5D5FFBABABAFFBCBCBCFFBCBCBCFFBCBC
          BCFFBCBDBDFFC1C5C8FFBDBFC1FFC0C0C0FFFFFFFFFFBDBDBDFFBDBDBDFFFFFF
          FFFFB4B4B4FFACACACFFC0C0C0FFCECECEFFACACACFFAFAFAFFFAFAFAFFFAFAF
          AFFFAFAFAFFFAFAFAFFFAEAEAEFFB4B4B4FFFFFFFFFFBDBDBDFFBDBDBDFFFFFF
          FFFFBBBBBBFFB4B4B4FFC6C6C6FFD2D2D2FFB4B4B4FFB7B7B7FFB7B7B7FFB7B7
          B7FFB7B7B7FFB7B7B7FFB6B6B6FFBBBBBBFFFFFFFFFFBDBDBDFFBABABAFFF7F7
          F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFBABABAFFEBEBEBFFBABA
          BAFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBD
          BDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBABABAFFEBEBEBFF}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000E7E7E7FFB3B3
          B3FFB7B7B7FFB7B7B7FFB7B7B7FFBCBCBCFFB7B7B7FFB7B7B7FFB7B7B7FFB7B7
          B7FFBCBCBCFFB7B7B7FFB7B7B7FFB7B7B7FFB3B3B3FFE7E7E7FFB4B4B4FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4FFBCBCBCFFD2D2
          D2FFCFCFCFFFCFCFCFFFD1D1D1FFBCBCBCFFD1D1D1FFCFCFCFFFCFCFCFFFD1D1
          D1FFBCBCBCFFD1D1D1FFCFCFCFFFCFCFCFFFD2D2D2FFBCBCBCFFB8B8B8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8B8FFB8B8B8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8B8FFBCBCBCFFD2D2
          D2FFCFCFCFFFCFCFCFFFD1D1D1FFBCBCBCFFD1D1D1FFCFCFCFFFCFCFCFFFD1D1
          D1FFBCBCBCFFD1D1D1FFCFCFCFFFCFCFCFFFD2D2D2FFBCBCBCFFB8B8B8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8B8FFBCBCBCFFD2D2
          D2FFCFCFCFFFCFCFCFFFD1D1D1FFBCBCBCFFD1D1D1FFCFCFCFFFCFCFCFFFD1D1
          D1FFBCBCBCFFD1D1D1FFCFCFCFFFCFCFCFFFD2D2D2FFBCBCBCFFB8B8B8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8B8FFBCBCBCFFD2D2
          D2FFCFCFCFFFCFCFCFFFD1D1D1FFBCBCBCFFD1D1D1FFCFCFCFFFCFCFCFFFD1D1
          D1FFBCBCBCFFD1D1D1FFCFCFCFFFCFCFCFFFD2D2D2FFBCBCBCFFB8B8B8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8B8FFBCBCBCFFD2D2
          D2FFCFCFCFFFCFCFCFFFD1D1D1FFBCBCBCFFD1D1D1FFCFCFCFFFCFCFCFFFD1D1
          D1FFBCBCBCFFD1D1D1FFCFCFCFFFCFCFCFFFD2D2D2FFBCBCBCFFB6B8B9FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D7DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD3D7DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B8B9FFCCC0B4FFDDC0
          A4FFD4B495FFD9BCA0FFDDC2A8FFC3A88EFFDDC2A8FFD4B495FFD9BCA0FFDDC2
          A8FFC3A88EFFDBBEA2FFD4B495FFD9BCA0FFDDC0A4FFCCC0B4FFE0C5A9FFA35D
          19FFFDFBF9FFC39567FFAC6D30FFB17338FFA86525FFFDFBF9FFC39567FFAC6D
          30FFAF6F32FFC39567FFFAF7F3FFC39567FFA86525FFE0C5A9FFF1E7DDFFDDC4
          ABFFD9BCA0FFDDC4ABFFDFC8B1FFDFC8B1FFDFC8B1FFD9BCA0FFDDC4ABFFDFC8
          B1FFDFC8B1FFDDC4ABFFD9BCA0FFDDC4ABFFDDC4ABFFF1E7DDFF}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCAFFAAAAAAFFBCBC
          BCFFB0B3B6FFB1B4B7FFACACACFFAFAFAFFF898989FFFFFFFFFFFFFFFFFFD8BB
          9FFFD6B89AFFD5B394FFF1E6D6FFADDFF8FFB3E2FAFFBFC2C2FFE0DFDFFFA6A8
          ABFFF2DDC8FFF0E0D1FFFFFFFFFFFFFFFFFFBBBBBBFFFFFFFFFFFFFFFFFFB57D
          46FFB2773EFFAE6F32FFE4CEB0FF62C1F2FF67C2EFFFBFC5C4FFDCDBDAFFA9AF
          B7FFBB844AFFC8A380FFBF976CFFFAF2EAFFB8BABBFFFFFFFFFFFFFFFFFFB985
          50FFB78049FFB2763DFFE6D2B5FF6BC4F3FF6FC6F0FFC0C5C4FFDBDAD9FF9F9F
          9FFFFFFFFFFFF3EAE2FFE6D5C4FFEAD7C7FFBBBCBCFFFFFFFFFFFFFFFFFFB985
          50FFB78049FFB2763DFFE6D2B5FF6BC4F3FF6FC6F0FFBEC4C3FFE6E5E5FFC1C1
          C1FFFFFFFFFFFFFFFFFFC39364FFCDA071FFBDBFC1FFFFFFFFFFFFFFFFFFB985
          50FFB78049FFB2763DFFE6D2B5FF6BC4F3FF6FC6F0FFBFC4C3FFDFDDDDFFB0B0
          B0FFDBDBDBFFAEAEB0FFB5B7BAFFB0B3B6FFBFBFBFFFFFFFFFFFFFFFFFFFB985
          50FFB78049FFB2763DFFE6D2B5FF6BC4F3FF6FC6F0FFBABFBFFFF2F0F0FFD4D4
          D4FFF4F4F4FFD8D8D8FFDBDBDBFFDADBDBFFBDBDBDFFFFFFFFFFFFFFFFFFB985
          50FFB78049FFB2763DFFE6D2B5FF6AC4F3FF6CC2ECFFF1EEECFFB2B0AFFFC2C2
          C2FFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFFA6A6A6FFFFFFFFFFFFFFFFFFB782
          4BFFB57B44FFB07338FFE6D1B2FF6AC4F3FF80C9EDFF59BEF0FFD0CBC6FF6464
          64FF6C6C6CFF777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC598
          6CFFC19365FFBF8D5CFFEBD9C2FF69C2F1FF7EC8EDFF6DC4F1FFD4CEC8FF7776
          76FF7E7E7EFF868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF67BEE9FF7EC8EDFF6DC4F1FFCAC4BEFF5E5D
          5DFF666666FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFF67BEE9FF7EC8EDFF67BEEAFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFFFEFF5AB9E7FF72C3EBFF5AB9E7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFBFE3F5FFC9E7F7FFBFE3F5FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000C0C0C0FFC0C0
          C0FFB5B5B5FFBCBCBEFFC3C3C4FFC4C4C5FFC5C5C6FFC5C4C5FFC5C5C6FFC6C6
          C7FFC6C6C7FFC7C7C7FFC7C7C7FFC8C8C8FFC8C8C8FFC9C9C9FFBEBEBEFFBEBE
          BEFFB9B9B9FFBCBCBDFFBFBEC0FFC0BFC1FFC1C0C2FFC0BFC1FFC3C2C4FFCBCA
          CCFFCCCBCDFFCBCACCFFCBCACBFFCACACBFFCACACBFFCBCBCBFFC3C3C3FFC1C1
          C1FF898989FF949494FF9C9C9CFF9F9F9FFFB4B4B4FFCCCCCCFFCBCACBFFC2C1
          C2FFC1C0C1FFC0C0C1FFBEBEBFFFC1C1C2FFCDCDCDFFCDCDCDFFC5C5C5FFC5C5
          C5FFA9A9AAFF8C8DBEFFC2C2C7FFBFBFBFFFA6A6A6FF949494FF818181FF9797
          97FF989898FF959595FF999999FFB3B3B3FFCECECEFFD0D0D0FFD1D1D1FFCECE
          CEFFABABABFFC0C0C4FF7E7EBFFFC1C1C4FFC7C7C7FFBFBFBFFFBDBDBDFFC7C7
          C7FFCBCBCBFFCECECEFFCACACAFFBFBFBFFFD6D6D6FFD9D9D9FFF4F4F4FFF0F0
          F0FFC1C1C1FFDEDEDEFFD4D4DCFFA0A0CFFFE2E2E2FFDFDFDFFFE0E0E0FFE3E3
          E3FFE3E3E3FFE5E5E5FFE9E9E9FFEEEEEEFFF3F3F3FFF8F8F8FFFFFFFFFFFFFF
          FFFFD4D4D4FFFAFAFAFFFEFEFEFF9E9ED9FF8989D3FF6E6ECFFF8686D6FFFBFB
          FBFFFAFAFAFFFBFBFBFFFCFCFCFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCECECEFFF5F5F5FFFAFAFAFFECECF3FFEDEDF8FFF8F8F8FFA1A0DCFFD2D2
          EFFFFBFBFBFFDBDBEFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD1D1D1FFFBFBFBFFFFFFFFFFFCFCFCFFFFFFFFFFFCFCFCFFF6F6FAFF7575
          CEFF9797D4FF4343BFFFFAFAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCCCCCCFFF8F8F8FFFBFBFBFFF9F9F9FFFCFCFCFFFAFAFAFFFBFBFBFFA5A5
          DCFF8686D7FFA9A9DFFFB6B6E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCDCDCDFFFBFBFBFFFDFDFDFFFBFBFBFFFDFDFDFFFCFCFCFFFDFDFDFFFCFC
          FEFFFEFEFEFFF3F3FAFF6868C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCCCCCCFFFDFDFDFFFFFFFFFFFEFEFEFFFFFFFFFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF7D7DD0FFDADAF2FFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFFCCCCCCFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCCCBEBFF7675CFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
          FCFFCECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF1F1F8FF9B9ADDFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5
          F5FFCACACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000010000
          000300000006000000080000000B0000000D0000000E0000000F0000000F0000
          00100000000F0000000E0000000C00000009000000050000000100000003081A
          1341143F2E921B543CBD1F5E43D3257553FF247353FF247251FF247151FF2370
          51FF23704FFF1C593FD6184E37C1123A29990717104900000006000000072A82
          60FF36A780FF34B186FF33B589FF34C192FF33BF90FF31BD8DFF30BC8CFF2FBA
          8AFF2EB989FF2CAA7DFF2AA378FF2A976FFF257353FF0000000D000000062A7E
          5FE973D9BDFF5AD4B0FF43CCA1FF40C99DFF3EC79AFF3BC598FF38C295FF36C0
          92FF34BE90FF32BD8EFF3ABF93FF42BE95FF247153EE0000000C000000031845
          357B48A787FF74CEB4FF83E5CBFF57CEABFF2F9773FF207D5DFF1B7859FF2189
          66FF42BF98FF5AD1ADFF4BB996FF349674FF1540308800000006000000000000
          00030C221A3C256B53B345A987FF53AC90FF63A9B1FF71A7CCFF5D8CB7FF3674
          89FF2C8E73FF3A9D7BFF22664DBA0B2019460000000700000001000000000000
          00000000000100000003091B15322D7A61CC5588ABFF325994FF2C538FFF3460
          8EFF28735CCD091A143600000007000000030000000100000000000000000000
          00000000000000000000000000071221316B4572ACFF659FD7FF629CD6FF3968
          A5FF0C1B2C6F0000000800000000000000000000000000000000000000000000
          000000000000000000010000000E2B466EC379AFDAFF90CCF5FF77B4E8FF5991
          CBFF1D3A66CA0000000E00000001000000000000000000000000000000000000
          0000000000000101010315253F8A36598DF8BAE1F6FFBDE6FCFF8CC9F2FF69A5
          DBFF21447AF70D19349501010103000000000000000000000000000000000000
          000000000000010101052A4B7DE2385F95FFD5F0FBFFD1EDFBFF94CFF3FF6DA7
          DDFF24467DFF172C59E201010105000000000000000000000000000000000000
          0000000000000101010538649EFA3C6CA8FFBAD7E9FF698EB7FF325A91FF2B50
          86FF28518FFE1D3869FA01010105000000000000000000000000000000000000
          00000000000001010104386498DC539CE0FF497BB7FF5390CDFF4E8FD3FF3C76
          C1FF396CB1FF223F72FF01010105000000000000000000000000000000000000
          000000000000010101021525374D4B84C2F17FB9E7FF86BDE9FF8DC4EEFF75A8
          DAFF5683B8FF1C3359BF01010104000000000000000000000000000000000000
          00000000000000000000010101020E16202B37618DB03D6B9FD24276B3FF3054
          85D51C3251930305071200000001000000000000000000000000000000000000
          0000000000000000000000000000000000010101010301010105010101050101
          0104010101030000000100000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E8000000000000000003C3C3CFF00000000000000001E1E1E803C3C3CFF1E1E
          1E80000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF0000
          00003C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E80000000001E1E1E803C3C3CFF0000
          00003C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E8000000000000000003C3C3CFF1E1E1E8000000000000000003C3C3CFF0000
          00003C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000001F421C11FF30140DEC190A06B30304
          075F0000001B0000000500000000000000000000000000000000000000000000
          00000000000000000000000000000000001E663C2BE7B9C7D2FF7889A2FF2441
          82FF051033AF0000002100000005000000000000000000000000000000000000
          0002000000090000000E0000000F0000002041261BAE879AB2FFC8E3F5FF1F66
          B6FF2B6BA8FF051236AD0000001F000000040000000000000000000000000000
          00088C6657C0C38C7AFFC38C79FFCBA395FFA89894FF488BC3FFDEFEFDFF51B4
          E3FF1F68B7FF3173AEFF061538AA0000001C0000000400000000000000000000
          000CC5917EFFFDFBFAFFFCF8F6FFFAF7F5FFECEAE9FF7CA3BFFF479FD2FFDEFE
          FDFF59BFE9FF216BB9FF367BB3FF07173AA70000001A00000004000000000000
          000CC79481FFFEFBFAFFF9F0EAFFF8F0EAFFF7F0EBFFE8E4E1FF7EA4BFFF4BA5
          D5FFDEFEFDFF61CAEFFF246FBCFF3B83B9FF081A3DA300000018000000000000
          000BC99786FFFEFCFBFFF9F2EDFFF9F2EDFFF9F0EBFFF8F2EDFFEBE7E5FF82A7
          C2FF4EAAD7FFDEFEFDFF68D4F4FF2875BEFF3F8BBEFF091B3F9E000000000000
          000ACB9C8BFFFEFDFCFFFAF3EFFFFAF4EEFFFAF3EEFFFAF1ECFFF8F2EEFFEDE9
          E7FF85ABC7FF51AEDAFFDEFEFDFF6EDDF8FF2C7BC2FF18448BFF000000000000
          0009CFA08DFFFEFEFDFFFBF5F1FFFBF5F0FFFBF4F0FFFAF3EFFFFAF3EFFFF8F4
          EFFFEFECE9FF89AECAFF54B1DCFFDEFEFDFF4FA6D4FF102C4E93000000000000
          0009D0A393FFFEFEFDFFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4
          EFFFFAF6F1FFF3EFEDFF83A0B8FF357FBCFF173A598F0000000C000000000000
          0008D3A897FFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5
          F1FFFBF5F0FFFAF6F3FFE2CCC4FF000000160000000600000001000000000000
          0007D3AB9AFFFFFEFEFFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
          F3FFFCF6F2FFFBF6F1FFD1A494FF0000000C0000000000000000000000000000
          0006D8AE9DFFFFFFFEFFFDF9F7FFFDF9F7FFFCF8F7FFFCF8F6FFFCF7F5FFFBF7
          F5FFFBF7F4FFFCF7F3FFD3A897FF0000000B0000000000000000000000000000
          0006D8B0A0FFFFFFFFFFFDFAF9FFFDFAF8FFFDFAF8FFFDF9F7FFFCF8F7FFFBF8
          F6FFFBF7F6FFFCF7F5FFD4AC9BFF0000000A0000000000000000000000000000
          0005D9B3A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFE
          FEFFFEFEFEFFFEFEFEFFD7AE9EFF000000090000000000000000000000000000
          0003A3867AC0DBB5A5FFDAB5A4FFDAB5A4FFDAB4A4FFD9B3A3FFD9B3A3FFD9B3
          A2FFD9B2A2FFD8B2A2FFA08377C2000000060000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000005040F0B2F104531A51A68
          49EB1B7350FF196849EB104530A6030F0A310000000600000001000000000000
          000000000000000000000000000000000005082117531D7352F5299F75FF31BD
          8DFF54D9B0FF2EBD8BFF279D73FF1B7050F50820175600000006000000000000
          000000000000000000000000000204100C2C237958F536BF90FF3FD2A2FF5ADC
          B4FF135C3BFF57DBB1FF3AD09DFF30BC8CFF217655F5040F0B2F000000000000
          0000000000000000000000000004164C389F3AAE86FF41D5A5FF3AC597FF1560
          3FFF15603FFF155F3EFF40C599FF38D09DFF31A980FF154A35A1000000000000
          000000000001000000030000000925785AE746CEA3FF47D8AAFF45D6A8FF53DB
          B0FF63DFB9FF176442FF2FA67CFF3DD2A1FF3BC898FF227355E7000000000000
          0003060C16281D39669F1B3560972D8968FD55DBB3FF4DDAAEFF4FDBAFFF44AA
          87FF196B47FF2C966EFF45D7A8FF43D6A6FF48D6A8FF298262FA000000020E1B
          304C3462A7F45091CDFF5B859EB0368F71F66BDBBAFF52DDB3FF4ACFA4FF1C70
          4DFF68DCB9FF6CE3C1FF52DBB1FF49D8AAFF60D7B2FF287C5EE7070E1726396A
          ADF46AB5E3FF8BCEF0FF315387C5236365D863C0A3FF66E3BFFF55DFB6FF1E75
          51FF1E7550FF1E7550FF42C097FF5DDFB9FF5CBC9EFF1C533F9A25426D9A67A6
          D9FF80D0F2FF5E8DC5FF315F9DE040788DAE399677FA7FDAC1FF7CE9CCFF64E3
          BFFF207954FF62E2BDFF77E7C8FF79D8BDFF338D6DF106110D253D6AABE586CD
          EFFFBBEAFAFF2E58A8FF98CAE9FF8AB3C5CB42838BBB3A9A79FB64C1A4FF86DF
          C7FF97EFD9FF84DFC6FF62C0A2FF379272F40F29204B000000024779BEF99CE0
          F7FF1B48A3FF1A47A2FF1A46A2FF18439AF661A1BFCB478093AD3E8D83D93B97
          7BF43A9C79FF348A6BE3235D489D07120E2200000002000000004573B4E5A9DE
          F4FF9BE1F9FF3060B3FF96CCECFF8DD7F5FFA3DEF7FF78B9D5E05B9BB9C55B88
          A2B028456D9200000004000000020000000100000000000000002F4D77958EBB
          E4FFADEAFAFF5F9AD4FF5286C9FFB0DDF4FF4E82C6FF6BB1E2FF8BD4F3FF7BAF
          DFFF2C4A729600000002000000000000000000000000000000000A1019205184
          C5F0B2DBF2FFB7E9F9FF528ACEFF255AB7FF4D85CBFFA3DDF6FF9FD0EEFF4D7E
          C0F1090F18220000000000000000000000000000000000000000000000011826
          39475488CAF38EBCE6FFB7DFF4FFCAF1FCFFB0DCF4FF87B7E3FF5284C6F31725
          3848000000010000000000000000000000000000000000000000000000000000
          00010B11192035557E974F7FBCE15990D5FF4F7EBBE23556809B0A1119200000
          0001000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00030000000C3030303F00000014000000140000001500000015000000150000
          00150000001500000016000000140000000E0000000300000000000000000000
          000B855B4FC4B8806DFFB87F6CFFB77D6BFF275392FF265190FF264F8EFF244D
          8BFFB47967FFB37866FFB47864FF805648C50000000D00000000000000000000
          0010BA8471FFFCF6F2FFF5E0D2FFF4DFD1FF2F6BBBFF5EB0ECFF4FA7E8FF306B
          BBFFF6E6DDFFF3DBCCFFF6E4DAFFB57966FF0000001200000000000000000000
          000FBD8674FFFDF9F7FFF5E2D7FFF5E1D6FF2B66B8FF6CB8EEFF56ACEAFF2B68
          B8FFF7E8DFFFF4DED0FFF7E8E0FFB67C69FF0000001200000000000000000000
          000EBF8A77FFFEFCFAFFF6E6DCFFF6E5DBFF2761B5FF7BC1F0FF5EB1EBFF2661
          B5FFF8EAE2FFF5E0D4FFF9EDE6FFB77E6BFF0000001100000000000000000000
          000CC18D7BFFFEFDFDFFF7E9E1FFF7E8DFFF235CB2FF88C9F2FF64B4EDFF235B
          B2FFF9EDE6FFF6E3D9FFFAF0EAFFB9806EFF0000000F00000000000000000000
          000BC4907EFFFEFDFDFFF9ECE5FFF8ECE4FF1D57AFFF95D0F4FF93CFF4FF1D57
          AFFFF9EDE6FFF7E7DEFFFAF3EEFFBB8471FF0000000E00000000000000090000
          0016AF7E6CFFF6F6F5FFF9EEE8FFFAEFE9FF1B53AEFF1B53AEFF1B53AEFF1B53
          AEFFF8EBE4FFF7E9E1FFF3EEEBFFA77462FF000000190000000B20865EFF2796
          6CFF1F855DFFB5C1B8FFF0E6E1FFFAF0EDFFFAF1ECFFFAF1ECFFFAF1EBFFF9EF
          E9FFF8EDE7FFEEE0DBFFB0BAAEFF1E7C56FF1D8B60FF1D7A54FF0718113C2D93
          6CFF53E3B6FF1C7951FFABB0A3FFEFE6E3FFFAF4F0FFFBF3EFFFFBF3EEFFF9F1
          EDFFECE1DEFFA8A79BFF15724BFF2AD89DFF188056FF04140D3F00000003081A
          123C339B74FF65E8C0FF1E7750FFA9ACA0FFEEE7E4FFF9F5F2FFF9F4F1FFECE2
          DEFFA7A89AFF17724BFF39DBA6FF1D885DFF04160E4300000004000000000000
          0003081C143A3AA57DFF75EBC9FF1E744EFFA5A89CFFE9E0DDFFE6DDD8FFA4A6
          9AFF17714AFF4BE0B1FF218F63FF937A63FF0000000B00000000000000000000
          000000000003091E163841AC87FF86EFD1FF1E734CFFA1A296FF829280FF1870
          48FF61E7BEFF26976CFFAFBDB2FFB98270FF0000000600000000000000000000
          000000000000000000020A1F183648B58FFF96F3DBFF348B65FF2C8961FF76EC
          C9FF2AA074FFB0C1B5FFF6F4F4FFBE8876FF0000000400000000000000000000
          00000000000000000000000000020B2119364FBD97FFA3F5E1FF89F3D7FF2FA8
          7CFF7D7B69CDCC9E8DFFCB9B8AFF946E61BF0000000200000000000000000000
          0000000000000000000000000000000000010C221B3440B78FFF40B78EFF051E
          1535000000030000000200000002000000010000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          00110000001B0000001D0000001D0000001E0000001E0000001E0000001E0000
          001F0000001F0000001F0000001F0000001E0000001400000005000000101427
          5DC91B3681FF1A3581FF193480FF18337FFF18337EFF16317EFF16307DFF152F
          7DFF142F7CFF142E7BFF132D7BFF122C7AFF0C1F58CC00000013000000162440
          88FF274C96FF19418FFF19418EFF19418EFF18408EFF19408EFF183F8DFF173F
          8CFF173F8CFF173F8CFF173E8CFF1D4390FF18327EFF0000001B000000152D4A
          8FFF345BA0FF224D99FF2552A0FF2655A4FF2655A4FF2758A7FF2657A7FF2453
          A3FF2352A1FF204D9CFF1D4694FF284F98FF1F3A84FF0000001A000000133754
          97FF4A74B4FF2E5EA8FF2C59A1FF2C5AA4FF2E60ADFF2F61AEFF2D60AEFF2C5D
          ABFF2858A3FF26529EFF2655A1FF3963AAFF27438BFF0000001800000011415F
          9FFF5B84BDFF133175FF092368FF112F74FF3364ACFF376CB5FF376AB4FF3264
          ADFF112F74FF092368FF102E73FF4670B1FF304D92FF000000150000000F3451
          92FF3A5998FF1E4486FF55CBF5FF143376FF22468CFF254C95FF244C94FF2246
          8EFF1E4486FF55CBF5FF143376FF2E4E90FF29458AFF000000130000000D2A46
          8AFF193178FF244D8DFFC0F2FCFF193C7FFF132C73FF132C74FF132B74FF1029
          71FF244D8DFFC0F2FCFF193C7FFF0D246DFF142D76FF000000110000000B4266
          A7FF7EB1DCFF3261A1FF244D8EFF2A5595FF518FCAFF5494CFFF5493CFFF5290
          CCFF3261A1FF244D8EFF295595FF7CAEDAFF173078FF0000000F000000095279
          B7FFB1D7F1FF7AB5E3FF79B3E2FF79B3E2FF7BB5E3FF7BB6E4FF7BB6E4FF7BB6
          E4FF7AB4E3FF79B3E2FF79B3E2FFB0D6F0FF243F83FF0000000D000000075E88
          C3FFC4E5F8FFC4E5F8FFC4E5F8FFC4E5F8FFC4E5F8FFC4E5F8FFC4E5F8FFC4E5
          F8FFC4E5F8FFC4E5F8FFC4E5F8FFC4E5F8FF355190FF0000000B00000004557E
          ADC16DA0DCFF6CA0DCFF6B9FDBFF537AB7FF6A9DDAFF699CD9FF699BD8FF689A
          D8FF476CADFF6699D6FF6597D6FF6497D5FF4A6F9DC300000007000000010000
          0003000000050000000500000005173471DC0B19387203071026020610260411
          3372041C60DC0000000600000007000000070000000600000002000000000000
          00000000000000000000000000000408112110224C90163272DE112D6FDE0819
          459001050F210000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object sqlEmail: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT '
      'CASE G.TYPEADDRESS WHEN '#39'O'#39' THEN '#39'Ordering Address'#39
      '                   WHEN '#39'R'#39' THEN '#39'Registered officee address'#39
      #9#9#9#9'   WHEN '#39'C'#39' THEN '#39'Correspondace address'#39
      #9#9#9#9'   end TypeAddress,'
      'G.ADDRESS1,'
      'G.ZIPCODE,'
      'G.CITY,'
      'G.COUNTY,'
      'G.STATEE,'
      'H.NAME,'
      'H.POSITION,'
      'H.EMAIL,'
      'H.PHONE1,'
      'H.PHONE2,'
      'H.ID_CONTACT'
      'FROM TBSUPPLIER E'
      'LEFT OUTER JOIN TBADDRESS G ON G.ID_SUPPLIER = E.ID_SUPPLIER'
      
        'LEFT OUTER JOIN TBCONTACT H ON H.ID_ADDRESS = G.ID_ADDRESS AND H' +
        '.ID_SUPPLIER = G.ID_SUPPLIER'
      'WHERE E.ID_SUPPLIER = :ID_SUPPLIER')
    Left = 636
    Top = 384
    ParamData = <
      item
        Name = 'ID_SUPPLIER'
        DataType = ftInteger
        ADDataType = dtInt32
        ParamType = ptInput
      end>
    object sqlEmailSELECT: TStringField
      FieldKind = fkCalculated
      FieldName = 'SELECT'
      Size = 1
      Calculated = True
    end
    object sqlEmailTypeAddress: TStringField
      FieldName = 'TypeAddress'
      Origin = 'TypeAddress'
      ReadOnly = True
      Size = 26
    end
    object sqlEmailADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Origin = 'ADDRESS1'
      Size = 400
    end
    object sqlEmailZIPCODE: TStringField
      FieldName = 'ZIPCODE'
      Origin = 'ZIPCODE'
      Size = 10
    end
    object sqlEmailCITY: TStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      Size = 50
    end
    object sqlEmailCOUNTY: TStringField
      FieldName = 'COUNTY'
      Origin = 'COUNTY'
      Size = 80
    end
    object sqlEmailSTATEE: TStringField
      FieldName = 'STATEE'
      Origin = 'STATEE'
      Size = 2
    end
    object sqlEmailNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 60
    end
    object sqlEmailPOSITION: TStringField
      FieldName = 'POSITION'
      Origin = '[POSITION]'
      Size = 50
    end
    object sqlEmailEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object sqlEmailPHONE1: TStringField
      FieldName = 'PHONE1'
      Origin = 'PHONE1'
      Size = 15
    end
    object sqlEmailPHONE2: TStringField
      FieldName = 'PHONE2'
      Origin = 'PHONE2'
      Size = 15
    end
    object sqlEmailID_CONTACT: TIntegerField
      FieldName = 'ID_CONTACT'
      Origin = 'ID_CONTACT'
    end
  end
  object dsEmail: TDataSource
    DataSet = dxMemDataEmail
    Left = 684
    Top = 152
  end
  object dxMemDataEmail: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterPost = dxMemDataEmailAfterPost
    Left = 532
    Top = 152
    object dxMemDataEmailSELECT: TStringField
      FieldName = 'SELECT'
      Size = 1
    end
    object dxMemDataEmailADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Size = 50
    end
    object dxMemDataEmailZIPODE: TStringField
      FieldName = 'ZIPODE'
      Size = 10
    end
    object dxMemDataEmailCITY: TStringField
      FieldName = 'CITY'
      Size = 50
    end
    object dxMemDataEmailCOUNTY: TStringField
      FieldName = 'COUNTY'
      Size = 80
    end
    object dxMemDataEmailSTATE: TStringField
      FieldName = 'STATE'
      Size = 2
    end
    object dxMemDataEmailNAME: TStringField
      FieldName = 'NAME'
      Size = 60
    end
    object dxMemDataEmailPOSITION: TStringField
      FieldName = 'POSITION'
      Size = 50
    end
    object dxMemDataEmailEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object dxMemDataEmailPHONE1: TStringField
      FieldName = 'PHONE1'
      Size = 15
    end
    object dxMemDataEmailPHONE2: TStringField
      FieldName = 'PHONE2'
      Size = 15
    end
    object dxMemDataEmailTYPEOFADDRESS: TStringField
      FieldName = 'TYPEOFADDRESS'
      Size = 100
    end
    object dxMemDataEmailGROUP: TIntegerField
      FieldName = 'GROUP'
    end
    object dxMemDataEmailID_CONTACT: TIntegerField
      FieldName = 'ID_CONTACT'
    end
  end
  object sqlGrid2: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT '
      'CONVERT(VARCHAR, A.REQ_DATE, 103) AS REQ_DATE,'
      'E.NAMEBUSINESS AS MANUFACTORY,'
      'F.STYLE,'
      
        '(F.PRODUCT_STYLE + '#39' '#39' +  F.PRODUCT_STYLE_NAME + '#39' '#39' +  F.COLOR ' +
        ' + '#39' '#39' +  F.COLOR_NAME ) AS PRODUCT,'
      'F.SKU,'
      'B.COMPANYNAME,'
      'B.ADDRESS1 AS COMPANY_ADDRESS,'
      'B.ST AS COMPANY_ST,'
      'B.CITY AS COMPANY_CITY,'
      'B.ZIPCODE AS COMPANY_ZIPCODE,'
      'B.PHONENUMBER AS COMPANY_PHONENUMBER,'
      'B.COUNTY AS COMPANY_COUNTY,'
      'C.NAME,'
      'SUM(A.COUNTNEED) AS COUNTNEED,'
      'A.ESTIMATEDCOST,'
      'A.DATE_ORDERED,'
      'A.GROUPNUMBER,'
      'A.SELECTED,'
      'A.ID_SUPPLIER,'
      'G.ADDRESS1, '
      'G.ZIPCODE, '
      'G.CITY, '
      'G.COUNTY,'
      'G.STATEE,'
      'H.NAME,'
      'H.POSITION,'
      'H.EMAIL,'
      'H.PHONE1,'
      'H.PHONE2,'
      'CASE WHEN A.TABLENAME = '#39'TBORDER_ITEM'#39' THEN '#39'ORDER'#39' END SOURCE'
      'FROM [DBO].[TBREQUESTORDER] A'
      'INNER JOIN TBCOMPANY B ON A.ID_COMPANY = B.ID_COMPANY'
      'INNER JOIN TBCONTRACTORS C ON C.ID_CONTRACTORS = A.ID_CONTRACTOR'
      'INNER JOIN TBSUPPLIER E ON E.ID_SUPPLIER = A.ID_SUPPLIER'
      'INNER JOIN TBPRODUCT F ON F.ID_PRODUCT = A.ID_PRODUCT'
      'LEFT OUTER JOIN TBADDRESS G ON G.ID_SUPPLIER = E.ID_SUPPLIER'
      
        'LEFT OUTER JOIN TBCONTACT H ON H.ID_ADDRESS = G.ID_ADDRESS AND H' +
        '.ID_SUPPLIER = G.ID_SUPPLIER'
      'WHERE A.GROUPNUMBER = :GROUPNUMBER AND H.SELECTED = '#39'Y'#39
      'GROUP BY'
      'CONVERT(VARCHAR, A.REQ_DATE, 103),'
      'E.NAMEBUSINESS,'
      'F.STYLE,'
      'F.PRODUCT_STYLE,'
      'F.PRODUCT_STYLE_NAME,'
      'F.COLOR,'
      'F.COLOR_NAME,'
      'F.SKU,'
      'B.COMPANYNAME,'
      'B.ADDRESS1,'
      'B.ST,'
      'B.CITY,'
      'B.ZIPCODE,'
      'B.PHONENUMBER,'
      'B.COUNTY,'
      'C.NAME,'
      'A.ESTIMATEDCOST,'
      'A.DATE_ORDERED,'
      'A.GROUPNUMBER,'
      'A.SELECTED,'
      'A.ID_SUPPLIER,'
      'G.ADDRESS1, '
      'G.ZIPCODE, '
      'G.CITY, '
      'G.COUNTY,'
      'G.STATEE,'
      'H.NAME,'
      'H.POSITION,'
      'H.EMAIL,'
      'H.PHONE1,'
      'H.PHONE2,'
      'A.TABLENAME')
    Left = 427
    Top = 380
    ParamData = <
      item
        Name = 'GROUPNUMBER'
        DataType = ftInteger
        ADDataType = dtInt32
        ParamType = ptInput
      end>
  end
  object dsGrid2: TDataSource
    DataSet = sqlGrid2
    Left = 363
    Top = 393
  end
  object sqlAux: TFDQuery
    Connection = DBDados.FDConnection
    Left = 524
    Top = 380
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'PDF Document'
    Left = 939
    Top = 329
  end
end
