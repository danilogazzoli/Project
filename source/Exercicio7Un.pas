unit Exercicio7Un;

interface

uses Classes;

type
  TOnProgress = procedure (out CurrentPosition: integer) of object;

  IProgressInterface = interface
    procedure SetProgress(const aThreadId: TThreadID; const CurrentPosition: integer);
  end;

  TProgressThread = class (TThread)
  private
    FSleepTime: integer;
    FProgressInterface: IProgressInterface;
    procedure SetSleepTime(const Value: integer);
    procedure SetProgressInterface(const Value: IProgressInterface);
  public
    constructor Create(CreateSuspended: Boolean);
    procedure Execute; override;
    property SleepTime: integer read FSleepTime write SetSleepTime;
    property ProgressInterface: IProgressInterface read FProgressInterface write SetProgressInterface;
  end;


implementation

uses Windows;

{ TProgressThread }

constructor TProgressThread.Create(CreateSuspended: Boolean);
begin
  inherited Create(CreateSuspended);
  Self.FSleepTime := 0;
end;

procedure TProgressThread.Execute;
var
  _count: smallint;
begin
  inherited;
  Self.FreeOnTerminate := True;
  if (not Self.Terminated) then
  begin
    _count := 0;
    while _count <= 100 do
    begin
      inc(_count);
      SleepEx(Self.FSleepTime, False);
      if Self.FProgressInterface <> nil then
      begin
        Synchronize(procedure
                    begin
                      Self.FProgressInterface.SetProgress(Self.ThreadID, _count);
                    end);
      end;
    end;
  end;
end;

procedure TProgressThread.SetProgressInterface(const Value: IProgressInterface);
begin
  FProgressInterface := Value;
end;

procedure TProgressThread.SetSleepTime(const Value: integer);
begin
  FSleepTime := Value;
end;

end.
