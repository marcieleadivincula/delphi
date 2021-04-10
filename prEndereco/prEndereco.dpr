program prEndereco;

uses
  Vcl.Forms,
  unit_endereco in 'unit_endereco.pas' {form_principal},
  dm_dados in 'dm_dados.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
