program prPalavra;

uses
  Vcl.Forms,
  unit_palavra in 'unit_palavra.pas' {form_palavra},
  Objeto_Palavra in 'Objeto_Palavra.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_palavra, form_palavra);
  Application.Run;
end.
