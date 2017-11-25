inherited Exercicio1Form: TExercicio1Form
  Caption = 'Exerc'#237'cio 1'
  ClientHeight = 297
  ClientWidth = 535
  ExplicitWidth = 551
  ExplicitHeight = 336
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 225
    Height = 65
    Caption = 'Inserir nomes'
    TabOrder = 0
    object NomeEdit: TEdit
      Left = 13
      Top = 26
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object InserirButton: TButton
      Left = 140
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 1
      OnClick = InserirButtonClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 79
    Width = 225
    Height = 202
    Caption = 'Opera'#231#245'es'
    TabOrder = 1
    object RemoverPrimeiroButton: TButton
      Left = 13
      Top = 24
      Width = 196
      Height = 25
      Caption = 'Remover primeiro inserido'
      TabOrder = 0
      OnClick = RemoverPrimeiroButtonClick
    end
    object RemoverUltimoButton: TButton
      Left = 13
      Top = 55
      Width = 196
      Height = 25
      Caption = 'Remover '#250'ltimo inserido'
      TabOrder = 1
      OnClick = RemoverUltimoButtonClick
    end
    object ContarButton: TButton
      Left = 13
      Top = 86
      Width = 196
      Height = 25
      Caption = 'Contar nomes'
      TabOrder = 2
      OnClick = ContarButtonClick
    end
    object SairButton: TButton
      Left = 13
      Top = 117
      Width = 196
      Height = 25
      Caption = 'Sair'
      TabOrder = 3
      OnClick = SairButtonClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 256
    Top = 8
    Width = 265
    Height = 273
    Caption = 'Lista de nomes'
    TabOrder = 2
    object ExibirButton: TButton
      Left = 24
      Top = 24
      Width = 225
      Height = 25
      Caption = 'Exibir nomes'
      TabOrder = 0
      OnClick = ExibirButtonClick
    end
    object ExibirListBox: TListBox
      Left = 24
      Top = 55
      Width = 225
      Height = 202
      ItemHeight = 13
      TabOrder = 1
    end
  end
end
