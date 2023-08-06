unit UFrmMain;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls,
  Types, Vcl.Grids, WEBLib.Grids;

type
  TForm1 = class(TWebForm)
    txtAmount: TWebEdit;
    txtPct: TWebEdit;
    txtYears: TWebEdit;
    WebLabel1: TWebLabel;
    WebLabel2: TWebLabel;
    WebLabel3: TWebLabel;
    Grid: TWebStringGrid;
    btnCalculate: TWebButton;
    procedure btnCalculateClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalculatePeriods(
       ACapital: Double;
       APercent: Double;
       APeriods: Integer);

    function GetAmountForNPeriods(
      ACapital: Double;
      APercent: Double;
      APeriod: Integer): Double;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Math
  ;

{$R *.dfm}

procedure TForm1.btnCalculateClick(Sender: TObject);
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


procedure TForm1.CalculatePeriods(ACapital, APercent: Double;
  APeriods: Integer);
var
  i: Integer;
  LValue,
  LLastValue: Double;
begin
  Grid.ColCount := 4;
  Grid.RowCount := APeriods + 1;

  Grid.Cells[0,0] := 'Year';
  Grid.Cells[1,0] := 'Beginning of Year';
  Grid.Cells[2,0] := 'Interest';
  Grid.Cells[3,0] := 'End of Year';

  LLastValue := ACapital;
  for i := 1 to APeriods do
  begin
    LValue := GetAmountForNPeriods(ACapital, APercent, i);
    Grid.Cells[0,i] := i.ToString;
    Grid.Cells[1,i] := Format( '$ %.2n', [LLastValue] );
    Grid.Cells[2,i] := Format( '$ %.2n', [LValue - LLastValue]);
    Grid.Cells[3,i] := Format( '$ %.2n', [LValue]);

    LLastValue := LValue;
  end;
end;

function TForm1.GetAmountForNPeriods(ACapital, APercent: Double;
  APeriod: Integer): Double;
begin
  Result := ACapital * Power( 1 + (APercent / 100), APeriod );
end;

end.
