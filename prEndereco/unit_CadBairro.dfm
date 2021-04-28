object form_cadBairro: Tform_cadBairro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Bairro'
  ClientHeight = 214
  ClientWidth = 592
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
  object pnlCadBairro: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 172
    Align = alClient
    TabOrder = 0
    object lbCodigo: TLabel
      Left = 40
      Top = 21
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object lbBairro: TLabel
      Left = 40
      Top = 79
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object spConsultar: TSpeedButton
      Left = 168
      Top = 40
      Width = 23
      Height = 22
    end
    object editCodigo: TEdit
      Left = 40
      Top = 40
      Width = 113
      Height = 21
      TabOrder = 0
    end
    object editBairro: TEdit
      Left = 40
      Top = 104
      Width = 521
      Height = 21
      TabOrder = 1
    end
  end
  object pnlBtnsBairro: TPanel
    Left = 0
    Top = 172
    Width = 592
    Height = 42
    Align = alBottom
    TabOrder = 1
    object btnSalvar: TBitBtn
      Left = 40
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
    end
    object btnExcluir: TBitBtn
      Left = 200
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 1
    end
    object btnCancelar: TBitBtn
      Left = 344
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
    end
    object btnSair: TBitBtn
      Left = 486
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 3
      OnClick = btnSairClick
    end
  end
end
