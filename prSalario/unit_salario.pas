unit unit_salario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tform_salario = class(TForm)
    Panel1: TPanel;
    lbCodigo: TLabel;
    lbSalario: TLabel;
    lbCategoria: TLabel;
    editCodigo: TEdit;
    editSalario: TEdit;
    cbCategoria: TComboBox;
    btnSave: TButton;
    btnResult: TButton;
    btnClean: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_salario: Tform_salario;

implementation

{$R *.dfm}

end.
