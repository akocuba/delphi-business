program DelphiBusiness;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  Setup in 'Setup.pas' {Form2},
  PlayerAndField in 'PlayerAndField.pas',
  MortgageWindow in 'MortgageWindow.pas' {Form3},
  BuildingWindow in 'BuildingWindow.pas' {Form4};

{$R *.res}

begin
//  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
