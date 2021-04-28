object form_cadEstado: Tform_cadEstado
  Left = 0
  Top = 0
  Caption = 'Cadastro de Estado'
  ClientHeight = 270
  ClientWidth = 487
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
  object pnlCadEstado: TPanel
    Left = 0
    Top = 0
    Width = 487
    Height = 212
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 626
    ExplicitHeight = 175
    object lbCodigo: TLabel
      Left = 32
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object lbSigla: TLabel
      Left = 32
      Top = 80
      Width = 22
      Height = 13
      Caption = 'Sigla'
    end
    object lbEstado: TLabel
      Left = 32
      Top = 145
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object spConsultar: TSpeedButton
      Left = 207
      Top = 34
      Width = 23
      Height = 22
    end
    object editCodigo: TEdit
      Left = 32
      Top = 35
      Width = 153
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object editSigla: TEdit
      Left = 32
      Top = 99
      Width = 219
      Height = 21
      MaxLength = 2
      TabOrder = 1
    end
    object editEstado: TEdit
      Left = 32
      Top = 164
      Width = 219
      Height = 21
      MaxLength = 100
      TabOrder = 2
    end
  end
  object pnlBtnsEstado: TPanel
    Left = 0
    Top = 212
    Width = 487
    Height = 58
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 175
    ExplicitWidth = 626
    object btnSalvar: TBitBtn
      Left = 32
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
    end
    object btnExcluir: TBitBtn
      Left = 139
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 1
    end
    object btnSair: TBitBtn
      Left = 368
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 2
      OnClick = btnSairClick
    end
    object btnCancelar: TBitBtn
      Left = 264
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
    end
  end
end
