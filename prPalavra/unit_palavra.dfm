object form_palavra: Tform_palavra
  Left = 0
  Top = 0
  Caption = 'Verificador de Palavras'
  ClientHeight = 326
  ClientWidth = 701
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
  object pnlGrupo: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 326
    Align = alClient
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object lbPalavra: TLabel
      Left = 40
      Top = 40
      Width = 211
      Height = 25
      Caption = 'Informe a palavra'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbSaida: TLabel
      Left = 48
      Top = 136
      Width = 65
      Height = 25
      Caption = 'Sa'#237'da'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 699
      Height = 24
      Align = alTop
      Color = clInactiveCaption
      ParentBackground = False
      TabOrder = 0
    end
    object pnlFotter: TPanel
      Left = 1
      Top = 284
      Width = 699
      Height = 41
      Align = alBottom
      Color = clActiveCaption
      ParentBackground = False
      TabOrder = 1
      object btnValidaPalavra: TBitBtn
        Left = 1
        Top = -12
        Width = 697
        Height = 52
        Align = alBottom
        Caption = 'Validar Palavra'
        TabOrder = 0
        OnClick = btnValidaPalavraClick
      end
    end
    object editPalavra: TEdit
      Left = 40
      Top = 71
      Width = 633
      Height = 50
      TabOrder = 2
    end
    object editSaida: TEdit
      Left = 40
      Top = 168
      Width = 633
      Height = 57
      TabOrder = 3
    end
  end
end
