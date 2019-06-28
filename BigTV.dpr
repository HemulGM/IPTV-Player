program BigTV;

uses
  Vcl.Forms,
  BigTV.Main in 'BigTV.Main.pas' {FormMain},
  Vcl.Themes,
  Vcl.Styles,
  BigTV.Settings in 'BigTV.Settings.pas' {Form1},
  BigTV.SmartGuide in 'BigTV.SmartGuide.pas' {FormGuide},
  PasLibVlcClassUnit in '..\#Fork\VLC\PasLibVlcClassUnit.pas',
  PasLibVlcPlayerUnit in '..\#Fork\VLC\PasLibVlcPlayerUnit.pas',
  PasLibVlcUnit in '..\#Fork\VLC\PasLibVlcUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.Title := 'BigTV';
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormGuide, FormGuide);
  Application.Run;
end.
