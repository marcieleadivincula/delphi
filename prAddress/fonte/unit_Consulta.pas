unit unit_Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.UITypes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tform_Consulta = class(TForm)
    pnlTop: TPanel;
    pnlBottom: TPanel;
    lblPesquisaPor: TLabel;
    lblNRegistros: TLabel;
    editPesquisaPor: TEdit;
    lblPesquisa: TLabel;
    lblRegistros: TLabel;
    spCarregar: TSpeedButton;
    spSair: TSpeedButton;
    dbGrid: TDBGrid;
    dsConsulta: TDataSource;
    qrConsulta: TFDQuery;
    procedure spCarregarClick(Sender: TObject);
    procedure spSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_Consulta: Tform_Consulta;

implementation

{$R *.dfm}

uses unit_Dados;

procedure Tform_Consulta.spCarregarClick(Sender: TObject);
begin
     ModalResult := mrOk;
end;

procedure Tform_Consulta.spSairClick(Sender: TObject);
begin
     ModalResult := mrCancel;
end;

end.
