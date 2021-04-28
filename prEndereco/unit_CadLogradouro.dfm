object form_cadLogradouro: Tform_cadLogradouro
  Left = 0
  Top = 0
  Caption = 'Cadastro de Logradouro'
  ClientHeight = 254
  ClientWidth = 490
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBtnsLogradouro: TPanel
    Left = 0
    Top = 194
    Width = 490
    Height = 60
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 192
    ExplicitWidth = 529
    object btnSalvar: TBitBtn
      Left = 40
      Top = 22
      Width = 75
      Height = 25
      Caption = '&Salvar'
      TabOrder = 0
    end
    object btnExcluir: TBitBtn
      Left = 152
      Top = 22
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
    end
    object btnCancelar: TBitBtn
      Left = 264
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
    end
    object btnSair: TBitBtn
      Left = 366
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 3
      OnClick = btnSairClick
    end
  end
  object pnlCadLogradouro: TPanel
    Left = 0
    Top = 0
    Width = 490
    Height = 194
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 529
    ExplicitHeight = 192
    object lbCodigo: TLabel
      Left = 40
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object lbLogradouro: TLabel
      Left = 40
      Top = 106
      Width = 55
      Height = 13
      Caption = 'Logradouro'
    end
    object spConsultar: TSpeedButton
      Left = 191
      Top = 48
      Width = 26
      Height = 22
    end
    object editCodigo: TEdit
      Left = 40
      Top = 48
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object editLogradouro: TEdit
      Left = 40
      Top = 136
      Width = 401
      Height = 21
      MaxLength = 100
      TabOrder = 1
    end
  end
end
