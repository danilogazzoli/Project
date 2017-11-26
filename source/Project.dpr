program Project;

uses
  Vcl.Forms,
  MainFormUn in 'MainFormUn.pas' {MainForm},
  TemplateFormUn in 'TemplateFormUn.pas' {TemplateForm},
  Exercicio1FormUn in 'Exercicio1FormUn.pas' {Exercicio1Form},
  Exercicio1Un in 'Exercicio1Un.pas',
  Exercicio2Un in 'Exercicio2Un.pas',
  Exercicio2FormUn in 'Exercicio2FormUn.pas' {Exercicio2Form},
  Exercicio3DMUn in 'Exercicio3DMUn.pas' {DataModule1: TDataModule},
  Exercicio6FormUn in 'Exercicio6FormUn.pas' {Exercicio6Form},
  Exercicio6FrameUn in 'Exercicio6FrameUn.pas' {Exercicio6Frame: TFrame},
  Exercicio6DLLIntUn in 'Exercicio6DLLIntUn.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
