unit Exercicio5FormUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateFormUn, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TExercicio5Form = class(TTemplateForm)
    LocalArquivoEdit: TLabeledEdit;
    SelecionarButton: TButton;
    Bevel1: TBevel;
    SalvarButton: TButton;
    SairButton: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

end.
