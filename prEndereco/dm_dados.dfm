object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 203
  Width = 305
  object TFDConnnectionEndereco: TFDConnection
    Params.Strings = (
      'Database=senac'
      'User_Name=root'
      'Password=#Adiv!ncul@93M@r'
      'Server=localhost'
      'CharacterSet=latin1'
      'DriverID=MySQL')
    Transaction = TFDTransactionEndereco
    Left = 80
    Top = 24
  end
  object TFDTransactionEndereco: TFDTransaction
    Connection = TFDConnnectionEndereco
    Left = 216
    Top = 24
  end
  object FDQueryEndereco: TFDQuery
    Connection = TFDConnnectionEndereco
    Left = 72
    Top = 120
  end
end
