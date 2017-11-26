inherited Exercicio6Form: TExercicio6Form
  Caption = 'Exerc'#237'cio 6 - Utiliza'#231#227'o de bibliotecas din'#226'micas'
  ClientHeight = 215
  ClientWidth = 626
  OnCreate = FormCreate
  ExplicitWidth = 642
  ExplicitHeight = 254
  PixelsPerInch = 96
  TextHeight = 13
  inline QuadradoFrame: TExercicio6Frame
    Left = 0
    Top = 0
    Width = 626
    Height = 112
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -16
    ExplicitWidth = 626
    inherited TipoGroupBox: TGroupBox
      Left = 10
      Caption = 'Quadrado'
      ExplicitLeft = 10
      inherited ValorEdit: TLabeledEdit
        EditLabel.Width = 23
        EditLabel.Caption = 'Lado'
        EditLabel.ExplicitWidth = 23
      end
      inherited ResultadoEdit: TLabeledEdit
        EditLabel.ExplicitLeft = 0
        EditLabel.ExplicitTop = -16
        EditLabel.ExplicitWidth = 66
      end
    end
  end
  inline CirculoFrame: TExercicio6Frame
    Left = 0
    Top = 112
    Width = 626
    Height = 112
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 12
    ExplicitTop = 126
    inherited TipoGroupBox: TGroupBox
      Left = 8
      Top = 0
      Caption = 'C'#237'rculo'
      ExplicitLeft = 8
      ExplicitTop = 0
      inherited ValorEdit: TLabeledEdit
        EditLabel.Width = 21
        EditLabel.Caption = 'Raio'
        EditLabel.ExplicitWidth = 21
      end
      inherited ResultadoEdit: TLabeledEdit
        EditLabel.ExplicitLeft = 0
        EditLabel.ExplicitTop = -16
        EditLabel.ExplicitWidth = 66
      end
    end
  end
end
