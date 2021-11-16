unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.Generics.Collections, System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ActnColorMaps, Vcl.ActnMan, Setup, PlayerAndField,
  System.ImageList, Vcl.ImgList, pngimage, MortgageWindow, Vcl.Menus,
  BuildingWindow, System.Generics.Defaults;

type

  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Player1: TShape;
    Player2: TShape;
    Player3: TShape;
    Player4: TShape;
    TimerMovement: TTimer;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    TimerResponse: TTimer;
    Memo5: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Panel41: TPanel;
    LabelCurrentPlayer: TLabel;
    CurrentColor: TShape;
    LabelDiceSum: TLabel;
    DiceImage6: TImage;
    DiceImage5: TImage;
    DiceImage4: TImage;
    DiceImage3: TImage;
    DiceImage2: TImage;
    DiceImage1: TImage;
    Label5: TLabel;
    Label6: TLabel;
    ButtonDiceToss: TButton;
    ButtonEndTurn: TButton;
    ButtonBuild: TButton;
    ButtonMortgage: TButton;
    Label15: TLabel;
    LabelBalance1: TLabel;
    LabelBalance2: TLabel;
    LabelBalance4: TLabel;
    LabelBalance3: TLabel;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Save1: TMenuItem;
    Load1: TMenuItem;
    Exit1: TMenuItem;
    Options1: TMenuItem;
    MoveOptions1: TMenuItem;
    ResponseOptions1: TMenuItem;
    MoveSpeed500: TMenuItem;
    MoveSpeed250: TMenuItem;
    MoveSpeed150: TMenuItem;
    MoveSpeed50: TMenuItem;
    MoveSpeed1: TMenuItem;
    ResponseSpeed5000: TMenuItem;
    ResponseSpeed2500: TMenuItem;
    ResponseSpeed1500: TMenuItem;
    ResponseSpeed500: TMenuItem;
    ResponseSpeed1: TMenuItem;
    LogOptions1: TMenuItem;
    LogMoves1: TMenuItem;
    LogStart1: TMenuItem;
    LogBuy1: TMenuItem;
    LogPay1: TMenuItem;
    NewGame1: TMenuItem;
    ButtonBankrupt: TButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    LogCards1: TMenuItem;
    ButtonPrisonCard: TButton;
    CalculateScore1: TMenuItem;
    TimerPlayerFlash: TTimer;
    Panel42: TPanel;
    ButtonShowChanceCards: TButton;
    Label16: TLabel;
    CheatBox1: TCheckBox;
    UpDown2: TUpDown;
    Edit2: TEdit;
    UpDown1: TUpDown;
    Edit1: TEdit;
    Debugger1: TMenuItem;
    Label17: TLabel;
    Image1: TImage;
    Label18: TLabel;
    procedure ButtonDiceTossClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimerMovementTimer(Sender: TObject);
    procedure TimerResponseTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonEndTurnClick(Sender: TObject);
    procedure ButtonMortgageClick(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure MoveSpeed500Click(Sender: TObject);
    procedure MoveSpeed250Click(Sender: TObject);
    procedure MoveSpeed150Click(Sender: TObject);
    procedure MoveSpeed50Click(Sender: TObject);
    procedure MoveSpeed1Click(Sender: TObject);
    procedure ResponseSpeed5000Click(Sender: TObject);
    procedure ResponseSpeed2500Click(Sender: TObject);
    procedure ResponseSpeed1500Click(Sender: TObject);
    procedure ResponseSpeed500Click(Sender: TObject);
    procedure ResponseSpeed1Click(Sender: TObject);
    procedure LogMoves1Click(Sender: TObject);
    procedure LogStart1Click(Sender: TObject);
    procedure LogBuy1Click(Sender: TObject);
    procedure LogPay1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Load1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure ButtonBuildClick(Sender: TObject);
    procedure NewGame1Click(Sender: TObject);
    procedure ButtonBankruptClick(Sender: TObject);
    procedure LogCards1Click(Sender: TObject);
    procedure ButtonPrisonCardClick(Sender: TObject);
    procedure ButtonShowChanceCardsClick(Sender: TObject);
    procedure CalculateScore1Click(Sender: TObject);
    procedure TimerPlayerFlashTimer(Sender: TObject);
    procedure Debugger1Click(Sender: TObject);
  private
    TaskDialogMain: TTaskDialog;
    procedure GenerateLocations;
    procedure GeneratePlayers;
    procedure GenerateCards;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Form2: TForm2;
  Form3: TForm3;
  Form4: TForm4;

implementation

{$R *.dfm}

var
  currentPlayerID: Integer;
  currentPlayer: TPlayer;
  gameBoard: Array [1 .. 40] of TFieldA;
  players: TObjectList<TPlayer>;
  countries: TObjectList<TCountry>;
  trains: TObjectList<TTrainField>;
  media: TObjectList<TMediaField>;
  dice1, dice2: Integer;
  blueCards: TObjectList<TChanceCard>;
  redCards: TObjectList<TChanceCard>;
  tempRedPrisonCard: TChanceCard;
  tempBluePrisonCard: TChanceCard;

procedure GoToPrison(player: TPlayer); forward;
procedure PlayerEntersField(field: TFieldA); forward;

procedure RefreshButtonsForNegativeBalance;
begin
  if currentPlayer.balance < 0 then
  begin
    Form1.ButtonEndTurn.Enabled := false;
    Form1.ButtonBankrupt.Visible := true;
  end
  else
  begin
    Form1.ButtonEndTurn.Enabled := true;
    Form1.ButtonBankrupt.Visible := false;
  end;
end;

function WholeCountryOwned(city: TCityField): Boolean;
begin
  result := true;

  for var country: TCountry in countries do
  begin
    if country.name = city.country then

      for var countryCity: TCityField in country.cities do
      begin
        if countryCity.owner <> city.owner then
          result := false;
      end;

  end;

end;

function WholeCountryUnmortgaged(city: TCityField): Boolean;
begin
  result := true;

  for var country: TCountry in countries do
  begin
    if country.name = city.country then

      for var countryCity: TCityField in country.cities do
      begin
        if countryCity.mortgaged then
          result := false;
      end;

  end;

end;

function WholeCountryUnbuilt(city: TCityField): Boolean;
begin
  result := true;

  for var country: TCountry in countries do
  begin
    if country.name = city.country then

      for var countryCity: TCityField in country.cities do
      begin
        if countryCity.buildingLevel > 0 then
          result := false;
      end;

  end;

end;

function AnythingToMortgage(player: TPlayer): Boolean;
begin
  result := false;

  for var tempProperty: TPropertyField in player.properties do
  begin

    if (tempProperty is TTrainField) or (tempProperty is TMediaField) then
    begin
      result := true;
    end
    else
    begin
      var
        tempCity: TCityField := tempProperty as TCityField;
      if (not WholeCountryOwned(tempCity)) or WholeCountryUnbuilt(tempCity) then
      begin
        result := true;
      end;

    end;

  end;

end;

function AnythingToBuild(player: TPlayer): Boolean;
begin
  result := false;

  for var tempProperty: TPropertyField in player.properties do
  begin

    if tempProperty is TCityField then
    begin

      var
        tempCity: TCityField := tempProperty as TCityField;

      if (WholeCountryOwned(tempCity)) and WholeCountryUnmortgaged(tempCity)
      then
      begin
        result := true;
      end;

    end;

  end;

end;

procedure SwitchDebuggerMode;
begin

  if Form1.Debugger1.Checked then
  begin
    Form1.Panel42.Visible := true;
    Form1.CheatBox1.Checked := false;
  end
  else
  begin
    Form1.Panel42.Visible := false;
    Form1.CheatBox1.Checked := false;
  end;

end;

procedure CalculatePlayerScore(player: TPlayer);
begin
  player.finalScore := 0;
  player.finalScore := player.finalScore + player.balance;

  for var tempProperty: TPropertyField in player.properties do
  begin
    if tempProperty is TCityField then
    begin
      var
        tempCity: TCityField := tempProperty as TCityField;

      if tempCity.mortgaged then
      begin
        player.finalScore := player.finalScore + (tempCity.price div 2);
      end
      else
      begin
        player.finalScore := player.finalScore + tempCity.price +
          (tempCity.buildingLevel * tempCity.buildCost);
      end;

    end
    else
    begin
      if tempProperty.mortgaged then
      begin
        player.finalScore := player.finalScore + (tempProperty.price div 2);
      end
      else
      begin
        player.finalScore := player.finalScore + tempProperty.price;
      end;
    end;

  end;
end;

procedure RefreshTaskDialog(title: String; yesAndNo: Boolean;
  text: String = '');
begin
  Form1.TaskDialogMain.Caption := 'DelphiBusiness';
  Form1.TaskDialogMain.title := title;
  Form1.TaskDialogMain.text := text;
  Form1.TaskDialogMain.Buttons.Clear;

  if yesAndNo then
  begin
    Form1.TaskDialogMain.CommonButtons := [tcbYes, tcbNo];
  end
  else
  begin
    Form1.TaskDialogMain.CommonButtons := [tcbOk];
  end;

end;

procedure ReleaseFromPrison(player: TPlayer);
begin

  currentPlayer.imprisoned := false;
  currentPlayer.prisonTime := 0;

  var
    title: String := currentPlayer.name + ' wychodzi z Więzienia.';

  RefreshTaskDialog(title, false);

  Form1.TaskDialogMain.Execute;

  if player.playerNumber = 1 then
  begin
    player.shape.Left := 30;
    player.shape.Top := 3;
  end
  else if player.playerNumber = 2 then
  begin
    player.shape.Left := 80;
    player.shape.Top := 3;
  end
  else if player.playerNumber = 3 then
  begin
    player.shape.Left := 120;
    player.shape.Top := 40;
  end
  else if player.playerNumber = 4 then
  begin
    player.shape.Left := 120;
    player.shape.Top := 100;
  end;

end;

procedure FillPlayerMemo(player: TPlayer);
var
  text: String;
begin

  player.memo.Lines.Clear;

  if not player.isBankrupt then
  begin

    if player.imprisoned then
    begin
      player.memo.Lines.Add('XXXXXXXXXXXXXXX');
      player.memo.Lines.Add('Siedzisz w więzieniu!');
      if player.prisonTime > 2 then
      begin
        player.memo.Lines.Add('(Wychodzisz w następnej turze)');
      end
      else if player.prisonTime > 0 then
      begin
        player.memo.Lines.Add('(' + player.prisonTime.ToString + ' tura)');
      end
      else
      begin
        player.memo.Lines.Add('( Dopiero co tu trafiłeś)');
      end;
      player.memo.Lines.Add('XXXXXXXXXXXXXXX');
    end;

    if (player.pos = 11) and (player.imprisoned) then
    begin
      player.memo.Lines.Add('Pozycja: Więzienie(' + player.pos.ToString + ')');
    end
    else
    begin
      player.memo.Lines.Add('Pozycja: ' + gameBoard[player.pos].name + '(' +
        player.pos.ToString + ')');
    end;

    player.memo.Lines.Add('Bilans: ' + player.balance.ToString);

    if Assigned(player.redPrisonCard) then
    begin
      player.memo.Lines.Add('KARTA: Wychodzisz wolny z Więzienia (Czerwona)');
    end;

    if Assigned(player.bluePrisonCard) then
    begin
      player.memo.Lines.Add('KARTA: Wychodzisz wolny z Więzienia (Niebieska)');
    end;

    if player.properties.Count > 0 then
    begin
      player.memo.Lines.Add('Nieruchomości:');

      for var propertyField: TPropertyField in player.properties do
      begin

        if propertyField is TCityField then
        begin
          var
            tempCity: TCityField := propertyField as TCityField;

          text := tempCity.country + ' -' + tempCity.name;

          if tempCity.mortgaged then
          begin
            player.memo.Lines.Add(text + ' <HIPOTEKA>');
          end
          else
          begin
            player.memo.Lines.Add
              (text + ': ' + tempCity.buildingLevel.ToString);
          end;

        end
        else
        begin
          text := '-> ' + propertyField.name;

          if propertyField.mortgaged then
          begin
            text := text + ' <HIPOTEKA>';
          end;

          player.memo.Lines.Add(text);
        end;

      end;

    end;

  end;

end;

procedure AddTextToGameLog(text: String);
begin

  while Form1.Memo5.Lines.Count > 500 do
  begin
    Form1.Memo5.Lines.Delete(0);
  end;

  Form1.Memo5.Lines.Add(text);

end;

procedure ChangePlayerPosition(player: TPlayer; destination: Integer;
  withTimer: Boolean);
begin

  if (Form1.LogMoves1.Checked) then
  begin
    AddTextToGameLog(player.name + ' został przeniesiony z ' +
      gameBoard[player.pos].locID.ToString + '. ' + gameBoard[player.pos].name +
      ' do ' + gameBoard[destination].locID.ToString + '. ' +
      gameBoard[destination].name);
  end;

  if withTimer then
  begin
    Form1.TimerResponse.Enabled := true;
    repeat
      Application.ProcessMessages;
    until Form1.TimerResponse.Enabled = false;
  end;

  player.pos := destination;
  player.shape.Parent := gameBoard[destination].panel;

  if (player.pos > 1) and (player.pos < 11) then
  begin
    player.shape.Left := player.Left - 25;
  end
  else if player.pos = 11 then
  begin
    if player.playerNumber = 1 then
    begin
      player.shape.Left := player.Left - 20;
      player.shape.Top := player.Top + 20;
    end
    else if player.playerNumber = 2 then
    begin
      player.shape.Left := player.Left - 25;
      player.shape.Top := player.Top + 20;
    end
    else if player.playerNumber = 3 then
    begin
      player.shape.Left := player.Left - 20;
      player.shape.Top := player.Top;
    end
    else if player.playerNumber = 4 then
    begin
      player.shape.Left := player.Left - 25;
      player.shape.Top := player.Top;
    end;
  end
  else if (player.pos > 11) and (player.pos < 21) then
  begin
    player.shape.Top := player.Top - 25;
  end
  else if (player.pos > 21) and (player.pos < 31) then
  begin
    player.shape.Left := player.Left - 25;
  end
  else if player.pos > 31 then
  begin
    player.shape.Top := player.Top - 25;
  end
  else
  begin
    player.shape.Left := player.Left;
    player.shape.Top := player.Top;
  end;

end;

procedure UpdatePlayerLabelBalance(player: TPlayer);
begin
  var
    labelBalance: TLabel := Form1.FindComponent
      ('LabelBalance' + player.playerNumber.ToString) as TLabel;
  if player.isBankrupt then
  begin
    labelBalance.Visible := false;
  end
  else
  begin
    labelBalance.Visible := true;
    labelBalance.Caption := player.balance.ToString + '$';
  end;

end;

procedure MovePlayer;
var
  tempPos: Integer;
  finalPos: Integer;
begin
  tempPos := currentPlayer.pos;

  finalPos := tempPos + currentPlayer.totalSum;

  if finalPos > 40 then
  begin
    finalPos := finalPos - 40;
  end;

  if (Form1.LogMoves1.Checked) then
  begin
    AddTextToGameLog(currentPlayer.name + ' idzie z ' + gameBoard[tempPos]
      .locID.ToString + '. ' + gameBoard[tempPos].name + ' do ' +
      gameBoard[finalPos].locID.ToString + '. ' + gameBoard[finalPos].name);
  end;

  Form1.TimerResponse.Enabled := true;
  repeat
    Application.ProcessMessages;
  until Form1.TimerResponse.Enabled = false;

  for var i: Integer := 1 to currentPlayer.totalSum do
  begin
    tempPos := tempPos + 1;

    if tempPos = 41 then
    begin
      tempPos := 1;
      currentPlayer.balance := currentPlayer.balance + 400;
      UpdatePlayerLabelBalance(currentPlayer);
      FillPlayerMemo(currentPlayer);
      Form1.Label6.Caption := currentPlayer.balance.ToString + '$';

      if (Form1.LogStart1.Checked) then
      begin
        AddTextToGameLog(currentPlayer.name +
          ' otrzymuje 400$ premii za przejście pola START');
      end;

    end;

    currentPlayer.shape.Parent := gameBoard[tempPos].panel;
    gameBoard[tempPos].panel.SetFocus;

    if (tempPos > 1) and (tempPos < 11) then
    begin
      currentPlayer.shape.Left := currentPlayer.Left - 25;
    end
    else if tempPos = 11 then
    begin
      if currentPlayer.playerNumber = 1 then
      begin
        currentPlayer.shape.Left := 30;
        currentPlayer.shape.Top := 3;
      end
      else if currentPlayer.playerNumber = 2 then
      begin
        currentPlayer.shape.Left := 80;
        currentPlayer.shape.Top := 3;
      end
      else if currentPlayer.playerNumber = 3 then
      begin
        currentPlayer.shape.Left := 120;
        currentPlayer.shape.Top := 40;
      end
      else if currentPlayer.playerNumber = 4 then
      begin
        currentPlayer.shape.Left := 120;
        currentPlayer.shape.Top := 100;
      end;
    end
    else if (tempPos > 11) and (tempPos < 21) then
    begin
      currentPlayer.shape.Top := currentPlayer.Top - 25;
      currentPlayer.shape.Left := currentPlayer.Left;
    end
    else if (tempPos > 21) and (tempPos < 31) then
    begin
      currentPlayer.shape.Left := currentPlayer.Left - 25;
      currentPlayer.shape.Top := currentPlayer.Top;
    end
    else if tempPos > 31 then
    begin
      currentPlayer.shape.Top := currentPlayer.Top - 25;
      currentPlayer.shape.Left := currentPlayer.Left;
    end
    else
    begin
      currentPlayer.shape.Left := currentPlayer.Left;
      currentPlayer.shape.Top := currentPlayer.Top;
    end;

    Form1.TimerMovement.Enabled := true;
    repeat
      Application.ProcessMessages;
    until Form1.TimerMovement.Enabled = false;

  end;

  currentPlayer.pos := finalPos;
  UpdatePlayerLabelBalance(currentPlayer);
  FillPlayerMemo(currentPlayer);

end;

procedure UpdatePlayerMemoNameAndColor(player: TPlayer);
begin
  var
    shape: TShape := Form1.FindComponent('Shape' + player.playerNumber.ToString)
      as TShape;
  shape.Brush.Color := player.Color;

  var
    name: TLabel := Form1.FindComponent('Label' + player.playerNumber.ToString)
      as TLabel;
  name.Caption := player.name;
end;

procedure UpdatePlayerNameAndColor(player: TPlayer);
begin
  var
    setupShape: TShape := Form2.FindComponent
      ('Shape' + player.playerNumber.ToString) as TShape;
  var
    setupEdit: TEdit := Form2.FindComponent
      ('Edit' + player.playerNumber.ToString) as TEdit;

  player.name := setupEdit.text;
  player.Color := setupShape.Brush.Color;

  UpdatePlayerMemoNameAndColor(player);
end;

procedure ShowBuildingIcons(cityField: TCityField);
begin
  case cityField.buildingLevel of
    0:
      begin
        cityField.house1.Visible := false;
        cityField.house2.Visible := false;
        cityField.house3.Visible := false;
        cityField.house4.Visible := false;
        cityField.hotel.Visible := false;
      end;
    1:
      begin
        cityField.house1.Visible := true;
        cityField.house2.Visible := false;
        cityField.house3.Visible := false;
        cityField.house4.Visible := false;
        cityField.hotel.Visible := false;
      end;
    2:
      begin
        cityField.house1.Visible := true;
        cityField.house2.Visible := true;
        cityField.house3.Visible := false;
        cityField.house4.Visible := false;
        cityField.hotel.Visible := false;
      end;
    3:
      begin
        cityField.house1.Visible := true;
        cityField.house2.Visible := true;
        cityField.house3.Visible := true;
        cityField.house4.Visible := false;
        cityField.hotel.Visible := false;
      end;
    4:
      begin
        cityField.house1.Visible := true;
        cityField.house2.Visible := true;
        cityField.house3.Visible := true;
        cityField.house4.Visible := true;
        cityField.hotel.Visible := false;
      end;
    5:
      begin
        cityField.house1.Visible := false;
        cityField.house2.Visible := false;
        cityField.house3.Visible := false;
        cityField.house4.Visible := false;
        cityField.hotel.Visible := true;
      end;
  end;

end;

procedure ShuffleChanceCards;
begin
  Randomize;

  blueCards.Sort(TComparer<TChanceCard>.Construct(
    function(const L, R: TChanceCard): Integer
    begin
      result := -1 + Random(3);
    end));

  Randomize;

  redCards.Sort(TComparer<TChanceCard>.Construct(
    function(const L, R: TChanceCard): Integer
    begin
      result := -1 + Random(3);
    end));
end;

procedure ResetGameBoard;
begin

  for var field: TFieldA in gameBoard do
  begin

    if field is TPropertyField then
    begin
      var
        propertyField: TPropertyField := field as TPropertyField;

      propertyField.owner := nil;
      propertyField.mortgaged := false;
      propertyField.panel.Color := clWhite;
      propertyField.ownerPanel.setColor(clWhite);

      if propertyField is TCityField then
      begin

        var
          cityField: TCityField := field as TCityField;

        cityField.buildingLevel := 0;
        cityField.house1.Visible := false;
        cityField.house2.Visible := false;
        cityField.house3.Visible := false;
        cityField.house4.Visible := false;
        cityField.hotel.Visible := false;

      end;

    end;

  end;

  for var tempPlayer: TPlayer in players do
  begin

    tempPlayer.shape.Parent := gameBoard[1].panel;
    tempPlayer.balance := 3000;
    ChangePlayerPosition(tempPlayer, 1, false);
    tempPlayer.shape.Visible := true;
    tempPlayer.tossedDice := false;
    tempPlayer.isBankrupt := false;
    tempPlayer.imprisoned := false;
    tempPlayer.prisonTime := 0;
    tempPlayer.redPrisonCard := nil;
    tempPlayer.bluePrisonCard := nil;
    tempPlayer.memo.Visible := true;

    var
      playerLabel: TLabel := Form1.FindComponent
        ('Label' + tempPlayer.playerNumber.ToString) as TLabel;

    playerLabel.Font.Style := playerLabel.Font.Style - [fsStrikeOut];

    tempPlayer.properties.Clear;
    UpdatePlayerLabelBalance(tempPlayer);
    FillPlayerMemo(tempPlayer);
  end;

  if blueCards.Count = 15 then
  begin
    blueCards.Add(tempBluePrisonCard);
  end;

  if redCards.Count = 15 then
  begin
    redCards.Add(tempRedPrisonCard);
  end;

  ShuffleChanceCards;

  Form1.Memo5.Lines.Clear;
  currentPlayerID := 0;

end;

function CheckIfGameOver: Boolean;
var
  activePlayers: Integer;
begin
  activePlayers := 0;
  result := false;
  for var tempPlayer: TPlayer in players do
  begin
    if not tempPlayer.isBankrupt then
    begin
      Inc(activePlayers);
    end;
  end;

  if activePlayers <= 1 then
  begin
    result := true;
  end;

end;

procedure BuyProperty(propertyField: TPropertyField);
var
  question: String;
begin
  question := currentPlayer.name + ': Czy chcesz kupić ' + propertyField.name +
    ' za ' + propertyField.price.ToString + '$?';

  RefreshTaskDialog(propertyField.name, true, question);

  if Form1.TaskDialogMain.Execute then
  begin
    if Form1.TaskDialogMain.ModalResult = mrYes then
    begin
      if currentPlayer.balance >= propertyField.price then
      begin
        currentPlayer.balance := currentPlayer.balance - propertyField.price;
        propertyField.owner := currentPlayer;
        currentPlayer.properties.Add(propertyField);

        currentPlayer.properties.Sort(TComparer<TPropertyField>.Construct(
          function(const L, R: TPropertyField): Integer
          begin
            if L.locID = R.locID then
              result := 0
            else if L.locID < R.locID then
              result := -1
            else
              result := 1;
          end));

        propertyField.ownerPanel.setColor(currentPlayer.Color);
        Form1.ButtonMortgage.Enabled := true;

        if Form1.LogBuy1.Checked then
        begin
          AddTextToGameLog(currentPlayer.name + ' kupuje ' +
            propertyField.name + '.');
        end;

        if AnythingToMortgage(currentPlayer) then
        begin
          Form1.ButtonMortgage.Enabled := true;
        end
        else
        begin
          Form1.ButtonMortgage.Enabled := false;
        end;

        if AnythingToBuild(currentPlayer) then
        begin
          Form1.ButtonBuild.Enabled := true;
        end
        else
        begin
          Form1.ButtonBuild.Enabled := false;
        end;

      end
      else
      begin
        RefreshTaskDialog('Brak środków!', false, currentPlayer.name +
          ': Nie masz tyle pieniędzy!');
        Form1.TaskDialogMain.Execute;
      end;
    end;

  end;

  gameBoard[currentPlayer.pos].panel.SetFocus;
end;

procedure FlashCurrentPlayer(player: TPlayer);
begin

  for var i := 1 to 3 do
  begin

    player.shape.Brush.Color := clWhite;

    Form1.TimerPlayerFlash.Enabled := true;
    repeat
      Application.ProcessMessages;
    until Form1.TimerPlayerFlash.Enabled = false;

    player.shape.Brush.Color := player.Color;

    Form1.TimerPlayerFlash.Enabled := true;
    repeat
      Application.ProcessMessages;
    until Form1.TimerPlayerFlash.Enabled = false;

  end;

end;

procedure FinishGame;
begin
  CalculatePlayerScore(currentPlayer);
  Form1.CurrentColor.Brush.Color := currentPlayer.Color;
  Form1.LabelCurrentPlayer.Caption := 'Zwycięża ' + currentPlayer.name + '!';
  Form1.Label6.Caption := currentPlayer.balance.ToString + '$';
  Form1.ButtonDiceToss.Enabled := false;
  Form1.ButtonBankrupt.Visible := false;
  Form1.ButtonPrisonCard.Visible := false;
  Form1.ButtonEndTurn.Enabled := false;
  Form1.ButtonBuild.Enabled := false;
  Form1.ButtonMortgage.Enabled := false;

  Form1.CalculateScore1Click(nil);

end;

procedure LoadNextPlayer;
begin
  repeat
    currentPlayerID := currentPlayerID + 1;

    if currentPlayerID > players.Count then
    begin
      currentPlayerID := currentPlayerID - players.Count;
    end;

    currentPlayer := players[currentPlayerID - 1];

  until not(currentPlayer.isBankrupt);

  Form1.DiceImage1.Picture := nil;
  Form1.DiceImage2.Picture := nil;
  Form1.DiceImage3.Picture := nil;
  Form1.DiceImage4.Picture := nil;
  Form1.DiceImage5.Picture := nil;
  Form1.DiceImage6.Picture := nil;

  Form1.CurrentColor.Brush.Color := currentPlayer.Color;
  Form1.LabelCurrentPlayer.Caption := currentPlayer.name;
  Form1.Label6.Caption := currentPlayer.balance.ToString + '$';
  Form1.LabelDiceSum.Caption := '';
  Form1.ButtonPrisonCard.Visible := false;

  currentPlayer.tossedDice := false;
  currentPlayer.doublesCount := 0;
  currentPlayer.partialSum := 0;
  currentPlayer.totalSum := 0;

  if not CheckIfGameOver then
  begin

    if currentPlayer.prisonTime = 3 then
    begin
      ReleaseFromPrison(currentPlayer);
    end;

    if currentPlayer.imprisoned then
    begin

      Form1.ButtonEndTurn.Enabled := true;
      Form1.ButtonDiceToss.Enabled := false;
      Form1.Save1.Enabled := true;
      Form1.ButtonBuild.Enabled := false;
      Form1.ButtonMortgage.Enabled := false;

      if (currentPlayer.redPrisonCard <> nil) or
        (currentPlayer.bluePrisonCard <> nil) then
      begin
        Form1.ButtonPrisonCard.Visible := true;
      end;

      FillPlayerMemo(currentPlayer);

    end
    else
    begin
      FillPlayerMemo(currentPlayer);

      Form1.ButtonDiceToss.Enabled := true;
      Form1.Save1.Enabled := true;
      Form1.ButtonEndTurn.Enabled := false;
      Form1.ButtonBankrupt.Visible := false;

      if AnythingToMortgage(currentPlayer) then
      begin
        Form1.ButtonMortgage.Enabled := true;
      end
      else
      begin
        Form1.ButtonMortgage.Enabled := false;
      end;

      if AnythingToBuild(currentPlayer) then
      begin
        Form1.ButtonBuild.Enabled := true;
      end
      else
      begin
        Form1.ButtonBuild.Enabled := false;
      end;

    end;

  end
  else
  begin
    FinishGame;
  end;

  gameBoard[currentPlayer.pos].panel.SetFocus;
  FlashCurrentPlayer(currentPlayer);

end;

procedure ChargePenaltyFee(penaltyField: TPenaltyField);
var
  fee: Integer;
  messageString: String;
begin
  fee := penaltyField.price;

  messageString := currentPlayer.name + ' płaci ' + fee.ToString +
    '$ kary za pobyt na polu ' + penaltyField.name + '.';

  RefreshTaskDialog(penaltyField.name, false, messageString);
  Form1.TaskDialogMain.Execute;

  currentPlayer.balance := currentPlayer.balance - fee;
  Form1.Label6.Caption := currentPlayer.balance.ToString + '$';

  if Form1.LogPay1.Checked then
  begin
    AddTextToGameLog(messageString);
  end;

  RefreshButtonsForNegativeBalance;

  gameBoard[currentPlayer.pos].panel.SetFocus;
end;

function CalculateCityFee(city: TCityField): Integer;
begin
  result := city.taxzero;

  if WholeCountryOwned(city) and WholeCountryUnbuilt(city) then
  begin
    result := city.taxzero * 2;
  end
  else
  begin
    case city.buildingLevel of
      0:
        result := city.taxzero;
      1:
        result := city.taxone;
      2:
        result := city.taxtwo;
      3:
        result := city.taxthree;
      4:
        result := city.taxfour;
      5:
        result := city.taxfive;
    end;
  end;

end;

function CalculateTrainFee(trainField: TTrainField): Integer;
var
  trainsOwned: Integer;
begin
  trainsOwned := 0;
  result := 0;
  for var checkedTrain: TTrainField in trains do
  begin
    if checkedTrain.owner = trainField.owner then
    begin
      trainsOwned := trainsOwned + 1;
    end;
  end;

  case trainsOwned of
    0:
      result := 0;
    1:
      result := trainField.taxone;
    2:
      result := trainField.taxtwo;
    3:
      result := trainField.taxthree;
    4:
      result := trainField.taxfour;
  end;
end;

function CalculateMediaFee(mediaField: TMediaField): Integer;
var
  mediaOwned: Integer;
begin
  mediaOwned := 0;
  for var checkedMedia: TMediaField in media do
  begin
    if checkedMedia.owner = mediaField.owner then
    begin
      mediaOwned := mediaOwned + 1;
    end;
  end;

  result := mediaField.tax * mediaOwned;

end;

procedure ChargePropertyFee(propertyField: TPropertyField);
var
  messageString: String;
  owner: TPlayer;
  fee: Integer;
begin
  owner := propertyField.owner;

  if propertyField is TCityField then
  begin
    fee := CalculateCityFee(propertyField as TCityField);
  end
  else if propertyField is TTrainField then
  begin
    fee := CalculateTrainFee(propertyField as TTrainField);
  end
  else if propertyField is TMediaField then
  begin
    fee := CalculateMediaFee(propertyField as TMediaField);
  end;

  messageString := currentPlayer.name + ' płaci ' + fee.ToString + '$ dla ' +
    owner.name + ' za pobyt na polu ' + propertyField.name + '.';

  if propertyField is TMediaField then
  begin
    var
      tempMedia: TMediaField := propertyField as TMediaField;
    var
      sum: Integer := tempMedia.dice1 + tempMedia.dice2;
    messageString := currentPlayer.name + ' wyrzucił ' +
      (propertyField as TMediaField).dice1.ToString + ' i ' +
      (propertyField as TMediaField).dice2.ToString + ' (' + sum.ToString +
      '). ' + messageString;
  end;

  RefreshTaskDialog(propertyField.name, false, messageString);
  Form1.TaskDialogMain.Execute;

  currentPlayer.balance := currentPlayer.balance - fee;
  owner.balance := owner.balance + fee;
  Form1.Label6.Caption := currentPlayer.balance.ToString + '$';

  if Form1.LogPay1.Checked then
  begin
    AddTextToGameLog(messageString);
  end;

  RefreshButtonsForNegativeBalance;

  gameBoard[currentPlayer.pos].panel.SetFocus;
end;

procedure CalculateAndSetMoveDistance(player: TPlayer; destination: Integer);
begin
  if destination > player.pos then
  begin
    player.totalSum := destination - player.pos;
  end
  else if destination < player.pos then
  begin
    player.totalSum := destination + (40 - player.pos);
  end;
end;

function CalculateRepairFee(player: TPlayer; housePrice: Integer;
hotelPrice: Integer): Integer;
begin
  result := 0;

  for var tempProperty: TPropertyField in player.properties do
  begin
    if tempProperty is TCityField then
    begin
      var
        tempCity: TCityField := tempProperty as TCityField;
      if (tempCity.buildingLevel > 0) and (tempCity.buildingLevel < 5) then
      begin
        result := result + (tempCity.buildingLevel * housePrice);
      end
      else if tempCity.buildingLevel = 5 then
      begin
        result := result + hotelPrice;
      end;

    end;
  end;

end;

procedure DrawRedCard;
begin

  var
    card: TChanceCard := redCards[0];

  if Form1.LogCards1.Checked then
  begin
    AddTextToGameLog(currentPlayer.name + ': ' + card.text);
  end;

  RefreshTaskDialog('Szansa', false, currentPlayer.name + ': ' + card.text);

  case card.id of
    1:
      begin
        Form1.TaskDialogMain.Execute;
        CalculateAndSetMoveDistance(currentPlayer, 15);
        MovePlayer;

        var
          tempCity: TCityField := gameBoard[15] as TCityField;
        if tempCity.owner = nil then
        begin
          BuyProperty(tempCity);
        end
        else if tempCity.owner <> currentPlayer then
        begin

          if (not tempCity.mortgaged) and (not tempCity.owner.imprisoned) then
          begin
            ChargePropertyFee(tempCity);
            UpdatePlayerLabelBalance(tempCity.owner);
            FillPlayerMemo(tempCity.owner);
          end
          else if (not tempCity.mortgaged) and (tempCity.owner.imprisoned) then
          begin
            var
              text: String := 'Właściciel ' + tempCity.name +
                ' siedzi w więzieniu. ' + currentPlayer.name +
                ' nie płaci nic za pobyt.';
            RefreshTaskDialog(tempCity.name, false, text);
            Form1.TaskDialogMain.Execute;
          end;

        end;
      end;
    2:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance + 100;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);
      end;
    3:
      begin
        Form1.TaskDialogMain.Execute;
        CalculateAndSetMoveDistance(currentPlayer, 36);
        MovePlayer;

        var
          tempTrain: TTrainField := gameBoard[36] as TTrainField;

        if tempTrain.owner = nil then
        begin
          BuyProperty(tempTrain);
        end
        else if tempTrain.owner <> currentPlayer then
        begin

          if (not tempTrain.mortgaged) and (not tempTrain.owner.imprisoned) then
          begin
            ChargePropertyFee(tempTrain);
            UpdatePlayerLabelBalance(tempTrain.owner);
            FillPlayerMemo(tempTrain.owner);
          end
          else if (not tempTrain.mortgaged) and (tempTrain.owner.imprisoned)
          then
          begin
            var
              text: String := 'Właściciel ' + tempTrain.name +
                ' siedzi w więzieniu. ' + currentPlayer.name +
                ' nie płaci nic za pobyt.';
            RefreshTaskDialog(tempTrain.name, false, text);
            Form1.TaskDialogMain.Execute;
          end;

        end;
      end;
    4:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance + 300;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);
      end;
    5:
      begin
        Form1.TaskDialogMain.Execute;
        CalculateAndSetMoveDistance(currentPlayer, 24);
        MovePlayer;

        var
          tempCity: TCityField := gameBoard[24] as TCityField;
        if tempCity.owner = nil then
        begin
          BuyProperty(tempCity);
        end
        else if tempCity.owner <> currentPlayer then
        begin

          if (not tempCity.mortgaged) and (not tempCity.owner.imprisoned) then
          begin
            ChargePropertyFee(tempCity);
            UpdatePlayerLabelBalance(tempCity.owner);
            FillPlayerMemo(tempCity.owner);
          end
          else if (not tempCity.mortgaged) and (tempCity.owner.imprisoned) then
          begin
            var
              text: String := 'Właściciel ' + tempCity.name +
                ' siedzi w więzieniu. ' + currentPlayer.name +
                ' nie płaci nic za pobyt.';
            RefreshTaskDialog(tempCity.name, false, text);
            Form1.TaskDialogMain.Execute;
          end;

        end;
      end;
    6:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance - 40;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);

        RefreshButtonsForNegativeBalance;
      end;
    7:
      begin
        Form1.TaskDialogMain.Execute;
        CalculateAndSetMoveDistance(currentPlayer, 7);
        MovePlayer;

        var
          tempCity: TCityField := gameBoard[7] as TCityField;

        PlayerEntersField(tempCity);
      end;
    8:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance - 300;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);

        RefreshButtonsForNegativeBalance;
      end;
    9:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.redPrisonCard := card;
        redCards.Extract(card);
      end;
    10:
      begin
        Form1.TaskDialogMain.Execute;
        GoToPrison(currentPlayer);
      end;
    11:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance + 200;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);
      end;
    12:
      begin
        Form1.TaskDialogMain.Execute;
        CalculateAndSetMoveDistance(currentPlayer, 1);
        MovePlayer;
      end;
    13:
      begin
        Form1.TaskDialogMain.Execute;
        var
          fee: Integer := CalculateRepairFee(currentPlayer, 50, 200);
        var
          text: String := currentPlayer.name + ', w sumie za remont płacisz: ' +
            fee.ToString + '$';

        RefreshTaskDialog('Szansa', false, text);
        Form1.TaskDialogMain.Execute;

        currentPlayer.balance := currentPlayer.balance - fee;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);

        RefreshButtonsForNegativeBalance;
      end;
    14:
      begin
        Form1.TaskDialogMain.Execute;
        ChangePlayerPosition(currentPlayer, currentPlayer.pos - 3, true);
        PlayerEntersField(gameBoard[currentPlayer.pos]);

        FillPlayerMemo(currentPlayer);
      end;
    15:
      begin
        Form1.TaskDialogMain.Execute;
        var
          fee: Integer := CalculateRepairFee(currentPlayer, 80, 230);
        var
          text: String := currentPlayer.name + ', w sumie za remont płacisz: ' +
            fee.ToString + '$';

        RefreshTaskDialog('Szansa', false, text);
        Form1.TaskDialogMain.Execute;

        currentPlayer.balance := currentPlayer.balance - fee;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);

        RefreshButtonsForNegativeBalance;
      end;
    16:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance - 30;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);

        RefreshButtonsForNegativeBalance;
      end;
  end;

  if card.id <> 9 then
  begin
    redCards.Extract(card);
    redCards.Add(card);
  end;

  gameBoard[currentPlayer.pos].panel.SetFocus;
