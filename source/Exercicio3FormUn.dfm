inherited Exercicio3Form: TExercicio3Form
  Caption = 'Exerc'#237'cio 3 - Tela de Cadastro'
  ClientHeight = 233
  ClientWidth = 590
  ExplicitWidth = 606
  ExplicitHeight = 272
  PixelsPerInch = 96
  TextHeight = 13
  object CadastroGroupBox: TGroupBox
    Left = 8
    Top = 8
    Width = 574
    Height = 209
    Caption = 'Cadastro de Pessoas'
    TabOrder = 0
    object Nome: TLabel
      Left = 19
      Top = 27
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object LogradouroLabel: TLabel
      Left = 19
      Top = 51
      Width = 55
      Height = 13
      Caption = 'Logradouro'
    end
    object Label1: TLabel
      Left = 19
      Top = 81
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object Label2: TLabel
      Left = 19
      Top = 108
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object GroupBox1: TGroupBox
      Left = 19
      Top = 136
      Width = 534
      Height = 49
      TabOrder = 0
      object NovoButton: TButton
        Left = 16
        Top = 13
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 0
      end
      object SalvarButton: TButton
        Left = 99
        Top = 13
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 1
      end
      object EditarButton: TButton
        Left = 183
        Top = 13
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 2
      end
      object ExcluirButton: TButton
        Left = 266
        Top = 13
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 3
      end
      object PesquisarButton: TButton
        Left = 350
        Top = 13
        Width = 75
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 4
      end
      object SairButton: TButton
        Left = 434
        Top = 13
        Width = 75
        Height = 25
        Caption = 'Sair'
        TabOrder = 5
        OnClick = SairButtonClick
      end
    end
    object NomeEdit: TDBEdit
      Left = 80
      Top = 24
      Width = 473
      Height = 21
      TabOrder = 1
    end
    object LogradouroEdit: TDBEdit
      Left = 80
      Top = 51
      Width = 473
      Height = 21
      TabOrder = 2
    end
    object BairroEdit: TDBEdit
      Left = 80
      Top = 78
      Width = 473
      Height = 21
      TabOrder = 3
    end
    object CidadeEdit: TDBEdit
      Left = 80
      Top = 105
      Width = 249
      Height = 21
      TabOrder = 4
    end
    object UFEdit: TDBEdit
      Left = 335
      Top = 105
      Width = 109
      Height = 21
      TabOrder = 5
    end
    object PesquisarCidadeButton: TButton
      Left = 450
      Top = 105
      Width = 103
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 6
    end
  end
end
