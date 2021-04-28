object form_Consulta: Tform_Consulta
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 608
  ClientWidth = 867
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTopConsulta: TPanel
    Left = 0
    Top = 0
    Width = 867
    Height = 81
    Align = alTop
    TabOrder = 0
    object lbPesquisaPor: TLabel
      Left = 24
      Top = 8
      Width = 65
      Height = 13
      Caption = 'Pesquisa por:'
    end
    object lbPesquisa: TLabel
      Left = 104
      Top = 8
      Width = 12
      Height = 13
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbNRegistros: TLabel
      Left = 648
      Top = 16
      Width = 76
      Height = 13
      Caption = 'N'#176' de registros:'
    end
    object lbRegistros: TLabel
      Left = 733
      Top = 16
      Width = 12
      Height = 13
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object editPesquisa: TEdit
      Left = 24
      Top = 27
      Width = 313
      Height = 21
      TabOrder = 0
    end
  end
  object pnlBottomConsulta: TPanel
    Left = 0
    Top = 528
    Width = 867
    Height = 80
    Align = alBottom
    TabOrder = 1
    object spCarregar: TSpeedButton
      Left = 152
      Top = 24
      Width = 105
      Height = 33
      Caption = 'Carregar'
      OnClick = spCarregarClick
    end
    object spSair: TSpeedButton
      Left = 552
      Top = 24
      Width = 105
      Height = 33
      Caption = 'Sair'
      OnClick = spSairClick
    end
  end
  object dbGridConsulta: TDBGrid
    Left = 0
    Top = 81
    Width = 867
    Height = 447
    Align = alClient
    DataSource = dsConsulta
    FixedColor = clSkyBlue
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dsConsulta: TDataSource
    DataSet = qrConsulta
    Left = 328
    Top = 224
  end
  object qrConsulta: TFDQuery
    Connection = dm_dados.TFDConn
    SQL.Strings = (
      'select * from cidade;')
    Left = 480
    Top = 280
  end
end
