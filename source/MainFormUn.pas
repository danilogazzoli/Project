unit MainFormUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.UITypes;

type
  TMainForm = class(TForm)
    mnuPrincipal: TMainMenu;
    Exerccios1: TMenuItem;
    Exerccio11: TMenuItem;
    Exerccio21: TMenuItem;
    Exerccio31: TMenuItem;
    Exerccio41: TMenuItem;
    Exercio51: TMenuItem;
    Exerccio61: TMenuItem;
    Exerccio71: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Exerccio11Click(Sender: TObject);
    procedure Exerccio21Click(Sender: TObject);
    procedure Exerccio61Click(Sender: TObject);
    procedure Exerccio71Click(Sender: TObject);
    procedure Exerccio31Click(Sender: TObject);
    procedure Exercio51Click(Sender: TObject);
    procedure Exerccio41Click(Sender: TObject);
  private
    procedure HandleApplicationExceptions(Sender: TObject; E: Exception);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses Exercicio1FormUn, Exercicio2FormUn, Exercicio6FormUn, Exercicio7FormUn,
  Exercicio3FormUn, Exercicio5FormUn, Exercicio4FormUn;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  self.WindowState := wsMaximized;
  Application.OnException := HandleApplicationExceptions;
  ReportMemoryLeaksOnShutdown := (DebugHook <> 0);
end;

procedure TMainForm.HandleApplicationExceptions(Sender: TObject; E: Exception);
begin
   MessageDlg('Houve um erro: ' + E.Message, mtWarning, [mbOk],0 )
end;

procedure TMainForm.Exerccio11Click(Sender: TObject);
var
  Ex1Form: TExercicio1Form;
begin
   Ex1Form := TExercicio1Form.Create(Self);
   try
     Ex1Form.ShowModal;
   finally
     Ex1Form.Free;
   end;
end;

procedure TMainForm.Exerccio21Click(Sender: TObject);
var
  Ex2Form: TExercicio2Form;
begin
   Ex2Form := TExercicio2Form.Create(Self);
   try
     Ex2Form.ShowModal;
   finally
     Ex2Form.Free;
   end;
end;

procedure TMainForm.Exerccio31Click(Sender: TObject);
var
  Exercicio3Form: TExercicio3Form;
begin
 Exercicio3Form := TExercicio3Form.Create(Self);
  try
    Exercicio3Form.ShowModal;
  finally
    Exercicio3Form.Free;
  end;
end;

procedure TMainForm.Exerccio41Click(Sender: TObject);
var
  Exercicio4Form : TExercicio4Form;
begin
  Exercicio4Form := TExercicio4Form.Create(Self);
  try
    Exercicio4Form.ShowModal;
  finally
    Exercicio4Form.Free;
  end;
end;

procedure TMainForm.Exerccio61Click(Sender: TObject);
var
  Exercicio6Form: TExercicio6Form;
begin
  Exercicio6Form := TExercicio6Form.Create(Self);
  try
    Exercicio6Form.ShowModal;
  finally
    Exercicio6Form.Free;
  end;
end;

procedure TMainForm.Exerccio71Click(Sender: TObject);
var
  Exercicio7Form: TExercicio7Form;
begin
  Exercicio7Form := TExercicio7Form.Create(Self);
  try
    Exercicio7Form.ShowModal;
  finally
    Exercicio7Form.Free;
  end;
end;

procedure TMainForm.Exercio51Click(Sender: TObject);
var
  Exercicio5Form : TExercicio5Form;
begin
  Exercicio5Form := TExercicio5Form.Create(Self);
  try
    Exercicio5Form.ShowModal;
  finally
    Exercicio5Form.Free;
  end;
end;

end.
