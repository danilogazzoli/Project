object Exercicio3DM: TExercicio3DM
  OldCreateOrder = False
  Height = 201
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
      
        'Database=10.42.0.106/3050:/home/danilo/Downloads/Project/db/data' +
        'base.fdb'
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
    Left = 88
    Top = 56
  end
  object PessoaSQLDataSet: TSQLDataSet
    CommandText = 
      'select CDPESSOA,'#13#10'          NMPESSOA,'#13#10'           DELOGRADOURO, ' +
      #13#10'           DEBAIRRO, '#13#10'           CDCIDADE'#13#10#13#10' from PESSOA'
    MaxBlobSize = -1
    Params = <>
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
    Params = <>
    ProviderName = 'PessoaDataSetProvider'
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
    CommandText = 'select CDCIDADE, NMCIDADE, UF from CIDADE'
    MaxBlobSize = -1
    Params = <>
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
    Params = <>
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
end
