unit unit_CadBairro;

interface

uses
  Obj_Utilitario, Obj_Consulta, Obj_Bairro, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

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
    procedure spConsultarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure editCodigoEnter(Sender: TObject);
    procedure editCodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Bairro: TObj_Bairro;
  end;

var
  form_cadBairro: Tform_cadBairro;

implementation

{$R *.dfm}

procedure Tform_cadBairro.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tform_cadBairro.btnSalvarClick(Sender: TObject);
begin
     if (editBairro.Text = '') then
        begin
            ShowMessage('Informe o bairro!');
            editBairro.SetFocus;
            exit;
        end;

    Bairro.setDescricao(editBairro.Text);

    case (Bairro.getStatus) of
        0: Bairro.insert;
        1: Bairro.update;
    end;

    self.FormActivate(self);
end;

procedure Tform_cadBairro.editCodigoEnter(Sender: TObject);
begin
     Bairro.setStatus(0); //habilitado para inserir
end;

procedure Tform_cadBairro.editCodigoExit(Sender: TObject);
begin
     if (editCodigo.Text = '') then
        exit;

     Bairro.setCodigo(StrToInt(editCodigo.Text));

     if (Bairro.select) then
        begin
            editBairro.Text := Bairro.getDescricao;
            Bairro.setStatus(1);
        end;
end;

procedure Tform_cadBairro.FormActivate(Sender: TObject);
begin
     Bairro.setStatus(0);
     TObj_Utilitario.LimparTela(self);
     editCodigo.SetFocus;
end;

procedure Tform_cadBairro.FormCreate(Sender: TObject);
begin
    Bairro := TObj_Bairro.Create;
end;

procedure Tform_cadBairro.FormDestroy(Sender: TObject);
begin
     Bairro.Free;
end;

procedure Tform_cadBairro.spConsultarClick(Sender: TObject);
var
   Consulta:TObj_Consulta;
   sAux:string;
begin
     editCodigo.SetFocus;
     Consulta := TObj_Consulta.Create;
     Consulta.setTitulo('Consulta de bairros');
     Consulta.setTextoSql('SELECT * FROM bairro ORDER BY descricao');
     Consulta.setColunaRetorno(0);
     sAux := Consulta.getConsulta;

     if (sAux <> '') then
         begin
           editCodigo.Text := sAux;
           editBairro.SetFocus;
         end
     else
        FormActivate(self);

end;

end.
