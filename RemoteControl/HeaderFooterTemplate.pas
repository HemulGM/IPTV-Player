unit HeaderFooterTemplate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, System.ImageList, FMX.ImgList;

type
  THeaderFooterForm = class(TForm)
    ImageList: TImageList;
    Panel2: TPanel;
    Panel3: TPanel;
    Button4: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    Panel1: TPanel;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HeaderFooterForm: THeaderFooterForm;

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

end.
