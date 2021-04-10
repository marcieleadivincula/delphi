program prEscolaridade;

uses
  Vcl.Forms,
  unit_principal in 'unit_principal.pas' {form_principal},
  unit_dados in 'unit_dados.pas' {dm_dados: TDataModule},
  unit_cadPessoa in 'unit_cadPessoa.pas' {form_cadPessoa},
  Classe_pessoa in 'Classe_pessoa.pas',
  Classe_ServicoPessoa in 'Classe_ServicoPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.CreateForm(Tdm_dados, dm_dados);
  Application.Run;
end.
