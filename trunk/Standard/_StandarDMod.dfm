object _dmStandar: T_dmStandar
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 347
  Width = 404
  object adodsMaster: TADODataSet
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 24
    Top = 16
  end
end
