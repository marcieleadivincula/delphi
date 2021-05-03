unit unit_CadLogradouro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tform_cadLogradouro = class(TForm)
    pnlBtnsLogradouro: TPanel;
    pnlCadLogradouro: TPanel;
    lbCodigo: TLabel;
    lbLogradouro: TLabel;
    editCodigo: TEdit;
    editLogradouro: TEdit;
    spConsultar: TSpeedButton;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cadLogradouro: Tform_cadLogradouro;

implementation

{$R *.dfm}

procedure Tform_cadLogradouro.btnSairClick(Sender: TObject);
begin
     close;
end;

end.
