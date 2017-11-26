unit Exercicio6FormUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateFormUn, Vcl.StdCtrls,
  Vcl.ExtCtrls, Exercicio6FrameUn, Exercicio6DLLIntUn;

type
  TExercicio6Form = class(TTemplateForm)
    QuadradoFrame: TExercicio6Frame;
    CirculoFrame: TExercicio6Frame;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TExercicio6Form.FormCreate(Sender: TObject);
begin
  inherited;
  QuadradoFrame.TipoGeometrico := tgQuadrado;
  CirculoFrame.TipoGeometrico := tgCirculo;
end;

end.
