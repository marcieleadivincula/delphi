unit unit_palavra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  Tform_palavra = class(TForm)
    pnlGrupo: TPanel;
    pnlTop: TPanel;
    pnlFotter: TPanel;
    lbPalavra: TLabel;
    editPalavra: TEdit;
    lbSaida: TLabel;
    editSaida: TEdit;
    btnValidaPalavra: TBitBtn;
    procedure btnValidaPalavraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_palavra: Tform_palavra;

implementation

{$R *.dfm}
uses Objeto_Palavra;

procedure Tform_palavra.btnValidaPalavraClick(Sender: TObject);
var
    Objeto_Palavra:TObjeto_Palavra;
begin
    Objeto_Palavra := TObjeto_Palavra.Create;

    Objeto_Palavra.setPalavra(editPalavra.Text);

    if(Objeto_Palavra.isPalindroma) then
      ShowMessage('A palavra é palindroma!')
    else
      ShowMessage('A palavra NÃO é palindroma!');

    FreeAndNil(Objeto_Palavra); //Quando não vai usar mais o objeto, então será liberado para que o ponteiro não fique na memória.
end;

end.
