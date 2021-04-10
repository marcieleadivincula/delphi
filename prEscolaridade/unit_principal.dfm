object form_principal: Tform_principal
  Left = 0
  Top = 0
  Caption = 'Senso de Escolaridade'
  ClientHeight = 399
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Images = dm_dados.ImageList
    Left = 344
    Top = 120
    object Cadastro1: TMenuItem
      Caption = '&Cadastro'
      object Pessoas1: TMenuItem
        Caption = '&Pessoas'
        ImageIndex = 2
        ShortCut = 16464
        OnClick = Pessoas1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
    end
    object Consultas1: TMenuItem
      Caption = 'Consul&tas'
      object Resultados1: TMenuItem
        Caption = 'Resultados'
        ShortCut = 16466
      end
    end
  end
end
