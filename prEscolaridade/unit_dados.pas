unit unit_dados;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls;

type
  Tdm_dados = class(TDataModule)
    ImageList: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_dados: Tdm_dados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
