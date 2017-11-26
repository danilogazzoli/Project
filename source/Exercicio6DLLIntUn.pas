unit Exercicio6DLLIntUn;

interface

type
  TTipoGeometrico = (tgQuadrado, tgCirculo);

  ITipoGeometricoDLInterface = interface
     function GetArea(const aValor: extended): extended;
     function GetPerimetro(const aValor: extended): extended;
  end;

implementation

end.
