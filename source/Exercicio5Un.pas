unit Exercicio5Un;

interface

uses DB, System.Classes, SysUtils;

type
  TGenerateFile = class
  private
    const
      cSpace = #32;
    function LeftPad(const aStr: string; const aCh: Char; const aLen: Integer): string;
    function FillLine(aDataSet: TDataSet; const aFieldName: string;
      const aLength: integer): string;

  public
    procedure ExportRecords(const aFileName: string; aDataSet: TDataSet);
  end;

implementation

{ TGenerateFile }

function TGenerateFile.LeftPad(const aStr: string; const aCh: Char; const aLen: Integer): string;
var
  _RestLen: Integer;
begin
  Result  := aStr;
  _RestLen := aLen - Length(aStr);
  if _RestLen > 0 then
    Result := aStr + StringOfChar(aCh, _RestLen);
end;

function TGenerateFile.FillLine(aDataSet: TDataSet; const aFieldName: string; const aLength: integer): string;
begin
  if aDataSet.FindField(aFieldName) <> nil then
    Result := Copy(aDataSet.FieldByName(aFieldName).AsString, 1, aLength);
  Result := LeftPad(Result, cSpace, aLength);
end;

procedure TGenerateFile.ExportRecords(const aFileName: string; aDataSet: TDataSet);
var
  _Arquivo: TFileStream;
  _linha: string;
begin
  _Arquivo := TFileStream.Create(aFileName, fmOpenWrite);
  try
    aDataSet.First;
    while not aDataSet.Eof do
    begin
      _linha := Self.FillLine(aDataSet, 'nmpessoa', 50);
      _linha := _linha + Self.FillLine(aDataSet, 'nmcidade', 30);
      _linha := _linha + Self.FillLine(aDataSet, 'uf', 2);
      _Arquivo.WriteBuffer(_linha, length(_linha));
      aDataSet.Next;
    end;

  finally
    _Arquivo.Free;
  end;
end;

end.
