inherited Exercicio2Form: TExercicio2Form
  Caption = 'Exerc'#237'cio 2 - Classes de convers'#227'o de texto'
  ClientHeight = 238
  ClientWidth = 679
  OnCreate = FormCreate
  ExplicitWidth = 695
  ExplicitHeight = 277
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 7
    Width = 65
    Height = 13
    Caption = 'Texto original'
  end
  object Label2: TLabel
    Left = 438
    Top = 7
    Width = 82
    Height = 13
    Caption = 'Texto convertido'
  end
  object TextoOriginalMemo: TMemo
    Left = 8
    Top = 26
    Width = 233
    Height = 199
    TabOrder = 0
  end
  object OpcoesRadioGroup: TRadioGroup
    Left = 247
    Top = 26
    Width = 185
    Height = 105
    Caption = 'Op'#231#245'es de convers'#227'o'
    Items.Strings = (
      'Invertido'
      'Primeira mai'#250'scula'
      'Ordem alfab'#233'tica')
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 247
    Top = 137
    Width = 185
    Height = 88
    Caption = 'Quantidade de letras'
    TabOrder = 2
    object QuantidadeLetrasEdit: TEdit
      Left = 16
      Top = 24
      Width = 153
      Height = 21
      TabOrder = 0
    end
    object ConverterButton: TButton
      Left = 16
      Top = 51
      Width = 153
      Height = 25
      Caption = 'Converter'
      TabOrder = 1
      OnClick = ConverterButtonClick
    end
  end
  object TextoConvertidoEdit: TMemo
    Left = 438
    Top = 26
    Width = 233
    Height = 199
    TabOrder = 3
  end
end
