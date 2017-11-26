unit Exercicio6FrameUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Exercicio6DLLIntUn;

type
  TExercicio6Frame = class(TFrame)
    ValorEdit: TLabeledEdit;
    TipoGroupBox: TGroupBox;
    CalculoRadioGroup: TRadioGroup;
    CalcularButton: TButton;
    ResultadoEdit: TLabeledEdit;
    procedure CalcularButtonClick(Sender: TObject);
  private
    FTipoGeometrico: TTipoGeometrico;
    procedure SetTipoGeometrico(const Value: TTipoGeometrico);
    function CarregarDLL(out aHandle: NativeUInt): ITipoGeometricoDLInterface;
    { Private declarations }
  public
    { Public declarations }
    property TipoGeometrico: TTipoGeometrico read FTipoGeometrico write SetTipoGeometrico;
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

{ TExercicio6Frame }

procedure TExercicio6Frame.CalcularButtonClick(Sender: TObject);
var
  _Handle: NativeUInt;
  _TipoGeometrico: ITipoGeometricoDLInterface;
begin
  _TipoGeometrico := Self.CarregarDLL(_Handle);
  try
    if (_Handle = 0) then
      raise Exception.Create('DLL não carregada.')
    else
    begin
      if (_TipoGeometrico <> nil) then
      begin
        if CalculoRadioGroup.ItemIndex = 0 then
          ResultadoEdit.Text := FloatToStr(_TipoGeometrico.GetArea( StrToFloatDef(ValorEdit.Text, 0)))
        else
          ResultadoEdit.Text := FloatToStr(_TipoGeometrico.GetPerimetro( StrToFloatDef(ValorEdit.Text, 0)));
      end;

    end;
  finally
    //if _Handle > 0 then
    //  FreeLibrary(_Handle)
  end;

end;

function TExercicio6Frame.CarregarDLL(out aHandle: NativeUInt): ITipoGeometricoDLInterface;
var
  _func : function (const aTipoGeometrico: TTipoGeometrico): ITipoGeometricoDLInterface; stdcall;
begin
  Result := nil;
  aHandle := LoadLibrary('Exercicio6DLL.dll');
  if aHandle <> 0 then
  begin
    @_func := GetProcAddress(aHandle, 'getInstance');
    if @_func <> nil then
      Result := _func(Self.FTipoGeometrico);
  end;
end;

constructor TExercicio6Frame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Self.FTipoGeometrico := tgQuadrado;
end;

procedure TExercicio6Frame.SetTipoGeometrico(const Value: TTipoGeometrico);
begin
  FTipoGeometrico := Value;
end;

end.
