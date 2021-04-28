object form_cadPais: Tform_cadPais
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pa'#237's'
  ClientHeight = 244
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCadPais: TPanel
    Left = 0
    Top = 0
    Width = 529
    Height = 190
    Align = alClient
    TabOrder = 0
    ExplicitTop = -6
    ExplicitWidth = 649
    ExplicitHeight = 202
    object Label1: TLabel
      Left = 48
      Top = 37
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object lbPais: TLabel
      Left = 48
      Top = 125
      Width = 19
      Height = 13
      Caption = 'Pa'#237's'
    end
    object spConsultar: TSpeedButton
      Left = 207
      Top = 55
      Width = 23
      Height = 22
    end
    object editCodigo: TEdit
      Left = 48
      Top = 56
      Width = 137
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object editPais: TEdit
      Left = 48
      Top = 144
      Width = 451
      Height = 21
      MaxLength = 100
      TabOrder = 1
    end
  end
  object pnlBtnsPais: TPanel
    Left = 0
    Top = 190
    Width = 529
    Height = 54
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 177
    ExplicitWidth = 635
    object btnSalvar: TBitBtn
      Left = 40
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
    end
    object btnExcluir: TBitBtn
      Left = 184
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 1
    end
    object btnCancelar: TBitBtn
      Left = 312
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
    end
    object btnSair: TBitBtn
      Left = 424
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 3
      OnClick = btnSairClick
    end
  end
end