end;

procedure DrawBlueCard;
begin

  var
    card: TChanceCard := blueCards[0];

  if Form1.LogCards1.Checked then
  begin
    AddTextToGameLog(currentPlayer.name + ': ' + card.text);
  end;

  RefreshTaskDialog('Szansa', false, currentPlayer.name + ': ' + card.text);

  case card.id of
    1:
      begin
        Form1.TaskDialogMain.Execute;
        CalculateAndSetMoveDistance(currentPlayer, 1);
        MovePlayer;
      end;
    2:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance + 400;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);
      end;
    3:
      begin
        Form1.TaskDialogMain.Execute;
        GoToPrison(currentPlayer);
      end;
    4:
      begin
        Form1.TaskDialogMain.Execute;
        for var player: TPlayer in players do
        begin
          if player <> currentPlayer then
          begin
            player.balance := player.balance - 20;
            currentPlayer.balance := currentPlayer.balance + 20;
            FillPlayerMemo(player);
            FillPlayerMemo(currentPlayer);
            UpdatePlayerLabelBalance(currentPlayer);
            UpdatePlayerLabelBalance(player);
          end;

        end;
      end;
    5:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance + 20;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);
      end;
    6:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance - 400;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);

        RefreshButtonsForNegativeBalance;

      end;
    7:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance + 50;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);
      end;
    8:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance - 20;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);

        RefreshButtonsForNegativeBalance;

      end;
    9:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance + 40;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);
      end;
    10:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance + 200;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);
      end;
    11:
      begin
        Form1.TaskDialogMain.Execute;
        CalculateAndSetMoveDistance(currentPlayer, 40);
        MovePlayer;
        var
          tempCity: TCityField := gameBoard[40] as TCityField;
        if tempCity.owner = nil then
        begin
          BuyProperty(tempCity);
        end
        else if tempCity.owner <> currentPlayer then
        begin

          if (not tempCity.mortgaged) and (not tempCity.owner.imprisoned) then
          begin
            ChargePropertyFee(tempCity);
            UpdatePlayerLabelBalance(tempCity.owner);
            FillPlayerMemo(tempCity.owner);
          end
          else if (not tempCity.mortgaged) and (tempCity.owner.imprisoned) then
          begin
            var
              text: String := 'Właściciel ' + tempCity.name +
                ' siedzi w więzieniu. ' + currentPlayer.name +
                ' nie płaci nic za pobyt.';

            RefreshTaskDialog(tempCity.name, false, text);
            Form1.TaskDialogMain.Execute;
          end;

        end;
      end;
    12:
      begin
        Form1.TaskDialogMain.CommonButtons := [];
        with TTaskDialogButtonItem(Form1.TaskDialogMain.Buttons.Add) do
        begin
          Caption := 'Zapłać 20$';
          ModalResult := mrYes;
        end;
        with TTaskDialogButtonItem(Form1.TaskDialogMain.Buttons.Add) do
        begin
          Caption := 'Wyciągnij kartę';
          ModalResult := mrNo;
        end;

        if Form1.TaskDialogMain.Execute then
        begin

          if Form1.TaskDialogMain.ModalResult = mrYes then
          begin
            currentPlayer.balance := currentPlayer.balance - 20;
            UpdatePlayerLabelBalance(currentPlayer);
            FillPlayerMemo(currentPlayer);

            RefreshButtonsForNegativeBalance;
          end
          else if Form1.TaskDialogMain.ModalResult = mrNo then
          begin
            DrawRedCard;
          end;

        end;

      end;
    13:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance + 200;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);
      end;
    14:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.bluePrisonCard := card;
        blueCards.Extract(card);
      end;
    15:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance + 20;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);
      end;
    16:
      begin
        Form1.TaskDialogMain.Execute;
        currentPlayer.balance := currentPlayer.balance - 20;
        UpdatePlayerLabelBalance(currentPlayer);
        FillPlayerMemo(currentPlayer);

        RefreshButtonsForNegativeBalance;
      end;
  end;

  if card.id <> 14 then
  begin
    blueCards.Extract(card);
    blueCards.Add(card);
  end;

  gameBoard[currentPlayer.pos].panel.SetFocus;
