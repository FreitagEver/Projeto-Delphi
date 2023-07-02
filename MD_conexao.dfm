object DM_conexao: TDM_conexao
  Height = 480
  Width = 640
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\DADOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 56
  end
  object Qry_pessoa: TFDQuery
    Active = True
    Connection = FDConnection
    Transaction = FDTransaction
    SQL.Strings = (
      'select * from pessoa order by 1')
    Left = 152
    Top = 57
    object Qry_pessoaCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'COD_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_pessoaNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Origin = 'NOME_PESSOA'
      Required = True
      Size = 60
    end
    object Qry_pessoaCPF_CNPJ_PESSOA: TStringField
      FieldName = 'CPF_CNPJ_PESSOA'
      Origin = 'CPF_CNPJ_PESSOA'
      Size = 19
    end
    object Qry_pessoaDAT_PESSOA: TDateField
      FieldName = 'DAT_PESSOA'
      Origin = 'DAT_PESSOA'
    end
    object Qry_pessoaEND_PESSOA: TStringField
      FieldName = 'END_PESSOA'
      Origin = 'END_PESSOA'
      Size = 80
    end
    object Qry_pessoaBAIRRO_PESSOA: TStringField
      FieldName = 'BAIRRO_PESSOA'
      Origin = 'BAIRRO_PESSOA'
      Size = 10
    end
    object Qry_pessoaCID_PESSOA: TStringField
      FieldName = 'CID_PESSOA'
      Origin = 'CID_PESSOA'
      Size = 15
    end
    object Qry_pessoaEST_PESSOA: TStringField
      FieldName = 'EST_PESSOA'
      Origin = 'EST_PESSOA'
      Size = 15
    end
    object Qry_pessoaCEP_PESSOA: TStringField
      FieldName = 'CEP_PESSOA'
      Origin = 'CEP_PESSOA'
      Size = 12
    end
    object Qry_pessoaTEL_PESSOA: TStringField
      FieldName = 'TEL_PESSOA'
      Origin = 'TEL_PESSOA'
      Size = 17
    end
    object Qry_pessoaEMAIL_PESSOA: TStringField
      FieldName = 'EMAIL_PESSOA'
      Origin = 'EMAIL_PESSOA'
      Size = 60
    end
    object Qry_pessoaOBS_PESSOA: TStringField
      FieldName = 'OBS_PESSOA'
      Origin = 'OBS_PESSOA'
      Size = 200
    end
    object Qry_pessoaSIT_PESSOA: TIntegerField
      FieldName = 'SIT_PESSOA'
      Origin = 'SIT_PESSOA'
    end
  end
  object Ds_pessoa: TDataSource
    DataSet = Qry_pessoa
    Left = 240
    Top = 56
  end
  object FDTransaction: TFDTransaction
    Connection = FDConnection
    Left = 56
    Top = 128
  end
  object QRY_codigo: TFDQuery
    Connection = FDConnection
    Transaction = FDTransaction
    Left = 160
    Top = 136
  end
  object QRY_validador: TFDQuery
    Connection = FDConnection
    Left = 160
    Top = 208
  end
  object Ds_relatorio: TDataSource
    DataSet = QRY_relatorio
    Left = 144
    Top = 352
  end
  object ppDB_relatorio: TppDBPipeline
    DataSource = Ds_relatorio
    UserName = 'DB_relatorio'
    Left = 240
    Top = 352
    object ppDB_relatorioppField1: TppField
      FieldAlias = 'COD_PESSOA'
      FieldName = 'COD_PESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDB_relatorioppField2: TppField
      FieldAlias = 'NOME_PESSOA'
      FieldName = 'NOME_PESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDB_relatorioppField3: TppField
      FieldAlias = 'CPF_CNPJ_PESSOA'
      FieldName = 'CPF_CNPJ_PESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDB_relatorioppField4: TppField
      FieldAlias = 'DAT_PESSOA'
      FieldName = 'DAT_PESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDB_relatorioppField5: TppField
      FieldAlias = 'END_PESSOA'
      FieldName = 'END_PESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDB_relatorioppField6: TppField
      FieldAlias = 'BAIRRO_PESSOA'
      FieldName = 'BAIRRO_PESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDB_relatorioppField7: TppField
      FieldAlias = 'CID_PESSOA'
      FieldName = 'CID_PESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDB_relatorioppField8: TppField
      FieldAlias = 'EST_PESSOA'
      FieldName = 'EST_PESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDB_relatorioppField9: TppField
      FieldAlias = 'CEP_PESSOA'
      FieldName = 'CEP_PESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDB_relatorioppField10: TppField
      FieldAlias = 'TEL_PESSOA'
      FieldName = 'TEL_PESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDB_relatorioppField11: TppField
      FieldAlias = 'EMAIL_PESSOA'
      FieldName = 'EMAIL_PESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDB_relatorioppField12: TppField
      FieldAlias = 'OBS_PESSOA'
      FieldName = 'OBS_PESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDB_relatorioppField13: TppField
      FieldAlias = 'SIT_PESSOA'
      FieldName = 'SIT_PESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
  end
  object QRY_relatorio: TFDQuery
    ConstraintsEnabled = True
    Connection = FDConnection
    SQL.Strings = (
      '')
    Left = 64
    Top = 352
    object QRY_relatorioCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = 'COD_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_relatorioNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Origin = 'NOME_PESSOA'
      Required = True
      Size = 60
    end
    object QRY_relatorioCPF_CNPJ_PESSOA: TStringField
      FieldName = 'CPF_CNPJ_PESSOA'
      Origin = 'CPF_CNPJ_PESSOA'
      Size = 19
    end
    object QRY_relatorioDAT_PESSOA: TDateField
      FieldName = 'DAT_PESSOA'
      Origin = 'DAT_PESSOA'
    end
    object QRY_relatorioEND_PESSOA: TStringField
      FieldName = 'END_PESSOA'
      Origin = 'END_PESSOA'
      Size = 80
    end
    object QRY_relatorioBAIRRO_PESSOA: TStringField
      FieldName = 'BAIRRO_PESSOA'
      Origin = 'BAIRRO_PESSOA'
      Size = 10
    end
    object QRY_relatorioCID_PESSOA: TStringField
      FieldName = 'CID_PESSOA'
      Origin = 'CID_PESSOA'
      Size = 25
    end
    object QRY_relatorioEST_PESSOA: TStringField
      FieldName = 'EST_PESSOA'
      Origin = 'EST_PESSOA'
      Size = 15
    end
    object QRY_relatorioCEP_PESSOA: TStringField
      FieldName = 'CEP_PESSOA'
      Origin = 'CEP_PESSOA'
      Size = 12
    end
    object QRY_relatorioTEL_PESSOA: TStringField
      FieldName = 'TEL_PESSOA'
      Origin = 'TEL_PESSOA'
      Size = 17
    end
    object QRY_relatorioEMAIL_PESSOA: TStringField
      FieldName = 'EMAIL_PESSOA'
      Origin = 'EMAIL_PESSOA'
      Size = 60
    end
    object QRY_relatorioOBS_PESSOA: TStringField
      FieldName = 'OBS_PESSOA'
      Origin = 'OBS_PESSOA'
      Size = 200
    end
    object QRY_relatorioSIT_PESSOA: TIntegerField
      FieldName = 'SIT_PESSOA'
      Origin = 'SIT_PESSOA'
    end
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = ppDB_relatorio
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Users\Everton\Documents\Embarcadero\ProjetoMicrosys\relatorio' +
      '.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 328
    Top = 352
    Version = '22.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB_relatorio'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25665
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'RELAT'#211'RIO DE CADASTROS ATIVOS/INATIVOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 18
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7673
        mmLeft = 34396
        mmTop = 2381
        mmWidth = 119063
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 4763
        mmTop = 13229
        mmWidth = 187855
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 2375
        mmTop = 18521
        mmWidth = 193420
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 142204
        mmTop = 19313
        mmWidth = 24168
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Nascimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 120834
        mmTop = 19315
        mmWidth = 20028
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'CPF/CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 90433
        mmTop = 19313
        mmWidth = 30245
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 43201
        mmTop = 19313
        mmWidth = 45759
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 3850
        mmTop = 19313
        mmWidth = 37835
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 167379
        mmTop = 19315
        mmWidth = 27151
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'NOME_PESSOA'
        DataPipeline = ppDB_relatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_relatorio'
        mmHeight = 3969
        mmLeft = 3850
        mmTop = 1323
        mmWidth = 37835
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'END_PESSOA'
        DataPipeline = ppDB_relatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_relatorio'
        mmHeight = 3969
        mmLeft = 43201
        mmTop = 1323
        mmWidth = 45759
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'CPF_CNPJ_PESSOA'
        DataPipeline = ppDB_relatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_relatorio'
        mmHeight = 3969
        mmLeft = 90433
        mmTop = 1323
        mmWidth = 30245
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'DAT_PESSOA'
        DataPipeline = ppDB_relatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_relatorio'
        mmHeight = 3969
        mmLeft = 120839
        mmTop = 1323
        mmWidth = 20552
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'TEL_PESSOA'
        DataPipeline = ppDB_relatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_relatorio'
        mmHeight = 3969
        mmLeft = 142204
        mmTop = 1323
        mmWidth = 24168
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1321
        mmLeft = 3968
        mmTop = 6597
        mmWidth = 189975
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'CID_PESSOA'
        DataPipeline = ppDB_relatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB_relatorio'
        mmHeight = 3969
        mmLeft = 167375
        mmTop = 1323
        mmWidth = 27143
        BandType = 4
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
