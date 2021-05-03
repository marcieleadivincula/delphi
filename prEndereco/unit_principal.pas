unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  Tform_principal = class(TForm)
    MainMenu: TMainMenu;
    mCadastros: TMenuItem;
    mPais: TMenuItem;
    mEstado: TMenuItem;
    mCidade: TMenuItem;
    mBairro: TMenuItem;
    mLogradouro: TMenuItem;
    mEndereco: TMenuItem;
    Consultas1: TMenuItem;
    Endereoporcidade1: TMenuItem;
    Endereoporestado1: TMenuItem;
    Endereoporpas1: TMenuItem;
    procedure mCidadeClick(Sender: TObject);
    procedure mBairroClick(Sender: TObject);
    procedure mEstadoClick(Sender: TObject);
    procedure mPaisClick(Sender: TObject);
    procedure mLogradouroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_principal: Tform_principal;

implementation

{$R *.dfm}

uses unit_CadCidade, unit_CadBairro, unit_CadEstado, unit_CadPais,
  unit_CadLogradouro;

procedure Tform_principal.mBairroClick(Sender: TObject);
begin
    if (form_cadBairro = nil) then
      form_cadBairro := TForm_cadBairro.Create(self);

      form_cadBairro.ShowModal;
      FreeAndNil(form_cadBairro);
end;

procedure Tform_principal.mCidadeClick(Sender: TObject);
begin
    if (form_cadCidade = nil) then
      form_cadCidade := TForm_cadCidade.Create(self);

      form_cadCidade.ShowModal;
      FreeAndNil(form_cadCidade);
end;

procedure Tform_principal.mEstadoClick(Sender: TObject);
begin
    if (form_cadEstado = nil) then
      form_cadEstado := TForm_cadEstado.Create(self);

      form_cadEstado.ShowModal;
      FreeAndNil(form_cadEstado);
end;

procedure Tform_principal.mLogradouroClick(Sender: TObject);
begin
    if (form_cadLogradouro = nil) then
      form_cadLogradouro := TForm_cadLogradouro.Create(self);

      form_cadLogradouro.ShowModal;
      FreeAndNil(form_cadLogradouro);
end;

procedure Tform_principal.mPaisClick(Sender: TObject);
begin
     if (form_cadPais = nil) then
      form_cadPais := TForm_cadPais.Create(self);

      form_cadPais.ShowModal;
      FreeAndNil(form_cadPais);
end;

end.
