unit Exercicio3DMUn;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr;

type
  TExercicio3DM = class(TDataModule)
    DBSQLConnection: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Exercicio3DM: TExercicio3DM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
