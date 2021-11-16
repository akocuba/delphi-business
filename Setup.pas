unit Setup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    ColorDialog1: TColorDialog;
    Shape1: TShape;
    Button1: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Shape2: TShape;
    Label3: TLabel;
    Edit3: TEdit;
    Shape3: TShape;
    Label4: TLabel;
    Edit4: TEdit;
    Shape4: TShape;
    Label5: TLabel;
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DefaultColors;
    procedure DefaultNames;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.DefaultColors;
begin
  Shape1.Brush.Color := $0029EB07;
  Shape2.Brush.Color := $000500C1;
  Shape3.Brush.Color := $00FF4A24;
  Shape4.Brush.Color := $0028DFFF;
end;

procedure TForm2.DefaultNames;
begin
    Edit1.Text := 'Gracz 1';
    Edit2.Text := 'Gracz 2';
    Edit3.Text := 'Gracz 3';
    Edit4.Text := 'Gracz 4';
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
   DefaultColors;
end;

procedure TForm2.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ColorDialog1.Execute then
  begin
    Shape1.Brush.Color := ColorDialog1.Color;
  end;
end;

procedure TForm2.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ColorDialog1.Execute then
  begin
    Shape2.Brush.Color := ColorDialog1.Color;
  end;
end;

procedure TForm2.Shape3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ColorDialog1.Execute then
  begin
    Shape3.Brush.Color := ColorDialog1.Color;
  end;
end;

procedure TForm2.Shape4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ColorDialog1.Execute then
  begin
    Shape4.Brush.Color := ColorDialog1.Color;
  end;
end;

end.
