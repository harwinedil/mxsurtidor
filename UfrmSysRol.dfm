inherited frmSysRol: TfrmSysRol
  Left = 384
  Top = 94
  Width = 600
  Height = 508
  Caption = 'MODULO DE SEGURIDAD - ROLES'
  OldCreateOrder = True
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel [0]
    Left = 94
    Top = 98
    Width = 22
    Height = 14
    Caption = 'LRol'
  end
  object Label6: TLabel [1]
    Left = 463
    Top = 98
    Width = 17
    Height = 14
    Caption = '(*)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [2]
    Left = 69
    Top = 123
    Width = 51
    Height = 14
    Caption = 'Privilegios'
  end
  inherited StatusBar1: TStatusBar
    Top = 451
    Width = 584
  end
  inherited Panel1: TPanel
    Top = 403
    Width = 584
    TabOrder = 3
    object Label8: TLabel [0]
      Left = 534
      Top = 0
      Width = 50
      Height = 48
      Align = alRight
      Caption = 'lRequired'
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
    Width = 584
    TabOrder = 1
  end
  inherited lCaption: TFlatTitlebar
    Width = 584
    Caption = 'capfrmRol'
  end
  inherited msg: TFlatTitlebar
    Top = 384
    Width = 584
  end
  object cDescription: TFlatEdit [8]
    Tag = 1
    Left = 130
    Top = 95
    Width = 331
    Height = 20
    ColorBorder = clBlack
    ColorFlat = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 32
    ParentFont = False
    TabOrder = 0
    Text = 'cDescription'
  end
  object cpriv: TJvCheckTreeView [9]
    Left = 130
    Top = 120
    Width = 331
    Height = 256
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = frmMAIN.image16
    Indent = 19
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
    LineColor = 13158600
    Checkboxes = True
    CheckBoxOptions.Style = cbsJVCL
    CheckBoxOptions.CascadeLevels = 3
  end
  inherited itool: TImageList
    Left = 390
    Top = 5
  end
  inherited cds: TAstaClientDataSet
    SQL.Strings = (
      'select * from sysUser')
    Left = 18
    Top = 83
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
    Left = 15
    Top = 115
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
    Left = 525
    Top = 75
    FastFields = (
      'NAME,1,128'
      'LOGIN,1,32'
      'CONTACTID,1,16'
      'CREATED,11,0'
      'STATUS,1,1')
    FMultiTable = ()
    UpdateMethod = umManual
  end
  object qMarca: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Constraints = <>
    EditMode = 'Read Only'
    AstaClientSocket = frmMAIN.socketMX
    SQL.Strings = (
      'select * from sysUser')
    Params = <>
    Left = 18
    Top = 147
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
  object qMenu: TAstaClientDataSet
    StreamOptions = [ssIndexes, ssAggregates]
    Indexes = <>
    Aggregates = <>
    Constraints = <>
    EditMode = 'Read Only'
    AstaClientSocket = frmMAIN.socketMX
    SQL.Strings = (
      'select distinct o.*'
      'from   security_Option o '
      'where  o.App_id  in (0,:app_id)'
      'and    o.status='#39'1'#39
      'order by parent,item asc')
    Params = <
      item
        Name = 'app_id'
        ParamType = ptInput
        DataType = ftUnknown
        IsNull = True
        Size = 0
        Value = Null
      end>
    Left = 51
    Top = 202
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
end
