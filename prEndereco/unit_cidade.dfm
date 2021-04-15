object form_cadCidade: Tform_cadCidade
  Left = 0
  Top = 0
  Caption = 'Cadatro de Cidade'
  ClientHeight = 191
  ClientWidth = 579
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
  object panelInput: TPanel
    Left = 0
    Top = 0
    Width = 579
    Height = 150
    Align = alClient
    TabOrder = 0
    object lbCodigo: TLabel
      Left = 32
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label5: TLabel
      Left = 32
      Top = 75
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object lbCep: TLabel
      Left = 192
      Top = 16
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object editCodigo: TEdit
      Left = 32
      Top = 35
      Width = 129
      Height = 21
      TabOrder = 0
    end
    object editCidade: TEdit
      Left = 32
      Top = 94
      Width = 513
      Height = 21
      TabOrder = 1
    end
    object editCep: TEdit
      Left = 192
      Top = 35
      Width = 353
      Height = 21
      TabOrder = 2
    end
  end
  object panelBtns: TPanel
    Left = 0
    Top = 150
    Width = 579
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 32
      Top = 6
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 184
      Top = 6
      Width = 75
      Height = 25
      Caption = 'BitBtn2'
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 328
      Top = 6
      Width = 75
      Height = 25
      Caption = 'BitBtn3'
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 470
      Top = 6
      Width = 75
      Height = 25
      Caption = 'BitBtn4'
      TabOrder = 3
    end
  end
end
