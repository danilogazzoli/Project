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

uses Exercicio1FormUn;

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



end.
