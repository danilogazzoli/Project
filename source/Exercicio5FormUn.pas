unit Exercicio5FormUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateFormUn, Vcl.StdCtrls,
  Vcl.ExtCtrls, Exercicio5Un, System.UITypes;

type
  TExercicio5Form = class(TTemplateForm)
    LocalArquivoEdit: TLabeledEdit;
    SelecionarButton: TButton;
    Bevel1: TBevel;
    SalvarButton: TButton;
    SairButton: TButton;
    procedure SairButtonClick(Sender: TObject);
    procedure SalvarButtonClick(Sender: TObject);
    procedure SelecionarButtonClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

uses Exercicio3DMUn, FileCtrl;

const
  SELDIRHELP = 1000;

procedure TExercicio5Form.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  CanClose := SairButton.Enabled;
end;

procedure TExercicio5Form.SairButtonClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TExercicio5Form.SalvarButtonClick(Sender: TObject);
var
  _GenerateFile: TGenerateFile;
begin
  inherited;
  if (LocalArquivoEdit.Text = EmptyStr) or
    (not DirectoryExists(LocalArquivoEdit.Text)) then
  begin
    MessageDlg('Verifique o diretório antes de prosseguir.', mtWarning, [mbOk], 0);
    LocalArquivoEdit.SetFocus;
    Exit;
  end;

  SairButton.Enabled := False;
  try
    _GenerateFile := TGenerateFile.Create;
    try
      Exercicio3DM.ArquivoClientDataSet.Open;
      if Exercicio3DM.ArquivoClientDataSet.Active then
        _GenerateFile.ExportRecords(LocalArquivoEdit.Text, Exercicio3DM.ArquivoClientDataSet);
    finally
      _GenerateFile.Free;
    end;
  finally
    SairButton.Enabled := True;
  end;
end;

procedure TExercicio5Form.SelecionarButtonClick(Sender: TObject);
var
  Dir: string;
begin
  Dir :=  ExtractFilePath(Application.ExeName);
  if FileCtrl.SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    LocalArquivoEdit.Text := Dir;
end;


initialization
  RegisterClass(TExercicio5Form);

finalization
  UnregisterClass(TExercicio5Form);


end.
