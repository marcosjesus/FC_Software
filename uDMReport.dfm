object DMReport: TDMReport
  OldCreateOrder = False
  Height = 422
  Width = 620
  object RLPreviewSetup1: TRLPreviewSetup
    Tag = -1
    OnSend = RLPreviewSetup1Send
    Left = 250
    Top = 244
  end
  object sqlAux: TFDQuery
    Connection = DBDados.FDConnection
    Left = 384
    Top = 72
  end
end
