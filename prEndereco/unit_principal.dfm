object form_principal: Tform_principal
  Left = 0
  Top = 0
  Caption = 'Cadastro de Endere'#231'o'
  ClientHeight = 201
  ClientWidth = 447
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
    Left = 160
    Top = 88
    object mCadastros: TMenuItem
      Caption = 'Cadastros'
      ShortCut = 16464
      object mPais: TMenuItem
        Caption = 'Pa'#237's'
        ShortCut = 16464
        OnClick = mPaisClick
      end
      object mEstado: TMenuItem
        Caption = 'Estado'
        ShortCut = 16453
        OnClick = mEstadoClick
      end
      object mCidade: TMenuItem
        Caption = 'Cidade'
        ShortCut = 16451
        OnClick = mCidadeClick
      end
      object mBairro: TMenuItem
        Caption = 'Bairro'
        ShortCut = 16450
        OnClick = mBairroClick
      end
      object mLogradouro: TMenuItem
        Caption = 'Logradouro'
        ShortCut = 16460
        OnClick = mLogradouroClick
      end
      object mEndereco: TMenuItem
        Caption = 'Endere'#231'o'
        ShortCut = 16452
      end
    end
  end
end