end;

procedure PlayerEntersField(field: TFieldA);
var
  owner: TPlayer;
begin

  if field is TPropertyField then
  begin
    owner := (field as TPropertyField).owner;
    var
      tempProperty: TPropertyField := field as TPropertyField;

    if owner = nil then
    begin
      BuyProperty(tempProperty);
    end
    else if owner <> currentPlayer then
    begin

      if (not tempProperty.mortgaged) and (not owner.imprisoned) then
      begin
        ChargePropertyFee(tempProperty);
        UpdatePlayerLabelBalance(owner);
        FillPlayerMemo(owner);
      end
      else if (not tempProperty.mortgaged) and (owner.imprisoned) then
      begin
        var
          text: String := 'Właściciel ' + tempProperty.name +
            ' siedzi w więzieniu. ' + currentPlayer.name +
            ' nie płaci nic za pobyt.';
        RefreshTaskDialog(tempProperty.name, false, text);
        Form1.TaskDialogMain.Execute;
      end;

    end;

  end
  else if field is TPenaltyField then
  begin
    ChargePenaltyFee(field as TPenaltyField);
  end
  else if field.locID = 31 then
  begin

    Form1.Label5.Visible := false;
    var
      title: String := 'Zawiniłeś, idziesz do Więzienia!';
    RefreshTaskDialog(title, false, currentPlayer.name +
      ' idzie do więzienia!');
    Form1.TaskDialogMain.Execute;
    GoToPrison(currentPlayer);

  end
  else if field is TChanceField then
  begin

    var
      chanceField: TChanceField := field as TChanceField;

    if chanceField.deckColor = 'B' then
    begin
      DrawBlueCard;
    end
    else if chanceField.deckColor = 'R' then
    begin
      DrawRedCard;
    end;

  end;

  UpdatePlayerLabelBalance(currentPlayer);
  FillPlayerMemo(currentPlayer);
  Form1.Label6.Caption := currentPlayer.balance.ToString + '$';

