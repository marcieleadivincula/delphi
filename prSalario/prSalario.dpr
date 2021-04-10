program prSalario;

uses
  Vcl.Forms,
  unit_salario in 'unit_salario.pas' {form_salario},
  Funcionario in 'Funcionario.pas',
  Servico_Funcionario in 'Servico_Funcionario.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_salario, form_salario);
  Application.Run;
end.
