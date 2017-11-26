program Project;

uses
  Vcl.Forms,
  MainFormUn in 'MainFormUn.pas' {MainForm},
  TemplateFormUn in 'TemplateFormUn.pas' {TemplateForm},
  Exercicio1FormUn in 'Exercicio1FormUn.pas' {Exercicio1Form},
  Exercicio1Un in 'Exercicio1Un.pas',
  Exercicio2Un in 'Exercicio2Un.pas',
  Exercicio2FormUn in 'Exercicio2FormUn.pas' {Exercicio2Form},
  Exercicio3DMUn in 'Exercicio3DMUn.pas' {Exercicio3DM: TDataModule},
  Exercicio6FormUn in 'Exercicio6FormUn.pas' {Exercicio6Form},
  Exercicio6FrameUn in 'Exercicio6FrameUn.pas' {Exercicio6Frame: TFrame},
  Exercicio6DLLIntUn in 'Exercicio6DLLIntUn.pas',
  Exercicio7FormUn in 'Exercicio7FormUn.pas' {Exercicio7Form},
  Exercicio7Un in 'Exercicio7Un.pas',
  Exercicio3FormUn in 'Exercicio3FormUn.pas' {Exercicio3Form},
  Exercicio3PesqUn in 'Exercicio3PesqUn.pas' {Exercicio3Pesquisa},
  Exercicio4FormUn in 'Exercicio4FormUn.pas' {Exercicio4Form},
  Exercicio5FormUn in 'Exercicio5FormUn.pas' {Exercicio5Form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TExercicio3DM, Exercicio3DM);
  Application.Run;
end.
