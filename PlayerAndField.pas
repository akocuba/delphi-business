unit PlayerAndField;

interface

uses Vcl.ExtCtrls, Vcl.Graphics, System.Generics.Collections, Vcl.StdCtrls,
  SysUtils, Dialogs, System.Generics.Defaults;

type
  TPlayer = class;

  TBorder = class
    color: TColor;
    left: TShape;
    right: TShape;
    top: TShape;
    bottom: TShape;
    procedure paintBlack;
  end;

  TFieldA = class abstract
  public
    locID: Integer;
    name: String;
    panel: TPanel;
    border: TBorder;
    nameLabel: TLabel;
  end;

  TOwnerBorder = class
    ownerPanel1: TShape;
    ownerPanel2: TShape;
    ownerPanel3: TShape;
    ownerPanel4: TShape;
    procedure setColor(color: TColor);
  end;

  TPropertyField = class(TFieldA)
  public
    price: Integer;
    owner: TPlayer;
    mortgaged: Boolean;
    ownerPanel: TOwnerBorder;
    constructor Create;
  end;

  TCityField = class(TPropertyField)
  public
    country: String;
    taxzero: Integer;
    taxone: Integer;
    taxtwo: Integer;
    taxthree: Integer;
    taxfour: Integer;
    taxfive: Integer;
    buildCost: Integer;
    buildingLevel: Integer;
    house1: TImage;
    house2: TImage;
    house3: TImage;
    house4: TImage;
    hotel: TImage;
    countryColorShape: TShape;
  end;

  TTrainField = class(TPropertyField)
  public
    taxone: Integer;
    taxtwo: Integer;
    taxthree: Integer;
    taxfour: Integer;
    image: TImage;
  end;

  TMediaField = class(TPropertyField)
    image: TImage;
    dice1: Integer;
    dice2: Integer;
  public
    function tax: Integer;
  end;

  TChanceField = class(TFieldA)
    deckColor: String;
    image: TImage;
  end;

  TSpecialField = class(TFieldA)
    image: TImage;
  end;

  TPenaltyField = class(TFieldA)
    price: Integer;
    image: TImage;
  end;

  TChanceCard = class
    deck: String;
    id: Integer;
    text: String;
  end;

  TPlayer = class
    playerNumber: Integer;
    name: String;
    isBankrupt: Boolean;
    partialSum: Integer;
    totalSum: Integer;
    pos: Integer;
    doublesCount: Integer;
    shape: TShape;
    memo: TMemo;
    left, top: Integer;
    balance: Integer;
    tossedDice: Boolean;
    imprisoned: Boolean;
    prisonTime: Integer;
    redPrisonCard: TChanceCard;
    bluePrisonCard: TChanceCard;
    finalScore: Integer;
    properties: TObjectList<TPropertyField>;
  private
    FColor: TColor;
    procedure setColor(color: TColor);
  public
    procedure CalculatePosition(sum: Integer);
    constructor Create;
    procedure SetBankrupt;
    function GenerateSaveData: String;
    property color: TColor read FColor write setColor;
  end;

  TCountry = class
    name: String;
    cities: TObjectList<TCityField>;
    color: TColor;
  public
    constructor Create;
  end;

implementation

procedure TPlayer.CalculatePosition(sum: Integer);
begin

end;

constructor TPropertyField.Create;
begin
  inherited;
  owner := nil;
  mortgaged := false;
end;

constructor TPlayer.Create;
begin
  inherited;
  properties := TObjectList<TPropertyField>.Create(false);
  isBankrupt := false;
  doublesCount := 0;
  partialSum := 0;
  totalSum := 0;
  tossedDice := false;
  imprisoned := false;
  prisonTime := 0;
  redPrisonCard := nil;
  bluePrisonCard := nil;
end;

function TPlayer.GenerateSaveData: String;
var
  ownedFields, propertyString: String;
begin

  result := playerNumber.ToString + ';' + name + ';' + ColorToString(color) +
    ';' + BoolToStr(isBankrupt) + ';' + pos.ToString + ';' + balance.ToString +
    ';' + BoolToStr(imprisoned) + ';' + prisonTime.ToString + ';';

  var
    prisonCards: String := 'R';

  if redPrisonCard <> nil then
  begin
    prisonCards := prisonCards + '1';
  end
  else
  begin
    prisonCards := prisonCards + '0';
  end;

  prisonCards := prisonCards + 'B';

  if bluePrisonCard <> nil then
  begin
    prisonCards := prisonCards + '1';
  end
  else
  begin
    prisonCards := prisonCards + '0';
  end;

  result := result + prisonCards + ';';

  ownedFields := '';

  for var ownedProperty: TPropertyField in properties do
  begin

    if ownedProperty.locID < 10 then
    begin
      propertyString := '0' + ownedProperty.locID.ToString;
    end
    else
    begin
      propertyString := ownedProperty.locID.ToString;
    end;

    if ownedProperty.mortgaged then
    begin
      propertyString := propertyString + 'M';
    end
    else
    begin
      propertyString := propertyString + 'U';
    end;

    if ownedProperty is TCityField then
    begin
      propertyString := propertyString + (ownedProperty as TCityField)
        .buildingLevel.ToString;
    end;

    propertyString := propertyString + ' ';

    ownedFields := ownedFields + propertyString;
  end;

  result := result + ownedFields + ';';
  SetLength(result, Length(result) - 1);

end;

procedure TPlayer.SetBankrupt;
var
  ownedProperty: TPropertyField;
  city: TCityField;
begin
  balance := 0;
  shape.Visible := false;

  for ownedProperty in properties do
  begin

    if ownedProperty is TCityField then
    begin
      city := (ownedProperty as TCityField);
      city.buildingLevel := 0;

      city.house1.Visible := false;
      city.house2.Visible := false;
      city.house3.Visible := false;
      city.house4.Visible := false;
      city.hotel.Visible := false;
    end;

    ownedProperty.owner := nil;
    ownedProperty.mortgaged := false;
    ownedProperty.panel.color := clWhite;
    ownedProperty.ownerPanel.setColor(clWhite);

  end;

  isBankrupt := true;
  memo.Visible := false;

  properties.Clear;

end;

procedure TPlayer.setColor(color: TColor);
begin
  FColor := color;
  shape.Brush.color := color;
end;

{ TMediaField }

function TMediaField.tax: Integer;
begin
  Randomize;
  dice1 := 1 + Random(6 - 1 + 1);
  dice2 := 1 + Random(6 - 1 + 1);
  result := (dice1 + dice2) * 10;
end;

{ TCountry }

constructor TCountry.Create;
begin
  cities := TObjectList<TCityField>.Create(false);
end;

{ TOwnerPanel }

procedure TOwnerBorder.setColor(color: TColor);
begin
  ownerPanel1.Brush.color := color;
  ownerPanel1.Pen.color := color;
  ownerPanel2.Brush.color := color;
  ownerPanel2.Pen.color := color;
  ownerPanel3.Brush.color := color;
  ownerPanel3.Pen.color := color;
  ownerPanel4.Brush.color := color;
  ownerPanel4.Pen.color := color;
end;

{ TFieldA }

{ TBorder }

procedure TBorder.paintBlack;
begin
  left.Brush.color := clBlack;
  right.Brush.color := clBlack;
  top.Brush.color := clBlack;
  bottom.Brush.color := clBlack;
end;

{ TChanceCard }

end.
