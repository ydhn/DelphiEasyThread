unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Vcl.ExtCtrls,
  AnonThread;

type
  TForm1 = class(TForm)
    IdHTTP1: TIdHTTP;
    Panel1: TPanel;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    FThread: TAnonymousThread<String>;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FThread := TAnonymousThread<String>.Create(
    function: String begin
      Button1.Enabled := false;
      Result := idhttp1.Get('http://google.com');
    end,
    procedure(AResult: String) begin
      Button1.Enabled := true;
      Memo1.Text := AResult;
    end,
    procedure(AException: Exception) begin
      showmessage(AException.ToString);
    end,
  false);
end;

end.
