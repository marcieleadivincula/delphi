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
    procedure editCodigoEnter(Sender: TObject);
    procedure editCodigoExit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
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

procedure Tform_cadPais.btnExcluirClick(Sender: TObject);
begin
     if (Pais.getStatus = 0) then
         exit;

     if (Pais.existeRelacionamentoByEndereco) then
         begin
           ShowMessage('Registro est� vinculado, n�o pode ser exclu�do!');
           exit;
         end;

     if (Application.MessageBox('Confirma a exclus�o do registro?', 'Confirma��o', MB_yesNo + MB_defButton2 + MB_ICONQUESTION) = idNo) then
         exit;

     if (Pais.delete) then
         self.FormActivate(self);
end;

procedure Tform_cadPais.btnSairClick(Sender: TObject);
begin
    Close;
end;

procedure Tform_cadPais.btnSalvarClick(Sender: TObject);
begin
    if (editPais.Text = '') then
        begin
            ShowMessage('Informe o pa�s!');
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

procedure Tform_cadPais.editCodigoEnter(Sender: TObject);
begin
     Pais.setStatus(0);
end;

procedure Tform_cadPais.editCodigoExit(Sender: TObject);
begin
     if (editCodigo.Text = '') then
        exit;

     Pais.setCodigo(StrToInt(editCodigo.Text));

     if (Pais.select) then
        begin
            editPais.Text := Pais.getDescricao;
            Pais.setStatus(1);
        end;
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
     Consulta.setTitulo('Consulta de pa�ses');
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
