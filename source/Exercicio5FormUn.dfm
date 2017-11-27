inherited Exercicio5Form: TExercicio5Form
  BorderStyle = bsDialog
  Caption = 'Exerc'#237'cio 5 - Cria'#231#227'o de Arquivos'
  ClientHeight = 91
  ClientWidth = 527
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 533
  ExplicitHeight = 120
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 16
    Top = 40
    Width = 503
    Height = 9
    Shape = bsBottomLine
  end
  object LocalArquivoEdit: TLabeledEdit
    Left = 96
    Top = 12
    Width = 329
    Height = 21
    EditLabel.Width = 79
    EditLabel.Height = 13
    EditLabel.Caption = 'Local do Arquivo'
    LabelPosition = lpLeft
    TabOrder = 0
  end
  object SelecionarButton: TButton
    Left = 444
    Top = 9
    Width = 75
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 1
    OnClick = SelecionarButtonClick
  end
  object SalvarButton: TButton
    Left = 185
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = SalvarButtonClick
  end
  object SairButton: TButton
    Left = 266
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = SairButtonClick
  end
end
