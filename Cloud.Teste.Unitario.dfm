object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculo de IMC - DUnit'
  ClientHeight = 142
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblResultado: TLabel
    Left = 8
    Top = 99
    Width = 55
    Height = 13
    Caption = 'Resultado: '
  end
  object lblPeso: TLabel
    Left = 8
    Top = 19
    Width = 27
    Height = 13
    Caption = 'Peso:'
  end
  object lblIdade: TLabel
    Left = 8
    Top = 48
    Width = 32
    Height = 13
    Caption = 'Idade:'
  end
  object lblAltura: TLabel
    Left = 8
    Top = 75
    Width = 29
    Height = 13
    Caption = 'Altura'
  end
  object edtPeso: TEdit
    Left = 59
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Peso'
    OnKeyDown = edtPesoKeyDown
    OnKeyPress = edtPesoKeyPress
  end
  object edtIdade: TEdit
    Left = 59
    Top = 45
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    TextHint = 'Idade'
    OnKeyDown = edtIdadeKeyDown
  end
  object edtAltura: TEdit
    Left = 59
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Altura'
    OnKeyDown = edtAlturaKeyDown
    OnKeyPress = edtAlturaKeyPress
  end
  object btnCalcular: TButton
    Left = 208
    Top = 70
    Width = 129
    Height = 25
    Caption = 'Calcular IMC'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
end
