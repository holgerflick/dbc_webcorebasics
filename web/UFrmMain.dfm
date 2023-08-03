object Form1: TForm1
  Width = 647
  Height = 502
  CSSLibrary = cssBootstrap
  ElementFont = efCSS
  object WebLabel1: TWebLabel
    Left = 8
    Top = 16
    Width = 44
    Height = 15
    Caption = 'Amount'
    ElementFont = efCSS
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel2: TWebLabel
    Left = 216
    Top = 16
    Width = 35
    Height = 15
    Caption = 'APY %'
    ElementFont = efCSS
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel3: TWebLabel
    Left = 327
    Top = 16
    Width = 27
    Height = 15
    Caption = 'Years'
    ElementFont = efCSS
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object txtAmount: TWebEdit
    Left = 8
    Top = 48
    Width = 185
    Height = 33
    ElementClassName = 'form-control'
    ElementFont = efCSS
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    Text = '10000'
    WidthPercent = 100.000000000000000000
  end
  object txtPct: TWebEdit
    Left = 216
    Top = 48
    Width = 105
    Height = 33
    ChildOrder = 1
    ElementClassName = 'form-control'
    ElementFont = efCSS
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    Text = '10'
    WidthPercent = 100.000000000000000000
  end
  object txtYears: TWebEdit
    Left = 327
    Top = 48
    Width = 105
    Height = 33
    ChildOrder = 1
    ElementClassName = 'form-control'
    ElementFont = efCSS
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    Text = '5'
    WidthPercent = 100.000000000000000000
  end
  object Grid: TWebStringGrid
    Left = 8
    Top = 112
    Width = 617
    Height = 377
    DefaultColWidth = 120
    DefaultColAlignment = taRightJustify
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Noto Sans'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
    ParentFont = False
    TabOrder = 3
    ElementFont = efCSS
    RangeEdit.Max = 100.000000000000000000
    RangeEdit.Step = 1.000000000000000000
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object btnCalculate: TWebButton
    Left = 456
    Top = 48
    Width = 169
    Height = 33
    Caption = 'Calculate Interest'
    ChildOrder = 7
    ElementClassName = 'btn btn-light'
    ElementFont = efCSS
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnCalculateClick
  end
end
