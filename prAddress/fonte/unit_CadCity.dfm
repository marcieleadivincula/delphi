object form_CadCity: Tform_CadCity
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cidade'
  ClientHeight = 587
  ClientWidth = 1228
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
  object pnlBottom: TPanel
    Left = 0
    Top = 520
    Width = 1228
    Height = 67
    Align = alBottom
    TabOrder = 0
    object btnSalvar: TBitBtn
      Left = 128
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnExcluir: TBitBtn
      Left = 400
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = btnExcluirClick
    end
    object btnCancelar: TBitBtn
      Left = 648
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = FormActivate
    end
    object btnSair: TBitBtn
      Left = 904
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 3
      OnClick = btnSairClick
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1228
    Height = 520
    Align = alClient
    TabOrder = 1
    object lbCode: TLabel
      Left = 64
      Top = 48
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object lbCity: TLabel
      Left = 66
      Top = 136
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object lbCep: TLabel
      Left = 66
      Top = 221
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object spConsultar: TSpeedButton
      Left = 200
      Top = 67
      Width = 23
      Height = 22
      OnClick = spConsultarClick
    end
    object editCode: TEdit
      Left = 64
      Top = 67
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      OnEnter = editCodeEnter
      OnExit = editCodeExit
    end
    object editCity: TEdit
      Left = 64
      Top = 155
      Width = 337
      Height = 21
      MaxLength = 100
      TabOrder = 1
    end
    object editCep: TEdit
      Left = 66
      Top = 240
      Width = 157
      Height = 21
      MaxLength = 10
      TabOrder = 2
    end
  end
end
