inherited Exercicio3Pesquisa: TExercicio3Pesquisa
  BorderStyle = bsDialog
  Caption = 'Exerc'#237'cio 3 - Formul'#225'rio de Pesquisa'
  ClientHeight = 218
  ClientWidth = 501
  OnCreate = FormCreate
  ExplicitWidth = 507
  ExplicitHeight = 247
  PixelsPerInch = 96
  TextHeight = 13
  object NomeEdit: TLabeledEdit
    Left = 56
    Top = 16
    Width = 233
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome'
    LabelPosition = lpLeft
    TabOrder = 0
  end
  object PesquisarButton: TButton
    Left = 295
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = PesquisarButtonClick
  end
  object ResultadoDBGrid: TDBGrid
    Left = 8
    Top = 45
    Width = 481
    Height = 120
    DataSource = PesquisaDataSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object SelecionarButton: TButton
    Left = 158
    Top = 171
    Width = 75
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 3
    OnClick = SelecionarButtonClick
  end
  object CancelarButton: TButton
    Left = 245
    Top = 171
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = CancelarButtonClick
  end
  object PesquisaDataSource: TDataSource
    Left = 392
    Top = 8
  end
end
