unit Exercicio2Un;

interface

uses SysUtils, Classes;

type
  EExercicio2Exception = class(Exception);

  TConversao = class
  private
    FQuantidadeLetras: integer;
    procedure SetQuantidadeLetras(const Value: integer);
  public
    function Converter(const aTexto: string): string; virtual; abstract;
    property QuantidadeLetras: integer read FQuantidadeLetras write SetQuantidadeLetras;
  end;

  TConversaoTexto = class(TConversao)
  private
    FTexto: string;
    procedure SetTexto(const Value: string);
  public
    property Texto: string read FTexto write SetTexto;
  end;

  TConverteInvertido = class(TConversaoTexto)
   public
    function Converter(const aTexto: string): string; override;
  end;

  TConvertePrimeiraMaiuscula = class(TConversaoTexto)
   private
     const
       cSpace = #32;
   public
    function Converter(const aTexto: string): string; override;
  end;

  TConverteOrdenado = class(TConversaoTexto)
   public
    function Converter(const aTexto: string): string; override;
  end;

implementation

uses StrUtils;

{ TConversaoTexto }

procedure TConversaoTexto.SetTexto(const Value: string);
begin
  if Value = EmptyStr then
    raise EExercicio2Exception.Create('Texto não pode ser vazio')
  else
    FTexto := Value;
end;

{ TConverteInvertido }

function TConverteInvertido.Converter(const aTexto: string): string;
begin
  Result := ReverseString(aTexto);
end;

{ TConvertePrimeiraMaiuscula }

function TConvertePrimeiraMaiuscula.Converter(const aTexto: string): string;
var
  _auxStr: TStringList;
  _i: Integer;
  _s: string;
begin
  _auxStr := TStringList.Create;
  try
    _auxStr.StrictDelimiter := True;
    _auxStr.Delimiter := cSpace;
    _auxStr.DelimitedText := aTexto;
    for _i := 0 to _auxStr.Count - 1 do
    begin
      _s := LowerCase(_auxStr[_i]);
      if length(_s) > 0 then
        _s[1] := UpCase(_s[1]);
      _auxStr[_i] := _s;
    end;

    Result := _auxStr.Text;
  finally
    _auxStr.Free;
  end;
end;

{ TConverteOrdenado }

function TConverteOrdenado.Converter(const aTexto: string): string;
begin

end;

{ TConversao }

procedure TConversao.SetQuantidadeLetras(const Value: integer);
begin
  FQuantidadeLetras := Value;
end;

end.
