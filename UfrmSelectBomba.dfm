inherited frmSelectBomba: TfrmSelectBomba
  Left = 254
  Top = 226
  Caption = 'Listado de Bombas'
  ClientHeight = 396
  ClientWidth = 448
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  inherited StatusBar1: TStatusBar
    Top = 377
    Width = 448
  end
  inherited Panel1: TPanel
    Top = 346
    Width = 448
  end
  inherited ToolBar1: TToolBar
    Width = 448
  end
  inherited lCaption: TFlatTitlebar
    Width = 448
    Caption = 'capBombas'
  end
  inherited msg: TFlatTitlebar
    Top = 327
    Width = 448
  end
  object cBombas: TFlatCheckListBox [5]
    Left = 0
    Top = 74
    Width = 448
    Height = 252
    ScrollBars = True
    Color = clBtnFace
    ColorBorder = clBlack
    ColorItemsRect = clBtnFace
    ColorItemsSelect = 12615680
    Align = alClient
    ParentColor = False
  end
  inherited cds: TAstaClientDataSet
    SQL.Strings = (
      'select * from surtidor_bomba')
    FastFields = ()
    FMultiTable = ()
    UpdateMethod = umManual
  end
end
