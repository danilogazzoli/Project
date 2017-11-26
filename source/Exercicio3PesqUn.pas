unit Exercicio3PesqUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateFormUn, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TExercicio3Pesquisa = class(TTemplateForm)
    NomeEdit: TLabeledEdit;
    PesquisarButton: TButton;
    DBGrid1: TDBGrid;
    SelecionarButton: TButton;
    CancelarButton: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Exercicio3Pesquisa: TExercicio3Pesquisa;

implementation

{$R *.dfm}

end.
