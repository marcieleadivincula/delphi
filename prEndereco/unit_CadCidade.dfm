object form_cadCidade: Tform_cadCidade
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadatro de Cidade'
  ClientHeight = 287
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCadCidade: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 246
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 478
    ExplicitHeight = 209
    object lbCodigo: TLabel
      Left = 32
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object lbCidade: TLabel
      Left = 32
      Top = 76
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object spConsultar: TSpeedButton
      Left = 223
      Top = 35
      Width = 23
      Height = 22
      OnClick = spConsultarClick
    end
    object lbCep: TLabel
      Left = 32
      Top = 136
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object editCodigo: TEdit
      Left = 32
      Top = 35
      Width = 179
      Height = 21
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 0
      OnEnter = editCodigoEnter
      OnExit = editCodigoExit
    end
    object editCidade: TEdit
      Left = 32
      Top = 95
      Width = 393
      Height = 21
      MaxLength = 100
      TabOrder = 1
    end
    object editCep: TEdit
      Left = 32
      Top = 155
      Width = 209
      Height = 21
      MaxLength = 10
      TabOrder = 2
    end
  end
  object pnlBtnsCidade: TPanel
    Left = 0
    Top = 246
    Width = 534
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 209
    ExplicitWidth = 478
    object btnSalvar: TBitBtn
      Left = 32
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnExcluir: TBitBtn
      Left = 136
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
      OnClick = btnExcluirClick
    end
    object btnCancelar: TBitBtn
      Left = 248
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = FormActivate
    end
    object btnSair: TBitBtn
      Left = 350
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 3
      OnClick = btnSairClick
    end
  end
end
