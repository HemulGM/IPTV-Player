unit BigTV.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, PasLibVlcUnit, PasLibVlcClassUnit,
  System.Generics.Collections, Vcl.Grids, HGM.Controls.VirtualTable, System.Types,
  HGM.Controls.PanelExt, HGM.Button, System.ImageList, Vcl.ImgList, Vcl.AppEvnts, IdHTTP, HGM.Popup,
  HGM.Common.Settings, Vcl.OleCtrls, SHDocVw, PasLibVlcPlayerUnit;

type
  TChannelGuideItem = record
   Date:TDateTime;
   Text:string;
  end;
  TChannelGuideItems = TTableData<TChannelGuideItem>;

  TChannel = record
    URL:string;
    Name:string;
    TVGName:string;
    Descriprion:string;
    Guide:TChannelGuideItems;
    Favorite:Boolean;
    Icon:TBitmap;
   private
    FFavorite: Boolean;
    function GetNowWatch: string;
    function GetNowWatchID: Integer;
   public
    function LoadGuide(Path:string):Boolean;
    function LoadIcon(Path:string):Boolean;
    property NowWatch:string read GetNowWatch;
    property NowWatchId:Integer read GetNowWatchID;
  end;
  TChannels = class(TTableData<TChannel>)
   public
    function GetIdByTVGName(TVGName:string):Integer;
  end;

  TFormMain = class(TForm)
    PanelTV: TPanel;
    PanelCtrl: TPanel;
    PanelVolume: TPanel;
    DrawPanelVolume: TDrawPanel;
    ButtonFlatMute: TButtonFlat;
    ImageList16: TImageList;
    ButtonFlatVolume100: TButtonFlat;
    TimerInfoHide: TTimer;
    DrawPanelInfo: TDrawPanel;
    PanelChannels: TPanel;
    PanelGuide: TPanel;
    TableExTvGuide: TTableEx;
    Panel2: TPanel;
    ButtonFlatCloseGuide: TButtonFlat;
    PanelChannel: TPanel;
    Panel3: TPanel;
    ButtonFlatCloseChannels: TButtonFlat;
    TableExChannels: TTableEx;
    PanelPopup: TPanel;
    ButtonFlat1: TButtonFlat;
    ButtonFlatQuit: TButtonFlat;
    Shape1: TShape;
    Shape2: TShape;
    TimerHideCursor: TTimer;
    ApplicationEvents: TApplicationEvents;
    CheckBoxStayOnTop: TCheckBoxFlat;
    TimerShowVolume: TTimer;
    TimerNumber: TTimer;
    DrawPanelLeftTop: TDrawPanel;
    TimerRefresh: TTimer;
    DrawPanelTopRight: TDrawPanel;
    ImageList32: TImageList;
    ButtonFlatPrevChannel: TButtonFlat;
    ButtonFlatVUP: TButtonFlat;
    ButtonFlatVDOWN: TButtonFlat;
    ButtonFlatNextChannel: TButtonFlat;
    CheckBoxPanelCtrl: TCheckBoxFlat;
    ButtonFlatClose: TButtonFlat;
    ButtonFlatMin: TButtonFlat;
    ButtonFlatMax: TButtonFlat;
    ButtonFlatMin2: TButtonFlat;
    TableExFavChannels: TTableEx;
    ButtonFlatPause: TButtonFlat;
    ButtonFlatPlay: TButtonFlat;
    VlcPlayer: TPasLibVlcPlayer;
    ButtonFlatTVGuide: TButtonFlat;
    procedure FormCreate(Sender: TObject);
    procedure TableExChannelsDblClick(Sender: TObject);
    procedure DrawPanelVolumePaint(Sender: TObject);
    procedure DrawPanelVolumeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DrawPanelVolumeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawPanelVolumeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TableExChannelsDrawCellData(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ButtonFlatMuteClick(Sender: TObject);
    procedure ButtonFlatVolume100Click(Sender: TObject);
    procedure DrawPanelVolumeMouseEnter(Sender: TObject);
    procedure DrawPanelVolumeMouseLeave(Sender: TObject);
    procedure DrawPanelVolumeMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure DrawPanelVolumeMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure VlcPlayerDblClick(Sender: TObject);
    procedure VlcPlayerMouseEnter(Sender: TObject);
    procedure TimerInfoHideTimer(Sender: TObject);
    procedure DrawPanelInfoPaint(Sender: TObject);
    procedure TableExChannelsMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TableExTvGuideGetData(FCol, FRow: Integer; var Value: string);
    procedure ButtonFlatCloseGuideClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ButtonFlatCloseChannelsClick(Sender: TObject);
    procedure VlcPlayerMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonFlatQuitClick(Sender: TObject);
    procedure ButtonFlat1Click(Sender: TObject);
    procedure VlcPlayerMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TimerHideCursorTimer(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure VlcPlayerMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TimerShowVolumeTimer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TimerNumberTimer(Sender: TObject);
    procedure DrawPanelLeftTopPaint(Sender: TObject);
    procedure DrawPanelCtrlPaint(Sender: TObject);
    procedure TimerRefreshTimer(Sender: TObject);
    procedure DrawPanelTopRightPaint(Sender: TObject);
    procedure CheckBoxStayOnTopClick(Sender: TObject);
    procedure ButtonFlatVUPClick(Sender: TObject);
    procedure ButtonFlatVDOWNClick(Sender: TObject);
    procedure ButtonFlatPrevChannelClick(Sender: TObject);
    procedure ButtonFlatNextChannelClick(Sender: TObject);
    procedure ApplicationEventsMessage(var Msg: tagMSG; var Handled: Boolean);
    procedure CheckBoxPanelCtrlClick(Sender: TObject);
    procedure PanelCtrlMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonFlatCloseClick(Sender: TObject);
    procedure ButtonFlatMaxClick(Sender: TObject);
    procedure ButtonFlatMinClick(Sender: TObject);
    procedure TableExChannelsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TableExFavChannelsDrawCellData(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableExFavChannelsItemClick(Sender: TObject;
      MouseButton: TMouseButton; const Index: Integer);
    procedure ButtonFlatPauseClick(Sender: TObject);
    procedure ButtonFlatPlayClick(Sender: TObject);
    procedure TableExTvGuideChangeItem(Sender: TObject; const Old: Integer;
      var New: Integer);
    procedure TableExChannelsChangeItem(Sender: TObject; const Old: Integer;
      var New: Integer);
    procedure ButtonFlatTVGuideClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure VlcPlayerClick(Sender: TObject);
  protected
   procedure WMQueryEndSession(var Msg: TWMQueryEndSession); message WM_QUERYENDSESSION;
   procedure CreateParams(var Params: TCreateParams); override;
   procedure WMNCHitTest(var message: TWMNCHitTest);message WM_NCHITTEST;
   procedure WMSize(var Message: TWMSize); message WM_SIZE;
  private
    FVolume:Integer;
    FPlayer:TPasLibVlcPlayer;
    FChannels:TChannels;
    FFavChannels:TChannels;
    FVolumeMD:Boolean;
    FVolumeDrawNum:Boolean;
    FVolumeMPos:TPoint;
    FVolumeMActive:Boolean;
    FFullScreen: Boolean;
    FOldSize:TRect;
    FMute:Boolean;
    FCurrentChannel:Integer;
    FShowGuide:Boolean;
    FCurrentGuide:Integer;
    FShowChannels:Boolean;
    FGuideList:TChannelGuideItems;
    FFormPopup:TFormPopup;
    FFreezPos:TPoint;
    FSettings:TSettingsIni;
    FShowVolume:Boolean;
    FIniting:Boolean;
    FShowNum:Boolean;
    FNum:string;
    FShowPanelCtrl:Boolean;
    FChannelsMouse:TPoint;
    FChannelFavoriteIn:Boolean;
    FTvGuideUrl:string;
    procedure SetVolume(const Value: Integer);
    procedure SetFullScreen(const Value: Boolean);
    procedure ShowInfo;
    procedure HideInfo;
    procedure OpenGuide(Index:Integer);
    procedure HideGuide;
    procedure ShowGuide;
    procedure HideChannels;
    procedure ShowChannels;
    procedure ShowPopup;
    procedure Quit;
    procedure Save;
    procedure ClosePopup;
    procedure ShowCursor(Value: Boolean);
    procedure LoadSettings;
    procedure SaveSettings;
    procedure LoadTVGuide(Url: string);
    procedure ShowVolume;
    procedure NextChannel;
    procedure PrevChannel;
    procedure NumPress(Num: Char);
    procedure HideNum;
    procedure ShowNum;
    procedure VolumeDown;
    procedure VolumeUp;
    procedure ShowWeb;
    procedure SetStayOnTop(Value: Boolean);
    procedure SetShowPanelCtrl(Value: Boolean);
    procedure LoadM3UPlayList(FileName: string; Dest: TChannels);
    procedure LoadChannelsInfo;
    procedure SaveChannelsInfo;
  public
    procedure Play(Index: Integer);
    procedure SetMute(Value:Boolean);
    property Volume:Integer read FVolume write SetVolume;
    property FullScreen:Boolean read FFullScreen write SetFullScreen;
    property Channels:TChannels read FChannels;
  end;

var
  FormMain: TFormMain;

  function GetMins(Time:TTime):Integer;

implementation
 uses Math, HGM.Common.Utils, Zip, IniFiles, Registry, BigTV.SmartGuide;

{$R *.dfm}

function GetMins(Time:TTime):Integer;
var H, M, S, MSec:Word;
begin
 DecodeTime(Time, H, M, S, MSec);
 Result:=H*60 + M;
end;

function GetSeconds(Time:TTime):Integer;
var H, M, S, MSec:Word;
begin
 DecodeTime(Time, H, M, S, MSec);
 Result:=(H*60 + M) * 60 + S;
end;

function GetIniFileName:string;
begin
 Result:=ExtractFilePath(Application.ExeName)+'config.ini';
end;

procedure TFormMain.ShowCursor(Value:Boolean);
begin
 if Value then VlcPlayer.Cursor:=crDefault else
  begin
   VlcPlayer.Cursor:=crNone;
   FFreezPos:=Mouse.CursorPos;
  end;
end;

procedure TFormMain.WMSize(var Message: TWMSize);
begin
 inherited;
 Invalidate;
end;

procedure TFormMain.LoadTVGuide(Url:string);
var HTTP:TIdHTTP;
    Stream:TMemoryStream;
    ZIP:TZipFile;
    Ini:TIniFile;
  i: Integer;
begin
 if not FileExists(GetIniFileName) then FileClose(FileCreate(GetIniFileName));
 if Url.IsEmpty then Exit;
 Ini:=TIniFile.Create(GetIniFileName);
 if Ini.ReadDateTime('Info', 'LastTvGuideCheck', Now-2) < Now-1/24*12 then
  begin
   HTTP:=TIdHTTP.Create(nil);
   HTTP.HandleRedirects:=True;
   Stream:=TMemoryStream.Create;
   Zip:=TZipFile.Create;
   try
    HTTP.Get(Url, Stream);
    Stream.SaveToFile(ExtractFilePath(Application.ExeName)+'\TvGuide\tv.zip');
    Zip.ExtractZipFile(ExtractFilePath(Application.ExeName)+'\TvGuide\tv.zip', ExtractFilePath(Application.ExeName)+'\TvGuide\', nil);
   finally
    HTTP.Free;
    Stream.Free;
    Zip.Free;
   end;
   Ini.WriteDateTime('Info', 'LastTvGuideCheck', Now);
  end;
 Ini.Free;
 for i:= 0 to FChannels.Count-1 do
  FChannels[i].LoadGuide(ExtractFilePath(Application.ExeName)+'TvGuide\');
end;

function ReadTVGuide(FileNames, TVG:string; List:TChannelGuideItems):Boolean;

function ToInteger(Bytes:array of Byte):Integer;
begin
 if Length(Bytes) = 2
 then Exit(PWORD(@Bytes[0])^)
 else Exit(PInteger(@Bytes[0])^);
end;

var
 ft, bt: TFILETIME;
 STime: SYSTEMTIME;
 NDX, PDT: file of Byte;
 i, BLen: integer;
 Text: PAnsiChar;
 Str: string;
 Buf:array[1..12] of Byte;
 Item:TChannelGuideItem;
 LDate:TDate;
begin
 Result:=False;
 List.Clear;
 AssignFile(NDX, FileNames + TVG + '.ndx'); Reset(NDX);
 AssignFile(PDT, FileNames + TVG + '.pdt'); Reset(PDT);
 try
  Read(NDX, Buf[1], Buf[2]);
  for i:= 1 to ToInteger([Buf[1], Buf[2]]) do
   begin
    BlockRead(NDX, Buf, 12);
    ft.dwLowDateTime:=ToInteger([Buf[3], Buf[4], Buf[5], Buf[6]]);
    ft.dwHighDateTime:=ToInteger([Buf[7], Buf[8], Buf[9], Buf[10]]);
    FileTimeToLocalFileTime(ft, bt);
    FileTimeToSystemTime(bt, STime);
    Seek(PDT, ToInteger([Buf[11], Buf[12]]));
    Read(PDT, Buf[1], Buf[2]);
    BLen:=ToInteger([Buf[1], Buf[2]]);
    GetMem(Text, BLen);
    BlockRead(PDT, Text^, BLen);
    Str:=Text;
    SetLength(Str, BLen);
    with STime do
     begin
      //GetTimeZoneInformation() 469

      Item.Date:=EncodeDate(wYear, wMonth, wDay)+EncodeTime(wHour, wMinute, 0, 0);
      if TVG = '469' then Item.Date:=Item.Date - (1/24)*11 //СТС Love
      else Item.Date:=Item.Date - (1/24)*7;
      Item.Text:=Str;
      List.Add(Item);
      if (List.Count = 1) or (Trunc(LDate) <> Trunc(Item.Date)) then
       begin
        LDate:=Item.Date;
        Item.Date:=0;

        Item.Text:='';
        List.Insert(List.Count-1, Item);

        Item.Text:=FormatDateTime('dd, mmm, ddd', LDate);
        List.Insert(List.Count-1, Item);

        Item.Text:='';
        List.Insert(List.Count-1, Item);
       end;
     end;
    FreeMem(Text);
    Result:=True;
   end;
 except
  Result:=False;
 end;
 CloseFile(NDX);
 CloseFile(PDT);
end;

procedure TFormMain.LoadM3UPlayList(FileName:string; Dest:TChannels);
var TMPstr: TStrings;
    i: integer;
    s: string;
    Item:TChannel;
    Fill:Boolean;
begin
 Dest.Clear;
 TMPstr:=TStringList.Create;
 TMPstr.LoadFromFile(FileName, TEncoding.UTF8);
 TMPstr.NameValueSeparator:=',';
 Fill:=False;
 FTvGuideUrl:='';
 for i:=0 to TMPstr.Count - 1 do
  begin
   s:=TMPstr.Strings[i];
   if s = '' then Continue;
   if Pos('#extm3u', AnsiLowerCase(s)) > 0 then
    begin
     if Pos('url-tvg', AnsiLowerCase(s)) > 0 then
      begin
       FTvGuideUrl:=Copy(s, Pos('"', s)+1, Length(s)-(Pos('"', s)+1));
       FTvGuideUrl:=Copy(FTvGuideUrl, 1, Pos('"', FTvGuideUrl)-1);
      end;
     Continue;
    end;
   if Pos('#extinf', AnsiLowerCase(s)) > 0 then
    begin
     Item.Name:=Trim(TMPstr.ValueFromIndex[i]);
     Item.TVGName:=Trim(TMPstr.KeyNames[i]);
     if Pos('tvg-name', AnsiLowerCase(Item.TVGName)) > 0 then
      Item.TVGName:=Copy(Item.TVGName, Pos('"', Item.TVGName)+1, Length(Item.TVGName)-(Pos('"', Item.TVGName)+1))
     else Item.TVGName:=Item.Name;
     Fill:=True;
     Continue;
    end;
   if (Pos('#', s) = 0) and (Fill) then
    begin
     Item.URL:=s;
     Item.Guide:=TChannelGuideItems.Create;
     Item.Icon:=TBitmap.Create;
     Item.LoadIcon(ExtractFilePath(FileName)+'\Icons');
     Item.Favorite:=False;
     Dest.Add(Item);
     Fill:=False;
    end;
  end;
 TMPstr.Free;
end;

procedure TFormMain.LoadChannelsInfo;
var i:Integer;
    Ch:TChannel;
begin
 for i:= 0 to FChannels.Count-1 do
  begin
   if FSettings.GetBool(FChannels[i].TVGName, 'IsFavorite', False) then
    begin
     Ch:=FChannels[i];
     Ch.Favorite:=True;
     FChannels[i]:=Ch;
     FFavChannels.Add(Ch);
    end;
  end;
end;

procedure TFormMain.SaveChannelsInfo;
var i:Integer;
begin
 for i:= 0 to FChannels.Count-1 do
  begin
   FSettings.SetBool(FChannels[i].TVGName, 'IsFavorite', FChannels[i].Favorite);
  end;
end;

procedure TFormMain.SetMute(Value:Boolean);
begin
 if not Value then
  ButtonFlatMute.ImageIndex:=20
 else
  ButtonFlatMute.ImageIndex:=6;

 if FMute = Value then Exit;
 FMute:=Value;
 DrawPanelTopRight.Visible:=FMute;
 DrawPanelTopRight.Repaint;
 if not FMute then
  begin
   if Volume > 0 then
    FPlayer.SetAudioVolume(Volume)
   else Volume:=10;
  end
 else
  begin
   FPlayer.SetAudioVolume(0);
  end;
end;

procedure TFormMain.SetShowPanelCtrl(Value:Boolean);
begin
 PanelCtrl.Visible:=Value;
 FormResize(nil);
end;

procedure TFormMain.CheckBoxPanelCtrlClick(Sender: TObject);
begin
 ClosePopup;
 FShowPanelCtrl:=CheckBoxPanelCtrl.Checked;
 if not FFullScreen then
  SetShowPanelCtrl(FShowPanelCtrl);
end;

procedure TFormMain.CheckBoxStayOnTopClick(Sender: TObject);
begin
 ClosePopup;
 SetStayOnTop(CheckBoxStayOnTop.Checked);
end;

procedure TFormMain.ShowWeb;
begin

end;

procedure TFormMain.ClosePopup;
begin
 if Assigned(FFormPopup) then FFormPopup.Close;
end;

procedure TFormMain.ApplicationEventsMessage(var Msg: tagMSG; var Handled: Boolean);
begin
 if (Msg.Message = WM_SYSCOMMAND) and (Msg.wParam = SC_SCREENSAVE) then Handled:=True;
end;

procedure TFormMain.ButtonFlat1Click(Sender: TObject);
begin
 ClosePopup;
 ShowChannels;
end;

procedure TFormMain.VolumeUp;
begin
 Volume:=Volume + 2;
end;

procedure TFormMain.VolumeDown;
begin
 Volume:=Volume - 2;
end;

procedure TFormMain.ButtonFlatPauseClick(Sender: TObject);
begin
 FPlayer.Pause;
end;

procedure TFormMain.ButtonFlatPlayClick(Sender: TObject);
begin
 FPlayer.Resume;
end;

procedure TFormMain.ButtonFlatPrevChannelClick(Sender: TObject);
begin
 PrevChannel;
end;

procedure TFormMain.ButtonFlatVUPClick(Sender: TObject);
begin
 VolumeUp;
end;

procedure TFormMain.ButtonFlatVDOWNClick(Sender: TObject);
begin
 VolumeDown;
end;

procedure TFormMain.ButtonFlatNextChannelClick(Sender: TObject);
begin
 NextChannel;
end;

procedure TFormMain.ButtonFlatCloseChannelsClick(Sender: TObject);
begin
 HideChannels;
end;

procedure TFormMain.ButtonFlatCloseClick(Sender: TObject);
begin
 Quit;
end;

procedure TFormMain.ButtonFlatCloseGuideClick(Sender: TObject);
begin
 HideGuide;
end;

procedure TFormMain.ButtonFlatMaxClick(Sender: TObject);
begin
 FullScreen:=not FullScreen;
end;

procedure TFormMain.ButtonFlatMinClick(Sender: TObject);
begin
 Application.Minimize;
end;

procedure TFormMain.ButtonFlatMuteClick(Sender: TObject);
begin
 SetMute(not FMute);
end;

procedure TFormMain.Save;
begin
 SaveSettings;
 SaveChannelsInfo;
end;

procedure TFormMain.Quit;
begin
 Hide;
 FPlayer.SetAudioVolume(0);
 FPlayer.Stop;
 Save;
 Application.Terminate;
end;

procedure TFormMain.ButtonFlatQuitClick(Sender: TObject);
begin
 ClosePopup;
 Quit;
end;

procedure TFormMain.ButtonFlatTVGuideClick(Sender: TObject);
begin
 FormGuide.Show;
end;

procedure TFormMain.ButtonFlatVolume100Click(Sender: TObject);
begin
 Volume:=100;
end;

procedure TFormMain.ShowInfo;
begin
 DrawPanelInfo.Show;
 DrawPanelInfo.BringToFront;
 DrawPanelLeftTop.Show;
 DrawPanelLeftTop.BringToFront;
 TimerInfoHide.Interval:=5000;
 TimerInfoHide.Enabled:=False;
 TimerInfoHide.Enabled:=True;
end;

procedure TFormMain.HideInfo;
begin
 DrawPanelInfo.Hide;
 if not FShowNum then DrawPanelLeftTop.Hide;
 TimerInfoHide.Enabled:=False;
end;

procedure TFormMain.VlcPlayerClick(Sender: TObject);
begin
 VlcPlayer.SetFocus;
end;

procedure TFormMain.VlcPlayerDblClick(Sender: TObject);
begin
 FullScreen:=not FullScreen;
end;

procedure TFormMain.VlcPlayerMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const SC_DRAGMOVE = $F012;
begin
 case Button of
  TMouseButton.mbLeft: if not DrawPanelInfo.Visible then ShowInfo else HideInfo;
 end;
 if not FFullScreen then
  begin
   ReleaseCapture;
   Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

procedure TFormMain.VlcPlayerMouseEnter(Sender: TObject);
begin
 if Assigned(FFormPopup) then
  if FFormPopup.Visible then Exit;
 VlcPlayer.SetFocus;
end;

procedure TFormMain.VlcPlayerMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
 if FFreezPos.Distance(Mouse.CursorPos) > 5 then
  begin
   ShowCursor(True);
   TimerHideCursor.Enabled:=False;
   TimerHideCursor.Enabled:=True;
  end;
 if FFullScreen then
  if (VlcPlayer.Height - Y) < 3 then
       SetShowPanelCtrl(True)
  else SetShowPanelCtrl(False);

end;

procedure TFormMain.ShowPopup;
begin
 FFormPopup:=TFormPopup.Create(Self, PanelPopup, Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TFormMain.VlcPlayerMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 case Button of
  TMouseButton.mbRight: ShowPopup;
  TMouseButton.mbMiddle: SetMute(not FMute);
 end;
end;

procedure TFormMain.DrawPanelCtrlPaint(Sender: TObject);
begin
 //
end;

procedure TFormMain.DrawPanelInfoPaint(Sender: TObject);
var R:TRect;
    S, S2:string;
    G1, G2:TChannelGuideItem;
    i, t1, t2:Integer;

function GetFontSize(Text:string):Integer;
var Sz:TSize;
begin
 with DrawPanelInfo.Canvas do
  begin
   Font.Size:=8;
   repeat
    Font.Size:=Font.Size + 1;
    Sz:=TextExtent(S);
   until (Sz.Height > R.Height) or (Sz.Width > R.Width-Round(R.Width * 15/100));
   Result:=Font.Size-1;
  end;
end;

begin
 with DrawPanelInfo.Canvas do
  begin
   Pen.Color:=$00202020;
   Brush.Color:=$00444444;
   Rectangle(DrawPanelInfo.ClientRect);

   Font.Color:=clWhite;
   if FShowVolume then
    begin
     Brush.Style:=bsSolid;
     Brush.Color:=$00363636;
     R:=DrawPanelInfo.ClientRect;
     R.Inflate(-1, -1);
     R.Width:=Round(R.Width * (FVolume/100));
     FillRect(R);
     R:=DrawPanelInfo.ClientRect;
     R.Inflate(-1, -1);
     S:='Громкость: '+IntToStr(FVolume);
     Font.Size:=GetFontSize(S);
     Brush.Style:=bsClear;
     TextRect(R, S, [tfSingleLine, tfCenter, tfVerticalCenter, tfWordEllipsis]);
     Exit;
    end;
   R:=DrawPanelInfo.ClientRect;
   R.Inflate(-3, -3);
   Brush.Style:=bsSolid;
   if IndexInList(FCurrentChannel, FChannels.Count) then
    i:=FChannels[FCurrentChannel].GetNowWatchID
   else i:=-1;
   if (i <> -1) and IndexInList(i, FChannels[FCurrentChannel].Guide.Count) then
    begin
     G1:=FChannels[FCurrentChannel].Guide[i];

     S:=FormatDateTime('HH:nn', G1.Date)+' '+G1.Text;
     S2:='';
     Font.Size:=GetFontSize(S);

     if IndexInList(FChannels[FCurrentChannel].GetNowWatchID+1, FChannels[FCurrentChannel].Guide.Count) then
      begin
       G2:=FChannels[FCurrentChannel].Guide[FChannels[FCurrentChannel].GetNowWatchID+1];
       t1:=GetSeconds(Now);
       S2:=FormatDateTime('HH:nn', G2.Date);
       t1:=Round(100 / (GetSeconds(G2.Date) - GetSeconds(G1.Date)) * (t1 - GetSeconds(G1.Date)));
       Brush.Style:=bsSolid;
       Brush.Color:=$00363636;
       R:=DrawPanelInfo.ClientRect;
       R.Inflate(-1, -1);
       R.Width:=Round(R.Width * (t1/100));
       FillRect(R);
       R:=DrawPanelInfo.ClientRect;
       R.Inflate(-3, -3);
      end;
     Brush.Style:=bsClear;
     TextRect(R, S, [tfSingleLine, tfVerticalCenter, tfWordEllipsis]);
     TextRect(R, S2, [tfSingleLine, tfRight, tfVerticalCenter]);
    end
   else
    begin
     S:='Нет информации';
     Font.Size:=GetFontSize(S);
     TextRect(R, S, [tfSingleLine, tfVerticalCenter, tfWordEllipsis]);
    end;
  end;
end;

procedure TFormMain.DrawPanelLeftTopPaint(Sender: TObject);
var R:TRect;
    S:string;
    i:Integer;

function GetFontSize(Text:string):Integer;
var Sz:TSize;
begin
 with DrawPanelLeftTop.Canvas do
  begin
   Font.Size:=8;
   repeat
    Font.Size:=Font.Size + 1;
    Sz:=TextExtent(S);
   until (Sz.Height > R.Height) or (Sz.Width > DrawPanelInfo.Width-Round(DrawPanelInfo.Width * 10/100));
   Result:=Font.Size-1;
   if DrawPanelLeftTop.Width <> Sz.Width then DrawPanelLeftTop.Width:=Sz.Width;
  end;
end;

begin
 with DrawPanelLeftTop.Canvas do
  begin
   Pen.Color:=$00202020;
   Brush.Color:=$00444444;
   Brush.Style:=bsSolid;
   Rectangle(DrawPanelLeftTop.ClientRect);

   Font.Color:=clWhite;
   if FShowNum then
    begin
     R:=DrawPanelLeftTop.ClientRect;
     R.Inflate(-3, -3);
     S:=' '+FNum+' ';
     if S = '' then S:=' - ';
     Font.Style:=[fsUnderline];
     Font.Size:=GetFontSize(S);
     Brush.Style:=bsClear;
     TextRect(R, S, [tfSingleLine, tfCenter, tfVerticalCenter]);
     Exit;
    end;
   Font.Style:=[];
   R:=DrawPanelLeftTop.ClientRect;
   R.Inflate(-3, -3);
   Brush.Style:=bsClear;
   if IndexInList(FCurrentChannel, FChannels.Count) then
    begin
     S:=' '+IntToStr(FCurrentChannel+1)+' '+FChannels[FCurrentChannel].Name+' | '+FormatDateTime('HH:nn ', Now);
     Font.Size:=GetFontSize(S);
     TextRect(R, S, [tfSingleLine, tfCenter, tfVerticalCenter]);
    end
   else
    begin
     S:=' '+FormatDateTime('HH:nn ', Now);
     Font.Size:=GetFontSize(S);
     TextRect(R, S, [tfSingleLine, tfCenter, tfVerticalCenter]);
    end;
  end;
end;

procedure TFormMain.DrawPanelTopRightPaint(Sender: TObject);
begin
 with DrawPanelTopRight.Canvas do
  begin
   Pen.Color:=$00202020;
   Brush.Color:=$00444444;
   Brush.Style:=bsSolid;
   Rectangle(DrawPanelTopRight.ClientRect);

   if FMute then
    begin
     ImageList32.Draw(DrawPanelTopRight.Canvas, DrawPanelTopRight.Width div 2 - 16, DrawPanelTopRight.Width div 2 - 16, 0, True);
    end;
  end;
end;

procedure TFormMain.DrawPanelVolumeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 FVolumeMD:=True;
 FVolumeMPos:=Point(X, Y);
 if FVolumeMD then
  begin
   Volume:=Max(0, Min(100, Round(100 / DrawPanelVolume.Width * FVolumeMPos.X)));
  end;
 DrawPanelVolume.Repaint;
end;

procedure TFormMain.DrawPanelVolumeMouseEnter(Sender: TObject);
begin
 FVolumeMActive:=True;
 DrawPanelVolume.SetFocus;
 DrawPanelVolume.Repaint;
end;

procedure TFormMain.DrawPanelVolumeMouseLeave(Sender: TObject);
begin
 FVolumeMActive:=False;
 FVolumeDrawNum:=False;
 DrawPanelVolume.Repaint;
end;

procedure TFormMain.DrawPanelVolumeMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
 FVolumeMPos:=Point(X, Y);
 if FVolumeMD then
  begin
   Volume:=Max(0, Min(100, Round(100 / DrawPanelVolume.Width * FVolumeMPos.X)));
  end;
 DrawPanelVolume.Repaint;
end;

procedure TFormMain.DrawPanelVolumeMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 FVolumeMD:=False;
 DrawPanelVolume.Repaint;
end;

procedure TFormMain.DrawPanelVolumeMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
 FVolumeDrawNum:=True;
 VolumeDown;
 Handled:=True;
end;

procedure TFormMain.DrawPanelVolumeMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
 FVolumeDrawNum:=True;
 VolumeUp;
 Handled:=True;
end;

procedure TFormMain.WMNCHitTest(var message: TWMNCHitTest);
const EDGEDETECT = 7;
var deltaRect:TRect;
begin
 inherited;
 if BorderStyle = bsNone then
  with Message, deltaRect do
   begin
    Left:=XPos - BoundsRect.Left;
    Right:=BoundsRect.Right - XPos;
    Top:=YPos - BoundsRect.Top;
    Bottom:=BoundsRect.Bottom - YPos;
    if (Top < EDGEDETECT) and (Left < EDGEDETECT) then Result:=HTTOPLEFT else
    if (Top < EDGEDETECT) and (Right < EDGEDETECT) then Result:=HTTOPRIGHT else
    if (Bottom < EDGEDETECT) and (Left < EDGEDETECT) then Result:=HTBOTTOMLEFT else
    if (Bottom < EDGEDETECT) and (Right < EDGEDETECT) then Result:=HTBOTTOMRIGHT else
    if (Top < EDGEDETECT) then Result:=HTTOP else
    if (Left < EDGEDETECT) then Result:=HTLEFT else
    if (Bottom < EDGEDETECT) then Result:=HTBOTTOM else
    if (Right < EDGEDETECT) then Result:=HTRIGHT;
   end;
end;

procedure TFormMain.CreateParams(var Params: TCreateParams);
begin
 inherited;
 Params.ExStyle:=Params.ExStyle or WS_EX_COMPOSITED;
end;

procedure TFormMain.DrawPanelVolumePaint(Sender: TObject);
var Rct:TRect;
    Str:string;
begin
 with DrawPanelVolume.Canvas do
  begin
   Rct:=DrawPanelVolume.ClientRect;
   Brush.Color:=DrawPanelVolume.Color;
   FillRect(Rct);
   if FVolumeMActive then
    Brush.Color:=ColorLighter(clDkGray)
   else
    Brush.Color:=clDkGray;
   Rct.Width:=Round(Rct.Width * (FVolume / 100));
   FillRect(Rct);
   if FVolumeMD then
    begin
     Str:=IntToStr(FVolume);
     Font.Color:=DrawPanelVolume.Color;
     Font.Style:=[fsBold];
     TextRect(Rct, Str, [tfSingleLine, tfVerticalCenter, tfCenter]);
    end;
  end;
end;

procedure TFormMain.LoadSettings;
begin
 FSettings.GetParamWindow(Self.Name, Self, [wpsCoord, wpsSize]);
 Width:=Max(300, Width);
 Height:=Max(300, Height);
 FOldSize:=Rect(Left, Top, Width, Height);
 FullScreen:=FSettings.GetBool('General', 'FullScreen', False);
 Volume:=FSettings.GetInt('General', 'Volume', 50);
 FShowPanelCtrl:=FSettings.GetBool('General', 'ShowPanelCtrl', True);
 CheckBoxPanelCtrl.Checked:=FShowPanelCtrl;
 CheckBoxStayOnTop.Checked:=FSettings.GetBool('General', 'StayOnTop', False);
end;

procedure TFormMain.SaveSettings;
begin
 if not FullScreen then
  FSettings.SetParamWindow(Self.Name, Self, [wpsCoord, wpsSize]);
 if IndexInList(FCurrentChannel, FChannels.Count) then
  FSettings.SetStr('General', 'Channel', FChannels[FCurrentChannel].TVGName);
 FSettings.SetBool('General', 'FullScreen', FullScreen);
 FSettings.SetInt('General', 'Volume', Volume);
 FSettings.SetBool('General', 'ShowPanelCtrl', FShowPanelCtrl);
 FSettings.SetBool('General', 'StayOnTop', CheckBoxStayOnTop.Checked);
end;

procedure TFormMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CanClose:=False;
 Quit;
end;

procedure TFormMain.SetStayOnTop(Value:Boolean);
begin
 if Value then
  SetWindowPos(Handle, HWND_TOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE)
 else SetWindowPos(Handle, HWND_NOTOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE)
end;

procedure TFormMain.FormCreate(Sender: TObject);

function GetSavedChannel:Integer;
var Str:string;
begin
 Str:=FSettings.GetStr('General', 'Channel', '');
 if Str <> '' then
  begin
   Result:=FChannels.GetIdByTVGName(Str);
   if not IndexInList(Result, FChannels.Count) then Result:=0;
  end;
end;

begin
 //Init
 FIniting:=True;
 FMute:=False;
 FNum:='';
 FShowVolume:=False;
 FShowNum:=False;
 FCurrentGuide:=-1;
 FOldSize:=Rect(Left, Top, Width, Height);
 VlcPlayer.OnMouseWheelUp:=DrawPanelVolumeMouseWheelUp;
 VlcPlayer.OnMouseWheelDown:=DrawPanelVolumeMouseWheelDown;
 FPlayer:=VlcPlayer;
 FPlayer.SetAudioVolume(FVolume);
 FPlayer.TabStop:=True;
 //FPlayer.VLC.AddOption(':sout=#duplicate{dst=display,dst=std{access=file,mux=mp4,dst="D:\t.mp4"}}');
 //Set
 HideChannels;
 HideInfo;
 ColorImages(ImageList16, 16, $002AD4FF);
 ColorImages(ImageList16, 17, $002AD4FF);
 //Create
 FChannels:=TChannels.Create(TableExChannels);
 FFavChannels:=TChannels.Create(TableExFavChannels);
 FSettings:=TSettingsIni.Create(GetIniFileName);
 //Load
 LoadSettings;
 LoadM3UPlayList(GetCurrentDir+'\IpTvPlayer.m3u', FChannels);
 LoadTVGuide(FTvGuideUrl);
 LoadChannelsInfo;
 //Start
 FIniting:=False;
 Play(GetSavedChannel);
 SetStayOnTop(CheckBoxStayOnTop.Checked);
 SetShowPanelCtrl(FShowPanelCtrl);
 //
 ShowWeb;
end;

procedure TFormMain.ShowNum;
begin
 FShowNum:=True;
 DrawPanelLeftTop.Show;
 DrawPanelLeftTop.Repaint;
end;

procedure TFormMain.HideNum;
begin
 DrawPanelLeftTop.Hide;
 FShowNum:=False;
end;

procedure TFormMain.NumPress(Num:Char);
var I:Integer;
begin
 FNum:=FNum+Num;
 if not TryStrToInt(FNum, I) then
  begin
   FNum:='';
   TimerNumber.Enabled:=False;
   HideNum;
   Exit;
  end;

 TimerNumber.Enabled:=False;
 TimerNumber.Enabled:=True;
 ShowNum;
end;

procedure TFormMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
 case Key of
  'M':SetMute(not FMute);
  '0'..'9': NumPress(Key);
 end;
end;

procedure TFormMain.NextChannel;
begin
 FCurrentChannel:=FCurrentChannel+1;
 if not IndexInList(FCurrentChannel, FChannels.Count) then FCurrentChannel:=0;
 Play(FCurrentChannel);
end;

procedure TFormMain.PrevChannel;
begin
 FCurrentChannel:=FCurrentChannel-1;
 if not IndexInList(FCurrentChannel, FChannels.Count) then FCurrentChannel:=FChannels.Count-1;
 Play(FCurrentChannel);
end;

procedure TFormMain.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 case Key of
  VK_LEFT: PrevChannel;
  VK_RIGHT: NextChannel;
  VK_ESCAPE: FullScreen:=False;
  VK_RETURN:
   begin
    if FNum = '' then
     FullScreen:=not FullScreen
    else TimerNumberTimer(nil);
   end;
  VK_SPACE: ShowInfo;
  VK_TAB:
   begin
    Key:=0;
    ShowChannels;
   end;
  VK_DOWN:VolumeDown;
  VK_UP:VolumeUp;
 end;
end;

procedure TFormMain.FormResize(Sender: TObject);
begin
 DrawPanelInfo.Height:=Max(50, Round(PanelTV.Height * (10/100)));
 DrawPanelInfo.Left:=PanelTV.Left + 10;
 DrawPanelInfo.Top:=PanelTV.Top + PanelTV.Height - DrawPanelInfo.Height - 10;
 DrawPanelInfo.Width:=PanelTV.Width - 10*2;

 DrawPanelLeftTop.Left:=DrawPanelInfo.Left;
 DrawPanelLeftTop.Height:=DrawPanelInfo.Height;
 //DrawPanelLeftTop.Width:=Round(DrawPanelLeftTop.Height * 2);

 DrawPanelTopRight.Height:=DrawPanelInfo.Height;
 DrawPanelTopRight.Width:=DrawPanelTopRight.Height;
 DrawPanelTopRight.Left:=ClientWidth - (DrawPanelTopRight.Width + 8);
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
 FormResize(nil);
end;

procedure TFormMain.PanelCtrlMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const SC_DRAGMOVE = $F012;
begin
 if not FFullScreen then
  begin
   ReleaseCapture;
   Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

procedure TFormMain.SetFullScreen(const Value: Boolean);
begin
 FFullScreen:= Value;
 if FFullScreen then
  begin
   HideChannels;
   SetShowPanelCtrl(False);
   FOldSize:=Rect(Left, Top, Width, Height);
   Left:=0;
   Top:=0;
   Height:=Screen.Height;
   Width:=Screen.Width;
   Padding.SetBounds(0, 0, 0, 0);
   //FPlayer.SetFullScreen(True);
   BringToFront;
   ShowCursor(False);
  end
 else
  begin
   Left:=FOldSize.Left;
   Top:=FOldSize.Top;
   Height:=FOldSize.Bottom;
   Width:=FOldSize.Right;
   Padding.SetBounds(2, 2, 2, 2);
   SetShowPanelCtrl(FShowPanelCtrl);
   //FPlayer.SetFullScreen(False);
   ShowCursor(True);
  end;
end;

procedure TFormMain.ShowVolume;
begin
 FShowVolume:=True;
 TimerShowVolume.Enabled:=False;
 TimerShowVolume.Enabled:=True;
 ShowInfo;
 DrawPanelInfo.Repaint;
end;

procedure TFormMain.SetVolume(const Value: Integer);
begin
 FVolume:=Min(100, Value);
 if FVolume < 0 then FVolume:=0;
 if FVolume = 0 then SetMute(True)
 else SetMute(False);
 FPlayer.SetAudioVolume(FVolume);
 DrawPanelVolume.Repaint;
 if not FIniting then
  begin
   ShowVolume;
  end;
end;

procedure TFormMain.TableExChannelsChangeItem(Sender: TObject;
  const Old: Integer; var New: Integer);
begin
 if FShowGuide then
  begin
   OpenGuide(New);
  end;
end;

procedure TFormMain.TableExChannelsDblClick(Sender: TObject);
begin
 if not IndexInList(TableExChannels.ItemIndex, FChannels.Count) then Exit;
 Play(TableExChannels.ItemIndex);
end;

procedure TFormMain.Play(Index:Integer);
begin
 FCurrentChannel:=-1;
 if not IndexInList(Index, FChannels.Count) then Exit;
 FCurrentChannel:=Index;
 TableExChannels.ItemIndex:=FCurrentChannel;
 FPlayer.Play(FChannels[FCurrentChannel].URL);
 ShowInfo;
 Caption:='BigTV ' + FChannels[FCurrentChannel].Name;
end;

procedure TFormMain.TableExChannelsDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var Str:string;
    TempRect:TRect;
begin
 if not IndexInList(ARow, FChannels.Count) then Exit;
 with TableExChannels.Canvas do
  begin
   Pen.Width:=1;
   Draw(Rect.Left+2, Rect.Top+2, FChannels[ARow].Icon);
   Str:=IntToStr(ARow+1)+'. '+FChannels[ARow].Name;
   Rect.Inflate(-2, -2);
   TempRect:=Rect.SplitRect(srTop, Rect.Height div 2);
   TempRect.Left:=TempRect.Left + FChannels[ARow].Icon.Width + 4;
   Font.Color:=$00E0E0E0;
   Font.Size:=20;
   Font.Style:=[fsBold];
   TextRect(TempRect, Str, [tfSingleLine, tfVerticalCenter, tfWordEllipsis]);

   Str:=FChannels[ARow].NowWatch;
   TempRect:=Rect.SplitRect(srBottom, Rect.Height div 2);
   Font.Color:=$00929292;
   Font.Size:=18;
   Font.Style:=[];
   TextRect(TempRect, Str, [tfSingleLine, tfVerticalCenter, tfWordEllipsis]);

   //Выделенный канал
   if (ARow = TableExChannels.ItemIndex) then
    begin
     if FChannels[ARow].Favorite then
      ImageList16.Draw(TableExChannels.Canvas, Rect.Right-16, Rect.Top, 17, True)
     else
      ImageList16.Draw(TableExChannels.Canvas, Rect.Right-16, Rect.Top, 16, True);
     TempRect.Left:=Rect.Right-16;
     TempRect.Top:=Rect.Top;
     TempRect.Width:=16;
     TempRect.Height:=16;
     FChannelFavoriteIn:=TempRect.Contains(FChannelsMouse);
    end
   else
    if FChannels[ARow].Favorite then
     ImageList16.Draw(TableExChannels.Canvas, Rect.Right-16, Rect.Top, 17, True);
   //Текущий канал
   if ARow = FCurrentChannel then
    begin
     Pen.Color:=$00929292;
     Pen.Width:=2;
     Brush.Style:=bsClear;
     Rect.Inflate(2, 2);
     Rectangle(Rect);
    end;
  end;
end;

procedure TFormMain.TableExChannelsMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
 FChannelsMouse:=Point(X, Y);
 TableExChannels.Repaint;
end;

procedure TFormMain.TableExChannelsMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var Ch:TChannel;
    ID:Integer;
begin
 if (Button = mbRight) or (FShowGuide) then
  begin
   OpenGuide(TableExChannels.ItemIndex);
  end;
 if Button = mbLeft then
  begin
   if FChannelFavoriteIn then
    begin
     Ch:=FChannels[TableExChannels.ItemIndex];
     Ch.Favorite:=not Ch.Favorite;
     if Ch.Favorite then FFavChannels.Add(Ch)
     else
      begin
       ID:=FFavChannels.GetIdByTVGName(Ch.TVGName);
       if IndexInList(ID, FFavChannels.Count) then
        FFavChannels.Delete(ID);
      end;
     FChannels[TableExChannels.ItemIndex]:=Ch;
     FChannels.UpdateTable;
    end;
  end;
end;

procedure TFormMain.TableExFavChannelsDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var Str:string;
    TempRect:TRect;
begin
 if not IndexInList(ARow, FFavChannels.Count) then Exit;
 with TableExFavChannels.Canvas do
  begin
   Pen.Width:=1;
   Draw(Rect.Left+2, Rect.Top+2, FFavChannels[ARow].Icon);
   Str:=FFavChannels[ARow].Name;
   Rect.Inflate(-2, -2);
   TempRect:=Rect;//.SplitRect(srTop, Rect.Height div 2);
   TempRect.Left:=TempRect.Left + FFavChannels[ARow].Icon.Width + 4;
   Font.Color:=$00E0E0E0;
   Font.Size:=16;
   Font.Style:=[fsBold];
   TextRect(TempRect, Str, [tfSingleLine, tfVerticalCenter, tfWordEllipsis]);
  end;
end;

procedure TFormMain.TableExFavChannelsItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
var ID:Integer;
begin
 ClosePopup;
 if not IndexInList(TableExFavChannels.ItemIndex, FFavChannels.Count) then Exit;
 ID:=FChannels.GetIdByTVGName(FFavChannels[TableExFavChannels.ItemIndex].TVGName);
 if not IndexInList(ID, FChannels.Count) then Exit;
 Play(ID);
end;

procedure TFormMain.TableExTvGuideChangeItem(Sender: TObject;
  const Old: Integer; var New: Integer);
begin
 New:=Old;
end;

procedure TFormMain.TableExTvGuideGetData(FCol, FRow: Integer; var Value: string);
begin
 Value:='';
 if not Assigned(FGuideList) then Exit;
 if not IndexInList(FRow, FGuideList.Count) then Exit;
 if FGuideList[FRow].Date <> 0 then
  Value:=FormatDateTime('HH:nn', FGuideList[FRow].Date)+' '+FGuideList[FRow].Text
 else Value:='       '+FGuideList[FRow].Text;
end;

procedure TFormMain.TimerHideCursorTimer(Sender: TObject);
begin
 TimerHideCursor.Enabled:=False;
 if (VlcPlayer.MouseInClient) or FFullScreen then ShowCursor(False);
end;

procedure TFormMain.TimerInfoHideTimer(Sender: TObject);
begin
 HideInfo;
end;

procedure TFormMain.TimerNumberTimer(Sender: TObject);
var Num:Integer;
begin
 TimerNumber.Enabled:=False;
 HideNum;
 if TryStrToInt(FNum, Num) then Play(Num-1);
 FNum:='';
end;

procedure TFormMain.TimerRefreshTimer(Sender: TObject);
begin
 if FIniting then Exit;
 if FShowChannels then
  begin
   TableExChannels.Repaint;
   if (FShowGuide) and IndexInList(FCurrentGuide, FChannels.Count) then
    TableExTvGuide.ItemIndex:=FChannels[FCurrentGuide].NowWatchId;
  end;
 DrawPanelInfo.Repaint;
end;

procedure TFormMain.TimerShowVolumeTimer(Sender: TObject);
begin
 FShowVolume:=False;
 TimerShowVolume.Enabled:=False;
end;

procedure TFormMain.WMQueryEndSession(var Msg: TWMQueryEndSession);
begin
 Msg.Result:=1;
 Quit;
end;

procedure TFormMain.ShowChannels;
begin
 FShowChannels:=True;
 PanelChannels.Show;
 FormResize(nil);
end;

procedure TFormMain.HideChannels;
begin
 FShowChannels:=False;
 HideGuide;
 PanelChannels.Hide;
 FormResize(nil);
end;

procedure TFormMain.ShowGuide;
begin
 if FShowGuide then Exit;
 FShowGuide:=True;
 PanelGuide.Visible:=True;
 PanelChannels.Width:=600;
 FormResize(nil);
end;

procedure TFormMain.HideGuide;
begin
 FShowGuide:=False;
 PanelChannels.Width:=300;
 PanelGuide.Visible:=False;
 FormResize(nil);
end;

procedure TFormMain.OpenGuide(Index:Integer);
var i:Integer;
begin
 if not IndexInList(Index, FChannels.Count) then Exit;
 if Assigned(FGuideList) then FGuideList.UnAssignTables;
 ButtonFlatCloseGuide.Caption:=FChannels[Index].Name;
 FCurrentGuide:=Index;
 FGuideList:=FChannels[Index].Guide;
 FGuideList.AddTable(TableExTvGuide);
 FGuideList.UpdateTable;
 TableExTvGuide.ItemIndex:=FChannels[Index].NowWatchId;
 ShowGuide;
end;

{ TChannel }

function TChannel.GetNowWatch: string;
var i:Integer;
begin
 Result:='';
 i:=GetNowWatchID;
 if IndexInList(i, Guide.Count) then Result:=Guide[i].Text;
end;

function TChannel.GetNowWatchID: Integer;
var i:Integer;
begin
 Result:=-1;
 if Guide.Count <= 0 then Exit;
 for i:= 0 to Guide.Count-1 do
  if Guide[i].Date >= Now then Exit(i-1);
 Result:=Guide.Count-1;
end;

function TChannel.LoadGuide(Path: string): Boolean;
begin
 Result:=False;
 if not DirectoryExists(Path) then Exit;
 if not FileExists(Path+TVGName+'.ndx') then Exit;
 if not FileExists(Path+TVGName+'.pdt') then Exit;
 Result:=ReadTVGuide(Path, TVGName, Guide);
end;

function TChannel.LoadIcon(Path: string): Boolean;
var R:TRect;
    S:string;
begin
 Result:=False;
 if (not DirectoryExists(Path)) or
    (not FileExists(Path+'\'+Name+'.bmp'))
 then
  begin
   if FileExists(Path+'\None.bmp') then
    begin
     Icon.LoadFromFile(Path+'\None.bmp');
     R:=Rect(0, 0, Icon.Width, Icon.Height);
    end
   else
    begin
     Icon.SetSize(24, 24);
     R:=Rect(0, 0, Icon.Width, Icon.Height);
     Icon.PixelFormat:=pf24bit;
     Icon.Canvas.Pen.Color:=$00E8E8E8;
     Icon.Canvas.Brush.Color:=clWhite;
     Icon.Canvas.Brush.Style:=bsSolid;
     Icon.Canvas.Rectangle(R);
    end;
   Icon.Canvas.Brush.Style:=bsClear;
   S:=Name[1]+Name[2];
   Icon.Canvas.Font.Color:=$00292929;
   Icon.Canvas.Font.Size:=12;
   R.Inflate(-2, -2);
   Icon.Canvas.TextRect(R, S, [tfSingleLine, tfVerticalCenter, tfCenter]);
   Exit;
  end
 else
  begin
   try
    Icon.LoadFromFile(Path+'\'+Name+'.bmp');
    Result:=True;
   except
    Result:=False;
   end;
  end;
end;

{ TChannels }

function TChannels.GetIdByTVGName(TVGName: string): Integer;
var i:Integer;
begin
 Result:=-1;
 for i:= 0 to Count-1 do
  if Items[i].TVGName = TVGName then Exit(i);
end;

end.
