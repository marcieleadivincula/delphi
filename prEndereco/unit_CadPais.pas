unit unit_CadPais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  Tform_cadPais = class(TForm)
    pnlCadPais: TPanel;
    pnlBtnsPais: TPanel;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    Label1: TLabel;
    lbPais: TLabel;
    editCodigo: TEdit;
    editPais: TEdit;
    spConsultar: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cadPais: Tform_cadPais;

implementation

{$R *.dfm}

procedure Tform_cadPais.btnSairClick(Sender: TObject);
begin
    close;
end;

end.
