unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Classe_ServicoPessoa;

type
  Tform_principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Consultas1: TMenuItem;
    Pessoas1: TMenuItem;
    N1: TMenuItem;
    Resultados1: TMenuItem;
    procedure Pessoas1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ServicoPessoa: TServicoPessoa;
  end;

var
  form_principal: Tform_principal;

implementation

{$R *.dfm}

uses unit_dados, unit_cadPessoa;

procedure Tform_principal.FormCreate(Sender: TObject);
begin
     ServicoPessoa := TServicoPessoa.Create;
end;

procedure Tform_principal.Pessoas1Click(Sender: TObject);
begin
   if (form_cadPessoa = nil) then
      form_cadPessoa := Tform_cadPessoa.Create(self);

   form_cadPessoa.ShowModal;
   FreeAndNil(form_cadPessoa);
end;

end.
