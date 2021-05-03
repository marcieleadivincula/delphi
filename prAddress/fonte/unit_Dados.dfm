object dm_Dados: Tdm_Dados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 471
  Width = 893
  object TFDQuery: TFDQuery
    Connection = TFDConn
    Transaction = fdTransactionEndereco
    Left = 328
    Top = 240
  end
  object TFDConn: TFDConnection
    Params.Strings = (
      'Database=endereco'
      'User_Name=root'
      'Password=#Adiv!ncul@93M@r'
      'CharacterSet=latin1'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    Transaction = fdTransactionEndereco
    Left = 200
    Top = 72
  end
  object fdTransactionEndereco: TFDTransaction
    Connection = TFDConn
    Left = 472
    Top = 80
  end
end
