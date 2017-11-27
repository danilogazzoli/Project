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
    PesquisaCidadeSQLDataSet: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    PesquisaCidadeProvider: TDataSetProvider;
    PesquisaCidadeClientDataSet: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SelectCidadeById(const aId: integer);
  end;

var
  Exercicio3DM: TExercicio3DM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TExercicio3DM }

procedure TExercicio3DM.SelectCidadeById(const aId: integer);
begin
  CidadeClientDataSet.Close;
  CidadeClientDataSet.ParamByName('Codigo').AsInteger := aId;
  CidadeClientDataSet.Open;
end;

end.
