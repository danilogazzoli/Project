unit Exercicio2Un;

interface

uses SysUtils, Classes;

type
  EExercicio2Exception = class(Exception);

  TConversao = class
  private
  public
    function Converter(const aTexto: string): string; virtual; abstract;
  end;

  TConversaoTexto = class(TConversao)
  private
    FTexto: string;
    FQuantidadeLetras: integer;
    procedure SetTexto(const Value: string);
    procedure SetQuantidadeLetras(const Value: integer);
  protected
    const
       cSpace = #32;
  public
    property Texto: string read FTexto write SetTexto;
    property QuantidadeLetras: integer read FQuantidadeLetras write SetQuantidadeLetras;
    function Converter(const aTexto: string): string; override;
  end;

  TConverteInvertido = class(TConversaoTexto)
   public
    function Converter(const aTexto: string): string; override;
  end;

  TConvertePrimeiraMaiuscula = class(TConversaoTexto)
   private
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
function TConversaoTexto.Converter(const aTexto: string): string;
begin
  if Self.FQuantidadeLetras > 0 then
    Result := Copy(aTexto, 1, Self.FQuantidadeLetras)
  else
    Result := aTexto;
end;

procedure TConversaoTexto.SetQuantidadeLetras(const Value: integer);
begin
  FQuantidadeLetras := Value;
end;

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
  Result := inherited Converter(Result);
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

    Result := _auxStr.DelimitedText;
    Result := inherited Converter(Result);
  finally
    _auxStr.Free;
  end;
end;

{ TConverteOrdenado }

function TConverteOrdenado.Converter(const aTexto: string): string;
var
  _strOrdem: TStringList;
  _i: Integer;
begin
  Result := EmptyStr;
  _strOrdem := TStringList.Create;
  try
    for _i := 1 to Length(aTexto) do
      if aTexto[_i] <> cSpace  then
        _strOrdem.Add(aTexto[_i]);

    _strOrdem.Sorted := True;
    _strOrdem.Sort;
    for _i := 0 to _strOrdem.Count - 1 do
      Result := Result + _strOrdem[_i];
    Result := inherited Converter(Result);
  finally
    _strOrdem.Free;
  end;
end;


end.
