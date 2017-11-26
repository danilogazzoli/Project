unit Exercicio6DLLUn;

interface

uses Exercicio6DLLIntUn;

type
  TGeometrico = class(TInterfacedObject, ITipoGeometricoDLInterface)
    function GetArea(const aValor: extended): extended; virtual; abstract;
    function GetPerimetro(const aValor: extended): extended; virtual; abstract;
  end;

  TCirculo = class(TGeometrico)
    function GetArea(const aValor: extended): extended; override;
    function GetPerimetro(const aValor: extended): extended; override;
  end;

  TQuadrado = class(TGeometrico)
    function GetArea(const aValor: extended): extended; override;
    function GetPerimetro(const aValor: extended): extended; override;
  end;


implementation

uses Math;

{ TCirculo }

function TCirculo.GetArea(const aValor: extended): extended;
begin
  Result := pi * Power(aValor, 2)
end;

function TCirculo.GetPerimetro(const aValor: extended): extended;
begin
  Result := pi * (2 * aValor)
end;

{ TQuadrado }

function TQuadrado.GetArea(const aValor: extended): extended;
begin
   Result := Power(aValor, 2);
end;

function TQuadrado.GetPerimetro(const aValor: extended): extended;
begin
  Result := 4 * aValor;
end;

end.
