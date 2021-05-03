unit unit_CadCity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Obj_City, Obj_Utils, Obj_Consulta;

type
  Tform_CadCity = class(TForm)
    pnlBottom: TPanel;
    pnlTop: TPanel;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    lbCode: TLabel;
    editCode: TEdit;
    lbCity: TLabel;
    editCity: TEdit;
    editCep: TEdit;
    lbCep: TLabel;
    spConsultar: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure editCodeEnter(Sender: TObject);
    procedure editCodeExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure spConsultarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    City: TObj_City;
  end;

var
  form_CadCity: Tform_CadCity;

implementation

{$R *.dfm}

procedure Tform_CadCity.btnExcluirClick(Sender: TObject);
begin
     if (City.getStatus = 0) then
         exit;

     if (City.existeRelacionamentoByEndereco) then
         begin
           ShowMessage('Registro está vinculado, não pode ser excluído!');
           exit;
         end;

     if (Application.MessageBox('Confirma a exclusão do registro?', 'Confirmação', MB_yesNo + MB_defButton2 + MB_ICONQUESTION) = idNo) then
         exit;

     if (City.delete) then
         self.FormActivate(self);
end;

procedure Tform_CadCity.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tform_CadCity.btnSalvarClick(Sender: TObject);
begin
     if (editCity.Text = '') then
        begin
            ShowMessage('Informe a cidade!');
            editCity.SetFocus;
            exit;
        end;

    if (editCep.Text = '') then
        begin
            ShowMessage('Informe o CEP!');
            editCep.SetFocus;
            exit;
        end;

    City.setDescricao(editCity.Text);
    City.setCep(editCep.Text);

    case (City.getStatus) of
        0: City.insert;
        1: City.update;
    end;

    self.FormActivate(self);
end;

procedure Tform_CadCity.editCodeEnter(Sender: TObject);
begin
     City.setStatus(0);  //habilitado para insert
end;

procedure Tform_CadCity.editCodeExit(Sender: TObject);
begin
     if (editCode.Text = '') then
        exit;

     City.setCodigo(StrToInt(editCode.Text));

     if (City.select) then
        begin
            editCity.Text := City.getDescricao;
            editCep.Text := City.getCep;
            City.setStatus(1);
        end;
end;

procedure Tform_CadCity.FormActivate(Sender: TObject);
begin
     City.setStatus(0);
     TObj_Utils.LimparTela(self);
     editCode.SetFocus;
end;

procedure Tform_CadCity.FormCreate(Sender: TObject);
begin
     City := TObj_City.Create;
end;

procedure Tform_CadCity.FormDestroy(Sender: TObject);
begin
     City.Free;
end;

procedure Tform_CadCity.spConsultarClick(Sender: TObject);
var
   Consulta:TObj_Consulta;
   sAux:string;
begin
     editCode.SetFocus;
     Consulta := TObj_Consulta.Create;
     Consulta.setTitulo('Consulta de cidades');
     Consulta.setTextoSql('SELECT * FROM cidade ORDER BY descricao');
     Consulta.setColunaRetorno(0);
     sAux := Consulta.getConsulta;

     if (sAux <> '') then
         begin
           editCode.Text := sAux;
           editCity.SetFocus;
         end
     else
        FormActivate(self);
end;

end.
