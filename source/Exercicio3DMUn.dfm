object Exercicio3DM: TExercicio3DM
  OldCreateOrder = False
  Height = 368
  Width = 597
  object DBSQLConnection: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver250.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver250.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=gds32.dll'
      'VendorLibWin64=gds32.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      
        'Database=localhost:C:\Users\Danilo\Desktop\ProvaDelphiDB1\databa' +
        'se\database.fdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    BeforeConnect = DBSQLConnectionBeforeConnect
    Left = 88
    Top = 56
  end
  object PessoaSQLDataSet: TSQLDataSet
    CommandText = 
      'select CDPESSOA,'#13#10'          NMPESSOA,'#13#10'           DELOGRADOURO, ' +
      #13#10'           DEBAIRRO, '#13#10'           CDCIDADE'#13#10#13#10' from PESSOA'#13#10#13#10 +
      'WHERE '#13#10'   CDPessoa = :Codigo'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = DBSQLConnection
    Left = 184
    Top = 56
    object PessoaSQLDataSetCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PessoaSQLDataSetNMPESSOA: TStringField
      FieldName = 'NMPESSOA'
      Required = True
      Size = 100
    end
    object PessoaSQLDataSetDELOGRADOURO: TStringField
      FieldName = 'DELOGRADOURO'
      Size = 100
    end
    object PessoaSQLDataSetDEBAIRRO: TStringField
      FieldName = 'DEBAIRRO'
      Size = 100
    end
    object PessoaSQLDataSetCDCIDADE: TIntegerField
      FieldName = 'CDCIDADE'
      Required = True
    end
  end
  object PessoaDataSetProvider: TDataSetProvider
    DataSet = PessoaSQLDataSet
    Left = 296
    Top = 56
  end
  object PessoaClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'PessoaDataSetProvider'
    OnNewRecord = PessoaClientDataSetNewRecord
    Left = 408
    Top = 56
    object PessoaClientDataSetCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PessoaClientDataSetNMPESSOA: TStringField
      FieldName = 'NMPESSOA'
      Required = True
      Size = 100
    end
    object PessoaClientDataSetDELOGRADOURO: TStringField
      FieldName = 'DELOGRADOURO'
      Size = 100
    end
    object PessoaClientDataSetDEBAIRRO: TStringField
      FieldName = 'DEBAIRRO'
      Size = 100
    end
    object PessoaClientDataSetCDCIDADE: TIntegerField
      FieldName = 'CDCIDADE'
      Required = True
    end
  end
  object CidadeSQLDataSet: TSQLDataSet
    CommandText = 
      'select CDCIDADE, NMCIDADE, UF from CIDADE'#13#10'WHERE CDCidade=:Codig' +
      'o'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQLConnection = DBSQLConnection
    Left = 184
    Top = 112
    object CidadeSQLDataSetCDCIDADE: TIntegerField
      FieldName = 'CDCIDADE'
      Required = True
    end
    object CidadeSQLDataSetNMCIDADE: TStringField
      FieldName = 'NMCIDADE'
      Required = True
      Size = 100
    end
    object CidadeSQLDataSetUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 2
    end
  end
  object CidadeDataSetProvider: TDataSetProvider
    DataSet = CidadeSQLDataSet
    Left = 296
    Top = 112
  end
  object CidadeClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'CidadeDataSetProvider'
    Left = 408
    Top = 112
    object CidadeClientDataSetCDCIDADE: TIntegerField
      FieldName = 'CDCIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CidadeClientDataSetNMCIDADE: TStringField
      FieldName = 'NMCIDADE'
      Required = True
      Size = 100
    end
    object CidadeClientDataSetUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object PesquisaCidadeSQLDataSet: TSQLDataSet
    CommandText = 'select CDCIDADE, NMCIDADE, UF from CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBSQLConnection
    Left = 184
    Top = 168
    object IntegerField1: TIntegerField
      FieldName = 'CDCIDADE'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NMCIDADE'
      Required = True
      Size = 100
    end
    object StringField2: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 2
    end
  end
  object PesquisaCidadeProvider: TDataSetProvider
    DataSet = PesquisaCidadeSQLDataSet
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 168
  end
  object PesquisaCidadeClientDataSet: TClientDataSet
    Aggregates = <>
    CommandText = 'select CDCIDADE, NMCIDADE, UF from CIDADE'
    Params = <>
    ProviderName = 'PesquisaCidadeProvider'
    Left = 416
    Top = 168
    object IntegerField2: TIntegerField
      FieldName = 'CDCIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'NMCIDADE'
      Required = True
      Size = 100
    end
    object StringField4: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object PesquisaPessoaSQLDataSet: TSQLDataSet
    CommandText = 
      'select  pes.CDPESSOA, pes. NMPESSOA,  DEBAIRRO, pes.DELOGRADOURO' +
      ', cid.nmcidade from PESSOA pes   JOIN CIDADE cid ON pes.cdcidade' +
      ' = cid.cdcidade'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBSQLConnection
    Left = 184
    Top = 232
    object PesquisaPessoaSQLDataSetCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
      Required = True
    end
    object PesquisaPessoaSQLDataSetDEBAIRRO: TStringField
      FieldName = 'DEBAIRRO'
      Size = 100
    end
    object PesquisaPessoaSQLDataSetDELOGRADOURO: TStringField
      FieldName = 'DELOGRADOURO'
      Size = 100
    end
    object PesquisaPessoaSQLDataSetNMPESSOA: TStringField
      FieldName = 'NMPESSOA'
      Required = True
      Size = 100
    end
    object PesquisaPessoaSQLDataSetNMCIDADE: TStringField
      FieldName = 'NMCIDADE'
      Required = True
      Size = 100
    end
  end
  object PesquisaPessoaProvider: TDataSetProvider
    DataSet = PesquisaPessoaSQLDataSet
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 232
  end
  object PesquisaPessoaClientDataSet: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select  pes.CDPESSOA, pes. NMPESSOA,  DEBAIRRO, pes.DELOGRADOURO' +
      ', cid.nmcidade from PESSOA pes   JOIN CIDADE cid ON pes.cdcidade' +
      ' = cid.cdcidade'
    Params = <>
    ProviderName = 'PesquisaPessoaProvider'
    Left = 416
    Top = 232
    object PesquisaPessoaClientDataSetCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
      Required = True
    end
    object PesquisaPessoaClientDataSetNMPESSOA: TStringField
      FieldName = 'NMPESSOA'
      Required = True
      Size = 100
    end
    object PesquisaPessoaClientDataSetDEBAIRRO: TStringField
      FieldName = 'DEBAIRRO'
      Size = 100
    end
    object PesquisaPessoaClientDataSetDELOGRADOURO: TStringField
      FieldName = 'DELOGRADOURO'
      Size = 100
    end
    object PesquisaPessoaClientDataSetNMCIDADE: TStringField
      FieldName = 'NMCIDADE'
      Required = True
      Size = 100
    end
  end
  object ArquivoSQLDataSet: TSQLDataSet
    CommandText = 
      'select pes. NMPESSOA, cid.nmcidade, cid.UF from PESSOA pes   JOI' +
      'N CIDADE cid ON pes.cdcidade = cid.cdcidade'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBSQLConnection
    Left = 184
    Top = 288
    object ArquivoSQLDataSetNMPESSOA: TStringField
      FieldName = 'NMPESSOA'
      Required = True
      Size = 100
    end
    object ArquivoSQLDataSetNMCIDADE: TStringField
      FieldName = 'NMCIDADE'
      Required = True
      Size = 100
    end
    object ArquivoSQLDataSetUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object ArquivoDataSetProvider: TDataSetProvider
    DataSet = ArquivoSQLDataSet
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 288
  end
  object ArquivoClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ArquivoDataSetProvider'
    Left = 416
    Top = 288
  end
end
