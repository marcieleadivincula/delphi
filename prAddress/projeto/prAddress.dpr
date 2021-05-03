program prAddress;

uses
  Vcl.Forms,
  unit_Principal in '..\fonte\unit_Principal.pas' {form_Principal},
  Obj_City in '..\classes\Obj_City.pas',
  unit_Dados in '..\fonte\unit_Dados.pas' {dm_Dados: TDataModule},
  unit_CadCity in '..\fonte\unit_CadCity.pas' {form_CadCity},
  Obj_Bairro in '..\classes\Obj_Bairro.pas',
  Obj_State in '..\classes\Obj_State.pas',
  Obj_Consulta in '..\classes\Obj_Consulta.pas',
  Obj_Country in '..\classes\Obj_Country.pas',
  Obj_Street in '..\classes\Obj_Street.pas',
  Obj_Utils in '..\classes\Obj_Utils.pas',
  unit_CadState in '..\fonte\unit_CadState.pas' {form_CadState},
  unit_Consulta in '..\fonte\unit_Consulta.pas' {form_Consulta},
  unit_CadBairro in '..\fonte\unit_CadBairro.pas' {form_CadBairro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_Principal, form_Principal);
  Application.CreateForm(Tdm_Dados, dm_Dados);
  Application.Run;
end.