end;

procedure ThrowDice;
begin
  Randomize;

  dice1 := 1 + Random(6);
  dice2 := 1 + Random(6);
end;

procedure ThrowCheatDice;
begin
  Randomize;
  dice1 := StrToInt(Form1.Edit1.text);
  dice2 := StrToInt(Form1.Edit2.text);
end;

procedure GoToPrison(player: TPlayer);
begin
  currentPlayer.totalSum := 0;
  currentPlayer.partialSum := 0;
  currentPlayer.tossedDice := true;
  currentPlayer.imprisoned := true;
  currentPlayer.prisonTime := 0;
  ChangePlayerPosition(currentPlayer, 11, true);
  FillPlayerMemo(currentPlayer);
  gameBoard[currentPlayer.pos].panel.SetFocus;
  Form1.ButtonDiceToss.Enabled := false;
  Form1.ButtonEndTurn.Enabled := true;

  if (currentPlayer.redPrisonCard <> nil) or
    (currentPlayer.bluePrisonCard <> nil) then
  begin
    Form1.ButtonPrisonCard.Visible := true;
  end;
end;

procedure TForm1.ButtonDiceTossClick(Sender: TObject);
begin
  ButtonDiceToss.Enabled := false;
  Save1.Enabled := false;

  if CheatBox1.Checked then
  begin
    ThrowCheatDice;
  end
  else
  begin
    ThrowDice;
  end;

  currentPlayer.partialSum := dice1 + dice2;
  currentPlayer.totalSum := currentPlayer.totalSum + currentPlayer.partialSum;

  LabelDiceSum.Caption := 'RAZEM: ' + currentPlayer.totalSum.ToString;

  if currentPlayer.doublesCount = 0 then
  begin
    DiceImage1.Picture.LoadFromFile('./data/' + dice1.ToString + '.bmp');
    DiceImage2.Picture.LoadFromFile('./data/' + dice2.ToString + '.bmp');
  end
  else if currentPlayer.doublesCount = 1 then
  begin
    DiceImage3.Picture.LoadFromFile('./data/' + dice1.ToString + '.bmp');
    DiceImage4.Picture.LoadFromFile('./data/' + dice2.ToString + '.bmp');
  end
  else if currentPlayer.doublesCount = 2 then
  begin
    DiceImage5.Picture.LoadFromFile('./data/' + dice1.ToString + '.bmp');
    DiceImage6.Picture.LoadFromFile('./data/' + dice2.ToString + '.bmp');
  end;

  if dice1 <> dice2 then
  begin
    Label5.Visible := false;
    MovePlayer;
    currentPlayer.totalSum := 0;
    currentPlayer.partialSum := 0;
    currentPlayer.tossedDice := true;
    ButtonDiceToss.Enabled := false;
    ButtonEndTurn.Enabled := true;
    PlayerEntersField(gameBoard[currentPlayer.pos]);

  end
  else
  begin
    Label5.Visible := true;
    currentPlayer.doublesCount := currentPlayer.doublesCount + 1;

    if currentPlayer.doublesCount = 3 then
    begin
      Label5.Visible := false;
      var
        title: String := currentPlayer.name +
          ', trzy pary z rzędu! Idziesz do więzienia!';
      RefreshTaskDialog(title, false);
      Form1.TaskDialogMain.Execute;
      GoToPrison(currentPlayer);

    end
    else
    begin
      ButtonDiceToss.Enabled := true;
    end;
  end;

end;

procedure TForm1.ButtonBankruptClick(Sender: TObject);
begin

  var
    messageString: String := currentPlayer.name +
      ' ogłasza bankructwo i odpada z gry!';
  RefreshTaskDialog(messageString, false);
  Form1.TaskDialogMain.Execute;
  AddTextToGameLog(messageString);

  currentPlayer.setBankrupt;

  var
    playerLabel: TLabel := Form1.FindComponent
      ('Label' + currentPlayer.playerNumber.ToString) as TLabel;
  playerLabel.Font.Style := playerLabel.Font.Style + [fsStrikeOut];
  playerLabel := Form1.FindComponent('LabelBalance' +
    currentPlayer.playerNumber.ToString) as TLabel;
  playerLabel.Visible := false;

  currentPlayer.memo.Lines.Clear;

  LoadNextPlayer;

end;

procedure TForm1.ButtonPrisonCardClick(Sender: TObject);
begin

  var
    question: String :=
      'Czy chcesz wykorzystać kartę "Wychodzisz Wolny z Więzienia" by wyjść z więzenia?';

  RefreshTaskDialog('Karta "Wychodzisz wolny z Więzienia"', true, question);

  if Form1.TaskDialogMain.Execute then
  begin
    if Form1.TaskDialogMain.ModalResult = mrYes then
    begin
      if currentPlayer.redPrisonCard <> nil then
      begin
        redCards.Add(currentPlayer.redPrisonCard);
        currentPlayer.redPrisonCard := nil;
      end
      else if currentPlayer.bluePrisonCard <> nil then
      begin
        blueCards.Add(currentPlayer.bluePrisonCard);
        currentPlayer.bluePrisonCard := nil;
      end;
      Form1.ButtonPrisonCard.Visible := false;

      if not currentPlayer.tossedDice then
      begin
        ButtonDiceToss.Enabled := true;
        ButtonEndTurn.Enabled := false;
      end
      else
      begin
        ButtonDiceToss.Enabled := false;
        ButtonEndTurn.Enabled := true;
      end;

      ReleaseFromPrison(currentPlayer);

      FillPlayerMemo(currentPlayer);
    end;
  end;

end;

procedure TForm1.ButtonEndTurnClick(Sender: TObject);
begin

  if currentPlayer.imprisoned then
  begin
    currentPlayer.prisonTime := currentPlayer.prisonTime + 1;
  end;

  FillPlayerMemo(currentPlayer);

  LoadNextPlayer;
end;

procedure TForm1.ButtonBuildClick(Sender: TObject);
begin
  Form4 := TForm4.Create(nil);
  Form4.currentPlayer := currentPlayer;

  Form4.cities := TObjectList<TCityField>.Create(false);

  for var tempProperty: TPropertyField in currentPlayer.properties do
  begin
    if tempProperty is TCityField then
    begin

      var
        tempCity: TCityField := tempProperty as TCityField;
      if WholeCountryOwned(tempCity) and WholeCountryUnmortgaged(tempCity) then
      begin
        Form4.cities.Add(tempCity);
      end;
    end;
  end;

  Form4.Position := poScreenCenter;
  Form4.ShowModal;

  for var city: TCityField in Form4.cities do
  begin

    for var tempProperty: TPropertyField in currentPlayer.properties do
    begin
      if city.name = tempProperty.name then
      begin
        var
          cityField: TCityField := (tempProperty as TCityField);
        cityField.buildingLevel := city.buildingLevel;

        ShowBuildingIcons(cityField);

      end;
    end;

  end;

  UpdatePlayerLabelBalance(currentPlayer);
  FillPlayerMemo(currentPlayer);
  Form1.Label6.Caption := currentPlayer.balance.ToString + '$';

  if AnythingToMortgage(currentPlayer) then
  begin
    Form1.ButtonMortgage.Enabled := true;
  end
  else
  begin
    Form1.ButtonMortgage.Enabled := false;
  end;

  if AnythingToBuild(currentPlayer) then
  begin
    Form1.ButtonBuild.Enabled := true;
  end
  else
  begin
    Form1.ButtonBuild.Enabled := false;
  end;

  if currentPlayer.tossedDice then
  begin
    RefreshButtonsForNegativeBalance;
  end
  else
  begin
    Form1.ButtonEndTurn.Enabled := false;
    Form1.ButtonBankrupt.Visible := false;
  end;

  Form4.cities.Free;
  Form4.Free;
