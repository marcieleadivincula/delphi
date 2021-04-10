unit unit_endereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  Tform_principal = class(TForm)
    MainMenu1: TMainMenu;
    mCadastros: TMenuItem;
    mPais: TMenuItem;
    mEstado: TMenuItem;
    mCidade: TMenuItem;
    mBairro: TMenuItem;
    mLogradouro: TMenuItem;
    mEndereco: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_principal: Tform_principal;

implementation

{$R *.dfm}

end.
