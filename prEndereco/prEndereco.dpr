program prEndereco;

uses
  Vcl.Forms,
  unit_CadBairro in 'unit_CadBairro.pas' {form_cadBairro},
  unit_CadCidade in 'unit_CadCidade.pas' {form_cadCidade},
  unit_CadEstado in 'unit_CadEstado.pas' {form_cadEstado},
  unit_CadPais in 'unit_CadPais.pas' {form_cadPais},
  unit_dados in 'unit_dados.pas' {dm_dados: TDataModule},
  unit_principal in 'unit_principal.pas' {form_principal},
  unit_CadLogradouro in 'unit_CadLogradouro.pas' {form_cadLogradouro},
  unit_Consulta in 'unit_Consulta.pas' {form_Consulta},
  Obj_Bairro in 'Obj_Bairro.pas',
  Obj_Cidade in 'Obj_Cidade.pas',
  Obj_Consulta in 'Obj_Consulta.pas',
  Obj_Estado in 'Obj_Estado.pas',
  Obj_Logradouro in 'Obj_Logradouro.pas',
  Obj_Pais in 'Obj_Pais.pas',
  Obj_Utilitario in 'Obj_Utilitario.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.CreateForm(Tdm_dados, dm_dados);
  Application.Run;
end.
