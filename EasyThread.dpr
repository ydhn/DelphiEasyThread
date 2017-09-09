program EasyThread;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {Form1},
  AnonThread in 'AnonThread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
