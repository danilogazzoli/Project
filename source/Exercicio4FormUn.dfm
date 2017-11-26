inherited Exercicio4Form: TExercicio4Form
  BorderStyle = bsDialog
  Caption = 'Exerc'#237'cio 4 - Cria'#231#227'o de componente'
  ClientHeight = 421
  ClientWidth = 608
  ExplicitWidth = 614
  ExplicitHeight = 450
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 185
    Height = 397
    Caption = 'Gera'#231#227'o da consulta'
    TabOrder = 0
    object Campos: TLabel
      Left = 16
      Top = 21
      Width = 38
      Height = 13
      Caption = 'Campos'
    end
    object Label1: TLabel
      Left = 16
      Top = 133
      Width = 37
      Height = 13
      Caption = 'Tabelas'
    end
    object Label2: TLabel
      Left = 16
      Top = 245
      Width = 49
      Height = 13
      Caption = 'Condi'#231#245'es'
    end
    object CampoMemo: TMemo
      Left = 16
      Top = 40
      Width = 156
      Height = 89
      Lines.Strings = (
        ' cdpessoa,'
        ' nmpessoa,'
        ' delogradouro,'
        ' debairro,'
        ' cdCidade')
      TabOrder = 0
    end
    object TabelaMemo: TMemo
      Left = 16
      Top = 152
      Width = 156
      Height = 89
      Lines.Strings = (
        'pessoa')
      TabOrder = 1
    end
    object CondicaoMemo: TMemo
      Left = 16
      Top = 264
      Width = 156
      Height = 89
      Lines.Strings = (
        ''
        'cdCidade  > 0')
      TabOrder = 2
    end
    object ConsultarButton: TButton
      Left = 48
      Top = 362
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 3
      OnClick = ConsultarButtonClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 199
    Top = 8
    Width = 399
    Height = 399
    Caption = 'Resultado'
    TabOrder = 1
    object ResultadoDBGrid: TDBGrid
      Left = 16
      Top = 21
      Width = 369
      Height = 366
      DataSource = ResultadoDataSource
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object ResultadoDataSource: TDataSource
    DataSet = ResultadoClientDataSet
    Left = 432
    Top = 136
  end
  object DB1Data: TDB1Data
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Exercicio3DM.DBSQLConnection
    Left = 264
    Top = 136
  end
  object ResultadoProvider: TDataSetProvider
    DataSet = DB1Data
    Left = 312
    Top = 136
  end
  object ResultadoClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 136
  end
end
