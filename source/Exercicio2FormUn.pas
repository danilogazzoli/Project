unit Exercicio2FormUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateFormUn, Vcl.StdCtrls,
  Vcl.ExtCtrls, Exercicio2Un;

type
  TExercicio2Form = class(TTemplateForm)
    TextoOriginalMemo: TMemo;
    Label1: TLabel;
    OpcoesRadioGroup: TRadioGroup;
    GroupBox1: TGroupBox;
    QuantidadeLetrasEdit: TEdit;
    TextoConvertidoEdit: TMemo;
    Label2: TLabel;
    ConverterButton: TButton;
    procedure ConverterButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function getConversor(const aIndex: integer): TConversaoTexto;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Exercicio2Form: TExercicio2Form;

implementation

{$R *.dfm}

procedure TExercicio2Form.ConverterButtonClick(Sender: TObject);
var
  _Conversor: TConversaoTexto;
begin
  inherited;
  _Conversor := Self.getConversor(OpcoesRadioGroup.ItemIndex);
  try
    _Conversor.QuantidadeLetras := StrToIntDef(QuantidadeLetrasEdit.Text, 0);
    TextoConvertidoEdit.Text := _Conversor.Converter(TextoOriginalMemo.Text)
  finally
    _Conversor.Free;
  end;
end;

procedure TExercicio2Form.FormCreate(Sender: TObject);
begin
  inherited;
  OpcoesRadioGroup.ItemIndex := 0;
end;

function TExercicio2Form.getConversor(const aIndex: integer): TConversaoTexto;
begin

  case aIndex of
    0: Result := TConverteInvertido.Create;
    1: Result := TConvertePrimeiraMaiuscula.Create;
    else
      Result := TConverteOrdenado.Create;
  end;
end;

end.