end;

procedure TForm1.ButtonMortgageClick(Sender: TObject);
begin
  Form3 := TForm3.Create(nil);
  Form3.properties := TObjectList<TPropertyField>.Create(false);
  Form3.currentPlayer := currentPlayer;
  Form3.Position := poScreenCenter;

  for var tempProperty: TPropertyField in currentPlayer.properties do
  begin
    if tempProperty is TCityField then
    begin

      var
        tempCity: TCityField := tempProperty as TCityField;
      if WholeCountryUnbuilt(tempCity) then
      begin
        Form3.properties.Add(tempCity);
      end;
    end
    else
    begin
      Form3.properties.Add(tempProperty);
    end;
  end;

  Form3.ShowModal;

  UpdatePlayerLabelBalance(currentPlayer);
  FillPlayerMemo(currentPlayer);
  Form1.Label6.Caption := currentPlayer.balance.ToString + '$';

  for var tempField: TPropertyField in currentPlayer.properties do
  begin
    if tempField.mortgaged then
    begin
      tempField.panel.Color := $00C7C7C7;
    end
    else
    begin
      tempField.panel.Color := clWhite;
    end;
  end;

  if AnythingToMortgage(currentPlayer) then
  begin
    Form1.ButtonMortgage.Enabled := true;
  end
  else
  begin
    Form1.ButtonMortgage.Enabled := false;
  end;

  if AnythingToBuild(currentPlayer) then
  begin
    Form1.ButtonBuild.Enabled := true;
  end
  else
  begin
    Form1.ButtonBuild.Enabled := false;
  end;

  if currentPlayer.tossedDice then
  begin

    RefreshButtonsForNegativeBalance;

  end
  else
  begin
    Form1.ButtonEndTurn.Enabled := false;
    Form1.ButtonBankrupt.Visible := false;
  end;

  Form3.properties.Free;
  Form3.Free;
end;

procedure TForm1.ButtonShowChanceCardsClick(Sender: TObject);
begin
  Memo5.Lines.Clear;
  for var card: TChanceCard in blueCards do
  begin
    Form1.Memo5.Lines.Add(card.deck + '.' + card.id.ToString + ' ' + card.text);
  end;

  Form1.Memo5.Lines.Add('****************************');

  for var card: TChanceCard in redCards do
  begin
    Form1.Memo5.Lines.Add(card.deck + '.' + card.id.ToString + ' ' + card.text);
  end;

end;

procedure TForm1.Debugger1Click(Sender: TObject);
begin
  Debugger1.Checked := not Debugger1.Checked;
  SwitchDebuggerMode;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.TaskDialogMain.Free;
  Form2.Free;

  for var tempPlayer: TPlayer in players do
  begin
    if tempPlayer.redPrisonCard <> nil then
    begin
      tempPlayer.redPrisonCard := nil;
    end;
    if tempPlayer.bluePrisonCard <> nil then
    begin
      tempPlayer.bluePrisonCard := nil;
    end;
  end;

  for var field: TFieldA in gameBoard do
  begin
    field.border.Free;
    if field is TPropertyField then
    begin
      (field as TPropertyField).ownerPanel.Free;
    end;
    field.Free;
  end;

  for var player: TPlayer in players do
  begin
    player.properties.Free;
  end;

  players.Free;

  for var country: TCountry in countries do
  begin
    country.cities.Free;
  end;

  countries.Free;
  trains.Free;
  media.Free;

  if redCards.Count = 15 then
  begin
    tempRedPrisonCard.Free;
  end;

  if blueCards.Count = 15 then
  begin
    tempBluePrisonCard.Free;
  end;

  redCards.Free;
  blueCards.Free;

end;

procedure TForm1.GenerateCards;
var
  cards: TextFile;
  lineArr: TArray<String>;
begin

  blueCards := TObjectList<TChanceCard>.Create;
  redCards := TObjectList<TChanceCard>.Create;

  AssignFile(cards, './data/cards.txt');
  Reset(cards);

  while not Eof(cards) do
  begin

    var
      cardLine: String;

    Readln(cards, cardLine);
    lineArr := cardLine.Split([';']);

    var
      s: String := lineArr[0];

    var
      tempCard: TChanceCard := TChanceCard.Create;
    tempCard.id := s.Substring(1, 2).ToInteger;
    tempCard.text := lineArr[1];

    if s.Substring(0, 1) = 'B' then
    begin
      tempCard.deck := 'B';
      blueCards.Add(tempCard);
    end
    else if s.Substring(0, 1) = 'R' then
    begin
      tempCard.deck := 'R';
      redCards.Add(tempCard);
    end;

  end;

  CloseFile(cards);

  for var tempCard: TChanceCard in redCards do
  begin
    if tempCard.id = 9 then
    begin
      tempRedPrisonCard := tempCard;
    end;
  end;

  for var tempCard: TChanceCard in blueCards do
  begin
    if tempCard.id = 14 then
    begin
      tempBluePrisonCard := tempCard;
    end;
  end;

  ShuffleChanceCards;

end;

procedure GenerateCountries;
begin
  countries := TObjectList<TCountry>.Create;

  var
    tempCountry: TCountry := TCountry.Create;
  tempCountry.name := 'GRECJA';
  tempCountry.Color := clYellow;
  countries.Add(tempCountry);

  tempCountry := TCountry.Create;
  tempCountry.name := 'WŁOCHY';
  tempCountry.Color := clRed;
  countries.Add(tempCountry);

  tempCountry := TCountry.Create;
  tempCountry.name := 'HISZPANIA';
  tempCountry.Color := $00FF8000;
  countries.Add(tempCountry);

  tempCountry := TCountry.Create;
  tempCountry.name := 'ANGLIA';
  tempCountry.Color := $000080FF;
  countries.Add(tempCountry);

  tempCountry := TCountry.Create;
  tempCountry.name := 'BENELUX';
  tempCountry.Color := $00009500;
  countries.Add(tempCountry);

  tempCountry := TCountry.Create;
  tempCountry.name := 'SZWECJA';
  tempCountry.Color := $00800040;
  countries.Add(tempCountry);

  tempCountry := TCountry.Create;
  tempCountry.name := 'RFN';
  tempCountry.Color := $00004080;
  countries.Add(tempCountry);

  tempCountry := TCountry.Create;
  tempCountry.name := 'AUSTRIA';
  tempCountry.Color := clBlack;
  countries.Add(tempCountry);
end;

procedure TForm1.GenerateLocations;
var
  locations: TextFile;
  locLine: String;
  locArr: TArray<String>;
  tempField: TFieldA;
  fieldType: String;
