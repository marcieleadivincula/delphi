program prEndereco;

uses
  Vcl.Forms,
  unit_principal in '..\fonte\unit_principal.pas' {form_principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.Run;
end.
