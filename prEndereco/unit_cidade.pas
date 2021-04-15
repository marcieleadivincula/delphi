unit unit_cidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tform_cadCidade = class(TForm)
    panelInput: TPanel;
    lbCodigo: TLabel;
    Label5: TLabel;
    lbCep: TLabel;
    editCodigo: TEdit;
    editCidade: TEdit;
    editCep: TEdit;
    panelBtns: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cadCidade: Tform_cadCidade;

implementation

{$R *.dfm}

end.