begin
  AssignFile(locations, './data/locations.txt');
  Reset(locations);

  for var i: Integer := 1 to 40 do
  begin
    Readln(locations, locLine);
    locArr := locLine.Split([';']);

    fieldType := locArr[1];

    if fieldType = 'P' then
    begin
      tempField := TCityField.Create;
      (tempField as TCityField).price := StrToInt(locArr[3]);
      (tempField as TCityField).country := locArr[4];
      (tempField as TCityField).taxzero := locArr[5].ToInteger;
      (tempField as TCityField).taxone := locArr[6].ToInteger;
      (tempField as TCityField).taxtwo := locArr[7].ToInteger;
      (tempField as TCityField).taxthree := locArr[8].ToInteger;
      (tempField as TCityField).taxfour := locArr[9].ToInteger;
      (tempField as TCityField).taxfive := locArr[10].ToInteger;
      (tempField as TCityField).buildCost := locArr[11].ToInteger;
      (tempField as TCityField).buildingLevel := 0;
    end
    else if fieldType = 'T' then
    begin
      tempField := TTrainField.Create;
      (tempField as TTrainField).price := StrToInt(locArr[3]);
      (tempField as TTrainField).taxone := StrToInt(locArr[4]);
      (tempField as TTrainField).taxtwo := StrToInt(locArr[5]);
      (tempField as TTrainField).taxthree := StrToInt(locArr[6]);
      (tempField as TTrainField).taxfour := StrToInt(locArr[7]);
    end
    else if fieldType = 'M' then
    begin
      tempField := TMediaField.Create;
      (tempField as TMediaField).price := StrToInt(locArr[3]);
    end
    else if fieldType = 'C' then
    begin
      tempField := TChanceField.Create;
      (tempField as TChanceField).deckColor := locArr[3];
    end
    else if fieldType = 'X' then
    begin
      tempField := TPenaltyField.Create;
      (tempField as TPenaltyField).price := StrToInt(locArr[3]);
    end
    else
    begin
      tempField := TSpecialField.Create;
    end;

    tempField.name := locArr[2];
    tempField.locID := i;
    tempField.panel := FindComponent('Panel' + IntToStr(i)) as TPanel;
    tempField.panel.Color := clWhite;

    tempField.nameLabel := TLabel.Create(tempField.panel);
    tempField.nameLabel.SetParentComponent(tempField.panel);
    tempField.nameLabel.AutoSize := false;
    tempField.nameLabel.Top := 0;
    tempField.nameLabel.Left := 0;
    tempField.nameLabel.Height := tempField.panel.Height;
    tempField.nameLabel.Width := tempField.panel.Width;
    tempField.nameLabel.Transparent := true;

    tempField.nameLabel.Alignment := taCenter;
    tempField.nameLabel.Layout := tlCenter;

    tempField.nameLabel.WordWrap := true;
    tempField.nameLabel.Font.Size := 8;

    tempField.nameLabel.Caption := locArr[2];

    if tempField is TPropertyField then
    begin
      tempField.nameLabel.Caption := tempField.nameLabel.Caption + #13#10 +
        locArr[3] + '$';
    end
    else if tempField is TPenaltyField then
    begin
      tempField.nameLabel.Caption := tempField.nameLabel.Caption + #13#10 + '-'
        + locArr[3] + '$';
    end
    else if tempField is TChanceField then
    begin
      tempField.nameLabel.Caption := tempField.nameLabel.Caption + #13#10 + '?';
    end
    else if tempField.locID = 1 then
    begin
      tempField.nameLabel.Caption := tempField.nameLabel.Caption + #13#10
        + '+400$';
    end;

    gameBoard[i] := tempField;

  end;

  CloseFile(locations);

  GenerateCountries;

  trains := TObjectList<TTrainField>.Create(false);
  media := TObjectList<TMediaField>.Create(false);

  for var i: Integer := 1 to 40 do
  begin

    if gameBoard[i] is TPropertyField then
    begin
      var
      tempProperty := gameBoard[i] as TPropertyField;

      tempProperty.ownerPanel := TOwnerBorder.Create;
      tempProperty.ownerPanel.ownerPanel1 := TShape.Create(tempProperty.panel);
      tempProperty.ownerPanel.ownerPanel1.SetParentComponent
        (tempProperty.panel);
      tempProperty.ownerPanel.ownerPanel1.Brush.Color := clWhite;
      tempProperty.ownerPanel.ownerPanel1.shape := stRectangle;
      tempProperty.ownerPanel.ownerPanel1.Pen.Color := clWhite;
      tempProperty.ownerPanel.ownerPanel1.Pen.Width := 0;

      tempProperty.ownerPanel.ownerPanel2 := TShape.Create(tempProperty.panel);
      tempProperty.ownerPanel.ownerPanel2.SetParentComponent
        (tempProperty.panel);
      tempProperty.ownerPanel.ownerPanel2.Brush.Color := clWhite;
      tempProperty.ownerPanel.ownerPanel2.shape := stRectangle;
      tempProperty.ownerPanel.ownerPanel2.Pen.Color := clWhite;
      tempProperty.ownerPanel.ownerPanel2.Pen.Width := 0;

      tempProperty.ownerPanel.ownerPanel3 := TShape.Create(tempProperty.panel);
      tempProperty.ownerPanel.ownerPanel3.SetParentComponent
        (tempProperty.panel);
      tempProperty.ownerPanel.ownerPanel3.Brush.Color := clWhite;
      tempProperty.ownerPanel.ownerPanel3.shape := stRectangle;
      tempProperty.ownerPanel.ownerPanel3.Pen.Color := clWhite;
      tempProperty.ownerPanel.ownerPanel3.Pen.Width := 0;

      tempProperty.ownerPanel.ownerPanel4 := TShape.Create(tempProperty.panel);
      tempProperty.ownerPanel.ownerPanel4.SetParentComponent
        (tempProperty.panel);
      tempProperty.ownerPanel.ownerPanel4.Brush.Color := clWhite;
      tempProperty.ownerPanel.ownerPanel4.shape := stRectangle;
      tempProperty.ownerPanel.ownerPanel4.Pen.Color := clWhite;
      tempProperty.ownerPanel.ownerPanel4.Pen.Width := 0;

      if tempProperty.locID < 11 then
      begin
        tempProperty.ownerPanel.ownerPanel1.Width := 7;
        tempProperty.ownerPanel.ownerPanel1.Height := 150;
        tempProperty.ownerPanel.ownerPanel1.Top := 0;
        tempProperty.ownerPanel.ownerPanel1.Left := 0;

        tempProperty.ownerPanel.ownerPanel2.Width := 100;
        tempProperty.ownerPanel.ownerPanel2.Height := 7;
        tempProperty.ownerPanel.ownerPanel2.Top := 0;
        tempProperty.ownerPanel.ownerPanel2.Left := 0;

        tempProperty.ownerPanel.ownerPanel3.Width := 7;
        tempProperty.ownerPanel.ownerPanel3.Height := 150;
        tempProperty.ownerPanel.ownerPanel3.Top := 0;
        tempProperty.ownerPanel.ownerPanel3.Left := 93;

        if tempProperty is TCityField then
        begin
          tempProperty.ownerPanel.ownerPanel4.Width := 100;
          tempProperty.ownerPanel.ownerPanel4.Height := 5;
          tempProperty.ownerPanel.ownerPanel4.Top := 115;
          tempProperty.ownerPanel.ownerPanel4.Left := 0;
        end
        else
        begin
          tempProperty.ownerPanel.ownerPanel4.Width := 100;
          tempProperty.ownerPanel.ownerPanel4.Height := 9;
          tempProperty.ownerPanel.ownerPanel4.Top := 141;
          tempProperty.ownerPanel.ownerPanel4.Left := 0;
        end;

      end
      else if tempProperty.locID < 21 then
      begin
        tempProperty.ownerPanel.ownerPanel1.Width := 150;
        tempProperty.ownerPanel.ownerPanel1.Height := 7;
        tempProperty.ownerPanel.ownerPanel1.Top := 93;
        tempProperty.ownerPanel.ownerPanel1.Left := 0;

        tempProperty.ownerPanel.ownerPanel2.Width := 150;
        tempProperty.ownerPanel.ownerPanel2.Height := 7;
        tempProperty.ownerPanel.ownerPanel2.Top := 0;
        tempProperty.ownerPanel.ownerPanel2.Left := 0;

        tempProperty.ownerPanel.ownerPanel3.Width := 7;
        tempProperty.ownerPanel.ownerPanel3.Height := 100;
        tempProperty.ownerPanel.ownerPanel3.Top := 0;
        tempProperty.ownerPanel.ownerPanel3.Left := 143;

        if tempProperty is TCityField then
        begin
          tempProperty.ownerPanel.ownerPanel4.Width := 5;
          tempProperty.ownerPanel.ownerPanel4.Height := 100;
          tempProperty.ownerPanel.ownerPanel4.Top := 2;
          tempProperty.ownerPanel.ownerPanel4.Left := 30;
        end
        else
        begin
          tempProperty.ownerPanel.ownerPanel4.Width := 9;
          tempProperty.ownerPanel.ownerPanel4.Height := 100;
          tempProperty.ownerPanel.ownerPanel4.Top := 0;
          tempProperty.ownerPanel.ownerPanel4.Left := 0;
        end;
      end
      else if tempProperty.locID < 31 then
      begin
        tempProperty.ownerPanel.ownerPanel1.Width := 7;
        tempProperty.ownerPanel.ownerPanel1.Height := 150;
        tempProperty.ownerPanel.ownerPanel1.Top := 0;
        tempProperty.ownerPanel.ownerPanel1.Left := 0;

        tempProperty.ownerPanel.ownerPanel2.Width := 100;
        tempProperty.ownerPanel.ownerPanel2.Height := 8;
        tempProperty.ownerPanel.ownerPanel2.Top := 143;
        tempProperty.ownerPanel.ownerPanel2.Left := 0;

        tempProperty.ownerPanel.ownerPanel3.Width := 7;
        tempProperty.ownerPanel.ownerPanel3.Height := 150;
        tempProperty.ownerPanel.ownerPanel3.Top := 0;
        tempProperty.ownerPanel.ownerPanel3.Left := 93;

        if tempProperty is TCityField then
        begin
          tempProperty.ownerPanel.ownerPanel4.Width := 100;
          tempProperty.ownerPanel.ownerPanel4.Height := 5;
          tempProperty.ownerPanel.ownerPanel4.Top := 30;
          tempProperty.ownerPanel.ownerPanel4.Left := 0;
        end
        else
        begin
          tempProperty.ownerPanel.ownerPanel4.Width := 100;
          tempProperty.ownerPanel.ownerPanel4.Height := 9;
          tempProperty.ownerPanel.ownerPanel4.Top := 0;
          tempProperty.ownerPanel.ownerPanel4.Left := 0;
        end;
      end
      else
      begin
        tempProperty.ownerPanel.ownerPanel1.Width := 150;
        tempProperty.ownerPanel.ownerPanel1.Height := 7;
        tempProperty.ownerPanel.ownerPanel1.Top := 0;
        tempProperty.ownerPanel.ownerPanel1.Left := 0;

        tempProperty.ownerPanel.ownerPanel2.Width := 7;
        tempProperty.ownerPanel.ownerPanel2.Height := 100;
        tempProperty.ownerPanel.ownerPanel2.Top := 0;
        tempProperty.ownerPanel.ownerPanel2.Left := 0;

        tempProperty.ownerPanel.ownerPanel3.Width := 150;
        tempProperty.ownerPanel.ownerPanel3.Height := 7;
        tempProperty.ownerPanel.ownerPanel3.Top := 93;
        tempProperty.ownerPanel.ownerPanel3.Left := 0;

        if tempProperty is TCityField then
        begin
          tempProperty.ownerPanel.ownerPanel4.Width := 7;
          tempProperty.ownerPanel.ownerPanel4.Height := 100;
          tempProperty.ownerPanel.ownerPanel4.Top := 0;
          tempProperty.ownerPanel.ownerPanel4.Left := 115;
        end
        else
        begin
          tempProperty.ownerPanel.ownerPanel4.Width := 9;
          tempProperty.ownerPanel.ownerPanel4.Height := 100;
          tempProperty.ownerPanel.ownerPanel4.Top := 0;
          tempProperty.ownerPanel.ownerPanel4.Left := 141;
        end;
      end;
    end;

    if gameBoard[i] is TCityField then
    begin

      var
        city: TCityField := gameBoard[i] as TCityField;

      city.countryColorShape := TShape.Create(city.panel);
      city.countryColorShape.SetParentComponent(city.panel);
      city.countryColorShape.Pen.Width := 0;

      if city.locID < 11 then
      begin
        city.countryColorShape.Width := 100;
        city.countryColorShape.Height := 30;
        city.countryColorShape.Top := 120;
        city.countryColorShape.Left := 0;

      end
      else if city.locID < 21 then
      begin
        city.countryColorShape.Width := 30;
        city.countryColorShape.Height := 100;
        city.countryColorShape.Top := 0;
        city.countryColorShape.Left := 0;
      end
      else if city.locID < 31 then
      begin
        city.countryColorShape.Width := 100;
        city.countryColorShape.Height := 30;
        city.countryColorShape.Top := 0;
        city.countryColorShape.Left := 0;
      end
      else
      begin
        city.countryColorShape.Width := 30;
        city.countryColorShape.Height := 100;
        city.countryColorShape.Top := 0;
        city.countryColorShape.Left := 120;
      end;

      for var country: TCountry in countries do
      begin
        if country.name = city.country then
        begin
          country.cities.Add(city);
          city.countryColorShape.Brush.Color := country.Color;
          city.countryColorShape.Pen.Color := country.Color;
        end;

      end;

      city.house1 := TImage.Create(city.panel);
      city.house1.SetParentComponent(city.panel);
      city.house1.Stretch := true;
      city.house1.Proportional := false;
      city.house1.Width := 30;
      city.house1.Height := 30;
      city.house1.Picture.LoadFromFile('./data/house.png');

      city.house2 := TImage.Create(city.panel);
      city.house2.SetParentComponent(city.panel);
      city.house2.Stretch := true;
      city.house2.Proportional := false;
      city.house2.Width := 30;
      city.house2.Height := 30;
      city.house2.Picture.LoadFromFile('./data/house.png');

      city.house3 := TImage.Create(city.panel);
      city.house3.SetParentComponent(city.panel);
      city.house3.Stretch := true;
      city.house3.Proportional := false;
      city.house3.Width := 30;
      city.house3.Height := 30;
      city.house3.Picture.LoadFromFile('./data/house.png');

      city.house4 := TImage.Create(city.panel);
      city.house4.SetParentComponent(city.panel);
      city.house4.Stretch := true;
      city.house4.Proportional := false;
      city.house4.Width := 30;
      city.house4.Height := 30;
      city.house4.Picture.LoadFromFile('./data/house.png');

      city.hotel := TImage.Create(city.panel);
      city.hotel.SetParentComponent(city.panel);
      city.hotel.Stretch := true;
      city.hotel.Proportional := true;
      city.hotel.Width := 25;
      city.hotel.Height := 25;
      city.hotel.Picture.LoadFromFile('./data/hotel.png');

      if city.locID < 11 then
      begin
        city.house1.Top := 120;
        city.house1.Left := 5;

        city.house2.Top := 120;
        city.house2.Left := 25;

        city.house3.Top := 120;
        city.house3.Left := 45;

        city.house4.Top := 120;
        city.house4.Left := 65;

        city.hotel.Top := 120;
        city.hotel.Left := (city.panel.Width div 2) - 13;

      end
      else if city.locID < 21 then
      begin
        city.house1.Top := 5;
        city.house1.Left := 2;

        city.house2.Top := 25;
        city.house2.Left := 2;

        city.house3.Top := 45;
        city.house3.Left := 2;

        city.house4.Top := 65;
        city.house4.Left := 2;

        city.hotel.Top := (city.panel.Height div 2) - 13;
        city.hotel.Left := 3;
      end
      else if city.locID < 31 then
      begin
        city.house1.Top := 2;
        city.house1.Left := 5;

        city.house2.Top := 2;
        city.house2.Left := 25;

        city.house3.Top := 2;
        city.house3.Left := 45;

        city.house4.Top := 2;
        city.house4.Left := 65;

        city.hotel.Top := 4;
        city.hotel.Left := (city.panel.Width div 2) - 13;
      end
      else
      begin
        city.house1.Top := 5;
        city.house1.Left := 118;

        city.house2.Top := 25;
        city.house2.Left := 118;

        city.house3.Top := 45;
        city.house3.Left := 118;

        city.house4.Top := 65;
        city.house4.Left := 118;

        city.hotel.Top := (city.panel.Height div 2) - 13;
        city.hotel.Left := 120;
      end;

      city.house1.Visible := false;
      city.house2.Visible := false;
      city.house3.Visible := false;
      city.house4.Visible := false;
      city.hotel.Visible := false;

    end
    else if gameBoard[i] is TTrainField then
    begin
      var
        trainField: TTrainField := gameBoard[i] as TTrainField;
      trains.Add(trainField);

      trainField.image := TImage.Create(trainField.panel);
      trainField.image.SetParentComponent(trainField.panel);
      trainField.image.Stretch := true;
      trainField.image.Proportional := true;
      trainField.image.Picture.LoadFromFile('./data/train.png');

      trainField.nameLabel.Align := alBottom;
      trainField.nameLabel.AutoSize := true;
      trainField.nameLabel.Caption := trainField.nameLabel.Caption + #13#10;

      if i = 6 then
      begin
        trainField.image.Width := 80;
        trainField.image.Top := (trainField.panel.Height div 2) - 30;
        trainField.image.Left := (trainField.panel.Width div 2) - 40;
      end
      else if i = 16 then
      begin
        trainField.image.Width := 80;
        trainField.image.Top := (trainField.panel.Height div 2) - 35;
        trainField.image.Left := (trainField.panel.Width div 2) - 40;
      end
      else if i = 26 then
      begin
        trainField.image.Width := 80;
        trainField.image.Top := (trainField.panel.Height div 2) - 5;
        trainField.image.Left := (trainField.panel.Width div 2) - 40;
        trainField.nameLabel.Align := alTop;
        trainField.nameLabel.Caption := #13#10 + trainField.nameLabel.Caption;
      end
      else if i = 36 then
      begin
        trainField.image.Width := 80;
        trainField.image.Top := (trainField.panel.Height div 2) - 35;
        trainField.image.Left := (trainField.panel.Width div 2) - 40;
      end;

    end
    else if gameBoard[i] is TMediaField then
    begin
      var
        mediaField: TMediaField := gameBoard[i] as TMediaField;
      media.Add(mediaField);

      mediaField.image := TImage.Create(mediaField.panel);
      mediaField.image.SetParentComponent(mediaField.panel);
      mediaField.image.Stretch := true;
      mediaField.image.Proportional := true;

      mediaField.nameLabel.AutoSize := true;

      if i = 13 then
      begin
        mediaField.image.Picture.LoadFromFile('./data/electric.png');
        mediaField.image.Width := 40;
        mediaField.image.Top := (mediaField.panel.Height div 2) - 35;
        mediaField.image.Left := (mediaField.panel.Width div 2) - 20;
        mediaField.nameLabel.Align := alBottom;
        mediaField.nameLabel.Caption := mediaField.nameLabel.Caption + #13#10;

      end
      else if i = 29 then
      begin
        mediaField.image.Picture.LoadFromFile('./data/waterworks.png');
        mediaField.image.Width := 70;
        mediaField.image.Top := (mediaField.panel.Height div 2) - 15;
        mediaField.image.Left := (mediaField.panel.Width div 2) - 35;
        mediaField.nameLabel.Align := alTop;
        mediaField.nameLabel.Caption := #13#10 + mediaField.nameLabel.Caption;
      end;

    end
    else if gameBoard[i] is TChanceField then
    begin

      var
        chanceField: TChanceField := gameBoard[i] as TChanceField;

      chanceField.image := TImage.Create(chanceField.panel);
      chanceField.image.SetParentComponent(chanceField.panel);
      chanceField.image.Stretch := true;
      chanceField.image.Proportional := true;
      chanceField.image.Height := 75;
      chanceField.image.Top := (chanceField.panel.Height div 2) - 38;
      chanceField.image.Left := (chanceField.panel.Width div 2) - 17;

      if chanceField.deckColor = 'B' then
      begin
        chanceField.image.Picture.LoadFromFile('./data/chanceB.png');
        chanceField.panel.Color := $00FFE0C4;
      end
      else if chanceField.deckColor = 'R' then
      begin
        chanceField.image.Picture.LoadFromFile('./data/chanceR.png');
        chanceField.panel.Color := $00D5D5FF;
      end;

      chanceField.nameLabel.Visible := false;

    end
    else if gameBoard[i] is TSpecialField then
    begin

      var
        specialField: TSpecialField := gameBoard[i] as TSpecialField;
      specialField.image := TImage.Create(specialField.panel);
      specialField.image.SetParentComponent(specialField.panel);
      specialField.image.Stretch := true;
      specialField.image.Proportional := true;

      if i = 1 then
      begin
        specialField.image.Width := 150;
        specialField.image.Height := 150;
        specialField.image.Top := 0;
        specialField.image.Left := 0;
        specialField.image.Picture.LoadFromFile('./data/start.bmp');
      end
      else if i = 11 then
      begin
        specialField.image.Width := 150;
        specialField.image.Height := 150;
        specialField.image.Top := 0;
        specialField.image.Left := 0;
        specialField.image.Picture.LoadFromFile('./data/jail.bmp');
      end
      else if i = 21 then
      begin
        specialField.image.Width := 120;
        specialField.image.Height := 120;
        specialField.image.Top := (specialField.panel.Height div 2) - 50;
        specialField.image.Left := (specialField.panel.Width div 2) - 60;
        specialField.image.Picture.LoadFromFile('./data/parking.bmp');
      end
      else if i = 31 then
      begin
        specialField.image.Width := 150;
        specialField.image.Height := 150;
        specialField.image.Top := (specialField.panel.Height div 2) - 75;
        specialField.image.Left := (specialField.panel.Width div 2) - 75;
        specialField.image.Picture.LoadFromFile('./data/gotojail.bmp');

        specialField.nameLabel.Visible := false;
      end;

    end
    else if gameBoard[i] is TPenaltyField then
    begin
      var
        penaltyField: TPenaltyField := gameBoard[i] as TPenaltyField;

      penaltyField.image := TImage.Create(penaltyField.panel);
      penaltyField.image.SetParentComponent(penaltyField.panel);
      penaltyField.image.Stretch := true;
      penaltyField.image.Proportional := true;

      if i = 5 then
      begin
        penaltyField.image.Width := 50;
        penaltyField.image.Top := (penaltyField.panel.Height div 2) - 50;
        penaltyField.image.Left := (penaltyField.panel.Width div 2) - 22;
        penaltyField.image.Picture.LoadFromFile('./data/pay400.bmp');

        penaltyField.nameLabel.Caption := 'Parking Strzeżony' + #13#10 +
          '-400$' + #13#10;
        penaltyField.nameLabel.Align := alBottom;
        penaltyField.nameLabel.AutoSize := true;
      end
      else if i = 39 then
      begin
        penaltyField.image.Width := 60;
        penaltyField.image.Top := (penaltyField.panel.Height div 2) - 47;
        penaltyField.image.Left := (penaltyField.panel.Width div 2) - 30;
        penaltyField.image.Picture.LoadFromFile('./data/pay200.bmp');

        penaltyField.nameLabel.Caption := 'Podatek od Wzbogacenia' + #13#10 +
          '-200$' + #13#10;
        penaltyField.nameLabel.Align := alBottom;
        penaltyField.nameLabel.AutoSize := true;
      end;

    end;

    var
      tempBorderField: TFieldA := gameBoard[i];

    tempBorderField.border := TBorder.Create();
    tempBorderField.border.Color := clBlack;

    tempBorderField.border.Left := TShape.Create(self);
    tempBorderField.border.Left.shape := stRectangle;
    tempBorderField.border.Left.SetParentComponent(tempBorderField.panel);

    tempBorderField.border.right := TShape.Create(self);
    tempBorderField.border.right.shape := stRectangle;
    tempBorderField.border.right.SetParentComponent(tempBorderField.panel);

    tempBorderField.border.Top := TShape.Create(self);
    tempBorderField.border.Top.shape := stRectangle;
    tempBorderField.border.Top.SetParentComponent(tempBorderField.panel);

    tempBorderField.border.bottom := TShape.Create(self);
    tempBorderField.border.bottom.shape := stRectangle;
    tempBorderField.border.bottom.SetParentComponent(tempBorderField.panel);

    tempBorderField.border.paintBlack;

    tempBorderField.border.Left.Width := 2;
    tempBorderField.border.Left.Height := tempBorderField.panel.Height;
    tempBorderField.border.Left.Top := 0;
    tempBorderField.border.Left.Left := 0;

    tempBorderField.border.right.Width := 2;
    tempBorderField.border.right.Height := tempBorderField.panel.Height;
    tempBorderField.border.right.Top := 0;
    tempBorderField.border.right.Left := tempBorderField.panel.Width - 2;

    tempBorderField.border.Top.Width := tempBorderField.panel.Width;
    tempBorderField.border.Top.Height := 2;
    tempBorderField.border.Top.Top := 0;
    tempBorderField.border.Top.Left := 0;

    tempBorderField.border.bottom.Width := tempBorderField.panel.Width;
    tempBorderField.border.bottom.Height := 2;
    tempBorderField.border.bottom.Top := tempBorderField.panel.Height - 2;
    tempBorderField.border.bottom.Left := 0;

    if (tempBorderField.locID > 1) and (tempBorderField.locID < 11) then
    begin
      tempBorderField.border.bottom.Width := tempBorderField.panel.Width;
      tempBorderField.border.bottom.Height := 4;
      tempBorderField.border.bottom.Top := tempBorderField.panel.Height - 4;
      tempBorderField.border.bottom.Left := 0;

    end
    else if (tempBorderField.locID > 11) and (tempBorderField.locID < 21) then
    begin
      tempBorderField.border.Left.Width := 4;
      tempBorderField.border.Left.Height := tempBorderField.panel.Height;
      tempBorderField.border.Left.Top := 0;
      tempBorderField.border.Left.Left := 0;
    end
    else if (tempBorderField.locID > 21) and (tempBorderField.locID < 31) then
    begin
      tempBorderField.border.Top.Width := tempBorderField.panel.Width;
      tempBorderField.border.Top.Height := 4;
      tempBorderField.border.Top.Top := 0;
      tempBorderField.border.Top.Left := 0;
    end
    else if tempBorderField.locID > 31 then
    begin
      tempBorderField.border.right.Width := 4;
      tempBorderField.border.right.Height := tempBorderField.panel.Height;
      tempBorderField.border.right.Top := 0;
      tempBorderField.border.right.Left := tempBorderField.panel.Width - 4;

    end;

  end;

