program prEndereco;

uses
  Vcl.Forms,
  Obj_Cidade in 'classes\Obj_Cidade.pas',
  unit_CadBairro in 'unit_CadBairro.pas' {form_cadBairro},
  unit_CadCidade in 'unit_CadCidade.pas' {form_cadCidade},
  unit_CadEstado in 'unit_CadEstado.pas' {form_cadEstado},
  unit_CadPais in 'unit_CadPais.pas' {form_cadPais},
  unit_dados in 'unit_dados.pas' {dm_dados: TDataModule},
  unit_principal in 'unit_principal.pas' {form_principal},
  unit_CadLogradouro in 'unit_CadLogradouro.pas' {form_cadLogradouro},
  Obj_Utilitario in 'classes\Obj_Utilitario.pas',
  Obj_Bairro in 'classes\Obj_Bairro.pas',
  Obj_Estado in 'classes\Obj_Estado.pas',
  unit_Consulta in 'unit_Consulta.pas' {form_Consulta},
  Obj_Logradouro in 'classes\Obj_Logradouro.pas',
  Obj_Pais in 'classes\Obj_Pais.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.CreateForm(Tdm_dados, dm_dados);
  Application.Run;
end.
