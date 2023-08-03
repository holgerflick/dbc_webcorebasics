object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Watch My Money'
  ClientHeight = 441
  ClientWidth = 656
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    656
    441)
  TextHeight = 21
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 62
    Height = 21
    Caption = 'Amount'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 295
    Top = 8
    Width = 52
    Height = 21
    Caption = 'APY/%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 367
    Top = 8
    Width = 40
    Height = 21
    Caption = 'Years'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtAmount: TEdit
    Left = 8
    Top = 37
    Width = 281
    Height = 29
    TabOrder = 0
    Text = '10000'
  end
  object btnCalculate: TButton
    Left = 511
    Top = 37
    Width = 137
    Height = 29
    Anchors = [akTop, akRight]
    Caption = 'Calculate Interest'
    TabOrder = 1
    OnClick = btnCalculateClick
  end
  object Grid: TStringGrid
    Left = 8
    Top = 80
    Width = 640
    Height = 353
    Anchors = [akLeft, akTop, akRight, akBottom]
    ColCount = 4
    DefaultColWidth = 150
    DefaultColAlignment = taRightJustify
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
    TabOrder = 2
  end
  object txtPct: TEdit
    Left = 295
    Top = 37
    Width = 50
    Height = 29
    TabOrder = 3
    Text = '10'
  end
  object txtYears: TEdit
    Left = 367
    Top = 37
    Width = 50
    Height = 29
    TabOrder = 4
    Text = '5'
  end
end
