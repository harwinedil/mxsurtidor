inherited frmManguera: TfrmManguera
  Left = 311
  Top = 169
  Caption = 'frmManguera'
  ClientHeight = 459
  ClientWidth = 714
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited StatusBar1: TStatusBar
    Top = 440
    Width = 714
  end
  inherited Panel1: TPanel
    Top = 409
    Width = 714
  end
  inherited ToolBar1: TToolBar
    Width = 714
    inherited bSave: TToolButton
      Visible = False
    end
    inherited bSyncro: TToolButton
      Enabled = False
      Visible = True
      OnClick = bSyncroClick
    end
  end
  inherited lCaption: TFlatTitlebar
    Width = 714
    Caption = 'capfrmManguera'
  end
  inherited msg: TFlatTitlebar
    Top = 390
    Width = 714
  end
  object suiDBGrid1: TsuiDBGrid [5]
    Left = 0
    Top = 74
    Width = 714
    Height = 316
    Align = alClient
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = False
    DataSource = dsNav
    FixedColor = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UIStyle = DeepBlue
    BorderColor = clBtnFace
    FocusedColor = clActiveCaption
    SelectedColor = clYellow
    FontColor = clBlack
    TitleFontColor = clWhite
    FixedBGColor = 12615680
    BGColor = clWhite
  end
  inherited cds: TAstaClientDataSet
    Left = 355
    Top = 5
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  inherited dsNav: TDataSource
    Left = 390
    Top = 5
  end
  object qPetrobox: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Constraints = <>
    EditMode = 'Read Only'
    AstaClientSocket = socketPetrobox
    SQL.Strings = (
      
        'SELECT a.IDBOMBA as ID,  s.descripcion||'#39'-'#39'||p.DESCRIPCION as de' +
        'scripcion,'
      'a.MECANICOVOLUMENDELTA as mecanico, a.ALIAS_MANGUERA,'
      '        t.IDPRODUCTO as producto_id,a.IDSURTIDOR as bomba_id'
      'FROM BOMBAS a join surtidores s on a.IDSURTIDOR=s.IDSURTIDOR'
      '                join TANQUES t on a.IDTANQUE=t.IDTANQUE'
      '                join PRODUCTOS p on t.IDPRODUCTO=p.IDPRODUCTO'
      'where s.PETROBOX='#39'Si'#39
      ''
      '')
    Params = <>
    Left = 315
    Top = 5
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object socketPetrobox: TAstaClientSocket
    Active = False
    Address = '127.0.0.1'
    ClientType = ctNonBlocking
    Port = 7001
    OnConnect = socketPetroboxConnect
    LoginMaxAttempts = 3
    WebServer.WinInetToStatusBar = True
    WebServer.UseSSL = False
    WebServer.SSLOptions = []
    WebServer.AstaHttpDll = 'scripts/Astahttp.dll'
    CacheMetaDataOptions = smNoCache
    SQLTransactionStart = 'BEGIN TRANSACTION'
    SQLTransactionEnd = 'COMMIT'
    CursorOnQueries = cqSQLHourGlass
    ConnectAction = caNone
    AutoLoginDlg = ltLoginNoDlg
    ApplicationVersion = '1.0.1'
    ApplicationName = 'MXSurtidor'
    Compression = acAstaZLib
    SQLErrorHandling = [seToStatusBar, seAsExceptions]
    ProgressBar = True
    SQLDialect = sqlSQLAnywhere
    Left = 441
    Top = 8
  end
  object qTran: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Constraints = <>
    EditMode = 'Read Only'
    AstaClientSocket = frmMAIN.socketMX
    Params = <>
    Left = 510
    Top = 5
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
end
