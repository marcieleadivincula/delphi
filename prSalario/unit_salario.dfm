object form_salario: Tform_salario
  Left = 0
  Top = 0
  Caption = 'Aumento de Sal'#225'rio'
  ClientHeight = 396
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 601
    Height = 113
    Align = alTop
    TabOrder = 0
    object lbCodigo: TLabel
      Left = 46
      Top = 11
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object lbSalario: TLabel
      Left = 20
      Top = 46
      Width = 59
      Height = 13
      Caption = 'Sal'#225'rio atual'
    end
    object lbCategoria: TLabel
      Left = 32
      Top = 77
      Width = 47
      Height = 13
      Caption = 'Categoria'
    end
    object editCodigo: TEdit
      Left = 96
      Top = 8
      Width = 177
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object editSalario: TEdit
      Left = 96
      Top = 47
      Width = 177
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
    object cbCategoria: TComboBox
      Left = 96
      Top = 74
      Width = 177
      Height = 21
      TabOrder = 2
      Text = 'Selecione uma categoria'
    end
    object btnSave: TButton
      Left = 344
      Top = 38
      Width = 210
      Height = 26
      Caption = 'Salvar'
      TabOrder = 3
    end
    object btnResult: TButton
      Left = 344
      Top = 6
      Width = 210
      Height = 26
      Caption = 'Resultado'
      TabOrder = 4
    end
    object btnClean: TButton
      Left = 344
      Top = 70
      Width = 210
      Height = 25
      Caption = 'Limpar'
      TabOrder = 5
    end
  end
end
