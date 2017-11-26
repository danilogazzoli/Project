library Exercicio6DLL;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  ShareMem,
  System.SysUtils,
  System.Classes,
  Exercicio6DLLUn in 'Exercicio6DLLUn.pas',
  Exercicio6DLLIntUn in 'Exercicio6DLLIntUn.pas';

{$R *.res}



function getInstance(const aTipoGeometrico: TTipoGeometrico): ITipoGeometricoDLInterface; stdcall;
begin
  if aTipoGeometrico = tgQuadrado then
    Result := TQuadrado.Create
  else
    Result := TCirculo.Create;
end;

exports getInstance;

begin
end.
