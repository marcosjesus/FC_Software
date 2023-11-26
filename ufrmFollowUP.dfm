object frmFollowUP: TfrmFollowUP
  Left = 0
  Top = 0
  Caption = 'Service FollowUP'
  ClientHeight = 375
  ClientWidth = 1043
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
    Width = 1043
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 80
    ExplicitTop = -5
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1043
    Height = 293
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 184
    ExplicitTop = 144
    ExplicitWidth = 185
    ExplicitHeight = 41
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1041
      Height = 291
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 72
      ExplicitTop = 24
      ExplicitWidth = 250
      ExplicitHeight = 200
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsFollowup
        DataController.KeyFieldNames = 'ID_SERVICE_FOLLOWUP'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1ID_SERVICE_FOLLOWUP: TcxGridDBColumn
          Caption = 'Follow UP ID'
          DataBinding.FieldName = 'ID_SERVICE_FOLLOWUP'
          Width = 92
        end
        object cxGrid1DBTableView1COMMENTS: TcxGridDBColumn
          Caption = 'Comments'
          DataBinding.FieldName = 'COMMENTS'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.VisibleLineCount = 3
          Width = 600
        end
        object cxGrid1DBTableView1ADD_DATE: TcxGridDBColumn
          Caption = 'Date'
          DataBinding.FieldName = 'ADD_DATE'
        end
        object cxGrid1DBTableView1ID_USER: TcxGridDBColumn
          Caption = 'Create By'
          DataBinding.FieldName = 'ID_USER'
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
    Width = 1043
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 240
    ExplicitTop = 200
    ExplicitWidth = 185
  end
  object sqlFollowup: TFDQuery
    Connection = DBDados.FDConnection
    SQL.Strings = (
      'SELECT * FROM TBSERVICE_FOLLOWUP'
      'WHERE ID_SERVICE = :ID_SERVICE')
    Left = 264
    Top = 113
    ParamData = <
      item
        Name = 'ID_SERVICE'
        DataType = ftInteger
        ADDataType = dtInt32
        ParamType = ptInput
      end>
    object sqlFollowupID_SERVICE_FOLLOWUP: TFDAutoIncField
      FieldName = 'ID_SERVICE_FOLLOWUP'
      Origin = 'ID_SERVICE_FOLLOWUP'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sqlFollowupID_SERVICE: TIntegerField
      FieldName = 'ID_SERVICE'
      Origin = 'ID_SERVICE'
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
  end
  object dsFollowup: TDataSource
    DataSet = sqlFollowup
    Left = 264
    Top = 185
  end
end
