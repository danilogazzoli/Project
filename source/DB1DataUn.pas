unit DB1DataUn;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr;

type
  TDB1Data = class(TSQLDataSet)
  private
    FListaTabelas: TStringList;
    FListaCampos: TStringList;
    FListaCondicoes: TStringList;
    procedure SetListaCampos(const Value: TStringList);
    procedure SetListaCondicoes(const Value: TStringList);
    procedure SetListaTabelas(const Value: TStringList);
  protected
    procedure DoBeforeOpen; override;
  public
    constructor Create(Aowner: TComponent); override;
    destructor Destroy; override;
  published
    property ListaCampos: TStringList read FListaCampos write SetListaCampos;
    property ListaTabelas: TStringList read FListaTabelas write SetListaTabelas;
    property ListaCondicoes: TStringList read FListaCondicoes write SetListaCondicoes;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('DB1 Avaliação', [TDB1Data]);
end;

{ TDB1Data }

constructor TDB1Data.Create(Aowner: TComponent);
begin
  inherited Create(AOwner);
  Self.FListaTabelas := TStringList.Create;
  Self.FListaCampos := TStringList.Create;
  Self.FListaCondicoes := TStringList.Create;
end;

destructor TDB1Data.Destroy;
begin
  Self.FListaTabelas.Free;
  Self.FListaCampos.Free;
  Self.FListaCondicoes.Free;
  inherited;
end;

procedure TDB1Data.DoBeforeOpen;
begin
  Self.CommandText := Format('SELECT %s FROM %s WHERE %s',
    [Self.FListaCampos.Text,
     Self.FListaTabelas.Text,
     Self.FListaCondicoes.Text]);
  inherited;
end;

procedure TDB1Data.SetListaCampos(const Value: TStringList);
begin
  FListaCampos.Assign(Value);
end;

procedure TDB1Data.SetListaCondicoes(const Value: TStringList);
begin
  FListaCondicoes.Assign(Value);
end;

procedure TDB1Data.SetListaTabelas(const Value: TStringList);
begin
  FListaTabelas.Assign(Value);
end;

end.
