unit unit_CadState;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tform_CadState = class(TForm)
    pnlBottom: TPanel;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    pnlTop: TPanel;
    editState: TEdit;
    lbState: TLabel;
    editCode: TEdit;
    lbCode: TLabel;
    spConsultar: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_CadState: Tform_CadState;

implementation

{$R *.dfm}

end.
