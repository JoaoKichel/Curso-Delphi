object DmDados: TDmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object fdConexao: TFDConnection
    Params.Strings = (
      'Password=masterkey'
      'User_Name=SYSDBA'
      'Database=C:\Curso Delphi\Curso\Banco de dados\DADOS.FDB'
      'Protocol=TCPIP'
      'CharacterSet=UTF8'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 88
    Top = 56
  end
end
