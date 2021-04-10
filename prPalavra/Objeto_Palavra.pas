  unit Objeto_Palavra;

  interface
  uses
    System.SysUtils;

  type
  TObjeto_Palavra = class
    private
      palavra: string;
    public
      procedure setPalavra(palavra:string);
      function getPalavra:String;
      function isPalindroma:boolean;
  end;

  implementation

  { TObjeto_Palavra }

function TObjeto_Palavra.getPalavra: String;
begin
      result := self.palavra;
end;

function TObjeto_Palavra.isPalindroma: boolean;
   var
      i:word; //inteiro curto
      inverte:string;
begin
    inverte := '';
    for i := Length(self.palavra) downto 1 do    //TODO: rever
      inverte := inverte + self.palavra[i];
      result := AnsiUpperCase(self.getPalavra) = AnsiUpperCase(inverte); //se a palavra for igual a inverte, result retorna true.
end;

procedure TObjeto_Palavra.setPalavra(palavra: string);
begin
      self.palavra := palavra;
end;

end.
