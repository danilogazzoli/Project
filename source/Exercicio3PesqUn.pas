unit Exercicio3PesqUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateFormUn, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, DBClient;

type
  TExercicio3Pesquisa = class(TTemplateForm)
    NomeEdit: TLabeledEdit;
    PesquisarButton: TButton;
    ResultadoDBGrid: TDBGrid;
    SelecionarButton: TButton;
    CancelarButton: TButton;
    PesquisaDataSource: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure PesquisarButtonClick(Sender: TObject);
    procedure SelecionarButtonClick(Sender: TObject);
    procedure CancelarButtonClick(Sender: TObject);
  private
    FPesquisaClientDataSet: TClientDataSet;
    FIdPesquisa: integer;
    FPesquisaFieldName: string;
    procedure SetPesquisaClientDataSet(const Value: TClientDataSet);
    procedure SetPesquisaFieldName(const Value: string);
    procedure ExecuteSearch(const aSearchValue: string);
    { Private declarations }
  public
    { Public declarations }
    property PesquisaClientDataSet: TClientDataSet read FPesquisaClientDataSet write SetPesquisaClientDataSet;
    function getIdPesquisa: integer;
    property PesquisaFieldName: string read FPesquisaFieldName write SetPesquisaFieldName;
  end;


implementation

{$R *.dfm}

{ TExercicio3Pesquisa }

procedure TExercicio3Pesquisa.FormCreate(Sender: TObject);
begin
  inherited;
  Self.FIdPesquisa := -1;
end;

function TExercicio3Pesquisa.getIdPesquisa: integer;
begin
  Result := Self.FIdPesquisa;
end;

procedure TExercicio3Pesquisa.CancelarButtonClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;
  Close;
end;

procedure TExercicio3Pesquisa.ExecuteSearch(const aSearchValue: string);
var
  _OriginalCommandText : string;
begin
  if (Self.FPesquisaClientDataSet <> nil) and (Self.FPesquisaFieldName <> EmptyStr) then
  begin
    _OriginalCommandText := FPesquisaClientDataSet.CommandText;
    try
      FPesquisaClientDataSet.CommandText := _OriginalCommandText +
        ' WHERE ' + Self.FPesquisaFieldName + ' LIKE ' + QuotedStr('%' + aSearchValue + '%');
      FPesquisaClientDataSet.Close;
      FPesquisaClientDataSet.Open;
    finally
      FPesquisaClientDataSet.CommandText := _OriginalCommandText;
    end;
  end;
end;

procedure TExercicio3Pesquisa.PesquisarButtonClick(Sender: TObject);
begin
  inherited;
  Self.ExecuteSearch(NomeEdit.Text);
end;

procedure TExercicio3Pesquisa.SelecionarButtonClick(Sender: TObject);
begin
  inherited;
  //
  Self.FIdPesquisa := -1;
  if (not Self.FPesquisaClientDataSet.Active) or (Self.FPesquisaClientDataSet.IsEmpty) then
  begin
    MessageDlg('Não há resultado da pesquisa para selecionar.', mtInformation, [mbOk], 0)
  end
  else
  begin
    Self.FIdPesquisa := FPesquisaClientDataSet.Fields[0].AsInteger;
    Self.ModalResult := mrOk;
    Self.Close;
  end;
end;

procedure TExercicio3Pesquisa.SetPesquisaClientDataSet(
  const Value: TClientDataSet);
begin
  FPesquisaClientDataSet := Value;
  PesquisaDataSource.DataSet := Value;
  Self.ExecuteSearch('NULL');
end;

procedure TExercicio3Pesquisa.SetPesquisaFieldName(const Value: string);
begin
  FPesquisaFieldName := Value;
  Self.ExecuteSearch('NULL');
end;

end.