end;

procedure PositionShapesOnBoard;
begin
  players[0].Left := 35;
  players[0].Top := 35;

  players[1].Left := 90;
  players[1].Top := 35;

  players[2].Left := 35;
  players[2].Top := 90;

  players[3].Left := 90;
  players[3].Top := 90;

  for var i: Integer := 0 to 3 do
  begin
    players[i].shape.Left := players[i].Left;
    players[i].shape.Top := players[i].Top;
  end;
end;

procedure TForm1.GeneratePlayers;
var
  tempPlayer: TPlayer;
  setupEdit: TEdit;
  setupShape: TShape;
begin
  players := TObjectList<TPlayer>.Create;

  for var i: Integer := 1 to 4 do
  begin
    setupShape := Form2.FindComponent('Shape' + i.ToString) as TShape;
    setupEdit := Form2.FindComponent('Edit' + i.ToString) as TEdit;

    tempPlayer := TPlayer.Create;
    tempPlayer.playerNumber := i;
    tempPlayer.name := setupEdit.text;
    tempPlayer.shape := FindComponent('Player' + IntToStr(i)) as TShape;
    tempPlayer.shape.Parent := gameBoard[1].panel;
    tempPlayer.Color := setupShape.Brush.Color;
    tempPlayer.memo := FindComponent('Memo' + IntToStr(i)) as TMemo;

    tempPlayer.pos := 1;
    tempPlayer.balance := 3000;

    UpdatePlayerNameAndColor(tempPlayer);
    players.Add(tempPlayer);
  end;

  PositionShapesOnBoard;

end;

procedure TForm1.Load1Click(Sender: TObject);
var
  line: String;
  lineArr: TArray<String>;
  ownedFields: TArray<String>;
  loadFile: TextFile;
  player: TPlayer;
  propertyField: TPropertyField;
  locID: Integer;
  tempDouble: Double;
begin

  if OpenDialog1.Execute then
  begin

    try

      AssignFile(loadFile, OpenDialog1.FileName);
      Reset(loadFile);

      ResetGameBoard;

      Readln(loadFile, line);
      currentPlayerID := StrToInt(line) - 1;

      Readln(loadFile, line);
      lineArr := line.Split([';']);

      if Length(lineArr) = 15 then
      begin
        redCards.Extract(tempRedPrisonCard);
      end;

      for var i := 0 to Length(lineArr) - 1 do
      begin

        for var tempCard: TChanceCard in redCards do
        begin
          if lineArr[i].Substring(1).ToInteger = tempCard.id then
          begin
            redCards.Exchange(i, redCards.IndexOf(tempCard));
            break;
          end;

        end;

      end;

      Readln(loadFile, line);
      lineArr := line.Split([';']);

      if Length(lineArr) = 15 then
      begin
        blueCards.Extract(tempBluePrisonCard);
      end;

      for var i := 0 to Length(lineArr) - 1 do
      begin

        for var tempCard: TChanceCard in blueCards do
        begin

          if lineArr[i].Substring(1).ToInteger = tempCard.id then
          begin
            blueCards.Exchange(i, blueCards.IndexOf(tempCard));
            break;
          end;

        end;

      end;

      while not Eof(loadFile) do
      begin
        Readln(loadFile, line);
        lineArr := line.Split([';']);
        player := players[StrToInt(lineArr[0]) - 1];
        player.name := lineArr[1];
        player.Color := StringToColor(lineArr[2]);
        player.isBankrupt := StrToBool(lineArr[3]);
        player.pos := StrToInt(lineArr[4]);
        player.balance := StrToInt(lineArr[5]);
        player.imprisoned := StrToBool(lineArr[6]);
        player.prisonTime := StrToInt(lineArr[7]);

        UpdatePlayerMemoNameAndColor(player);

        line := lineArr[8];
        if line.Substring(1, 1) = '0' then
        begin
          player.redPrisonCard := nil;
        end
        else if line.Substring(1, 1) = '1' then
        begin
          player.redPrisonCard := tempRedPrisonCard;
        end;

        if line.Substring(3, 1) = '0' then
        begin
          player.bluePrisonCard := nil;
        end
        else if line.Substring(3, 1) = '1' then
        begin
          player.bluePrisonCard := tempBluePrisonCard;
        end;

        player.shape.Parent := gameBoard[player.pos].panel;
        player.shape.Brush.Color := player.Color;
        line := lineArr[9];
        ownedFields := lineArr[9].Split([' ']);

        if (player.pos > 1) and (player.pos < 11) then
        begin
          player.shape.Left := player.Left - 25;
        end
        else if (player.pos = 11) and not player.imprisoned then
        begin
          if player.playerNumber = 1 then
          begin
            player.shape.Left := 30;
            player.shape.Top := 3;
          end
          else if player.playerNumber = 2 then
          begin
            player.shape.Left := 80;
            player.shape.Top := 3;
          end
          else if player.playerNumber = 3 then
          begin
            player.shape.Left := 120;
            player.shape.Top := 40;
          end
          else if player.playerNumber = 4 then
          begin
            player.shape.Left := 120;
            player.shape.Top := 100;
          end;
        end
        else if (player.pos = 11) and player.imprisoned then
        begin
          ChangePlayerPosition(player, 1, false);
        end
        else if (player.pos > 11) and (player.pos < 21) then
        begin
          player.shape.Top := player.Top - 25;
        end
        else if (player.pos > 21) and (player.pos < 31) then
        begin
          player.shape.Left := player.Left - 25;
        end
        else if player.pos > 31 then
        begin
          player.shape.Top := player.Top - 25;
        end
        else
        begin
          player.shape.Left := player.Left;
          player.shape.Top := player.Top;
        end;

        for var s: String in ownedFields do
        begin
          if s <> '' then
          begin

            locID := s.Substring(0, 2).ToInteger;
            var
              mortgaged: String := s.Substring(2, 1);

            propertyField := gameBoard[locID] as TPropertyField;
            propertyField.owner := player;
            player.properties.Add(propertyField);
            propertyField.ownerPanel.setColor(player.Color);

            if mortgaged = 'M' then
            begin
              propertyField.mortgaged := true;
              propertyField.panel.Caption := '(' + propertyField.name + ')';
              propertyField.panel.Color := $00C7C7C7;
            end
            else if mortgaged = 'U' then
            begin
              propertyField.mortgaged := false;
              propertyField.panel.Caption := propertyField.name;
              propertyField.panel.Color := clWhite;
            end;

            if propertyField is TCityField then
            begin
              var
                cityField: TCityField := (propertyField as TCityField);
              cityField.buildingLevel := s.Substring(3).ToInteger();

              ShowBuildingIcons(cityField);

            end;

          end;

        end;

      end;

      Memo5.Lines.Clear;

      LoadNextPlayer;

      for var tempPlayer: TPlayer in players do
      begin

        tempPlayer.properties.Sort(TComparer<TPropertyField>.Construct(
          function(const L, R: TPropertyField): Integer
          begin
            if L.locID = R.locID then
              result := 0
            else if L.locID < R.locID then
              result := -1
            else
              result := 1;
          end));

        UpdatePlayerLabelBalance(tempPlayer);
        FillPlayerMemo(tempPlayer);

        var
          playerLabel: TLabel := Form1.FindComponent
            ('Label' + tempPlayer.playerNumber.ToString) as TLabel;

        if tempPlayer.isBankrupt then
        begin
          tempPlayer.setBankrupt;
          playerLabel.Font.Style := playerLabel.Font.Style + [fsStrikeOut];
        end
        else
        begin
          playerLabel.Font.Style := playerLabel.Font.Style - [fsStrikeOut];
        end;
      end;

      CloseFile(loadFile);

      RefreshTaskDialog('Gra wczytana!', false);
      Form1.TaskDialogMain.Execute;

    except
      RefreshTaskDialog
        ('Nie udało się wczytać gry. Uruchamiam nową grę.', false);
      Form1.TaskDialogMain.Execute;
      NewGame1.OnClick(nil);
    end;

  end;

