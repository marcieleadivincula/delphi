unit Classe_ServicoPessoa;

interface
uses
    Generics.Collections, Classe_Pessoa;

type
    TServicoPessoa = class
      private
            lista = TList<TPessoa>;
      public
            procedure setLista(pessoa:TPessoa);

    end;

implementation

{ TServicoPessoa }

procedure TServicoPessoa.setLista(pessoa: TPessoa);
begin
     self.lista.Add(pessoa);
end;

end.
