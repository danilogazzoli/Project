unit Exercicio7FormUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateFormUn, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, Exercicio7Un;

type
  TExercicio7Form = class(TTemplateForm, IProgressInterface)
    GroupBox1: TGroupBox;
    ExecutarButton: TButton;
    SairButton: TButton;
    Thread1ProgressBar: TProgressBar;
    Thread2ProgressBar: TProgressBar;
    Thread1Label: TLabel;
    Thread2Label: TLabel;
    Thread1Edit: TLabeledEdit;
    Thread2Edit: TLabeledEdit;
    procedure ExecutarButtonClick(Sender: TObject);
    procedure SairButtonClick(Sender: TObject);
  private
    procedure TerminateThread(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    procedure SetProgress(const aThreadId: TThreadID; const CurrentPosition: integer);
  end;

implementation

{$R *.dfm}


{ TExercicio7Form }

procedure TExercicio7Form.ExecutarButtonClick(Sender: TObject);
var
  _Thread1, _Thread2: TProgressThread;
begin
  inherited;
  Thread1ProgressBar.Position := 0;
  Thread1ProgressBar.Max := 100;

  Thread2ProgressBar.Position := 0;
  Thread2ProgressBar.Max := 100;

  _Thread1 := TProgressThread.Create(True);
  _Thread1.ProgressInterface := Self;
  _Thread1.SleepTime := StrToIntDef(Thread1Edit.Text, 0);
  Thread1ProgressBar.Tag := _Thread1.ThreadID;

  _Thread2 := TProgressThread.Create(True);
  _Thread2.ProgressInterface := Self;
  _Thread2.SleepTime := StrToIntDef(Thread2Edit.Text, 0);
  Thread2ProgressBar.Tag := _Thread2.ThreadID;

  _Thread1.OnTerminate := TerminateThread;
  _Thread2.OnTerminate := TerminateThread;

  Thread1Label.Caption := 'Thread 1 PID: ' + IntToStr(_Thread1.ThreadID);
  Thread2Label.Caption := 'Thread 2 PID: ' + IntToStr(_Thread2.ThreadID);

  _Thread1.Start;
  _Thread2.Start;
end;

procedure TExercicio7Form.SairButtonClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TExercicio7Form.SetProgress(const aThreadId: TThreadID;
  const CurrentPosition: integer);
begin
  if aThreadId = Thread1ProgressBar.Tag then
    Thread1ProgressBar.Position := Thread1ProgressBar.Position + 1
  else if aThreadId = Thread2ProgressBar.Tag then
    Thread2ProgressBar.Position := Thread2ProgressBar.Position + 1;
end;

procedure TExercicio7Form.TerminateThread(Sender: TObject);
begin
  ShowMessage(Format('Thread PID %d terminada', [TThread(Sender).ThreadID]));
end;

end.
