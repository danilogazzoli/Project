program Project;

uses
  Vcl.Forms,
  MainFormUn in 'MainFormUn.pas' {MainForm},
  TemplateFormUn in 'TemplateFormUn.pas' {TemplateForm},
  Exercicio1FormUn in 'Exercicio1FormUn.pas' {Exercicio1Form},
  Exercicio1Un in 'Exercicio1Un.pas',
  Exercicio2Un in 'Exercicio2Un.pas',
  Exercicio2FormUn in 'Exercicio2FormUn.pas' {Exercicio2Form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
