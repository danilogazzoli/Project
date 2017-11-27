unit Exercicio3FormUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateFormUn, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, System.Actions, Vcl.ActnList;

type
  TExercicio3Form = class(TTemplateForm)
    CadastroGroupBox: TGroupBox;
    GroupBox1: TGroupBox;
    NovoButton: TButton;
    SalvarButton: TButton;
    EditarButton: TButton;
    ExcluirButton: TButton;
    PesquisarButton: TButton;
    SairButton: TButton;
    NomeEdit: TDBEdit;
    LogradouroEdit: TDBEdit;
    BairroEdit: TDBEdit;
    CidadeEdit: TDBEdit;
    UFEdit: TDBEdit;
    PesquisarCidadeButton: TButton;
    Nome: TLabel;
    LogradouroLabel: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    CadastroDataSource: TDataSource;
    CadastroActionList: TActionList;
    NovoAction: TAction;
    SalvarAction: TAction;
    EditarAction: TAction;
    ExcluirAction: TAction;
    PesquisarAction: TAction;
    SairAction: TAction;
    procedure PesquisarCidadeButtonClick(Sender: TObject);
    procedure NovoActionExecute(Sender: TObject);
    procedure SairActionExecute(Sender: TObject);
    procedure SalvarActionExecute(Sender: TObject);
    procedure ExcluirActionExecute(Sender: TObject);
    procedure EditarActionExecute(Sender: TObject);
    procedure NovoActionUpdate(Sender: TObject);
    procedure SalvarActionUpdate(Sender: TObject);
    procedure EditarActionUpdate(Sender: TObject);
    procedure ExcluirActionUpdate(Sender: TObject);
    procedure PesquisarActionUpdate(Sender: TObject);
    procedure SairActionUpdate(Sender: TObject);
    procedure PesquisarButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

uses Exercicio3DMUn, Exercicio3PesqUn;

procedure TExercicio3Form.EditarActionExecute(Sender: TObject);
begin
  inherited;
  Exercicio3DM.PessoaClientDataSet.Edit;
end;

procedure TExercicio3Form.EditarActionUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled := (Exercicio3DM.CidadeClientDataSet.Active = True) and
                                 (not Exercicio3DM.CidadeClientDataSet.IsEmpty)
end;

procedure TExercicio3Form.ExcluirActionExecute(Sender: TObject);
begin
  inherited;
  Exercicio3DM.PessoaClientDataSet.Delete;
  Exercicio3DM.PessoaClientDataSet.ApplyUpdates(0);
end;

procedure TExercicio3Form.ExcluirActionUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled := EditarAction.Enabled;
end;

procedure TExercicio3Form.NovoActionExecute(Sender: TObject);
begin
  inherited;
  Exercicio3DM.PessoaClientDataSet.Insert;
end;

procedure TExercicio3Form.NovoActionUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled := (Exercicio3DM.CidadeClientDataSet.Active = False) or
                                 (Exercicio3DM.CidadeClientDataSet.IsEmpty);
end;

procedure TExercicio3Form.PesquisarActionUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled := NovoAction.Enabled;
end;

procedure TExercicio3Form.PesquisarButtonClick(Sender: TObject);
var
  _Pesq: TExercicio3Pesquisa;
begin
  inherited;
  _Pesq := TExercicio3Pesquisa.Create(Self);
  try
    _Pesq.PesquisaFieldName := 'nmpessoa';
    _Pesq.PesquisaFieldName := 'cdpessoa';
    _Pesq.ShowModal;
    if (_Pesq.ModalResult = mrOk) then
    begin
    end;
  finally
    _Pesq.Free;
  end;
end;

procedure TExercicio3Form.PesquisarCidadeButtonClick(Sender: TObject);
var
  _Pesq: TExercicio3Pesquisa;
begin
  inherited;
  _Pesq := TExercicio3Pesquisa.Create(Self);
  try
    _Pesq.PesquisaFieldName := 'nmcidade';
    _Pesq.PesquisaFieldName := 'cdcidade';
    _Pesq.ShowModal;
    if (_Pesq.ModalResult = mrOk) then
    begin
      if not (Exercicio3DM.PessoaClientDataSet.State in dsEditModes) then
        Exercicio3DM.PessoaClientDataSet.Edit;
      Exercicio3DM.PessoaClientDataSet.FieldByName('cdcidade').AsInteger := _Pesq.getIdPesquisa;
      Exercicio3DM.SelectCidadeById(_Pesq.getIdPesquisa);
    end;
  finally
    _Pesq.Free;
  end;
end;

procedure TExercicio3Form.SairActionExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TExercicio3Form.SairActionUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled := NovoAction.Enabled;
end;

procedure TExercicio3Form.SalvarActionExecute(Sender: TObject);
begin
  inherited;
  Exercicio3DM.PessoaClientDataSet.Post;
  Exercicio3DM.PessoaClientDataSet.ApplyUpdates(0);
end;

procedure TExercicio3Form.SalvarActionUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled := (Exercicio3DM.CidadeClientDataSet.Active = True) and
                                 (Exercicio3DM.CidadeClientDataSet.State in dsEditModes );
end;

initialization
  RegisterClass(TExercicio3Form);

finalization
  UnregisterClass(TExercicio3Form);


end.
