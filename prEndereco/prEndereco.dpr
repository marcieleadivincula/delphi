program prEndereco;

uses
  Vcl.Forms,
  unit_endereco in 'unit_endereco.pas' {form_principal},
  dm_dados in 'dm_dados.pas' {DataModule1: TDataModule},
  unit_cidade in 'unit_cidade.pas' {form_cadCidade},
  unit_estado in 'unit_estado.pas' {form_cadEstado},
  unit_bairro in 'unit_bairro.pas' {form_cadBairro},
  unit_pais in 'unit_pais.pas' {form_cadPais},
  Endereco in 'Endereco.pas',
  Estado in 'Estado.pas',
  Pais in 'Pais.pas',
  Cidade in 'Cidade.pas',
  Bairro in 'Bairro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tform_cadCidade, form_cadCidade);
  Application.CreateForm(Tform_cadEstado, form_cadEstado);
  Application.CreateForm(Tform_cadBairro, form_cadBairro);
  Application.CreateForm(Tform_cadPais, form_cadPais);
  Application.Run;
end.
