unit Exercicio1Un;

interface

uses Classes, SysUtils;

type
  Exercicio1Exception = class(Exception);

  TElement = class
  strict private
    FName: string;
    FId: integer;
  public
    function getId: integer;
    function getName: string;
    procedure setName(const Value: string);
    procedure setId(const Id: integer);
  end;

  TArrayType = Array of TElement;

  TExercicio1 = class
  private
    FLastId: integer;
    FArray: TArrayType;
    procedure RearrangeArray;
    procedure RemoveElementByPosition(const aPosition: integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure AddName(const aName: string);
    procedure RemoveLastInserted;
    procedure RemoveFirstInserted;
    function CountItems: integer;
    procedure DisplayNames(aStr: TStringList);
    class function getInstance: TExercicio1;
   end;

implementation

var
  Exercicio1 : TExercicio1;

{ TElement }

function TElement.getId: integer;
begin
  Result := Self.FId;
end;

function TElement.getName: string;
begin
  Result := Self.FName;
end;

procedure TElement.setId(const Id: integer);
begin
  Self.FId := Id;
end;

procedure TElement.setName(const Value: string);
begin
  Self.FName := Value;
end;

{ TExercicio1 }

constructor TExercicio1.Create;
begin
  Self.FLastId := 0;
end;

destructor TExercicio1.Destroy;
var
  i: Integer;
begin
  for i := Low(Self.FArray) to High(Self.FArray) do
    Self.FArray[i].Free;
  inherited;
end;

procedure TExercicio1.AddName(const aName: string);
var
  _Element: TElement;
  _pos: integer;
begin
  if (aName <> EmptyStr) then
  begin
    _pos := Self.CountItems;
    Inc(Self.FLastId);
    SetLength(Self.FArray, _pos + 1);
    _Element := TElement.Create;
    Self.FArray[_pos] := _Element;
    _Element.setId(Self.FLastId);
    _Element.setName(aName);
  end
  else
    raise Exercicio1Exception.Create('Nome não pode ser vazio');
end;

function TExercicio1.CountItems: integer;
begin
  Result := Length(Self.FArray);
end;

procedure TExercicio1.DisplayNames(aStr: TStringList);
var
  _i: Integer;
begin
  aStr.Clear;
  for _i := Low(Self.FArray) to High(Self.FArray) do
    aStr.AddObject(Format('%s - Id: %d ', [Self.FArray[_i].getName, Self.FArray[_i].getId]), TObject(Self.FArray[_i].getId));
  aStr.Sorted := True;
  aStr.Sort;
end;

class function TExercicio1.getInstance: TExercicio1;
begin
  if Exercicio1 = nil then
    Exercicio1 := TExercicio1.Create;
  Result := Exercicio1;
end;

procedure TExercicio1.RemoveFirstInserted;
begin
  Self.RemoveElementByPosition(0);
end;

procedure TExercicio1.RemoveLastInserted;
begin
  Self.RemoveElementByPosition(Self.CountItems - 1)
end;

procedure TExercicio1.RemoveElementByPosition(const aPosition: integer);
var
  _Element: TElement;
begin
  if Self.CountItems > 0 then
  begin
    _Element := Self.FArray[aPosition];
    if _Element <> nil then
    begin
      _Element.Free;
      Self.FArray[aPosition] := nil;
      Self.RearrangeArray;
    end;
  end
  else
    raise Exercicio1Exception.Create('Não há item a ser removido.');

end;

procedure TExercicio1.RearrangeArray;
var
  _auxArray: TArrayType;
  _i: Integer;
  _count: integer;
begin
  for _i := Low(Self.FArray) to High(Self.FArray) do
  begin
    if Self.FArray[_i] <> nil then
    begin
      _count := Length(_auxArray);
      SetLength(_auxArray, _count + 1);
      _auxArray[_count] := Self.FArray[_i];
    end;
  end;
  Self.FArray := _auxArray;
end;

initialization
  Exercicio1 := TExercicio1.Create;

finalization
  Exercicio1.Free;

end.
