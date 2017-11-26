object Exercicio6Frame: TExercicio6Frame
  Left = 0
  Top = 0
  Width = 614
  Height = 112
  TabOrder = 0
  object TipoGroupBox: TGroupBox
    Left = 16
    Top = 19
    Width = 577
    Height = 78
    Caption = 'Tipo Geom'#233'trico'
    TabOrder = 0
    object ValorEdit: TLabeledEdit
      Left = 19
      Top = 40
      Width = 121
      Height = 21
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = 'Valor'
      TabOrder = 0
    end
    object CalculoRadioGroup: TRadioGroup
      Left = 162
      Top = 18
      Width = 185
      Height = 43
      Caption = 'C'#225'lculo'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #193'rea'
        'Per'#237'metro')
      TabOrder = 1
    end
    object CalcularButton: TButton
      Left = 361
      Top = 35
      Width = 75
      Height = 25
      Caption = 'Calcular'
      TabOrder = 2
      OnClick = CalcularButtonClick
    end
    object ResultadoEdit: TLabeledEdit
      Left = 442
      Top = 37
      Width = 121
      Height = 21
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'Resultado'
      ReadOnly = True
      TabOrder = 3
    end
  end
end
