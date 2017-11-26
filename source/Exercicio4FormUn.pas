unit Exercicio4FormUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateFormUn, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider,
  Data.SqlExpr, DB1DataUn;

type
  TExercicio4Form = class(TTemplateForm)
    GroupBox1: TGroupBox;
    CampoMemo: TMemo;
    Campos: TLabel;
    Label1: TLabel;
    TabelaMemo: TMemo;
    CondicaoMemo: TMemo;
    Label2: TLabel;
    ConsultarButton: TButton;
    GroupBox2: TGroupBox;
    ResultadoDBGrid: TDBGrid;
    ResultadoDataSource: TDataSource;
    DB1Data: TDB1Data;
    ResultadoProvider: TDataSetProvider;
    ResultadoClientDataSet: TClientDataSet;
    procedure ConsultarButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Exercicio3DMUn;

procedure TExercicio4Form.ConsultarButtonClick(Sender: TObject);
begin
  inherited;
  DB1Data.ListaCampos.Assign(CampoMemo.Lines);
  DB1Data.ListaTabelas.Assign(TabelaMemo.Lines);
  DB1Data.ListaCondicoes.Assign(CondicaoMemo.Lines);

  if ResultadoClientDataSet.Active then
    ResultadoClientDataSet.Close;
  ResultadoClientDataSet.Open;
end;

end.
