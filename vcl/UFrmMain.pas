unit UFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TFrmMain = class(TForm)
    txtAmount: TEdit;
    btnCalculate: TButton;
    Grid: TStringGrid;
    txtPct: TEdit;
    txtYears: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnCalculateClick(Sender: TObject);
  private
    { Private declarations }
    function GetAmountForNPeriods(
      ACapital: Double;
      APercent: Double;
      APeriod: Integer): Double;
    procedure CalculatePeriods(
      ACapital: Double;
      APercent: Double;
      APeriods: Integer );
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation
uses
  Math
  ;

{$R *.dfm}


procedure TFrmMain.btnCalculateClick(Sender: TObject);
var
  LCapital: Double;
  LPct: Double;
  LYears: Integer;

begin
  if TryStrToFloat( txtAmount.Text, LCapital ) and
    TryStrToFloat( txtPct.Text, LPct ) and
    TryStrToInt( txtYears.Text, LYears ) then
  begin
    CalculatePeriods( LCapital, LPct, LYears );
  end
  else
  begin
    ShowMessage('Please enter valid amount.');
  end;
end;

{ TForm1 }

procedure TFrmMain.CalculatePeriods(
   ACapital: Double;
   APercent: Double;
   APeriods: Integer);
begin
  Grid.ColCount := 4;
  Grid.RowCount := APeriods + 1;

  Grid.Cells[0,0] := 'Year';
  Grid.Cells[1,0] := 'Beginning of Year';
  Grid.Cells[2,0] := 'Interest';
  Grid.Cells[3,0] := 'End of Year';

  var LLastValue := ACapital;
  for var i := 1 to APeriods do
  begin
    var LValue := GetAmountForNPeriods(ACapital, APercent, i);
    Grid.Cells[0,i] := i.ToString;
    Grid.Cells[1,i] := Format( '%m', [LLastValue] );
    Grid.Cells[2,i] := Format( '%m', [LValue - LLastValue]);
    Grid.Cells[3,i] := Format( '%m', [LValue]);

    LLastValue := LValue;
  end;
end;

function TFrmMain.GetAmountForNPeriods(ACapital: Double; APercent: Double;
    APeriod: Integer): Double;
begin
  Result := ACapital * Power( 1 + (APercent / 100), APeriod );
end;


end.
