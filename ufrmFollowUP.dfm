object frmFollowUP: TfrmFollowUP
  Left = 0
  Top = 0
  Caption = 'FollowUP'
  ClientHeight = 375
  ClientWidth = 911
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 911
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1043
    object Label50: TLabel
      Left = 24
      Top = 16
      Width = 9
      Height = 13
      Caption = '#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label51: TLabel
      Left = 120
      Top = 16
      Width = 55
      Height = 13
      Caption = 'Customer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCustomer: TLabel
      Left = 120
      Top = 32
      Width = 5
      Height = 13
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblOrder: TLabel
      Left = 24
      Top = 32
      Width = 5
      Height = 13
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 911
    Height = 269
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1043
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 909
      Height = 267
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 1041
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Visible = True
        DataController.DataSource = dsFollowup
        DataController.DetailKeyFieldNames = 'ID_SERVICE_FOLLOWUP'
        DataController.KeyFieldNames = 'ID_FOLLOWUP'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1ID_FOLLOWUP: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'ID_FOLLOWUP'
        end
        object cxGrid1DBTableView1COMMENTS: TcxGridDBColumn
          Caption = 'Comments'
          DataBinding.FieldName = 'COMMENTS'
          Width = 605
        end
        object cxGrid1DBTableView1USERNAME: TcxGridDBColumn
          Caption = 'Created By'
          DataBinding.FieldName = 'USERNAME'
          Width = 100
        end
        object cxGrid1DBTableView1ADD_DATE: TcxGridDBColumn
          Caption = 'Date'
          DataBinding.FieldName = 'ADD_DATE'
          Width = 100
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 334
    Width = 911
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitWidth = 1043
    object ButCancelar: TcxButton
      Left = 411
      Top = 6
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
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = ButCancelarClick
    end
  end
  object sqlFollowup: TFDQuery
    AfterEdit = sqlFollowupAfterEdit
    BeforePost = sqlFollowupBeforePost
    Connection = DBDados.FDConnection
    SQL.Strings = (
      
        'SELECT F.*, U.LASTNAME + '#39','#39' + U.FIRST_NAME AS USERNAME FROM TBF' +
        'OLLOWUP F'
      'LEFT OUTER JOIN TBUSER U ON U.ID_USER = F.ID_USER'
      'WHERE ID_PROCESS = :ID_PROCESS AND TABLENAME = :TABLENAME')
    Left = 264
    Top = 113
    ParamData = <
      item
        Name = 'ID_PROCESS'
        DataType = ftInteger
        ADDataType = dtInt32
        ParamType = ptInput
      end
      item
        Name = 'TABLENAME'
        DataType = ftString
        ADDataType = dtAnsiString
        ParamType = ptInput
      end>
    object sqlFollowupID_FOLLOWUP: TFDAutoIncField
      FieldName = 'ID_FOLLOWUP'
      Origin = 'ID_FOLLOWUP'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlFollowupTABLENAME: TStringField
      FieldName = 'TABLENAME'
      Origin = 'TABLENAME'
      Required = True
    end
    object sqlFollowupID_PROCESS: TIntegerField
      FieldName = 'ID_PROCESS'
      Origin = 'ID_PROCESS'
      Required = True
    end
    object sqlFollowupCOMMENTS: TMemoField
      FieldName = 'COMMENTS'
      Origin = 'COMMENTS'
      BlobType = ftMemo
      Size = 2147483647
    end
    object sqlFollowupADD_DATE: TSQLTimeStampField
      FieldName = 'ADD_DATE'
      Origin = 'ADD_DATE'
    end
    object sqlFollowupUPD_DATE: TSQLTimeStampField
      FieldName = 'UPD_DATE'
      Origin = 'UPD_DATE'
    end
    object sqlFollowupID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
    end
    object sqlFollowupUSERNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USERNAME'
      Origin = 'USERNAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 41
    end
  end
  object dsFollowup: TDataSource
    DataSet = sqlFollowup
    Left = 264
    Top = 185
  end
end
