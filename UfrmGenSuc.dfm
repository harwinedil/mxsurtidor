inherited frmgenSuc: TfrmgenSuc
  Left = 509
  Top = 55
  Width = 556
  Height = 471
  Caption = 'MODULO GENERAL - SUCURSALES'
  OldCreateOrder = True
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 14
  object lCode: TLabel [0]
    Left = 109
    Top = 92
    Width = 30
    Height = 14
    Alignment = taRightJustify
    Caption = 'lCode'
  end
  object lSuc: TLabel [1]
    Left = 117
    Top = 122
    Width = 22
    Height = 14
    Alignment = taRightJustify
    Caption = 'lSuc'
  end
  object lObs: TLabel [2]
    Left = 116
    Top = 270
    Width = 23
    Height = 14
    Alignment = taRightJustify
    Caption = 'lObs'
  end
  object Label20: TLabel [3]
    Left = 180
    Top = 92
    Width = 21
    Height = 14
    Caption = '(*) '
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label21: TLabel [4]
    Left = 236
    Top = 242
    Width = 21
    Height = 14
    Caption = '(*) '
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label22: TLabel [5]
    Left = 492
    Top = 120
    Width = 21
    Height = 14
    Caption = '(*) '
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lDirection: TLabel [6]
    Left = 89
    Top = 152
    Width = 50
    Height = 14
    Alignment = taRightJustify
    Caption = 'lDirection'
  end
  object lphone: TLabel [7]
    Left = 102
    Top = 182
    Width = 37
    Height = 14
    Alignment = taRightJustify
    Caption = 'lPhone'
  end
  object lEmail: TLabel [8]
    Left = 110
    Top = 212
    Width = 29
    Height = 14
    Alignment = taRightJustify
    Caption = 'lEmail'
  end
  object lContact: TLabel [9]
    Left = 94
    Top = 242
    Width = 45
    Height = 14
    Alignment = taRightJustify
    Caption = 'lContact'
  end
  object lMastercontact: TLabel [10]
    Tag = 1
    Left = 261
    Top = 242
    Width = 4
    Height = 14
    Caption = '-'
  end
  object lPetrobox: TLabel [11]
    Left = 87
    Top = 297
    Width = 52
    Height = 14
    Alignment = taRightJustify
    Caption = 'lPetrobox'
  end
  object lAlias: TLabel [12]
    Left = 321
    Top = 297
    Width = 25
    Height = 14
    Alignment = taRightJustify
    Caption = 'lAlias'
  end
  inherited StatusBar1: TStatusBar
    Top = 414
    Width = 540
  end
  inherited Panel1: TPanel
    Top = 366
    Width = 540
    TabOrder = 10
    object lRequired: TLabel [0]
      Left = 422
      Top = 0
      Width = 118
      Height = 48
      Align = alRight
      Caption = '(*) Campo requerido '
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    inherited nav: TsuiDBNavigator
      UIStyle = FromThemeFile
      Hints.Strings = ()
      OnClick = suiDBNavigator1Click
    end
  end
  inherited ToolBar1: TToolBar
    Width = 540
    TabOrder = 8
  end
  inherited lCaption: TFlatTitlebar
    Width = 540
    Caption = 'capfrmSucursal'
  end
  inherited msg: TFlatTitlebar
    Top = 347
    Width = 540
  end
  object cDESCRIPTION: TFlatEdit [18]
    Tag = 1
    Left = 143
    Top = 117
    Width = 346
    Height = 22
    ColorBorder = clBlack
    ColorFlat = clBtnFace
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 64
    ParentFont = False
    TabOrder = 1
    Text = 'CDESCRIPTION'
  end
  object cSUB: TFlatEdit [19]
    Tag = 1
    Left = 143
    Top = 89
    Width = 31
    Height = 22
    ColorBorder = clBlack
    ColorFlat = clBtnFace
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 2
    ParentFont = False
    TabOrder = 0
    Text = '0'
    OnExit = cSUBExit
    OnKeyPress = cSUBKeyPress
  end
  object cOBS: TFlatEdit [20]
    Left = 143
    Top = 267
    Width = 341
    Height = 20
    ColorBorder = clBlack
    ColorFlat = clBtnFace
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 128
    ParentFont = False
    TabOrder = 5
    Text = 'CDESCRIPTION'
  end
  object cADDRESS: TFlatEdit [21]
    Left = 143
    Top = 147
    Width = 346
    Height = 20
    ColorBorder = clBlack
    ColorFlat = clBtnFace
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 128
    ParentFont = False
    TabOrder = 2
    Text = 'CDESCRIPTION'
  end
  object cPHONE: TFlatEdit [22]
    Left = 143
    Top = 177
    Width = 346
    Height = 20
    ColorBorder = clBlack
    ColorFlat = clBtnFace
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 64
    ParentFont = False
    TabOrder = 3
    Text = 'CDESCRIPTION'
  end
  object cEMAIL: TFlatEdit [23]
    Left = 143
    Top = 207
    Width = 346
    Height = 20
    ColorBorder = clBlack
    ColorFlat = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 64
    ParentFont = False
    TabOrder = 4
    Text = 'CDESCRIPTION'
  end
  object cRESPONSABLEID: TFlatEdit [24]
    Tag = 1
    Left = 143
    Top = 239
    Width = 86
    Height = 20
    ColorBorder = clBlack
    ColorFlat = clBtnFace
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 16
    ParentFont = False
    TabOrder = 13
    Text = '4698209016SC9999'
    OnExit = cRESPONSABLEIDExit
  end
  object cDATA0: TFlatEdit [25]
    Tag = 1
    Left = 143
    Top = 294
    Width = 170
    Height = 20
    ColorBorder = clBlack
    ColorFlat = clBtnFace
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 22
    ParentFont = False
    TabOrder = 6
    Text = '4698209016SC9999'
    OnExit = cRESPONSABLEIDExit
  end
  object cDATA1: TFlatEdit [26]
    Tag = 1
    Left = 355
    Top = 294
    Width = 129
    Height = 20
    ColorBorder = clBlack
    ColorFlat = clBtnFace
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 12
    ParentFont = False
    TabOrder = 7
    Text = '4698209016SC9999'
    OnExit = cRESPONSABLEIDExit
  end
  inherited itool: TImageList
    Left = 390
    Top = 5
  end
  inherited cds: TAstaClientDataSet
    SQL.Strings = (
      'select * from sysUser')
    Left = 440
    Top = 77
    FastFields = (
      'ID,3,0'
      'SUB,3,0'
      'LOGIN,1,32'
      'PASS,3,0'
      'COMPANYID,3,0'
      'CONTACTID,1,16'
      'DATA0,1,16'
      'LOG,1,1'
      'CREATED,11,0'
      'UCREATED,3,0'
      'UPDATED,11,0'
      'UUPDATED,3,0'
      'CONCURRENCY,3,0'
      'STATUS,1,1')
    FMultiTable = ()
    UpdateMethod = umManual
  end
  inherited dsNav: TDataSource
    Left = 473
    Top = 77
  end
  object qReport: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Constraints = <>
    EditMode = 'Read Only'
    AstaClientSocket = frmMAIN.socketMX
    SQL.Strings = (
      'select c.name, u.login, u.contactid, u.created, u.status'
      'from sysuser u join syscompany c on u.companyid=c.id')
    Params = <>
    Left = 402
    Top = 82
    FastFields = (
      'NAME,1,128'
      'LOGIN,1,32'
      'CONTACTID,1,16'
      'CREATED,11,0'
      'STATUS,1,1')
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object oImage: TOpenPictureDialog
    Filter = 'Mapa de bits|*.bmp'
    Left = 650
    Top = 9
  end
end
