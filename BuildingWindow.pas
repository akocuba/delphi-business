unit BuildingWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst,
  PlayerAndField, Vcl.ExtCtrls, System.Generics.Collections;

type
  TForm4 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    procedure FormShow(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure RefreshView;
    { Private declarations }
  public
    { Public declarations }
    currentPlayer: TPlayer;
    selectedProperty: TPropertyField;
    selectedCity: TCityField;
    cities: TObjectList<TCityField>;
  end;

var
  Form3: TForm4;

implementation

{$R *.dfm}

procedure TForm4.RefreshView;
begin
  Label1.Caption := currentPlayer.balance.ToString + '$';

  var
    text: String := selectedCity.country + ': ' + selectedCity.name + ': ' +
      selectedCity.buildingLevel.ToString;

  ListBox1.Items[ListBox1.Items.IndexOfObject(selectedCity)] := text;

  ListBox1.ItemIndex := ListBox1.Items.IndexOfObject(selectedCity);
  ListBox1.OnClick(nil);
end;

procedure TForm4.Button1Click(Sender: TObject);
begin

  currentPlayer.balance := currentPlayer.balance - selectedCity.buildCost;
  selectedCity.buildingLevel := selectedCity.buildingLevel + 1;

  ShowMessage('Zakupiono nieruchomoœæ w ' + selectedCity.name + ' za ' +
    selectedCity.buildCost.ToString);

  Button1.Enabled := false;
  Button2.Enabled := false;

  RefreshView;

end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  currentPlayer.balance := currentPlayer.balance +
    (selectedCity.buildCost div 2);
  selectedCity.buildingLevel := selectedCity.buildingLevel - 1;

  ShowMessage('Sprzedano nieruchomoœæ w ' + selectedCity.name + ' za ' +
    (selectedCity.buildCost div 2).ToString);

  Button2.Enabled := false;
  Button1.Enabled := false;

  RefreshView;

end;

procedure TForm4.FormShow(Sender: TObject);
begin
  Shape1.Brush.Color := currentPlayer.Color;
  Label2.Caption := currentPlayer.name;
  Label1.Caption := currentPlayer.balance.ToString + '$';
  Button1.Enabled := false;
  Button2.Enabled := false;

  selectedCity := nil;

  ListBox1.Clear;

  for var city: TCityField in cities do
  begin
    text := city.country + ': ' + city.name + ': ' +
      city.buildingLevel.ToString;
    ListBox1.AddItem(text, city);
  end;

end;

procedure TForm4.ListBox1Click(Sender: TObject);
begin
  if ListBox1.ItemIndex > -1 then
  begin
    selectedCity := ListBox1.Items.Objects[ListBox1.ItemIndex] as TCityField;

    if (selectedCity.buildingLevel < 5) and
      (currentPlayer.balance >= selectedCity.buildCost) then
    begin
      Button1.Enabled := true;
    end
    else
    begin
      Button1.Enabled := false;
    end;

    if selectedCity.buildingLevel > 0 then
    begin
      Button2.Enabled := true;
    end
    else
    begin
      Button2.Enabled := false;
    end;

  end;

end;

end.
