inherited frmIntroCotizacion: TfrmIntroCotizacion
  Left = 410
  Top = 246
  Caption = 'frmIntroCotizacion'
  ClientHeight = 278
  ClientWidth = 436
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel [0]
    Left = 42
    Top = 95
    Width = 60
    Height = 14
    Alignment = taRightJustify
    Caption = 'lDate'
  end
  object Label2: TLabel [1]
    Left = 42
    Top = 125
    Width = 60
    Height = 14
    Alignment = taRightJustify
    Caption = 'lMN'
  end
  object Label3: TLabel [2]
    Left = 42
    Top = 152
    Width = 60
    Height = 14
    Alignment = taRightJustify
    Caption = 'lMIN'
  end
  object Label4: TLabel [3]
    Left = 42
    Top = 172
    Width = 60
    Height = 14
    Alignment = taRightJustify
    Caption = 'lMAX'
  end
  object Label5: TLabel [4]
    Left = 212
    Top = 125
    Width = 24
    Height = 14
    Alignment = taRightJustify
    Caption = 'lUFV'
  end
  inherited StatusBar1: TStatusBar
    Top = 259
    Width = 436
  end
  inherited Panel1: TPanel
    Top = 228
    Width = 436
    TabOrder = 7
  end
  inherited ToolBar1: TToolBar
    Width = 436
    TabOrder = 5
  end
  inherited lCaption: TFlatTitlebar
    Width = 436
    Caption = 'capfrmIntroCotizacion'
  end
  inherited msg: TFlatTitlebar
    Top = 209
    Width = 436
  end
  object cMN: TCurrencyEdit [10]
    Left = 112
    Top = 120
    Width = 89
    Height = 21
    AutoSize = False
    Color = clBtnFace
    Ctl3D = False
    DecimalPlaces = 4
    DisplayFormat = ',0.0000;-,0.0000'
    ParentCtl3D = False
    TabOrder = 1
    OnEnter = colorON
    OnExit = colorOFF
  end
  object cMNMIN: TCurrencyEdit [11]
    Left = 112
    Top = 144
    Width = 89
    Height = 21
    AutoSize = False
    Color = clBtnFace
    Ctl3D = False
    DecimalPlaces = 4
    DisplayFormat = ',0.0000;-,0.0000'
    ParentCtl3D = False
    TabOrder = 2
    OnEnter = colorON
    OnExit = colorOFF
  end
  object cMNMAX: TCurrencyEdit [12]
    Left = 112
    Top = 168
    Width = 89
    Height = 21
    AutoSize = False
    Color = clBtnFace
    Ctl3D = False
    DecimalPlaces = 4
    DisplayFormat = ',0.0000;-,0.0000'
    ParentCtl3D = False
    TabOrder = 3
    OnEnter = colorON
    OnExit = colorOFF
  end
  object cUFV: TCurrencyEdit [13]
    Left = 240
    Top = 120
    Width = 89
    Height = 21
    AutoSize = False
    Color = clBtnFace
    Ctl3D = False
    DecimalPlaces = 4
    DisplayFormat = ',0.0000;-,0.0000'
    ParentCtl3D = False
    TabOrder = 4
    OnEnter = colorON
    OnExit = colorOFF
  end
  object cFecha: TJvDateEdit [14]
    Left = 112
    Top = 90
    Width = 113
    Height = 21
    Color = clBtnFace
    Flat = True
    ParentFlat = False
    TabOrder = 0
    OnEnter = colorON
    OnExit = colorOFF
  end
  inherited cds: TAstaClientDataSet
    Left = 266
    Top = 6
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
  inherited dsNav: TDataSource
    Left = 296
    Top = 6
  end
end
