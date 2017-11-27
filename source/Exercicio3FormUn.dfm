inherited Exercicio3Form: TExercicio3Form
  BorderStyle = bsDialog
  Caption = 'Exerc'#237'cio 3 - Tela de Cadastro'
  ClientHeight = 229
  ClientWidth = 600
  OnCreate = FormCreate
  ExplicitWidth = 606
  ExplicitHeight = 258
  PixelsPerInch = 96
  TextHeight = 13
  object CadastroGroupBox: TGroupBox
    Left = 8
    Top = 8
    Width = 574
    Height = 201
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
        Left = 20
        Top = 13
        Width = 75
        Height = 25
        Action = NovoAction
        TabOrder = 0
      end
      object SalvarButton: TButton
        Left = 101
        Top = 13
        Width = 75
        Height = 25
        Action = SalvarAction
        TabOrder = 1
      end
      object EditarButton: TButton
        Left = 183
        Top = 13
        Width = 75
        Height = 25
        Action = EditarAction
        TabOrder = 2
      end
      object ExcluirButton: TButton
        Left = 266
        Top = 13
        Width = 75
        Height = 25
        Action = ExcluirAction
        TabOrder = 3
      end
      object PesquisarButton: TButton
        Left = 350
        Top = 13
        Width = 75
        Height = 25
        Action = PesquisarAction
        TabOrder = 4
        OnClick = PesquisarButtonClick
      end
      object SairButton: TButton
        Left = 434
        Top = 13
        Width = 75
        Height = 25
        Action = SairAction
        TabOrder = 5
      end
    end
    object NomeEdit: TDBEdit
      Left = 80
      Top = 24
      Width = 473
      Height = 21
      DataField = 'NMPESSOA'
      DataSource = CadastroDataSource
      TabOrder = 1
    end
    object LogradouroEdit: TDBEdit
      Left = 80
      Top = 51
      Width = 473
      Height = 21
      DataField = 'DELOGRADOURO'
      DataSource = CadastroDataSource
      TabOrder = 2
    end
    object BairroEdit: TDBEdit
      Left = 80
      Top = 78
      Width = 473
      Height = 21
      DataField = 'DEBAIRRO'
      DataSource = CadastroDataSource
      TabOrder = 3
    end
    object CidadeEdit: TDBEdit
      Left = 80
      Top = 105
      Width = 249
      Height = 21
      DataField = 'NMCIDADE'
      DataSource = CidadeDataSource
      Enabled = False
      ReadOnly = True
      TabOrder = 4
    end
    object UFEdit: TDBEdit
      Left = 335
      Top = 105
      Width = 109
      Height = 21
      DataField = 'UF'
      DataSource = CidadeDataSource
      Enabled = False
      ReadOnly = True
      TabOrder = 5
    end
    object PesquisarCidadeButton: TButton
      Left = 450
      Top = 105
      Width = 103
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 6
      OnClick = PesquisarCidadeButtonClick
    end
  end
  object CadastroDataSource: TDataSource
    DataSet = Exercicio3DM.PessoaClientDataSet
    Left = 536
    Top = 8
  end
  object CadastroActionList: TActionList
    Left = 536
    Top = 64
    object NovoAction: TAction
      Caption = '&Novo'
      OnExecute = NovoActionExecute
      OnUpdate = NovoActionUpdate
    end
    object SalvarAction: TAction
      Caption = '&Salvar'
      OnExecute = SalvarActionExecute
      OnUpdate = SalvarActionUpdate
    end
    object EditarAction: TAction
      Caption = '&Editar'
      OnExecute = EditarActionExecute
      OnUpdate = EditarActionUpdate
    end
    object ExcluirAction: TAction
      Caption = '&Excluir'
      OnExecute = ExcluirActionExecute
      OnUpdate = ExcluirActionUpdate
    end
    object PesquisarAction: TAction
      Caption = '&Pesquisar'
      OnUpdate = PesquisarActionUpdate
    end
    object SairAction: TAction
      Caption = 'Sai&r'
      OnExecute = SairActionExecute
      OnUpdate = SairActionUpdate
    end
  end
  object CidadeDataSource: TDataSource
    DataSet = Exercicio3DM.CidadeClientDataSet
    Left = 504
    Top = 8
  end
end