end;

procedure TForm1.LogBuy1Click(Sender: TObject);
begin
  LogBuy1.Checked := not LogBuy1.Checked;
end;

procedure TForm1.LogCards1Click(Sender: TObject);
begin
  LogCards1.Checked := not LogCards1.Checked;
end;

procedure TForm1.LogPay1Click(Sender: TObject);
begin
  LogPay1.Checked := not LogPay1.Checked;
end;

procedure TForm1.MoveSpeed500Click(Sender: TObject);
begin
  TimerMovement.Interval := 500;

  MoveSpeed500.Checked := true;
  MoveSpeed250.Checked := false;
  MoveSpeed150.Checked := false;
  MoveSpeed50.Checked := false;
  MoveSpeed1.Checked := false;
end;

procedure TForm1.MoveSpeed250Click(Sender: TObject);
begin
  TimerMovement.Interval := 250;

  MoveSpeed500.Checked := false;
  MoveSpeed250.Checked := true;
  MoveSpeed150.Checked := false;
  MoveSpeed50.Checked := false;
  MoveSpeed1.Checked := false;
end;

procedure TForm1.ResponseSpeed5000Click(Sender: TObject);
begin
  TimerResponse.Interval := 5000;

  ResponseSpeed5000.Checked := true;
  ResponseSpeed2500.Checked := false;
  ResponseSpeed1500.Checked := false;
  ResponseSpeed500.Checked := false;
  ResponseSpeed1.Checked := false;
end;

procedure TForm1.ResponseSpeed2500Click(Sender: TObject);
begin
  TimerResponse.Interval := 2500;

  ResponseSpeed5000.Checked := false;
  ResponseSpeed2500.Checked := true;
  ResponseSpeed1500.Checked := false;
  ResponseSpeed500.Checked := false;
  ResponseSpeed1.Checked := false;
end;

procedure TForm1.ResponseSpeed1Click(Sender: TObject);
begin
  TimerResponse.Interval := 1;

  ResponseSpeed5000.Checked := false;
  ResponseSpeed2500.Checked := false;
  ResponseSpeed1500.Checked := false;
  ResponseSpeed500.Checked := false;
  ResponseSpeed1.Checked := true;
end;

procedure TForm1.MoveSpeed1Click(Sender: TObject);
begin
  TimerMovement.Interval := 1;

  MoveSpeed500.Checked := false;
  MoveSpeed250.Checked := false;
  MoveSpeed150.Checked := false;
  MoveSpeed50.Checked := false;
  MoveSpeed1.Checked := true;
end;

procedure TForm1.MoveSpeed150Click(Sender: TObject);
begin
  TimerMovement.Interval := 150;

  MoveSpeed500.Checked := false;
  MoveSpeed250.Checked := false;
  MoveSpeed150.Checked := true;
  MoveSpeed50.Checked := false;
  MoveSpeed1.Checked := false;
end;

procedure TForm1.MoveSpeed50Click(Sender: TObject);
begin
  TimerMovement.Interval := 50;

  MoveSpeed500.Checked := false;
  MoveSpeed250.Checked := false;
  MoveSpeed150.Checked := false;
  MoveSpeed50.Checked := true;
  MoveSpeed1.Checked := false;
end;

procedure TForm1.NewGame1Click(Sender: TObject);
begin
  var
    question: String :=
      'Czy na pewno chcesz rozpocząć nową grę? Obecny stan gry zostanie zresetowany!';

  RefreshTaskDialog('Nowa Gra', true, question);
  if Form1.TaskDialogMain.Execute then
  begin

    if Form1.TaskDialogMain.ModalResult = mrYes then
    begin
      Form2.DefaultColors;
      Form2.DefaultNames;
      Form2.ShowModal;

      ResetGameBoard;
      SwitchDebuggerMode;

      for var player: TPlayer in players do
      begin
        UpdatePlayerNameAndColor(player);
        FillPlayerMemo(player);
      end;

      LoadNextPlayer;
    end;

  end;

end;

procedure TForm1.CalculateScore1Click(Sender: TObject);
var
  title: String;
  text: String;
begin
  Memo5.Lines.Clear;

  var
    scoreBoard: TObjectList<TPlayer> := TObjectList<TPlayer>.Create(false);

  for var player: TPlayer in players do
  begin

    if not player.isBankrupt then
    begin
      CalculatePlayerScore(player);
    end
    else
    begin
      player.finalScore := 0;
    end;

    scoreBoard.Add(player);

  end;

  scoreBoard.Sort(TComparer<TPlayer>.Construct(
    function(const L, R: TPlayer): Integer
    begin
      if L.finalScore > R.finalScore then
      begin
        result := -1;
      end
      else if R.finalScore > L.finalScore then
      begin
        result := 1;
      end
      else
      begin
        result := 0;
      end;

    end));

  for var player: TPlayer in scoreBoard do
  begin
    Memo5.Lines.Add(player.name + ': ' + player.finalScore.ToString + '$');
  end;

  if scoreBoard[0].finalScore > scoreBoard[1].finalScore then
  begin
    title := 'Zwycięża ' + scoreBoard[0].name + ' z wynikiem ' + scoreBoard[0]
      .finalScore.ToString + '$!!!';
  end
  else
  begin
    title := 'Remis!';
  end;

  text := '';

  for var player: TPlayer in scoreBoard do
  begin
    text := text + player.name + ', wynik: ' +
      player.finalScore.ToString + #13#10;
  end;

  RefreshTaskDialog(title, false, text);
  Form1.TaskDialogMain.CommonButtons := [];

  with TTaskDialogButtonItem(Form1.TaskDialogMain.Buttons.Add) do
  begin
    Caption := 'Nowa gra';
    ModalResult := mrYes;
  end;
  with TTaskDialogButtonItem(Form1.TaskDialogMain.Buttons.Add) do
  begin
    Caption := 'Wczytaj grę';
    ModalResult := mrNo;
  end;
  with TTaskDialogButtonItem(Form1.TaskDialogMain.Buttons.Add) do
  begin
    Caption := 'Wyjdź z gry';
    ModalResult := mrClose;
  end;

  if Form1.TaskDialogMain.Execute then
  begin

    if Form1.TaskDialogMain.ModalResult = mrYes then
    begin
      Form1.NewGame1Click(nil);
    end
    else if Form1.TaskDialogMain.ModalResult = mrNo then
    begin
      Form1.Load1Click(nil);
    end
    else if Form1.TaskDialogMain.ModalResult = mrClose then
    begin
      Form1.Exit1Click(nil);
    end;

  end;

  scoreBoard.Free;

end;

procedure TForm1.ResponseSpeed1500Click(Sender: TObject);
begin
  TimerResponse.Interval := 1500;

  ResponseSpeed5000.Checked := false;
  ResponseSpeed2500.Checked := false;
  ResponseSpeed1500.Checked := true;
  ResponseSpeed500.Checked := false;
  ResponseSpeed1.Checked := false;
end;

procedure TForm1.ResponseSpeed500Click(Sender: TObject);
begin
  TimerResponse.Interval := 500;

  ResponseSpeed5000.Checked := false;
  ResponseSpeed2500.Checked := false;
  ResponseSpeed1500.Checked := false;
  ResponseSpeed500.Checked := true;
  ResponseSpeed1.Checked := false;
end;

procedure TForm1.Save1Click(Sender: TObject);
var
  line: String;
  saveFile: TextFile;
begin

  if SaveDialog1.Execute() then
  begin
    AssignFile(saveFile, SaveDialog1.FileName);
    Rewrite(saveFile);

    Writeln(saveFile, currentPlayerID.ToString);

    line := '';

    for var tempCard: TChanceCard in redCards do
    begin
      line := line + tempCard.deck + tempCard.id.ToString + ';';
    end;

    SetLength(line, Length(line) - 1);
    Writeln(saveFile, line);

    line := '';

    for var tempCard: TChanceCard in blueCards do
    begin
      line := line + tempCard.deck + tempCard.id.ToString + ';';
    end;

    SetLength(line, Length(line) - 1);
    Writeln(saveFile, line);

    for var player: TPlayer in players do
    begin
      line := player.GenerateSaveData;
      Writeln(saveFile, line);
    end;

    CloseFile(saveFile);
    RefreshTaskDialog('Gra zapisana!', false);
    Form1.TaskDialogMain.Execute;
  end;

end;

procedure TForm1.LogMoves1Click(Sender: TObject);
begin
  LogMoves1.Checked := not LogMoves1.Checked;

end;

procedure TForm1.LogStart1Click(Sender: TObject);
begin
  LogStart1.Checked := not LogStart1.Checked;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.Position := poScreenCenter;
  Form1.WindowState := wsMaximized;
  Form1.VertScrollBar.Position := 0;
  Form2 := TForm2.Create(nil);
  Form2.Position := poScreenCenter;
  Form2.ShowModal;

  SwitchDebuggerMode;

  GenerateLocations;
  GeneratePlayers;
  GenerateCards;

  for var player: TPlayer in players do
  begin
    UpdatePlayerLabelBalance(player);
    FillPlayerMemo(player);
  end;

  currentPlayerID := 1;
  Label5.Caption := 'Rzuć jeszcze raz!';
  Label5.Visible := false;

  currentPlayer := players[currentPlayerID - 1];

  Form1.CurrentColor.Brush.Color := currentPlayer.Color;
  Form1.LabelCurrentPlayer.Caption := currentPlayer.name;
  Form1.Label6.Caption := currentPlayer.balance.ToString + '$';
  Form1.LabelDiceSum.Caption := '';
  Form1.ButtonPrisonCard.Visible := false;
  FillPlayerMemo(currentPlayer);

  currentPlayer.tossedDice := false;
  currentPlayer.doublesCount := 0;
  currentPlayer.partialSum := 0;
  currentPlayer.totalSum := 0;

  Form1.ButtonDiceToss.Enabled := true;
  Form1.Save1.Enabled := true;
  Form1.Load1.Enabled := true;
  Form1.ButtonEndTurn.Enabled := false;
  Form1.ButtonBankrupt.Visible := false;
  Form1.ButtonMortgage.Enabled := false;
  Form1.ButtonBuild.Enabled := false;

  Label11.Caption := 'H' + #13#10 + 'I' + #13#10 + 'S' + #13#10 + 'Z' + #13#10 +
    'P' + #13#10 + 'A' + #13#10 + 'N' + #13#10 + 'I' + #13#10 + 'A';
  Label12.Caption := 'A' + #13#10 + 'N' + #13#10 + 'G' + #13#10 + 'L' + #13#10 +
    'I' + #13#10 + 'A';
  Label13.Caption := 'R' + #13#10 + 'F' + #13#10 + 'N';
  Label14.Caption := 'A' + #13#10 + 'U' + #13#10 + 'S' + #13#10 + 'T' + #13#10 +
    'R' + #13#10 + 'I' + #13#10 + 'A';

  Form1.TaskDialogMain := TTaskDialog.Create(Form1);
  Form1.TaskDialogMain.Caption := 'DelphiBusiness';
  Form1.TaskDialogMain.title := '';
  Form1.TaskDialogMain.text := '';
  Form1.TaskDialogMain.CommonButtons := [tcbOk];
  Form1.TaskDialogMain.Flags := [tfUseHiconMain];
  Form1.TaskDialogMain.CustomMainIcon.Handle := LoadIcon(0, IDI_INFORMATION);

end;

procedure TForm1.FormMouseWheel(Sender: TObject; Shift: TShiftState;
WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  self.VertScrollBar.Position := self.VertScrollBar.Position -
    (WheelDelta div 2);
end;

procedure TForm1.TimerMovementTimer(Sender: TObject);
begin
  TimerMovement.Enabled := false;
end;

procedure TForm1.TimerPlayerFlashTimer(Sender: TObject);
begin
  TimerPlayerFlash.Enabled := false;
end;

procedure TForm1.TimerResponseTimer(Sender: TObject);
begin
  TimerResponse.Enabled := false;
end;

end.
