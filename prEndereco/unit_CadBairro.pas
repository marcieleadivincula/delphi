unit unit_CadBairro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  Tform_cadBairro = class(TForm)
    pnlCadBairro: TPanel;
    pnlBtnsBairro: TPanel;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    lbCodigo: TLabel;
    lbBairro: TLabel;
    editCodigo: TEdit;
    editBairro: TEdit;
    spConsultar: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cadBairro: Tform_cadBairro;

implementation

{$R *.dfm}

procedure Tform_cadBairro.btnSairClick(Sender: TObject);
begin
     close;
end;

end.
