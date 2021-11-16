unit MortgageWindow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst,
  PlayerAndField, Vcl.ExtCtrls, System.Generics.Collections;

type
  TForm3 = class(TForm)
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
    properties: TObjectList<TPropertyField>;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.RefreshView;
begin
  Label1.Caption := currentPlayer.balance.ToString + '$';
  var
    text: String := '';

  if (selectedProperty is TCityField) then
  begin

    if (selectedProperty as TCityField).buildingLevel = 0 then
    begin
      var
        tempCity: TCityField := selectedProperty as TCityField;

      text := tempCity.country + ' -' + tempCity.name;

      if tempCity.mortgaged then
      begin
        text := text + ' <HIPOTEKA>';
      end
      else
      begin
        text := text + ': ' + tempCity.buildingLevel.ToString;
      end;

    end;

  end
  else
  begin
    text := '-> ' + selectedProperty.name;

    if selectedProperty.mortgaged then
    begin
      text := text + ' <HIPOTEKA>';
    end;

  end;

  ListBox1.Items[ListBox1.Items.IndexOfObject(selectedProperty)] := text;
  ListBox1.ItemIndex := ListBox1.Items.IndexOfObject(selectedProperty);
  ListBox1.OnClick(nil);

end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  currentPlayer.balance := currentPlayer.balance +
    (selectedProperty.price div 2);
  selectedProperty.mortgaged := true;

  ShowMessage('Zastawiono ' + selectedProperty.name + ' za ' +
    (selectedProperty.price div 2).ToString);

  Button1.Enabled := false;
  Button2.Enabled := false;

  RefreshView;

end;

procedure TForm3.Button2Click(Sender: TObject);
var
  mortgagePrice: Integer;
begin
  mortgagePrice := Trunc(((selectedProperty.price div 2) * 1.1));
  currentPlayer.balance := currentPlayer.balance - mortgagePrice;
  Button1.Enabled := false;
  Button2.Enabled := false;
  ShowMessage('Wykupiono ' + selectedProperty.name + ' za ' +
    mortgagePrice.ToString);
  selectedProperty.mortgaged := false;

  RefreshView;

end;

procedure TForm3.FormShow(Sender: TObject);
begin
  Shape1.Brush.Color := currentPlayer.Color;
  Label2.Caption := currentPlayer.name;
  Label1.Caption := currentPlayer.balance.ToString + '$';
  Button1.Enabled := false;
  Button2.Enabled := false;
  selectedProperty := nil;

  ListBox1.Clear;

  for var propertyField: TPropertyField in properties do
  begin

    if (propertyField is TCityField) then
    begin

      if (propertyField as TCityField).buildingLevel = 0 then
      begin
        var
          tempCity: TCityField := propertyField as TCityField;

        text := tempCity.country + ' -' + tempCity.name;

        if tempCity.mortgaged then
        begin
          text := text + ' <HIPOTEKA>';
        end
        else
        begin
          text := text + ': ' + tempCity.buildingLevel.ToString;
        end;

        ListBox1.AddItem(text, propertyField);

      end;

    end
    else
    begin
      text := '-> ' + propertyField.name;

      if propertyField.mortgaged then
      begin
        text := text + ' <HIPOTEKA>';
      end;

      ListBox1.AddItem(text, propertyField);

    end;

  end;

  // RefreshView;

end;

procedure TForm3.ListBox1Click(Sender: TObject);
begin
  if ListBox1.ItemIndex > -1 then
  begin
    selectedProperty := ListBox1.Items.Objects[ListBox1.ItemIndex]
      as TPropertyField;

    if selectedProperty.mortgaged then
    begin
      if currentPlayer.balance > ((selectedProperty.price div 2) * 1.1) then
      begin
        Button2.Enabled := true;
      end;
      Button1.Enabled := false;
    end
    else
    begin
      Button1.Enabled := true;
      Button2.Enabled := false;
    end;

  end
  else
  begin
    selectedProperty := nil;
    Button1.Enabled := false;
    Button2.Enabled := false;
  end;

end;

end.
