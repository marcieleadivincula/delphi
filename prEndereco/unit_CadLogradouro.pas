unit unit_CadLogradouro;

interface

uses
  Obj_Logradouro, Obj_Utilitario, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
    procedure btnExcluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure editCodigoEnter(Sender: TObject);
    procedure editCodigoExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Logradouro: TObj_Logradouro;
  end;

var
  form_cadLogradouro: Tform_cadLogradouro;

implementation

{$R *.dfm}

procedure Tform_cadLogradouro.btnExcluirClick(Sender: TObject);
begin
     if (Logradouro.getStatus = 0) then
         exit;

     if (Logradouro.existeRelacionamentoByEndereco) then
         begin
           ShowMessage('Registro está vinculado, não pode ser excluído!');
           exit;
         end;

     if (Application.MessageBox('Confirma a exclusão do registro?', 'Confirmação', MB_yesNo + MB_defButton2 + MB_ICONQUESTION) = idNo) then
         exit;

     if (Logradouro.delete) then
         self.FormActivate(self);
end;

procedure Tform_cadLogradouro.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tform_cadLogradouro.btnSalvarClick(Sender: TObject);
begin
     if (editLogradouro.Text = '') then
        begin
            ShowMessage('Informe o logradouro!');
            editLogradouro.SetFocus;
            exit;
        end;

    Logradouro.setDescricao(editLogradouro.Text);

    case (Logradouro.getStatus) of
        0: Logradouro.insert;
        1: Logradouro.update;
    end;

    self.FormActivate(self);
end;

procedure Tform_cadLogradouro.editCodigoEnter(Sender: TObject);
begin
     Logradouro.setStatus(0);
end;

procedure Tform_cadLogradouro.editCodigoExit(Sender: TObject);
begin
     if (editCodigo.Text = '') then
        exit;

     Logradouro.setCodigo(StrToInt(editCodigo.Text));

     if (Logradouro.select) then
        begin
            editLogradouro.Text := Logradouro.getDescricao;
            Logradouro.setStatus(1);
        end;
end;

procedure Tform_cadLogradouro.FormActivate(Sender: TObject);
begin
     Logradouro.setStatus(0);
     TObj_Utilitario.LimparTela(self);
     editCodigo.SetFocus;
end;

procedure Tform_cadLogradouro.FormCreate(Sender: TObject);
begin
     Logradouro := TObj_Logradouro.Create;
end;

procedure Tform_cadLogradouro.FormDestroy(Sender: TObject);
begin
     Logradouro.Free;
end;

end.
