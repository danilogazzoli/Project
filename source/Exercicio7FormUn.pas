unit Exercicio7FormUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateFormUn, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, Exercicio7Un, System.Generics.Collections, System.UITypes;

type
  TProgressBar = class(Vcl.ComCtrls.TProgressBar)
  private
    FThreadId: TThreadId;
    procedure SetThreadId(const Value: TThreadId);
  public
    property ThreadId: TThreadId read FThreadId write SetThreadId;
  end;

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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FThreadList: TThreadList<TProgressThread>;
    procedure TerminateThread(Sender: TObject);
    procedure SetupThread(aThread: TProgressThread; aEdit: TLabeledEdit; aProgressBar: TProgressBar);
    { Private declarations }
  public
    { Public declarations }
    procedure SetProgress(const aThreadId: TThreadID; const CurrentPosition: integer);
  end;

implementation

{$R *.dfm}


{ TExercicio7Form }

procedure TExercicio7Form.SetupThread(aThread: TProgressThread; aEdit: TLabeledEdit; aProgressBar: TProgressBar);
begin
  aThread.ProgressInterface := Self;
  aThread.SleepTime := StrToIntDef(aEdit.Text, 0);
  aThread.OnTerminate := TerminateThread;
  aProgressBar.ThreadId := aThread.ThreadID;
end;

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
  Self.SetupThread(_Thread1, Thread1Edit, Thread1ProgressBar);

  _Thread2 := TProgressThread.Create(True);
  Self.SetupThread(_Thread2, Thread2Edit, Thread2ProgressBar);

  Thread1Label.Caption := 'Thread 1 PID: ' + IntToStr(_Thread1.ThreadID);
  Thread2Label.Caption := 'Thread 2 PID: ' + IntToStr(_Thread2.ThreadID);

  Self.FThreadList.Add(_Thread1);
  Self.FThreadList.Add(_Thread2);

  _Thread1.Start;
  _Thread2.Start;
end;

procedure TExercicio7Form.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  _List : TList<TProgressThread>;
  _Thread: TProgressThread;
begin
  inherited;
  CanClose := True;
  _List := Self.FThreadList.LockList;
  try
    for _Thread in _List do
    begin
      if (_Thread <> nil) and (not _Thread.Finished) then
        CanClose := False;
    end;
  finally
    Self.FThreadList.UnlockList;
  end;
  if not CanClose then
    MessageDlg('Ainda há thread(s) rodando.', mtInformation, [mbOk], 0);
end;

procedure TExercicio7Form.FormCreate(Sender: TObject);
begin
  inherited;
  Self.FThreadList := TThreadList<TProgressThread>.Create;
end;

procedure TExercicio7Form.FormDestroy(Sender: TObject);
begin
  inherited;
  Self.FThreadList.Free;
end;

procedure TExercicio7Form.SairButtonClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TExercicio7Form.SetProgress(const aThreadId: TThreadID;
  const CurrentPosition: integer);
begin
  if aThreadId = Thread1ProgressBar.ThreadId then
    Thread1ProgressBar.Position := Thread1ProgressBar.Position + 1
  else if aThreadId = Thread2ProgressBar.ThreadId then
    Thread2ProgressBar.Position := Thread2ProgressBar.Position + 1;
end;

procedure TExercicio7Form.TerminateThread(Sender: TObject);
begin
  ShowMessage(Format('Thread PID %d terminada', [TThread(Sender).ThreadID]));
end;

{ TProgressBar }

procedure TProgressBar.SetThreadId(const Value: TThreadId);
begin
  FThreadId := Value;
end;

end.
