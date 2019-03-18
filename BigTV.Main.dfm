object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'BigTV'
  ClientHeight = 705
  ClientWidth = 966
  Color = 3222827
  Constraints.MinHeight = 240
  Constraints.MinWidth = 320
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Padding.Left = 2
  Padding.Top = 2
  Padding.Right = 2
  Padding.Bottom = 2
  OldCreateOrder = False
  ScreenSnap = True
  Visible = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    966
    705)
  PixelsPerInch = 96
  TextHeight = 16
  object PanelTV: TPanel
    Left = 602
    Top = 2
    Width = 362
    Height = 641
    Align = alClient
    BevelOuter = bvNone
    Color = clBlack
    DoubleBuffered = False
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 0
    object VlcPlayer: TPasLibVlcPlayer
      Left = 0
      Top = 0
      Width = 362
      Height = 641
      Align = alClient
      OnClick = VlcPlayerClick
      OnDblClick = VlcPlayerDblClick
      OnMouseDown = VlcPlayerMouseDown
      OnMouseEnter = VlcPlayerMouseEnter
      OnMouseMove = VlcPlayerMouseMove
      OnMouseUp = VlcPlayerMouseUp
      SpuShow = False
      OsdShow = False
      AudioOutput = aoWaveOut
      SnapShotFmt = 'png'
      DeinterlaceFilter = deON
      MouseEventsHandler = mehComponent
      ExplicitLeft = 32
      ExplicitTop = 6
    end
  end
  object PanelCtrl: TPanel
    Left = 2
    Top = 643
    Width = 962
    Height = 60
    Align = alBottom
    BevelOuter = bvNone
    Color = 5590602
    ParentBackground = False
    TabOrder = 1
    OnMouseDown = PanelCtrlMouseDown
    DesignSize = (
      962
      60)
    object Shape2: TShape
      Left = 0
      Top = 0
      Width = 962
      Height = 2
      Align = alTop
      Brush.Color = 3222827
      Pen.Color = 3222827
      ExplicitLeft = 244
      ExplicitWidth = 40
    end
    object PanelVolume: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 12
      Width = 238
      Height = 38
      Margins.Left = 10
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      BevelOuter = bvNone
      Color = 5590602
      ParentBackground = False
      TabOrder = 0
      object DrawPanelVolume: TDrawPanel
        Left = 38
        Top = 0
        Width = 162
        Height = 38
        Cursor = crHandPoint
        DefaultPaint = False
        OnMouseEnter = DrawPanelVolumeMouseEnter
        OnMouseLeave = DrawPanelVolumeMouseLeave
        OnPaint = DrawPanelVolumePaint
        Align = alClient
        Color = 3222827
        ParentBackground = False
        TabOrder = 0
        TabStop = True
        OnMouseDown = DrawPanelVolumeMouseDown
        OnMouseMove = DrawPanelVolumeMouseMove
        OnMouseUp = DrawPanelVolumeMouseUp
        OnMouseWheelDown = DrawPanelVolumeMouseWheelDown
        OnMouseWheelUp = DrawPanelVolumeMouseWheelUp
      end
      object ButtonFlatMute: TButtonFlat
        Left = 0
        Top = 0
        Width = 38
        Height = 38
        Align = alLeft
        Caption = ''
        ColorNormal = 3222827
        ColorOver = 4603966
        ColorPressed = 3222827
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWindowText
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWindowText
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        GroupItemKind = giLeft
        IgnorBounds = True
        ImageIndentLeft = 9
        ImageIndex = 6
        Images = ImageList16
        OnClick = ButtonFlatMuteClick
        RoundRectParam = 38
        Shape = stRoundRect
        ShowFocusRect = False
        TabOrder = 1
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
      end
      object ButtonFlatVolume100: TButtonFlat
        Left = 200
        Top = 0
        Width = 38
        Height = 38
        Align = alRight
        Caption = ''
        ColorNormal = 3222827
        ColorOver = 4603966
        ColorPressed = 3222827
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWindowText
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWindowText
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        GroupItemKind = giRight
        IgnorBounds = True
        ImageIndentLeft = 9
        ImageIndex = 7
        Images = ImageList16
        OnClick = ButtonFlatVolume100Click
        RoundRectParam = 38
        Shape = stRoundRect
        ShowFocusRect = False
        TabOrder = 2
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
      end
    end
    object ButtonFlatPrevChannel: TButtonFlat
      Left = 754
      Top = 12
      Width = 32
      Height = 38
      Anchors = [akTop, akRight]
      Caption = ''
      ColorNormal = 3222827
      ColorOver = 4603966
      ColorPressed = 3222827
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWindowText
      FontOver.Height = -13
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWindowText
      FontDown.Height = -13
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      GroupItemKind = giCenter
      IgnorBounds = True
      ImageIndentLeft = 7
      ImageIndex = 10
      Images = ImageList16
      OnClick = ButtonFlatPrevChannelClick
      RoundRectParam = 38
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 1
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      AutoClick = 500
    end
    object ButtonFlatVUP: TButtonFlat
      Left = 786
      Top = 12
      Width = 32
      Height = 19
      Anchors = [akTop, akRight]
      Caption = ''
      ColorNormal = 3222827
      ColorOver = 4603966
      ColorPressed = 3222827
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWindowText
      FontOver.Height = -13
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWindowText
      FontDown.Height = -13
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 7
      ImageIndex = 13
      Images = ImageList16
      OnClick = ButtonFlatVUPClick
      RoundRectParam = 4
      ShowFocusRect = False
      TabOrder = 2
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      AutoClick = 300
    end
    object ButtonFlatVDOWN: TButtonFlat
      Left = 786
      Top = 31
      Width = 32
      Height = 19
      Anchors = [akTop, akRight]
      Caption = ''
      ColorNormal = 3222827
      ColorOver = 4603966
      ColorPressed = 3222827
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWindowText
      FontOver.Height = -13
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWindowText
      FontDown.Height = -13
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 7
      ImageIndex = 11
      Images = ImageList16
      OnClick = ButtonFlatVDOWNClick
      RoundRectParam = 4
      ShowFocusRect = False
      TabOrder = 3
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      AutoClick = 300
    end
    object ButtonFlatNextChannel: TButtonFlat
      Left = 818
      Top = 12
      Width = 32
      Height = 38
      Anchors = [akTop, akRight]
      Caption = ''
      ColorNormal = 3222827
      ColorOver = 4603966
      ColorPressed = 3222827
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWindowText
      FontOver.Height = -13
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWindowText
      FontDown.Height = -13
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      GroupItemKind = giCenter
      IgnorBounds = True
      ImageIndentLeft = 7
      ImageIndex = 12
      Images = ImageList16
      OnClick = ButtonFlatNextChannelClick
      RoundRectParam = 4
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 4
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      AutoClick = 500
    end
    object ButtonFlatClose: TButtonFlat
      Left = 914
      Top = 12
      Width = 38
      Height = 38
      Anchors = [akTop, akRight]
      Caption = ''
      ColorNormal = 3222827
      ColorOver = 4603966
      ColorPressed = 3222827
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWindowText
      FontOver.Height = -13
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWindowText
      FontDown.Height = -13
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      GroupItemKind = giRight
      IgnorBounds = True
      ImageIndentLeft = 11
      ImageIndex = 3
      Images = ImageList16
      OnClick = ButtonFlatCloseClick
      RoundRectParam = 38
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 5
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      AutoClick = 500
    end
    object ButtonFlatMin: TButtonFlat
      Left = 850
      Top = 12
      Width = 32
      Height = 38
      Anchors = [akTop, akRight]
      Caption = ''
      ColorNormal = 3222827
      ColorOver = 4603966
      ColorPressed = 3222827
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWindowText
      FontOver.Height = -13
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWindowText
      FontDown.Height = -13
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      GroupItemKind = giCenter
      IgnorBounds = True
      ImageIndentLeft = 7
      ImageIndex = 14
      Images = ImageList16
      OnClick = ButtonFlatMinClick
      RoundRectParam = 4
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 6
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      AutoClick = 500
    end
    object ButtonFlatMax: TButtonFlat
      Left = 882
      Top = 12
      Width = 32
      Height = 38
      Anchors = [akTop, akRight]
      Caption = ''
      ColorNormal = 3222827
      ColorOver = 4603966
      ColorPressed = 3222827
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWindowText
      FontOver.Height = -13
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWindowText
      FontDown.Height = -13
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      GroupItemKind = giCenter
      IgnorBounds = True
      ImageIndentLeft = 7
      ImageIndex = 15
      Images = ImageList16
      OnClick = ButtonFlatMaxClick
      RoundRectParam = 4
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 7
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      AutoClick = 500
    end
    object ButtonFlatPause: TButtonFlat
      Left = 678
      Top = 12
      Width = 38
      Height = 38
      Anchors = [akTop, akRight]
      Caption = ''
      ColorNormal = 3222827
      ColorOver = 4603966
      ColorPressed = 3222827
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWindowText
      FontOver.Height = -13
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWindowText
      FontDown.Height = -13
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      GroupItemKind = giLeft
      IgnorBounds = True
      ImageIndentLeft = 12
      ImageIndex = 18
      Images = ImageList16
      OnClick = ButtonFlatPauseClick
      RoundRectParam = 38
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 8
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      AutoClick = 500
    end
    object ButtonFlatPlay: TButtonFlat
      Left = 716
      Top = 12
      Width = 38
      Height = 38
      Anchors = [akTop, akRight]
      Caption = ''
      ColorNormal = 3222827
      ColorOver = 4603966
      ColorPressed = 3222827
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWindowText
      FontOver.Height = -13
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWindowText
      FontDown.Height = -13
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      GroupItemKind = giCenter
      IgnorBounds = True
      ImageIndentLeft = 11
      ImageIndex = 19
      Images = ImageList16
      OnClick = ButtonFlatPlayClick
      RoundRectParam = 38
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 9
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      AutoClick = 500
    end
  end
  object DrawPanelInfo: TDrawPanel
    Left = 606
    Top = 590
    Width = 349
    Height = 45
    DefaultPaint = False
    OnPaint = DrawPanelInfoPaint
    Anchors = [akLeft, akRight, akBottom]
    ParentBackground = False
    TabOrder = 2
  end
  object PanelChannels: TPanel
    Left = 2
    Top = 2
    Width = 600
    Height = 641
    Align = alLeft
    BevelOuter = bvNone
    Color = 3551535
    ParentBackground = False
    TabOrder = 3
    object Shape1: TShape
      Left = 300
      Top = 0
      Width = 2
      Height = 641
      Align = alLeft
      Brush.Color = 3222827
      Pen.Color = 3222827
      ExplicitLeft = 8
      ExplicitHeight = 627
    end
    object PanelGuide: TPanel
      Left = 302
      Top = 0
      Width = 298
      Height = 641
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object TableExTvGuide: TTableEx
        Left = 0
        Top = 41
        Width = 298
        Height = 600
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
        ItemIndex = -1
        OnChangeItem = TableExTvGuideChangeItem
        GetData = TableExTvGuideGetData
        Columns = <
          item
            Caption = #1047#1072#1087#1080#1089#1100
            Width = 300
            MinWidth = 300
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
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 298
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = 3551535
        ParentBackground = False
        TabOrder = 1
        object ButtonFlatCloseGuide: TButtonFlat
          Left = 0
          Top = 0
          Width = 298
          Height = 41
          Align = alClient
          Caption = #1050#1072#1085#1072#1083
          ColorNormal = 3222827
          ColorOver = 4603966
          ColorPressed = 3222827
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          FontOver.Charset = DEFAULT_CHARSET
          FontOver.Color = clWhite
          FontOver.Height = -24
          FontOver.Name = 'Tahoma'
          FontOver.Style = []
          FontDown.Charset = DEFAULT_CHARSET
          FontDown.Color = clWhite
          FontDown.Height = -24
          FontDown.Name = 'Tahoma'
          FontDown.Style = []
          IgnorBounds = True
          ImageIndentLeft = 10
          ImageIndentRight = 20
          ImageIndex = 2
          Images = ImageList16
          OnClick = ButtonFlatCloseGuideClick
          RoundRectParam = 4
          Shape = stRoundRect
          ShowFocusRect = False
          TabOrder = 0
          TextFormat = [tfSingleLine, tfVerticalCenter]
          SubTextFont.Charset = DEFAULT_CHARSET
          SubTextFont.Color = clWhite
          SubTextFont.Height = -13
          SubTextFont.Name = 'Tahoma'
          SubTextFont.Style = []
        end
      end
    end
    object PanelChannel: TPanel
      Left = 0
      Top = 0
      Width = 300
      Height = 641
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 300
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = 3551535
        ParentBackground = False
        TabOrder = 0
        object ButtonFlatCloseChannels: TButtonFlat
          Left = 0
          Top = 0
          Width = 300
          Height = 41
          Align = alClient
          Caption = #1057#1087#1080#1089#1086#1082' '#1082#1072#1085#1072#1083#1086#1074
          ColorNormal = 3222827
          ColorOver = 4603966
          ColorPressed = 3222827
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          FontOver.Charset = DEFAULT_CHARSET
          FontOver.Color = clWhite
          FontOver.Height = -24
          FontOver.Name = 'Tahoma'
          FontOver.Style = []
          FontDown.Charset = DEFAULT_CHARSET
          FontDown.Color = clWhite
          FontDown.Height = -24
          FontDown.Name = 'Tahoma'
          FontDown.Style = []
          IgnorBounds = True
          ImageIndentLeft = 10
          ImageIndentRight = 20
          ImageIndex = 3
          Images = ImageList16
          OnClick = ButtonFlatCloseChannelsClick
          RoundRectParam = 4
          Shape = stRoundRect
          ShowFocusRect = False
          TabOrder = 0
          TextFormat = [tfSingleLine, tfVerticalCenter]
          SubTextFont.Charset = DEFAULT_CHARSET
          SubTextFont.Color = clWhite
          SubTextFont.Height = -13
          SubTextFont.Name = 'Tahoma'
          SubTextFont.Style = []
        end
      end
      object TableExChannels: TTableEx
        Left = 0
        Top = 41
        Width = 300
        Height = 600
        Align = alClient
        BorderStyle = bsNone
        Color = 3551535
        DefaultRowHeight = 64
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnDblClick = TableExChannelsDblClick
        OnMouseUp = TableExChannelsMouseUp
        OnMouseMove = TableExChannelsMouseMove
        OnDrawCellData = TableExChannelsDrawCellData
        ItemIndex = -1
        OnChangeItem = TableExChannelsChangeItem
        Columns = <
          item
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1072#1085#1072#1083#1072
            Width = 300
            MinWidth = 300
          end>
        DefaultDataDrawing = False
        ShowScrollBar = False
        ItemCount = 1
        LineColor = 3551535
        LineColorXor = 3551535
        LineHotColor = 4603966
        LineSelColor = 2236190
        ColumnsColor = 3551535
        FontHotLine.Charset = DEFAULT_CHARSET
        FontHotLine.Color = clWhite
        FontHotLine.Height = -11
        FontHotLine.Name = 'clWhite'
        FontHotLine.Style = []
        FontLine.Charset = DEFAULT_CHARSET
        FontLine.Color = clWhite
        FontLine.Height = -11
        FontLine.Name = 'clWhite'
        FontLine.Style = []
        FontSelLine.Charset = DEFAULT_CHARSET
        FontSelLine.Color = clWhite
        FontSelLine.Height = -11
        FontSelLine.Name = 'clWhite'
        FontSelLine.Style = []
        ShowColumns = False
        ColumnsFont.Charset = DEFAULT_CHARSET
        ColumnsFont.Color = 2631720
        ColumnsFont.Height = -11
        ColumnsFont.Name = 'Tahoma'
        ColumnsFont.Style = []
        SetFocusOnEnter = True
        MouseRightClickTooClick = True
      end
    end
  end
  object PanelPopup: TPanel
    Left = 346
    Top = 136
    Width = 223
    Height = 372
    BevelOuter = bvNone
    Color = 3222827
    ParentBackground = False
    TabOrder = 4
    Visible = False
    object ButtonFlat1: TButtonFlat
      Left = 0
      Top = 0
      Width = 223
      Height = 33
      Align = alTop
      Caption = #1057#1087#1080#1089#1086#1082' '#1082#1072#1085#1072#1083#1086#1074
      ColorNormal = 3222827
      ColorOver = 4603966
      ColorPressed = 3222827
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWhite
      FontOver.Height = -17
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWhite
      FontDown.Height = -17
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 10
      ImageIndentRight = 20
      ImageIndex = 4
      Images = ImageList16
      OnClick = ButtonFlat1Click
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 0
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
    end
    object ButtonFlatQuit: TButtonFlat
      Left = 0
      Top = 339
      Width = 223
      Height = 33
      Align = alBottom
      Caption = #1042#1099#1093#1086#1076
      ColorNormal = 3222827
      ColorOver = 4603966
      ColorPressed = 3222827
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWhite
      FontOver.Height = -17
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWhite
      FontDown.Height = -17
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 10
      ImageIndentRight = 20
      ImageIndex = 5
      Images = ImageList16
      OnClick = ButtonFlatQuitClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 1
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
    end
    object CheckBoxStayOnTop: TCheckBoxFlat
      Left = 0
      Top = 66
      Width = 223
      Height = 33
      Align = alTop
      Caption = #1055#1086#1074#1077#1088#1093' '#1074#1089#1077#1093' '#1086#1082#1086#1085
      ColorNormal = 3222827
      ColorOver = 4603966
      ColorPressed = 3222827
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWhite
      FontOver.Height = -17
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWhite
      FontDown.Height = -17
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 10
      ImageIndentRight = 20
      ImageIndex = 9
      Images = ImageList16
      OnClick = CheckBoxStayOnTopClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 2
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      DblClickTooClick = False
      ImageCheck = 8
      ImageUncheck = 9
    end
    object CheckBoxPanelCtrl: TCheckBoxFlat
      Left = 0
      Top = 99
      Width = 223
      Height = 33
      Align = alTop
      Caption = #1055#1072#1085#1077#1083#1100' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103
      ColorNormal = 3222827
      ColorOver = 4603966
      ColorPressed = 3222827
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWhite
      FontOver.Height = -17
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWhite
      FontDown.Height = -17
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 10
      ImageIndentRight = 20
      ImageIndex = 9
      Images = ImageList16
      OnClick = CheckBoxPanelCtrlClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 3
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      DblClickTooClick = False
      ImageCheck = 8
      ImageUncheck = 9
    end
    object ButtonFlatMin2: TButtonFlat
      Left = 0
      Top = 306
      Width = 223
      Height = 33
      Align = alBottom
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100
      ColorNormal = 3222827
      ColorOver = 4603966
      ColorPressed = 3222827
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWhite
      FontOver.Height = -17
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWhite
      FontDown.Height = -17
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 10
      ImageIndentRight = 20
      ImageIndex = 14
      Images = ImageList16
      OnClick = ButtonFlatMinClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 4
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
    end
    object TableExFavChannels: TTableEx
      Left = 0
      Top = 132
      Width = 223
      Height = 174
      Align = alClient
      BorderStyle = bsNone
      Color = 3551535
      DefaultRowHeight = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnDrawCellData = TableExFavChannelsDrawCellData
      ItemIndex = -1
      OnItemClick = TableExFavChannelsItemClick
      Columns = <
        item
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1072#1085#1072#1083#1072
          Width = 300
          MinWidth = 300
        end>
      DefaultDataDrawing = False
      ShowScrollBar = False
      ItemCount = 1
      LineColor = 3551535
      LineColorXor = 3551535
      LineHotColor = 4603966
      LineSelColor = 2236190
      ColumnsColor = 3551535
      FontHotLine.Charset = DEFAULT_CHARSET
      FontHotLine.Color = clWhite
      FontHotLine.Height = -11
      FontHotLine.Name = 'clWhite'
      FontHotLine.Style = []
      FontLine.Charset = DEFAULT_CHARSET
      FontLine.Color = clWhite
      FontLine.Height = -11
      FontLine.Name = 'clWhite'
      FontLine.Style = []
      FontSelLine.Charset = DEFAULT_CHARSET
      FontSelLine.Color = clWhite
      FontSelLine.Height = -11
      FontSelLine.Name = 'clWhite'
      FontSelLine.Style = []
      ShowColumns = False
      ColumnsFont.Charset = DEFAULT_CHARSET
      ColumnsFont.Color = 2631720
      ColumnsFont.Height = -11
      ColumnsFont.Name = 'Tahoma'
      ColumnsFont.Style = []
      SetFocusOnEnter = True
      MouseRightClickTooClick = True
    end
    object ButtonFlatTVGuide: TButtonFlat
      Left = 0
      Top = 33
      Width = 223
      Height = 33
      Align = alTop
      Caption = #1063#1090#1086' '#1089#1077#1081#1095#1072#1089' '#1080#1076#1105#1090
      ColorNormal = 3222827
      ColorOver = 4603966
      ColorPressed = 3222827
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWhite
      FontOver.Height = -17
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWhite
      FontDown.Height = -17
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 10
      ImageIndentRight = 20
      ImageIndex = 4
      Images = ImageList16
      OnClick = ButtonFlatTVGuideClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 6
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
    end
  end
  object DrawPanelLeftTop: TDrawPanel
    Left = 606
    Top = 8
    Width = 75
    Height = 45
    DefaultPaint = False
    OnPaint = DrawPanelLeftTopPaint
    ParentBackground = False
    TabOrder = 5
  end
  object DrawPanelTopRight: TDrawPanel
    Left = 909
    Top = 8
    Width = 45
    Height = 45
    DefaultPaint = False
    OnPaint = DrawPanelTopRightPaint
    Anchors = [akTop, akRight]
    ParentBackground = False
    TabOrder = 6
    Visible = False
    OnClick = ButtonFlatMuteClick
  end
  object ImageList16: TImageList
    ColorDepth = cd32Bit
    Left = 625
    Top = 96
    Bitmap = {
      494C010115008000B40010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001818182B747474AE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001818182BC7C7C7E99B9B9BC1000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001818182CC7C7C7E9F0F0F0FF9B9B9BC1000000030303
      030C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202085353
      5379565656795656567BC7C7C7E8F0F0F0FFF0F0F0FF9B9B9BC10E0E0E2CB6B6
      B6DE111111250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000007070718E4E4
      E4FEF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF9B9B9BC10E0E0E2AEEEE
      EEFE919191B90000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000007070718E4E4
      E4FEF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF9B9B9BC10E0E0E2AEEEE
      EEFED0D0D0F90000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000007070718E4E4
      E4FEF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF9B9B9BC10E0E0E2AEEEE
      EEFEC8C8C8F10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000007070718E4E4
      E4FEF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF9B9B9BC10E0E0E2AEEEE
      EEFE7272729A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000021919
      193A191919391A1A1A3B9D9D9DC6F0F0F0FFF0F0F0FF9B9B9BC10D0D0D258080
      80AB0303030C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000404040E9D9D9DC6F0F0F0FF9B9B9BC1000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040E9D9D9DC69B9B9BC1000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000404040E4E4E4E7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002424
      2441272727410000000000000000000000000000000000000000000000001111
      11223A3A3A600000000000000000000000000000000000000000000000002424
      2441272727410000000000000000000000000000000000000000000000001111
      11223A3A3A600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001919
      1936E6E6E6FE7E7E7EA50A0A0A190000000000000000010101075959597FD9D9
      D9F6545454750000000000000000000000000000000000000000000000001919
      1936E6E6E6FE7E7E7EA50A0A0A190000000000000000010101075959597FD9D9
      D9F6545454750000000000000000000000000000000000000000000000000707
      071225252542252525421C1C1C36000000000000000013131325252525422525
      2542101010230000000000000000000000000000000000000000000000000000
      0000000000000808081900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005CDCDCDF4EDEDEDFED1D1D1F04B4B4B6F2E2E2E4DB5B5B5DBEDEDEDFEEEEE
      EEFE1D1D1D3A0000000000000000000000000000000000000000000000000000
      0005CDCDCDF4F0F0F0FFD1D1D1F04B4B4B6F2E2E2E4DB5B5B5DBF0F0F0FFEEEE
      EEFE1D1D1D3A0000000000000000000000000000000000000000000000003131
      314FF0F0F0FFF0F0F0FFB5B5B5DB00000000000000007979799BF0F0F0FFF0F0
      F0FF6C6C6C8F0000000000000000000000000000000000000000000000000000
      000000000000A8A8A8DA5F5F5F86030303080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000989898BEADADADDE828282AAE8E8E8FEEAEAEAFEA4A4A4CD848484BAD2D2
      D2F7010101060000000000000000000000000000000000000000000000000000
      0000989898BEF0F0F0FFF0F0F0FFEFEFEFFEEBEBEBFEF0F0F0FFF0F0F0FFD2D2
      D2F7010101060000000000000000000000000000000000000000000000003131
      314FF0F0F0FFF0F0F0FFB5B5B5DB00000000000000007777779BF0F0F0FFF0F0
      F0FF6C6C6C8F0000000000000000000000000000000000000000000000000000
      000000000000B7B7B7DEF0F0F0FFB2B2B2D92626264100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005F5F5F82D5D5D5F9020202092929294443434367010101029C9C9CC39C9C
      9CC2000000000000000000000000000000000000000000000000000000000000
      00005F5F5F82F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF9C9C
      9CC2000000000000000000000000000000000000000000000000000000003131
      314FF0F0F0FFF0F0F0FFB5B5B5DB00000000000000007777779BF0F0F0FFF0F0
      F0FF6C6C6C8F0000000000000000000000000000000000000000000000000000
      000000000000B7B7B7DEF0F0F0FFF0F0F0FFE7E7E7FE7575759C060606110000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A5A5A84EFEFEFFE1F1F1F3D000000000000000000000005D1D1D1F79494
      94BE000000050000000000000000000000000000000000000000000000000000
      00005A5A5A84F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF9494
      94BE000000050000000000000000000000000000000000000000000000003131
      314FF0F0F0FFF0F0F0FFB5B5B5DB00000000000000007777779BF0F0F0FFF0F0
      F0FF6C6C6C8F0000000000000000000000000000000000000000000000000000
      000000000000B7B7B7DEF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFC3C3C3E73737
      3757000000000000000000000000000000000000000000000000000000016161
      6189E9E9E9FE808080AB030303080000000000000000000000004F4F4F75E6E6
      E6FD919191BB0505050F00000000000000000000000000000000000000016161
      6189EAEAEAFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEF
      EFFF919191BB0505050F00000000000000000000000000000000000000003131
      314FF0F0F0FFF0F0F0FFB5B5B5DB00000000000000007777779BF0F0F0FFF0F0
      F0FF6C6C6C8F0000000000000000000000000000000000000000000000000000
      000000000000B7B7B7DEF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFECEC
      ECFF8A8A8AB406060612000000000000000000000000020202087E7E7EA9EBEB
      EBFE717171B30707071700000002000000000000000000000000050505104646
      467DE1E1E1FFACACACD20D0D0D1D0000000000000000020202087E7E7EA9EEEE
      EEFEF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFACACACD20D0D0D1D000000000000000000000000000000003131
      314FF0F0F0FFF0F0F0FFB5B5B5DB00000000000000007777779BF0F0F0FFF0F0
      F0FF6C6C6C8F0000000000000000000000000000000000000000000000000000
      000000000000B7B7B7DEF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD6D6
      D6F44F4F4F74000000030000000000000000000000007B7B7BA5EAEAEAFDF0F0
      F0FFEEEEEEFEE3E3E3FED4D4D4FC2020203A0303030BBABABAECDFDFDFFEECEC
      ECFEF0F0F0FFEDEDEDFEB3B3B3E500000000000000007B7B7BA5EAEAEAFDF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFEDEDEDFEB3B3B3E5000000000000000000000000000000003131
      314FF0F0F0FFF0F0F0FFB5B5B5DB00000000000000007777779BF0F0F0FFF0F0
      F0FF6C6C6C8F0000000000000000000000000000000000000000000000000000
      000000000000B7B7B7DEF0F0F0FFF0F0F0FFF0F0F0FFEDEDEDFE8F8F8FB90F0F
      0F2100000000000000000000000000000000000000000303030C0B0B0B231B1B
      1B3A3030304E43434364CACACAEC808080A645454567EAEAEAFE5151517A3535
      35532121213F0E0E0E290606061300000000000000000303030C0B0B0B231B1B
      1B3A3030304E43434364CACACAECF0F0F0FFF0F0F0FFEAEAEAFE5151517A3535
      35532121213F0E0E0E2906060613000000000000000000000000000000003131
      314FF0F0F0FFF0F0F0FFB5B5B5DB00000000000000007777779BF0F0F0FFF0F0
      F0FF6C6C6C8F0000000000000000000000000000000000000000000000000000
      000000000000B7B7B7DEF0F0F0FFF0F0F0FFC9C9C9EA3C3C3C5D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000065656589DADADAF8AEAEAEDBA0A0A0C9000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000065656589F0F0F0FFF0F0F0FFA0A0A0C9000000000000
      0000000000000000000000000000000000000000000000000000000000003131
      314FF0F0F0FFF0F0F0FFB5B5B5DB00000000000000007777779BF0F0F0FFF0F0
      F0FF6C6C6C8F0000000000000000000000000000000000000000000000000000
      000000000000B7B7B7DEE8E8E8FE7A7A7AA20707071400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000E0E0E20E0E0E0FCEFEFEFFE3B3B3B5C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000E0E0E20E0E0E0FCEFEFEFFE3B3B3B5C000000000000
      0000000000000000000000000000000000000000000000000000000000002D2D
      2D4DD8D8D8FFD8D8D8FFA2A2A2D800000000000000006D6D6D98D8D8D8FFD8D8
      D8FF6363638D0000000000000000000000000000000000000000000000000000
      000000000000838383BC2A2A2A46000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000898989AFC1C1C1E801010106000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000898989AFC1C1C1E801010106000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000020000000200000002000000000000000000000001000000020000
      0002000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002424243C5050506C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002424243C5050506C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000025B5B5B808D8D
      8DB28D8D8DB28D8D8DB28D8D8DB28D8D8DB28D8D8DB28D8D8DB28D8D8DB28D8D
      8DB28D8D8DB27474749807070713000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000037373759EFEFEFFEE4E4
      E4FEE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFEEEEEEFE74747498000000000000000000000000000000000000
      0000000000000000000010101029000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051515172F0F0F0FF3A3A
      3A64060606140606061406060614060606140606061406060614060606140606
      06140D0D0D29E2E2E2FF8D8D8DB2000000000000000000000000000000000000
      00000000000000000000ADADADEB252525410000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051515172F0F0F0FF3636
      3654000000000101010709090917000000000000000000000000000000000000
      000006060614E2E2E2FF8D8D8DB2000000000000000000000000000000000000
      00000000000000000000C8C8C8F4D4D4D4F42525254000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051515172F0F0F0FF3636
      365400000000888888B6BABABADE0E0E0E1F0000000000000000000000000000
      000006060614E2E2E2FF8D8D8DB2000000000000000000000000000000000000
      00000000000000000000C8C8C8F4F0F0F0FFD4D4D4F425252540000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00038B8B8BD4C8C8C8F4C8C8C8F4C8C8C8F4C8C8C8F4C8C8C8F4C8C8C8F4ADAD
      ADEB101010290000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051515172F0F0F0FF3636
      3654000000005555557DEBEBEBFFBABABADE0E0E0E1F00000000000000000000
      000006060614E2E2E2FF8D8D8DB2000000000000000000000000000000000000
      00000000000000000000C8C8C8F4F0F0F0FFF0F0F0FFD4D4D4F4202020390000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B0B0B1BB1B1B1DAF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD4D4D4F42525
      254100000000000000000000000000000000000000000000000000000002C1C1
      C1FDD5D5D5FED5D5D5FED5D5D5FED5D5D5FED5D5D5FED5D5D5FED5D5D5FED5D5
      D5FED5D5D5FE2222224000000000000000000000000051515172F0F0F0FF3636
      365400000000000000005555557DEBEBEBFFBABABADE0E0E0E1F000000000000
      000006060613D1D1D1FF838383B1000000000000000000000000000000000000
      00000000000000000000C8C8C8F4F0F0F0FFF0F0F0FFB1B1B1DA0B0B0B1B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B0B1BB1B1B1DAF0F0F0FFF0F0F0FFD4D4D4F4252525400000
      0000000000000000000000000000000000000000000000000000000000018B8B
      8BBD989898BE989898BE989898BE989898BE989898BE989898BE989898BE9898
      98BE989898BE1818183000000000000000000000000051515172F0F0F0FF3636
      36540000000000000000000000005555557DEBEBEBFFBABABADE0E0E0E1F0000
      0000000000000303030B01010106000000000000000000000000000000000000
      00000000000000000000C8C8C8F4F0F0F0FFB1B1B1DA0B0B0B1B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B0B0B1BB1B1B1DAD4D4D4F425252540000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051515172F0F0F0FF3636
      3654000000000000000000000000000000005555557DEBEBEBFFBABABADE0E0E
      0E1F0404040FABABABDA6B6B6B97000000000000000000000000000000000000
      00000000000000000000C8C8C8F4B1B1B1DA0B0B0B1B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000B0B0B1B2020203900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051515172F0F0F0FF3636
      365400000000000000000000000000000000000000005555557DEBEBEBFFBABA
      BADE16161634E2E2E2FF8D8D8DB2000000000000000000000000000000000000
      000000000000000000008B8B8BD40B0B0B1B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051515172F0F0F0FF3636
      36540000000000000000000000000000000000000000000000005555557DEBEB
      EBFFBEBEBEE8E5E5E5FE8D8D8DB2000000000000000000000000000000000000
      0000000000000000000000000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051515172F0F0F0FF5E5E
      5E8F36363654363636543636365436363654090909151B1B1B30363636548888
      88C5EFEFEFFEF0F0F0FF8D8D8DB2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025252540E7E7E7FEF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF2D2D2D4B7979799BF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FF8D8D8DB2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000272727405151
      5172515151725151517251515172515151731010101E29292943515151725151
      517251515172515151723131314E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000025B5B5B808D8D
      8DB28D8D8DB28D8D8DB28D8D8DB28D8D8DB28D8D8DB28D8D8DB28D8D8DB28D8D
      8DB28D8D8DB27575759A080808140000000000000000000000025959597D8D8D
      8DB28D8D8DB28D8D8DB28D8D8DB28D8D8DB28D8D8DB28D8D8DB28D8D8DB28D8D
      8DB28D8D8DB27474749807070713000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000037373759EFEFEFFEF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FF73737399000000000000000039393959EFEFEFFEE4E4
      E4FEE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFEEEEEEFE74747498000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051515172F0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FF8D8D8DB2000000000000000051515172F0F0F0FF3A3A
      3A64060606140606061406060614060606140606061406060614060606140606
      06140D0D0D29E2E2E2FF8D8D8DB2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051515172F0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFA3A3A3CFE4E4E4FCF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FF8D8D8DB2000000000000000051515172F0F0F0FF3636
      3654000000000000000000000000000000000000000000000000000000000000
      000006060614E2E2E2FF8D8D8DB2000000000000000000000000000000000000
      0000000000000000000000000000000000000B0B0B1B8B8B8BD4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051515172F0F0F0FFF0F0
      F0FFF0F0F0FF8E8E8EB8010101073E3E3E5EE4E4E4FCF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FF8D8D8DB2000000000000000051515172F0F0F0FF3636
      3654000000000000000000000000000000000000000000000000000000000000
      000006060614E2E2E2FF8D8D8DB2000000000000000000000000000000000000
      00000000000000000000000000000B0B0B1BB1B1B1DAC8C8C8F4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000202020390B0B0B1B00000000000000000000
      0000000000000000000000000000000000000000000051515172F0F0F0FFF0F0
      F0FF8F8F8FBA0303030E6D6D6D991919192C3E3E3E5EE4E4E4FCF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FF8D8D8DB2000000000000000051515172F0F0F0FF3636
      3654000000000000000000000000000000000000000000000000000000000000
      000006060614E2E2E2FF8D8D8DB2000000000000000000000000000000000000
      000000000000000000000B0B0B1BB1B1B1DAF0F0F0FFC8C8C8F4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000025252540D4D4D4F4B1B1B1DA0B0B0B1B000000000000
      0000000000000000000000000000000000000000000051515172F0F0F0FF9696
      96C20404040E838383AFEFEFEFFFC8C8C8E91919192C3E3E3E5EE4E4E4FCF0F0
      F0FFF0F0F0FFF0F0F0FF8D8D8DB2000000000000000051515172F0F0F0FF3636
      3654000000000000000000000000000000000000000000000000000000000000
      000006060614E2E2E2FF8D8D8DB2000000000000000000000000000000000000
      0000000000000B0B0B1BB1B1B1DAF0F0F0FFF0F0F0FFC8C8C8F4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000025252540D4D4D4F4F0F0F0FFF0F0F0FFB1B1B1DA0B0B0B1B0000
      0000000000000000000000000000000000000000000051515172F0F0F0FFBFBF
      BFE28B8B8BB9EFEFEFFFF0F0F0FFF0F0F0FFC8C8C8E91919192C3E3E3E5EE4E4
      E4FCF0F0F0FFF0F0F0FF8D8D8DB2000000000000000051515172F0F0F0FF3636
      3654000000000000000000000000000000000000000000000000000000000000
      000006060614E2E2E2FF8D8D8DB2000000000000000000000000000000000000
      00000000000020202039D4D4D4F4F0F0F0FFF0F0F0FFC8C8C8F4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000025252541D4D4D4F4F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFB1B1B1DA0B0B
      0B1B000000000000000000000000000000000000000051515172F0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFC8C8C8E91919192C3E3E
      3E5EE4E4E4FCF0F0F0FF8D8D8DB2000000000000000051515172F0F0F0FF3636
      3654000000000000000000000000000000000000000000000000000000000000
      000006060614E2E2E2FF8D8D8DB2000000000000000000000000000000000000
      0000000000000000000025252540D4D4D4F4F0F0F0FFC8C8C8F4000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      1029ADADADEBC8C8C8F4C8C8C8F4C8C8C8F4C8C8C8F4C8C8C8F4C8C8C8F48B8B
      8BD4000000030000000000000000000000000000000051515172F0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFC8C8C8E91919
      192C48484873EEEEEEFE8D8D8DB2000000000000000051515172F0F0F0FF3636
      3654000000000000000000000000000000000000000000000000000000000000
      000006060614E2E2E2FF8D8D8DB2000000000000000000000000000000000000
      000000000000000000000000000025252540D4D4D4F4C8C8C8F4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051515172F0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFC8C8
      C8E9B0B0B0D6F0F0F0FF8D8D8DB2000000000000000051515172F0F0F0FF3636
      3654000000000000000000000000000000000000000000000000000000000000
      000006060614E2E2E2FF8D8D8DB2000000000000000000000000000000000000
      00000000000000000000000000000000000025252541ADADADEB000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051515172F0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FF8D8D8DB2000000000000000051515172F0F0F0FF5E5E
      5E8F363636543636365436363654363636543636365436363654363636543636
      36543A3A3A64E4E4E4FE8D8D8DB2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010101029000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025252540E7E7E7FEF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFEFEFEFFE5959597F00000000000000002525253EE6E6E6FDF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFEEEEEEFE5959597D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000272727405151
      5172515151725151517251515172515151725151517251515172515151725151
      5172515151723A3A3A5A000000020000000000000000000000002525253E5151
      5172515151725151517251515172515151725151517251515172515151725151
      5172515151723939395900000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060606130C0C
      0C260C0C0C260C0C0C260C0C0C260C0C0C260C0C0C260C0C0C260C0C0C260C0C
      0C260C0C0C260909091D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000037373755353535560000
      000300000003676767921919192D000000000000000000000000000000000000
      00000000000000000000000000000000000000000000373737553A3A3A5B0101
      0105000000000000000000000000000000000000000033333346E7E7E7FAF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FF6D6D6D840000000000000000050505096767677A7E7E
      7E907E7E7E907E7E7E907E7E7E907E7E7E907E7E7E907E7E7E907E7E7E907E7E
      7E907E7E7E90777777891616161F000000000000000000000000000000000000
      00000000000000000000000000006161618C2A2A2A4A73737396EFEFEFFEA8A8
      A8D1848484B2EEEEEEFE67676792000000000000000000000000000000000000
      00000000000000000000000000006161618C2A2A2A4A73737396EFEFEFFEB5B5
      B5DC2020203600000000000000000000000000000000746B6280CED0D2FA1818
      1847181818471818184718181847181818471818184718181847181818471818
      184718181847999594CA9FA8B1C00000000000000000605D5972E6E8EBFEBEBE
      BEDFBEBEBEDFBEBEBEDFBEBEBEDFBEBEBEDFBEBEBEDFBEBEBEDFBEBEBEDFBEBE
      BEDFBEBEBEDFDDDBD9F6999DA0B3000000000000000000000000000000000000
      000000000000000000005F5F5F8AECECECFE2D2D2D4B141414277B7B7BA5EBEB
      EBFFEFEFEFFE797979A500000003000000000000000000000000000000000000
      000000000000000000005F5F5F8AECECECFE2D2D2D4B141414267676769CE7E7
      E7FDD5D5D5F31F1F1F34000000000000000000000000786C6080D0D0D0F70000
      0000000000000000000066625A831D1D1D2F0000000000000000000000000000
      0000000000008E8E8EB59CA8B4C00000000000000000786C6080D0D0D0F70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008E8E8EB59CA8B4C0000000000000000000000000000000000000
      0000000000005F5F5F8AECECECFEF0F0F0FF2D2D2D4B00000003797979A5EEEE
      EEFE797979A50A0A0A1B00000005000000000000000000000000000000000000
      0000000000005F5F5F8AECECECFEF0F0F0FF2D2D2D4B06060610000000003C3C
      3C5EE6E6E6FDB2B2B2DA010101060000000000000000786C6080D0D0D0F70000
      00000000000000000000B6AB9FC8E6E6E6FC7C7C7C990B0B0B16000000000000
      0000000000008E8E8EB59CA8B4C00000000000000000786C6080D0D0D0F70000
      00000000000000000000000000002C2C29450101010500000000000000000000
      0000000000008E8E8EB59CA8B4C0000000000000000027272741565656795656
      5679787878A3ECECECFEF0F0F0FFF0F0F0FF2D2D2D4F797979A5EEEEEEFE7979
      79A50D0D0D1DB7B7B7DD3939395A000000000000000027272741565656795656
      5679787878A3ECECECFEF0F0F0FFF0F0F0FF2D2D2D4B6C6C6C966A6A6A960000
      00007676769DEFEFEFFE3B3B3B5C0000000000000000786C6080D0D0D0F70000
      00000000000000000000B6AB9FC8F0F0F0FFF0F0F0FFD6D6D6F02D31344B0000
      0000000000008E8E8EB59CA8B4C000000000000000000A0A0A1F1414143D0000
      000000000000000000000000000076767695919191B001010106000000000000
      0000000000008E8E8EB59CA8B4C000000000000000006B6B6B8EF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF9E9E9ED9EEEEEEFE797979A50000
      00031D1D1D38EDEDEDFE828282A600000000000000006B6B6B8EF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF2D2D2D4B73737396ECECECFE2A2A
      2A4717171733ECECECFE808080A50000000000000000786C6080D0D0D0F70000
      00000000000000000000B6AB9FC8F0F0F0FFCECECEEB4B4B4B69000000030000
      0000000000008E8E8EB59CA8B4C000000000000000005D544A6ABCBCBCD8BCBC
      BCD8BCBCBCD8BCBCBCD8BCBCBCD8D5D5D5F1F0F0F0FF8E9193B1000000000000
      0000000000008E8E8EB59CA8B4C000000000000000006B6B6B8EF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFE797979A50D0D0D1F3333
      335703030308DBDBDBFFA2A2A2C800000000000000006B6B6B8EF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF2D2D2D4B73737396F0F0F0FF6363
      638501010106DADADAFFA0A0A0C60000000000000000786C6080D0D0D0F70000
      00000000000000000000A99C91C3727272900606061100000000000000000000
      0000000000008E8E8EB59CA8B4C000000000000000003F38334A808080988080
      8098808080988080809880808098B7B7B7D6EDEDEDFE5A5A5A77000000000000
      0000000000008E8E8EB59CA8B4C000000000000000006B6B6B8EF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFE797979A50D0D0D1FB6B6B6DA5B5B
      5B7D0303030DDDDDDDFE9B9B9BC100000000000000006B6B6B8EF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF2D2D2D4B73737396F0F0F0FF5B5B
      5B7D0303030DDDDDDDFE9B9B9BC10000000000000000786C6080D0D0D0F70000
      0000000000000000000005050510000000000000000000000000000000000000
      0000000000008E8E8EB59CA8B4C00000000000000000292623404949497B0000
      0000000000000000000000000000767572965A5A5A7700000000000000000000
      0000000000008E8E8EB59CA8B4C000000000000000006B6B6B8EF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEFEFEFFE797979A50000000370707094E0E0E0FB1818
      182D28282847EFEFEFFE7373739700000000000000006B6B6B8EF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF2D2D2D4B73737396E0E0E0FB1818
      182D28282847EFEFEFFE7373739700000000000000005D5A5770E6E8EBFEC3C3
      C3EAC3C3C3EAC3C3C3EAC3C3C3EAC3C3C3EAC3C3C3EAC3C3C3EAC3C3C3EAC3C3
      C3EAC3C3C3EADEDBD9F9979A9CB10000000000000000786C6080D0D0D0F70000
      00000000000000000000000000000D10101F0000000000000000000000000000
      0000000000008E8E8EB59CA8B4C000000000000000000C0C0C1D191919391A1A
      1A3C8F8F8FCFEFEFEFFE797979A51010102412121224565656813A3A3A5A0000
      0002989898C1ECECECFE2626264200000000000000000C0C0C1D191919391919
      19393C3C3C63DDDDDDF9F0F0F0FFF0F0F0FF2D2D2D4B565656813A3A3A5A0000
      0002989898C1ECECECFE26262642000000000000000003030308636363767C7C
      7C8C7C7C7C8C7C7C7C8C8C8C8CABDFDDDAF6C5C5C5E4A4A7ABC87C7C7C8C7C7C
      7C8C7C7C7C8C737373851414141C0000000000000000786C6080CED0D3F80B0B
      0B200B0B0B200B0B0B200B0B0B200B0B0B200B0B0B200B0B0B200B0B0B200B0B
      0B200B0B0B2095928FBF9CA8B4C0000000000000000000000000000000037A7A
      7AA5EEEEEEFE797979A510101023BBBBBBDF2D2D2D4B00000000010101046F6F
      6F9AEFEFEFFE8F8F8FB800000000000000000000000000000000000000000000
      00000000000032323250DDDDDDF9F0F0F0FF2D2D2D4B00000000010101046F6F
      6F9AEFEFEFFE8F8F8FB800000000000000000000000000000000000000000000
      0000000000000D0D0D1EADADADD4333333461212121EAEAEAED42F2F2F460000
      000000000000000000000000000000000000000000004545455AEFEFEFFEF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FF8686869D000000000000000000000003797979A5EEEE
      EEFE797979A5000000032C2C2C47DDDDDDF92D2D2D4B3030304CB0B0B0D7EFEF
      EFFEB2B2B2D80909091600000000000000000000000000000000000000000000
      0000000000000000000032323250DDDDDDF92D2D2D4B3030304CB0B0B0D7EFEF
      EFFEB2B2B2D80909091600000000000000000000000000000000000000000000
      00000000000064605B823333334600000000000000001212121E7F8487AA0000
      00000000000000000000000000000000000000000000000000002C2C2C394141
      4150414141504141415041414150414141504141415041414150414141504141
      4150414141503C3C3C490000000500000000000000003737375EEDEDEDFE7979
      79A5000000030000000000000000333333521F1F1F3873737396E1E1E1FC7B7B
      7BA2060606110000000000000000000000000000000000000000000000000000
      0000000000000000000000000000333333521F1F1F3873737396E1E1E1FC7B7B
      7BA2060606110000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000013737375E0000
      000300000000000000000000000000000000000000001A1A1A2F0C0C0C1D0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A1A1A2F0C0C0C1D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000030303300404043A0000
      000000000000060606610101011E000000000000000000000000000000000000
      00000000000000000000000000000000000000000000030303300404043F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F4F5757578100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000707075F0202021D07070766131313FF0E0E
      0EB70808087D121212FD06060661000000000000000000000000000000000000
      00000000000000000000000000000707075F0202021D07070766131313FF0E0E
      0EC5010101210000000000000000000000000000000000000000000000000000
      000000000000000000002F2F2F4FDBDBDBF9E8E8E8FF24242446000000000000
      00000000000000000000000000000000000000000000000000000D0D0D1E9999
      99CC1F1F1F390000000000000000000000000000000000000000000000000808
      0816959595C82828284400000000000000000000000000000000000000000000
      000000000000000000000707075F121212FC02020220000000050707075F1212
      12F3121212FE0808086D00000000000000000000000000000000000000000000
      000000000000000000000707075F121212FC02020220000000050707075B1212
      12E8101010E50202022000000000000000000000000000000000000000000000
      0000000000002F2F2F4FDBDBDBF9ECECECFF5F5F5F8D00000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A88EFEF
      EFFECFCFCFF11F1F1F390000000000000000000000000000000008080816A9A9
      A9D4F0F0F0FF959595C800000000000000000000000000000000000000000000
      0000000000000707075F121212FC131313FF02020220000000000808086D1212
      12FD0808086D0000000500000000000000000000000000000000000000000000
      0000000000000707075F121212FC131313FF0202022000000001000000000101
      0122121212E80F0F0FC200000000000000000000000000000000000000000000
      00002F2F2F4FDBDBDBF9ECECECFF6161618F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000037676
      76A7EFEFEFFECFCFCFF11F1F1F39000000000000000008080816A9A9A9D4F0F0
      F0FFA9A9A9D40808081600000000000000000000000002020225060606510606
      065108080877121212FC131313FF131313FF020202200808086D121212FD0808
      086D000000040C0C0CAE0303033F000000000000000002020225060606510606
      065108080877121212FC131313FF131313FF020202200707075F0707076A0000
      00000707075A131313FF05050541000000000000000000000000000000002F2F
      2F4FDBDBDBF9EDEDEDFF63636391000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0003767676A7EFEFEFFECFCFCFF11F1F1F3908080816A9A9A9D4F0F0F0FFA9A9
      A9D4080808160000000000000000000000000000000009090974131313FF1313
      13FF131313FF131313FF131313FF131313FF0B0B0B8D121212FD0808086D0000
      000000000007121212F30A0A0A8C000000000000000009090974131313FF1313
      13FF131313FF131313FF131313FF131313FF0202022007070766121212FC0202
      022500000004111111F10A0A0A8C0000000000000000000000002F2F2F4FDBDB
      DBF9EDEDEDFF6E6E6EAE0A0A0A1F0A0A0A1F0A0A0A1F0A0A0A1F0A0A0A1F0A0A
      0A1F0A0A0A1F0A0A0A1F06060615000000000000000000000000000000000000
      000000000003777777A7EFEFEFFECFCFCFF1ACACACD8F0F0F0FFA9A9A9D40808
      0816000000000000000000000000000000000000000009090974131313FF1313
      13FF131313FF131313FF131313FF131313FF121212FE0808086D000000040202
      022800000000101010CD0C0C0CAE000000000000000009090974131313FF1313
      13FF131313FF131313FF131313FF131313FF0202022007070766131313FF0606
      0661000000000F0F0FCB0C0C0CAC00000000000000002A2A2A46DBDBDBF9F0F0
      F0FFEDEDEDFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFA3A3A3D3000000000000000000000000000000000000
      00000000000000000003787878ABF0F0F0FFF0F0F0FFACACACD8080808160000
      0000000000000000000000000000000000000000000009090974131313FF1313
      13FF131313FF131313FF131313FF121212FE0808086D000000040C0C0CAB0606
      065900000000101010D10D0D0DA7000000000000000009090974131313FF1313
      13FF131313FF131313FF131313FF131313FF0202022007070766131313FF0606
      065900000000101010D10D0D0DA7000000000000000011111125BCBCBCE4F0F0
      F0FFEAEAEAFFB7B7B7E7B3B3B3DEB3B3B3DEB3B3B3DEB3B3B3DEB3B3B3DEB3B3
      B3DEB3B3B3DEB3B3B3DE7F7F7FB4000000000000000000000000000000000000
      00000000000008080816A8A8A8D4F0F0F0FFF0F0F0FFCFCFCFF11F1F1F390000
      0000000000000000000000000000000000000000000009090974131313FF1313
      13FF131313FF131313FF121212FE0808086D0000000006060661111111EF0000
      00130000000F121212F90808087D000000000000000009090974131313FF1313
      13FF131313FF131313FF131313FF131313FF0202022007070766111111EF0000
      00130000000F121212F90808087D00000000000000000000000011111125BCBC
      BCE4F0F0F0FF989898C50404040D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000008080816A8A8A8D4F0F0F0FFA8A8A8D4787878ABEFEFEFFECFCFCFF11F1F
      1F39000000000000000000000000000000000000000000000008000000110000
      00110909097F121212FE0808086D000000060000000904040447040404370000
      00000808087D121212FD02020228000000000000000000000008000000110000
      001104040437111111EC131313FF131313FF0202022004040447040404370000
      00000808087D121212FD02020228000000000000000000000000000000001111
      1125BCBCBCE4F0F0F0FF969696C40303030C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      0816A8A8A8D4F0F0F0FFA8A8A8D40808081600000003777777A7EFEFEFFECFCF
      CFF11F1F1F390000000000000000000000000000000000000000000000000808
      086D121212FD0808086D000000060D0D0DB20202022000000000000000000606
      064E121212FA0C0C0C9A00000000000000000000000000000000000000000000
      00000000000003030330111111EC131313FF0202022000000000000000000606
      064E121212FA0C0C0C9A00000000000000000000000000000000000000000000
      000011111125BCBCBCE4F0F0F0FF959595C30303030C00000000000000000000
      000000000000000000000000000000000000000000000000000008080816A8A8
      A8D4F0F0F0FFA8A8A8D408080816000000000000000000000003767676A7EFEF
      EFFECFCFCFF11F1F1F39000000000000000000000000000000000808086D1212
      12FD0808086D0000000001010126111111EC020202200101011E0C0C0C9B1212
      12FC0F0F0FC00000000900000000000000000000000000000000000000000000
      0000000000000000000003030330111111EC020202200101011E0C0C0C9B1212
      12FC0F0F0FC00000000900000000000000000000000000000000000000000000
      00000000000011111125BCBCBCE4F0F0F0FF939393C10303030B000000000000
      00000000000000000000000000000000000000000000000000005C5C5C8CEFEF
      EFFEA8A8A8D40808081600000000000000000000000000000000000000037676
      76A7EFEFEFFE999999CC00000000000000000000000003030335121212FD0808
      086D000000000000000000000000030303300000001507070766121212F30909
      0986000000060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030303300000001507070766121212F30909
      0986000000060000000000000000000000000000000000000000000000000000
      0000000000000000000011111125BCBCBCE4DBDBDBF92020203B000000000000
      0000000000000000000000000000000000000000000000000000010101075C5C
      5C8C080808160000000000000000000000000000000000000000000000000000
      00035A5A5A880D0D0D1E00000000000000000000000000000000030303350000
      00000000000000000000000000000000000000000000000000170000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000170000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000111111252A2A2A4600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FF3F000000000000FE3F000000000000FC0F000000000000C007000000000000
      C007000000000000C007000000000000C007000000000000C007000000000000
      C007000000000000FC3F000000000000FE3F000000000000FF3F000000000000
      FFFF000000000000FFFF000000000000FFFFFFFFFFFFFFFFE7E7E7E7FFFFFFFF
      E187E187E187FBFFE007E007E187F8FFF007F007E187F87FF00FF00FE187F81F
      F187F007E187F80FC1C3C003E187F80381C18001E187F80380018001E187F80F
      80018001E187F83FFC3FFC3FE187F87FFC3FFC3FE187F9FFFE3FFE3FF187FFFF
      FE7FFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8001
      FFFFFFFFFFFF8001FDFFFFFFFFFF8001FCFFFFFFFFFF89F1FC7FFFFFFFFF88F1
      FC3FE007FFFF8871FC1FF00FC0038C31FC1FF81FC0038E19FC3FFC3FFFFF8F01
      FC7FFE7FFFFF8F81FCFFFFFFFFFF8FC1FDFFFFFFFFFF8001FFFFFFFFFFFF8001
      FFFFFFFFFFFFC001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80018001FFFFFFFF
      80018001FFFFFFFF80018001FFBFFFFF80018FF1FF3FFFFF80018FF1FE3FFE7F
      80018FF1FC3FFC3F80018FF1F83FF81F80018FF1F83FF00F80018FF1FC3FE007
      80018FF1FE3FFFFF80018FF1FF3FFFFF80018001FFBFFFFF80018001FFFFFFFF
      C001C001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFFFFF81FF8F
      80018001FE01FE0780018001FC01FC039CF99FF9F801F8219C399E7980018011
      9C199E39800180019C198039800180019C798039800180019DF99E7980018001
      80019EF98001800180018001C043F843F81F80018003FC03F99FC0018607FE07
      FFFFFFFF8F9FFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FF9FFE7FFFFF
      FE01FE07FC3FC7E3FC03FC03F87FC3C3F843F823F0FFC18380018011E1FFE007
      80118001C001F00F800980098001F81F800980098001F81F80818001C1FFF00F
      80118011E0FFE007E063F863F07FC183C403FC03F83FC3C38E07FE07FC3FC7E3
      DF9FFF9FFE7FFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object TimerInfoHide: TTimer
    Enabled = False
    OnTimer = TimerInfoHideTimer
    Left = 625
    Top = 168
  end
  object TimerHideCursor: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = TimerHideCursorTimer
    Left = 624
    Top = 224
  end
  object ApplicationEvents: TApplicationEvents
    OnMessage = ApplicationEventsMessage
    Left = 704
    Top = 168
  end
  object TimerShowVolume: TTimer
    Enabled = False
    OnTimer = TimerShowVolumeTimer
    Left = 624
    Top = 400
  end
  object TimerNumber: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = TimerNumberTimer
    Left = 624
    Top = 344
  end
  object TimerRefresh: TTimer
    OnTimer = TimerRefreshTimer
    Left = 624
    Top = 280
  end
  object ImageList32: TImageList
    ColorDepth = cd32Bit
    Height = 32
    Width = 32
    Left = 704
    Top = 96
    Bitmap = {
      494C010101000800440020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E0E
      0E270000000000000000000000000000000000000000000000000303030D3535
      357A010101040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010102000000000E0E0E2DBEBE
      BEFF9B9B9BDF393939780404040E00000000000000000303030D797979C5E7E7
      E7FE626262AC0101010400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005252529C4F4F4F94000000000E0E0E2DD7D7
      D7FFF0F0F0FFEDEDEDFEA8A8A8E82B2B2B5F0303030D797979C5EDEDEDFEF0F0
      F0FFE7E7E7FE3535357A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F94E3E3E3FE5B5B5B97000000000E0E0E2DD7D7
      D7FFF0F0F0FFF0F0F0FFF0F0F0FFDFDFDFFFA3A3A3F8EDEDEDFEF0F0F0FFEDED
      EDFE797979C50303030D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004F4F4F94E3E3E3FEF0F0F0FF5B5B5B9700000000020202085050
      5093ACACACECECECECFDF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEDEDEDFE7979
      79C50303030D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F94E3E3E3FEF0F0F0FFF0F0F0FF5B5B5B9700000000000000000000
      00000303030B5252529EDCDCDCFFF0F0F0FFF0F0F0FFEDEDEDFE797979C50303
      030D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F95E3E3E3FEF0F0F0FFF0F0F0FFF0F0F0FF5B5B5B9700000000000000000000
      00000303030D797979C5EDEDEDFEF0F0F0FFEDEDEDFE797979C50303030D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F95E3E3
      E3FEF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF5B5B5B9700000000000000000303
      030D797979C5EDEDEDFEF0F0F0FFEDEDEDFE797979C50303030D000000002A2A
      2A60060606150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004F4F4F95E3E3E3FEF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF5B5B5B97000000000303030D7979
      79C5EDEDEDFEF0F0F0FFEDEDEDFE797979C50303030D000000003A3A3A77DBDB
      DBFF444444840000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060606139999
      99F2ACACACF2ACACACF2ACACACF2ACACACF2AFAFAFF8E3E3E3FEF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF5B5B5B970303030D797979C5EDED
      EDFEF0F0F0FFEDEDEDFE797979C50303030D0000000034343468DADADAFFF0F0
      F0FFA1A1A1E50000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000909091DCCCC
      CCFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF5F5F5FA4797979C5EDEDEDFEF0F0
      F0FFEDEDEDFE797979C50303030D000000000000000058585897F0F0F0FFF0F0
      F0FFD8D8D8FD1111113300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000909091DCCCC
      CCFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFB2B2B2FEEDEDEDFEF0F0F0FFEDED
      EDFE797979C50303030D0000000000000000000000001B1B1B4BE4E4E4FDF0F0
      F0FFEFEFEFFE2C2C2C6900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000909091DCCCC
      CCFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEDEDEDFE7979
      79C50303030D000000001919194700000002000000000909091DCDCDCDFFF0F0
      F0FFF0F0F0FF4D4D4D8900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000909091DCCCC
      CCFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEDEDEDFE797979C50303
      030D000000003535356EB1B1B1FF060606130000000000000005BFBFBFFFF0F0
      F0FFF0F0F0FF5B5B5B9800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000909091DCCCC
      CCFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEDEDEDFE797979C50303030D0000
      00003535356ED9D9D9FEC4C4C4FF0303030E000000000303030CC3C3C3FFF0F0
      F0FFF0F0F0FF5050508D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000909091DCCCC
      CCFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFEDEDEDFE797979C50303030D000000003535
      356ED9D9D9FEF0F0F0FFA4A4A4E600000000000000000D0D0D28D2D2D2FEF0F0
      F0FFF0F0F0FF3E3E3E7B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000909091DCCCC
      CCFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEDEDEDFE797979C50303030D000000000B0B0B24CCCC
      CCFFF0F0F0FFF0F0F0FF56565696000000000000000029292963EDEDEDFDF0F0
      F0FFE7E7E7FD1E1E1E5000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000909091DCCCC
      CCFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFEDEDEDFE797979C50303030D00000000000000000E0E0E2DD7D7
      D7FFF0F0F0FFB3B3B3F00909091E0000000000000000777777BAF0F0F0FFF0F0
      F0FFC3C3C3FD0505051000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101043131
      3172333333723333337233333372333333723838387F999999FBEFEFEFFEF0F0
      F0FFEDEDEDFE797979C50303030D0000000000000000000000000E0E0E2DD7D7
      D7FFBEBEBEF51D1D1D4B000000000000000013131337D2D2D2FDF0F0F0FFF0F0
      F0FF7A7A7ABD0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000303030D7B7B7BC5EDEDEDFEF0F0F0FFEDED
      EDFE797979C50303030D00000000414141854B4B4B92000000000909091D6969
      69BC0C0C0C26000000000000000002020208898989D1F0F0F0FFF0F0F0FFE0E0
      E0FE1D1D1D4C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000303030D7B7B7BC5EDEDEDFEF0F0F0FFEDEDEDFE7979
      79C50303030D000000004040407FDDDDDDFF5B5B5B9700000000000000000000
      0000000000000000000000000003636363ADEBEBEBFDF0F0F0FFF0F0F0FF7F7F
      7FC7000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000303030D7A7A7AC5EDEDEDFEF0F0F0FFEDEDEDFE797979C50303
      030D000000004040407FDDDDDDFFF0F0F0FF5B5B5B9700000000000000000000
      000000000000060606136F6F6FBBE8E8E8FEF0F0F0FFF0F0F0FFC0C0C0F50D0D
      0D26000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303030D7A7A7AC5EDEDEDFEF0F0F0FFEDEDEDFE797979C50303030D0000
      0000010101069E9E9EE9F0F0F0FFF0F0F0FF5B5B5B9700000000000000000606
      061436363674AEAEAEECEEEEEEFEF0F0F0FFF0F0F0FFD3D3D3FC2828285A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      030D7A7A7AC5EDEDEDFEF0F0F0FFEDEDEDFE797979C50303030D000000000000
      0000000000000F0F0F2CAAAAAAE9F0F0F0FF5B5B5B97000000000909091FB2B2
      B2FDECECECFDF0F0F0FFF0F0F0FFF0F0F0FFD2D2D2FC30303067000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007A7A
      7AC9EDEDEDFEF0F0F0FFEDEDEDFE797979C50303030D00000000000000000000
      000000000000000000000F0F0F2CAAAAAAE95B5B5B97000000000E0E0E2DD7D7
      D7FFF0F0F0FFF0F0F0FFEEEEEEFEAAAAAAE81C1C1C4600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      64B1E9E9E9FDEDEDEDFE797979C50303030D0000000000000000000000000000
      0000000000000000000000000000111111332121214A000000000E0E0E2DD7D7
      D7FFEBEBEBFDBBBBBBF64B4B4B8E060606150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0104646464B17A7A7AC90303030D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000070707176060
      60A7292929630606061400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFEFC7000000000000000000000000
      FFFF4183000000000000000000000000FFFE4003000000000000000000000000
      FFFC4003000000000000000000000000FFF84007000000000000000000000000
      FFF0700F000000000000000000000000FFE0701F000000000000000000000000
      FFC06027000000000000000000000000FF804047000000000000000000000000
      C0000083000000000000000000000000C0000183000000000000000000000000
      C0000383000000000000000000000000C0000483000000000000000000000000
      C0000883000000000000000000000000C0001083000000000000000000000000
      C0002183000000000000000000000000C0004183000000000000000000000000
      C000C183000000000000000000000000C001C307000000000000000000000000
      FE024607000000000000000000000000FC047C07000000000000000000000000
      F808780F000000000000000000000000F010601F000000000000000000000000
      E038403F000000000000000000000000E07C407F000000000000000000000000
      E0FE40FF000000000000000000000000E1FFC3FF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF00000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
