object form_Consulta: Tform_Consulta
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 596
  ClientWidth = 1021
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
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1021
    Height = 89
    Align = alTop
    TabOrder = 0
    object lblPesquisaPor: TLabel
      Left = 32
      Top = 8
      Width = 68
      Height = 13
      Caption = 'Pesquisa por: '
    end
    object lblNRegistros: TLabel
      Left = 832
      Top = 8
      Width = 79
      Height = 13
      Caption = 'N'#186' de registros: '
    end
    object lblPesquisa: TLabel
      Left = 104
      Top = 8
      Width = 12
      Height = 13
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblRegistros: TLabel
      Left = 917
      Top = 8
      Width = 12
      Height = 13
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object editPesquisaPor: TEdit
      Left = 32
      Top = 27
      Width = 377
      Height = 21
      TabOrder = 0
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 528
    Width = 1021
    Height = 68
    Align = alBottom
    TabOrder = 1
    object spCarregar: TSpeedButton
      Left = 240
      Top = 16
      Width = 105
      Height = 33
      Caption = 'Carregar'
      OnClick = spCarregarClick
    end
    object spSair: TSpeedButton
      Left = 656
      Top = 16
      Width = 105
      Height = 33
      Caption = 'Sair'
      OnClick = spSairClick
    end
  end
  object dbGrid: TDBGrid
    Left = 0
    Top = 89
    Width = 1021
    Height = 439
    Align = alClient
    DataSource = dsConsulta
    FixedColor = clSkyBlue
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = spCarregarClick
  end
  object dsConsulta: TDataSource
    DataSet = qrConsulta
    Left = 504
    Top = 472
  end
  object qrConsulta: TFDQuery
    Active = True
    Connection = dm_Dados.TFDConn
    Transaction = dm_Dados.fdTransactionEndereco
    SQL.Strings = (
      'SELECT * FROM cidade ORDER BY descricao;')
    Left = 564
    Top = 472
  end
end
