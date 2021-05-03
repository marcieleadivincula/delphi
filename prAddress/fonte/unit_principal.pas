unit unit_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  Tform_Principal = class(TForm)
    MainMenu: TMainMenu;
    Cadastros1: TMenuItem;
    Consultas1: TMenuItem;
    Pas1: TMenuItem;
    Estado1: TMenuItem;
    Cidade1: TMenuItem;
    Bairro1: TMenuItem;
    Logradouro1: TMenuItem;
    Endereo1: TMenuItem;
    EndereoporBairro1: TMenuItem;
    EndereoporCidade1: TMenuItem;
    EndereoporEstado1: TMenuItem;
    EndereoporPas1: TMenuItem;
    procedure Cidade1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_Principal: Tform_Principal;

implementation

{$R *.dfm}

uses unit_CadCity;

procedure Tform_Principal.Cidade1Click(Sender: TObject);
begin
     if (form_CadCity = nil) then
         form_CadCity := Tform_CadCity.Create(self);

     form_CadCity.ShowModal;
     FreeAndNil(form_CadCity);
end;

end.
