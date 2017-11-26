unit Exercicio4FormUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateFormUn, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Exercicio4Form: TExercicio4Form;

implementation

{$R *.dfm}

end.
