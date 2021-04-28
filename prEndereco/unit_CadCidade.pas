unit unit_CadCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Obj_Utilitario, Obj_Consulta, Obj_Cidade;

type
  Tform_cadCidade = class(TForm)
    pnlCadCidade: TPanel;
    lbCodigo: TLabel;
    lbCidade: TLabel;
    editCodigo: TEdit;
    editCidade: TEdit;
    pnlBtnsCidade: TPanel;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    spConsultar: TSpeedButton;
    lbCep: TLabel;
    editCep: TEdit;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure editCodigoEnter(Sender: TObject);
    procedure editCodigoExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure spConsultarClick(Sender: TObject);
  public
      Cidade: TObj_Cidade;
  end;

var
  form_cadCidade: Tform_cadCidade;

implementation

{$R *.dfm}

procedure Tform_cadCidade.btnExcluirClick(Sender: TObject);
begin
     if (Cidade.getStatus = 0) then
         exit;

     if (Cidade.existeRelacionamentoByEndereco) then
         begin
           ShowMessage('Registro está vinculado, não pode ser excluído!');
           exit;
         end;

     if (Application.MessageBox('Confirma a exclusão do registro?', 'Confirmação', MB_yesNo + MB_defButton2 + MB_ICONQUESTION) = idNo) then
         exit;

     if (Cidade.delete) then
         self.FormActivate(self);
end;

procedure Tform_cadCidade.btnSairClick(Sender: TObject);
begin
     close;
end;

procedure Tform_cadCidade.btnSalvarClick(Sender: TObject);
begin
    if (editCidade.Text = '') then
        begin
            ShowMessage('Informe a cidade!');
            editCidade.SetFocus;
            exit;
        end;

    if (editCep.Text = '') then
        begin
            ShowMessage('Informe o CEP!');
            editCep.SetFocus;
            exit;
        end;

    Cidade.setDescricao(editCidade.Text);
    Cidade.setCep(editCep.Text);

    case (Cidade.getStatus) of
        0: Cidade.insert;
        1: Cidade.update;
    end;

    self.FormActivate(self);
end;

procedure Tform_cadCidade.editCodigoEnter(Sender: TObject);
begin
     Cidade.setStatus(0); //habilitado para inserir
end;

procedure Tform_cadCidade.editCodigoExit(Sender: TObject);
begin
     if (editCodigo.Text = '') then
        exit;

     Cidade.setCodigo(StrToInt(editCodigo.Text));

     if (Cidade.select) then
        begin
            editCidade.Text := Cidade.getDescricao;
            editCep.Text := Cidade.getCep;
            Cidade.setStatus(1);
        end;
end;

procedure Tform_cadCidade.FormActivate(Sender: TObject);
begin
     Cidade.setStatus(0);
     TObj_Utilitario.LimparTela(self);
     editCodigo.SetFocus;
end;

procedure Tform_cadCidade.FormCreate(Sender: TObject);
begin
    Cidade := TObj_Cidade.Create;
end;

procedure Tform_cadCidade.FormDestroy(Sender: TObject);
begin
    Cidade.Free;
end;

procedure Tform_cadCidade.spConsultarClick(Sender: TObject);
var
   Consulta:TObj_Consulta;
   sAux:string;
begin
     editCodigo.SetFocus;
     Consulta := TObj_Consulta.Create;
     Consulta.setTitulo('Consulta de cidades');
     Consulta.setTextoSql('SELECT * FROM cidade ORDER BY DESCRICAO');
     Consulta.setColunaRetorno(0);
     sAux := Consulta.getConsulta;

     if (sAux <> '') then
         begin
           editCodigo.Text := sAux;
           editCidade.SetFocus;
         end
     else
        FormActivate(self);
end;

end.
