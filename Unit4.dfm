object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 1038
  Top = 113
  Height = 240
  Width = 325
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\ACER\Downloads\libmysql.dll'
    Left = 56
    Top = 48
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kategori')
    Params = <>
    Left = 136
    Top = 48
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 208
    Top = 48
  end
end
