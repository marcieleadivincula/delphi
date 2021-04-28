unit unit_CadEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  Tform_cadEstado = class(TForm)
    pnlCadEstado: TPanel;
    pnlBtnsEstado: TPanel;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    lbCodigo: TLabel;
    lbSigla: TLabel;
    lbEstado: TLabel;
    editCodigo: TEdit;
    editSigla: TEdit;
    editEstado: TEdit;
    spConsultar: TSpeedButton;
    btnCancelar: TBitBtn;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cadEstado: Tform_cadEstado;

implementation

{$R *.dfm}

procedure Tform_cadEstado.btnSairClick(Sender: TObject);
begin
     close;
end;

end.
