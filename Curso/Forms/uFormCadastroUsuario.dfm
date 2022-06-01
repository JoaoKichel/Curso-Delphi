inherited FormCadastroUsuario: TFormCadastroUsuario
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 176
  WindowState = wsNormal
  ExplicitHeight = 205
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 156
    Top = 53
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 93
    Width = 31
    Height = 13
    Caption = 'LOGIN'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 222
    Top = 93
    Width = 33
    Height = 13
    Caption = 'SENHA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 16
    Top = 53
    Width = 63
    Height = 13
    Caption = 'ID_USUARIO'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit [5]
    Left = 156
    Top = 69
    Width = 250
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [6]
    Left = 16
    Top = 109
    Width = 200
    Height = 21
    DataField = 'LOGIN'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [7]
    Left = 222
    Top = 109
    Width = 200
    Height = 21
    DataField = 'SENHA'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [8]
    Left = 16
    Top = 69
    Width = 134
    Height = 21
    DataField = 'ID_USUARIO'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 4
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_USUARIO_ID'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'SELECT * FROM USUARIO')
    Top = 112
    object fdQryCadastroID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object fdQryCadastroLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
    end
    object fdQryCadastroSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 255
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 520
    Top = 56
  end
  inherited fdTransaction: TFDTransaction
    Left = 520
    Top = 112
  end
  inherited dsCadastro: TDataSource
    Top = 56
  end
  inherited fdQryCodigo: TFDQuery
    Left = 440
    Top = 88
  end
end
