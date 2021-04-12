unit unit_cadPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  Tform_cadPessoa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lbIdade: TLabel;
    editIdade: TEdit;
    lbGrauEscolaridade: TLabel;
    cbGrauEscolaridade: TComboBox;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cadPessoa: Tform_cadPessoa;

implementation

{$R *.dfm}

uses Classe_pessoa, Classe_ServicoPessoa, unit_principal;

procedure Tform_cadPessoa.btnCancelarClick(Sender: TObject);
begin
   editIdade.Clear;
   cbGrauEscolaridade.ItemIndex := 0;
   editIdade.SetFocus;
end;

procedure Tform_cadPessoa.btnSairClick(Sender: TObject);
begin
    close;
end;

procedure Tform_cadPessoa.btnSalvarClick(Sender: TObject);
  var
    pessoa: TPessoa;
begin
    if (editIdade.Text = '') then
       begin
         ShowMessage('O campo idade não pode estar vazio!');
         editIdade.SetFocus();
         exit;
       end;

    if (cbGrauEscolaridade.ItemIndex = 0) then
       begin
         ShowMessage('O grau de escolaridade deve ser selecionado!');
         cbGrauEscolaridade.SetFocus();
         exit;
       end;

    pessoa := TPessoa.Create;
    pessoa.setIdade(StrToInt(editIdade.Text));
    pessoa.setGrauEscolaridade(cbGrauEscolaridade.ItemIndex);
    form_principal.ServicoPessoa.setLista(pessoa);

    self.btnCancelarClick(btnCancelar);
end;

procedure Tform_cadPessoa.FormActivate(Sender: TObject);
begin
    self.btnCancelarClick(btnCancelar);
end;

end.
