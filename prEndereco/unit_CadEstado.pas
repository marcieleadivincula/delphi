unit unit_CadEstado;

interface

uses
  Obj_Utilitario, Obj_Consulta, Obj_Estado,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

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
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure spConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     Estado: TObj_Estado;
  end;

var
  form_cadEstado: Tform_cadEstado;

implementation

{$R *.dfm}

procedure Tform_cadEstado.btnExcluirClick(Sender: TObject);
begin
     if (Estado.getStatus = 0) then
         exit;

     if (Estado.existeRelacionamentoByEndereco) then
         begin
           ShowMessage('Registro está vinculado, não pode ser excluído!');
           exit;
         end;

     if (Application.MessageBox('Confirma a exclusão do registro?', 'Confirmação', MB_yesNo + MB_defButton2 + MB_ICONQUESTION) = idNo) then
         exit;

     if (Estado.delete) then
         self.FormActivate(self);
end;

procedure Tform_cadEstado.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tform_cadEstado.btnSalvarClick(Sender: TObject);
begin
    if (editEstado.Text = '') then
        begin
            ShowMessage('Informe o estado!');
            editEstado.SetFocus;
            exit;
        end;

    if (editSigla.Text = '') then
        begin
            ShowMessage('Informe a sigla!');
            editSigla.SetFocus;
            exit;
        end;

    Estado.setDescricao(editEstado.Text);
    Estado.setSigla(editSigla.Text);

    case (Estado.getStatus) of
        0: Estado.insert;
        1: Estado.update;
    end;

    self.FormActivate(self);
end;

procedure Tform_cadEstado.FormActivate(Sender: TObject);
begin
     Estado.setStatus(0);
     TObj_Utilitario.LimparTela(self);
     editCodigo.SetFocus;
end;

procedure Tform_cadEstado.FormCreate(Sender: TObject);
begin
    Estado := TObj_Estado.Create;
end;

procedure Tform_cadEstado.FormDestroy(Sender: TObject);
begin
     Estado.Free;
end;

procedure Tform_cadEstado.spConsultarClick(Sender: TObject);
var
   Consulta:TObj_Consulta;
   sAux:string;
begin
     editCodigo.SetFocus;
     Consulta := TObj_Consulta.Create;
     Consulta.setTitulo('Consulta de estados');
     Consulta.setTextoSql('SELECT * FROM estado ORDER BY descricao');
     Consulta.setColunaRetorno(0);
     sAux := Consulta.getConsulta;

     if (sAux <> '') then
         begin
           editCodigo.Text := sAux;
           editEstado.SetFocus;
         end
     else
        FormActivate(self);
end;

end.
