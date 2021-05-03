unit unit_CadPais;

interface

uses
  Obj_Consulta, Obj_Utilitario, Obj_Pais,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

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
    procedure spConsultarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Pais: TObj_Pais;
  end;

var
  form_cadPais: Tform_cadPais;

implementation

{$R *.dfm}

procedure Tform_cadPais.btnSairClick(Sender: TObject);
begin
    Close;
end;

procedure Tform_cadPais.btnSalvarClick(Sender: TObject);
begin
    if (editPais.Text = '') then
        begin
            ShowMessage('Informe o país!');
            editPais.SetFocus;
            exit;
        end;

    Pais.setDescricao(editPais.Text);

    case (Pais.getStatus) of
        0: Pais.insert;
        1: Pais.update;
    end;

    self.FormActivate(self);
end;

procedure Tform_cadPais.FormActivate(Sender: TObject);
begin
     Pais.setStatus(0);
     TObj_Utilitario.LimparTela(self);
     editCodigo.SetFocus;
end;

procedure Tform_cadPais.FormCreate(Sender: TObject);
begin
     Pais := TObj_Pais.Create;
end;

procedure Tform_cadPais.FormDestroy(Sender: TObject);
begin
     Pais.Free;
end;

procedure Tform_cadPais.spConsultarClick(Sender: TObject);
var
   Consulta:TObj_Consulta;
   sAux:string;
begin
     editCodigo.SetFocus;
     Consulta := TObj_Consulta.Create;
     Consulta.setTitulo('Consulta de países');
     Consulta.setTextoSql('SELECT * FROM pais ORDER BY descricao');
     Consulta.setColunaRetorno(0);
     sAux := Consulta.getConsulta;

     if (sAux <> '') then
         begin
           editCodigo.Text := sAux;
           editPais.SetFocus;
         end
     else
        FormActivate(self);

end;

end.
