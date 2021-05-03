object form_Principal: Tform_Principal
  Left = 0
  Top = 0
  Caption = 'Cadastro de Endere'#231'os'
  ClientHeight = 523
  ClientWidth = 1256
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu: TMainMenu
    Left = 544
    Top = 200
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Pas1: TMenuItem
        Caption = '&Pa'#237's'
        ShortCut = 16464
      end
      object Estado1: TMenuItem
        Caption = '&Estado'
        ShortCut = 16453
      end
      object Cidade1: TMenuItem
        Caption = '&Cidade'
        ShortCut = 16451
        OnClick = Cidade1Click
      end
      object Bairro1: TMenuItem
        Caption = '&Bairro'
        ShortCut = 16450
      end
      object Logradouro1: TMenuItem
        Caption = '&Logradouro'
        ShortCut = 16460
      end
      object Endereo1: TMenuItem
        Caption = 'En&dere'#231'o'
        ShortCut = 16452
      end
    end
    object Consultas1: TMenuItem
      Caption = 'Consultas'
      object EndereoporBairro1: TMenuItem
        Caption = 'Endere'#231'o por Bairro'
      end
      object EndereoporCidade1: TMenuItem
        Caption = 'Endere'#231'o por Cidade'
      end
      object EndereoporEstado1: TMenuItem
        Caption = 'Endere'#231'o por Estado'
      end
      object EndereoporPas1: TMenuItem
        Caption = 'Endere'#231'o por Pa'#237's'
      end
    end
  end
end
