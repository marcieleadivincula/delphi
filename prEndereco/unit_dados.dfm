object dm_dados: Tdm_dados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 213
  Width = 354
  object TFDConn: TFDConnection
    Params.Strings = (
      'Database=endereco'
      'User_Name=root'
      'Password=#Adiv!ncul@93M@r'
      'Server=localhost'
      'CharacterSet=latin1'
      'DriverID=MySQL')
    Connected = True
    Transaction = TFDTransaction
    Left = 80
    Top = 24
  end
  object TFDTransaction: TFDTransaction
    Connection = TFDConn
    Left = 216
    Top = 24
  end
  object FDQuery: TFDQuery
    Connection = TFDConn
    Left = 72
    Top = 120
  end
end
