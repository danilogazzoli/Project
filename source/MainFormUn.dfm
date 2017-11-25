object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Avalia'#231#227'o t'#233'cnica DB1- Danilo Gazzoli Resende'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mnuPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object mnuPrincipal: TMainMenu
    Left = 216
    Top = 104
    object Exerccios1: TMenuItem
      Caption = 'Exerc'#237'cios'
      object Exerccio11: TMenuItem
        Caption = 'Exerc'#237'cio 1'
        OnClick = Exerccio11Click
      end
      object Exerccio21: TMenuItem
        Caption = 'Exerc'#237'cio 2'
        OnClick = Exerccio21Click
      end
      object Exerccio31: TMenuItem
        Caption = 'Exerc'#237'cio 3'
      end
      object Exerccio41: TMenuItem
        Caption = 'Exerc'#237'cio 4'
      end
      object Exercio51: TMenuItem
        Caption = 'Exerc'#237'cio 5'
      end
      object Exerccio61: TMenuItem
        Caption = 'Exerc'#237'cio 6'
      end
      object Exerccio71: TMenuItem
        Caption = 'Exerc'#237'cio 7'
      end
    end
  end
end
