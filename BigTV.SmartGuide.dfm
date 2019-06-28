object FormGuide: TFormGuide
  Left = 0
  Top = 0
  Caption = #1063#1090#1086' '#1089#1077#1081#1095#1072#1089' '#1080#1076#1105#1090
  ClientHeight = 369
  ClientWidth = 583
  Color = clBtnFace
  DoubleBuffered = True
  ParentFont = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TableExTvGuide: TTableEx
    Left = 0
    Top = 0
    Width = 583
    Height = 369
    Align = alClient
    BorderStyle = bsNone
    Color = 3551535
    DefaultRowHeight = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnDblClick = TableExTvGuideDblClick
    ItemIndex = -1
    GetData = TableExTvGuideGetData
    Columns = <
      item
        Caption = #1050#1072#1085#1072#1083
        Width = 120
        MinWidth = 120
      end
      item
        Caption = #1063#1090#1086
        Width = 200
      end
      item
        Caption = #1050#1086#1075#1076#1072
        Width = 150
        MinWidth = 100
      end
      item
        Caption = #1047#1072#1090#1077#1084
        Width = 391
      end>
    ShowScrollBar = False
    ItemCount = 1
    LineColor = 3551535
    LineColorXor = 3551535
    LineHotColor = 4603966
    LineSelColor = 2236190
    ColumnsColor = 3551535
    FontHotLine.Charset = DEFAULT_CHARSET
    FontHotLine.Color = clWhite
    FontHotLine.Height = -13
    FontHotLine.Name = 'clWhite'
    FontHotLine.Style = []
    FontLine.Charset = DEFAULT_CHARSET
    FontLine.Color = clWhite
    FontLine.Height = -13
    FontLine.Name = 'clWhite'
    FontLine.Style = []
    FontSelLine.Charset = DEFAULT_CHARSET
    FontSelLine.Color = clWhite
    FontSelLine.Height = -13
    FontSelLine.Name = 'clWhite'
    FontSelLine.Style = []
    ShowColumns = False
    ColumnsFont.Charset = DEFAULT_CHARSET
    ColumnsFont.Color = 2631720
    ColumnsFont.Height = -11
    ColumnsFont.Name = 'Tahoma'
    ColumnsFont.Style = []
    SetFocusOnEnter = True
  end
  object TimerUpdate: TTimer
    Interval = 60000
    OnTimer = TimerUpdateTimer
    Left = 184
    Top = 144
  end
end
