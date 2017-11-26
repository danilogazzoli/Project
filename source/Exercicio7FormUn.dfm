inherited Exercicio7Form: TExercicio7Form
  Caption = 'Exerc'#237'cio 7 - Processos concorrentes'
  ClientHeight = 170
  ClientWidth = 672
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 688
  ExplicitHeight = 209
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 9
    Top = 15
    Width = 649
    Height = 113
    TabOrder = 0
    object Thread1Label: TLabel
      Left = 33
      Top = 16
      Width = 43
      Height = 13
      Caption = 'Thread 1'
    end
    object Thread2Label: TLabel
      Left = 35
      Top = 61
      Width = 43
      Height = 13
      Caption = 'Thread 2'
    end
    object Thread1ProgressBar: TProgressBar
      Left = 34
      Top = 32
      Width = 473
      Height = 17
      TabOrder = 0
    end
    object Thread2ProgressBar: TProgressBar
      Left = 32
      Top = 78
      Width = 473
      Height = 17
      TabOrder = 1
    end
    object Thread1Edit: TLabeledEdit
      Left = 518
      Top = 28
      Width = 121
      Height = 21
      EditLabel.Width = 73
      EditLabel.Height = 13
      EditLabel.Caption = 'Tempo (em ms)'
      TabOrder = 2
    end
    object Thread2Edit: TLabeledEdit
      Left = 518
      Top = 74
      Width = 121
      Height = 21
      EditLabel.Width = 73
      EditLabel.Height = 13
      EditLabel.Caption = 'Tempo (em ms)'
      TabOrder = 3
    end
  end
  object ExecutarButton: TButton
    Left = 216
    Top = 137
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 1
    OnClick = ExecutarButtonClick
  end
  object SairButton: TButton
    Left = 408
    Top = 137
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = SairButtonClick
  end
end
