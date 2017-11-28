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
    function getFileName: string;

  public
    procedure ExportRecords(const aFolderName: string; aDataSet: TDataSet);
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

function TGenerateFile.getFileName: string;
begin
  Result := 'Arquivo.txt';
end;

procedure TGenerateFile.ExportRecords(const aFolderName: string; aDataSet: TDataSet);
var
  _Arquivo: TFileStream;
  _linha: string;
  _FH: NativeUInt;
  _countRecords : integer;
const  szChar = SizeOf(Char);

begin
  if (not aDataSet.Active) then
    raise Exception.Create('Verifique se há registros a serem exportados.');
  //if not FileExists(aFileName) then
    _FH := fmCreate;
  //else
  //begin
  //_FH := fmOpenReadWrite;
  //_linha := #13#10;
  //end;
  _countRecords := 0;
  _linha := EmptyStr;
  _Arquivo := TFileStream.Create(aFolderName + '\' + Self.getFileName, _FH);
  try
    _Arquivo.Seek(0, soFromEnd);
    aDataSet.First;
    while (not aDataSet.Eof) and (_countRecords <= 100) do
    begin
      _linha := _linha + Self.FillLine(aDataSet, 'nmpessoa', 50);
      _linha := _linha + Self.FillLine(aDataSet, 'nmcidade', 30);
      _linha := _linha + Self.FillLine(aDataSet, 'uf', 2);
      _Arquivo.WriteBuffer(Pointer(_linha)^, (Length(_linha) * szChar));
      _linha := #13#10;
      inc(_countRecords);
      aDataSet.Next;
    end;

  finally
    _Arquivo.Free;
  end;
end;

end.