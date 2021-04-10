unit Classe_ServicoPessoa;

interface
uses
    Generics.Collections, Classe_Pessoa;

type
    TServicoPessoa = class
      private
            lista = TList<Pessoa>;
      public
            procedure setLista(pessoa:Pessoa);

    end;

implementation

{ TServicoPessoa }

procedure TServicoPessoa.setLista(pessoa: Pessoa);
begin
     self.lista.Add(pessoa);
end;

end.
