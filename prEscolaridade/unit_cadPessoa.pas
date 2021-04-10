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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cadPessoa: Tform_cadPessoa;

implementation

{$R *.dfm}

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

procedure Tform_cadPessoa.FormActivate(Sender: TObject);
begin
    self.btnCancelarClick(btnCancelar);
end;

end.
