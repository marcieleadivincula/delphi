object form_CadState: Tform_CadState
  Left = 0
  Top = 0
  Caption = 'Cadastro de Estado'
  ClientHeight = 439
  ClientWidth = 1066
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
  object pnlBottom: TPanel
    Left = 0
    Top = 362
    Width = 1066
    Height = 77
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 456
    object btnExcluir: TBitBtn
      Left = 392
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 0
    end
    object btnSalvar: TBitBtn
      Left = 120
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Salvar'
      TabOrder = 1
    end
    object btnCancelar: TBitBtn
      Left = 640
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
    end
    object btnSair: TBitBtn
      Left = 896
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 3
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1066
    Height = 362
    Align = alClient
    TabOrder = 1
    ExplicitTop = -6
    ExplicitHeight = 456
    object lbState: TLabel
      Left = 66
      Top = 136
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object lbCode: TLabel
      Left = 64
      Top = 48
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object spConsultar: TSpeedButton
      Left = 200
      Top = 67
      Width = 23
      Height = 22
    end
    object editState: TEdit
      Left = 64
      Top = 155
      Width = 337
      Height = 21
      MaxLength = 100
      TabOrder = 0
    end
    object editCode: TEdit
      Left = 64
      Top = 67
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
  end
end
