unit Exercicio3FormUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateFormUn, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

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
    procedure SairButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

procedure TExercicio3Form.SairButtonClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
