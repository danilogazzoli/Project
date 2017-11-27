unit Exercicio1FormUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateFormUn, Vcl.StdCtrls, System.UITypes;

type
  TExercicio1Form = class(TTemplateForm)
    GroupBox1: TGroupBox;
    NomeEdit: TEdit;
    InserirButton: TButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    ExibirButton: TButton;
    ExibirListBox: TListBox;
    RemoverPrimeiroButton: TButton;
    RemoverUltimoButton: TButton;
    ContarButton: TButton;
    SairButton: TButton;
    procedure InserirButtonClick(Sender: TObject);
    procedure ExibirButtonClick(Sender: TObject);
    procedure RemoverPrimeiroButtonClick(Sender: TObject);
    procedure RemoverUltimoButtonClick(Sender: TObject);
    procedure ContarButtonClick(Sender: TObject);
    procedure SairButtonClick(Sender: TObject);
  private
    procedure DisplayNames;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Exercicio1Form: TExercicio1Form;

implementation

{$R *.dfm}

uses Exercicio1Un;

procedure TExercicio1Form.ContarButtonClick(Sender: TObject);
begin
  inherited;
  MessageDlg(Format('O número de itens é : %d.', [TExercicio1.getInstance.CountItems]), mtInformation, [mbOk], 0);
end;

procedure TExercicio1Form.DisplayNames;
var
  _auxList: TStringList;
begin
  inherited;
  _auxList := TStringList.Create;
  try
    TExercicio1.getInstance.DisplayNames(_auxList);
    ExibirListBox.Items.Assign(_auxList);
  finally
    _auxList.Free;
  end;
end;

procedure TExercicio1Form.ExibirButtonClick(Sender: TObject);
begin
  Self.DisplayNames;
end;

procedure TExercicio1Form.InserirButtonClick(Sender: TObject);
begin
  inherited;
  TExercicio1.getInstance.AddName(NomeEdit.Text);
  NomeEdit.Clear;
  NomeEdit.SetFocus;
  Self.DisplayNames;
end;

procedure TExercicio1Form.RemoverPrimeiroButtonClick(Sender: TObject);
begin
  inherited;
  TExercicio1.getInstance.RemoveFirstInserted;
  Self.DisplayNames;
end;

procedure TExercicio1Form.RemoverUltimoButtonClick(Sender: TObject);
begin
  inherited;
  TExercicio1.getInstance.RemoveLastInserted;
  Self.DisplayNames;
end;

procedure TExercicio1Form.SairButtonClick(Sender: TObject);
begin
  inherited;
  Close;
end;

initialization
  RegisterClass(TExercicio1Form);

finalization
  UnregisterClass(TExercicio1Form);

end.
