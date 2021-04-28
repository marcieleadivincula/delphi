unit unit_Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tform_Consulta = class(TForm)
    pnlTopConsulta: TPanel;
    pnlBottomConsulta: TPanel;
    lbPesquisaPor: TLabel;
    editPesquisa: TEdit;
    lbPesquisa: TLabel;
    lbNRegistros: TLabel;
    lbRegistros: TLabel;
    spCarregar: TSpeedButton;
    spSair: TSpeedButton;
    dbGridConsulta: TDBGrid;
    dsConsulta: TDataSource;
    qrConsulta: TFDQuery;
    procedure spSairClick(Sender: TObject);
    procedure spCarregarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_Consulta: Tform_Consulta;

implementation

{$R *.dfm}

uses unit_dados;

procedure Tform_Consulta.spCarregarClick(Sender: TObject);
begin
     ModalResult := mrOk;
end;

procedure Tform_Consulta.spSairClick(Sender: TObject);
begin
     ModalResult := mrCancel;
end;

end.
