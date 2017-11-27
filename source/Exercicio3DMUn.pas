unit Exercicio3DMUn;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient;

type
  TExercicio3DM = class(TDataModule)
    DBSQLConnection: TSQLConnection;
    PessoaSQLDataSet: TSQLDataSet;
    PessoaSQLDataSetCDPESSOA: TIntegerField;
    PessoaSQLDataSetNMPESSOA: TStringField;
    PessoaSQLDataSetDELOGRADOURO: TStringField;
    PessoaSQLDataSetDEBAIRRO: TStringField;
    PessoaSQLDataSetCDCIDADE: TIntegerField;
    PessoaDataSetProvider: TDataSetProvider;
    PessoaClientDataSet: TClientDataSet;
    PessoaClientDataSetCDPESSOA: TIntegerField;
    PessoaClientDataSetNMPESSOA: TStringField;
    PessoaClientDataSetDELOGRADOURO: TStringField;
    PessoaClientDataSetDEBAIRRO: TStringField;
    PessoaClientDataSetCDCIDADE: TIntegerField;
    CidadeSQLDataSet: TSQLDataSet;
    CidadeDataSetProvider: TDataSetProvider;
    CidadeClientDataSet: TClientDataSet;
    CidadeSQLDataSetCDCIDADE: TIntegerField;
    CidadeSQLDataSetNMCIDADE: TStringField;
    CidadeSQLDataSetUF: TStringField;
    CidadeClientDataSetCDCIDADE: TIntegerField;
    CidadeClientDataSetNMCIDADE: TStringField;
    CidadeClientDataSetUF: TStringField;
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
