unit Classe_pessoa;

interface

type
    TPessoa = class
    private
      idade:integer;
      grauEscolaridade:integer;
    public
      procedure setIdade(idade:integer);
      function getIdade:integer;
      procedure setGrauEscolaridade(grauEscolaridade:integer);
      function getGrauEscolaridade:integer;
    end;

implementation

{ Pessoa }

function TPessoa.getGrauEscolaridade: integer;
begin
    result := self.grauEscolaridade;
end;

function TPessoa.getIdade: integer;
begin
    result := self.idade;
end;

procedure TPessoa.setGrauEscolaridade(grauEscolaridade: integer);
begin
     self.grauEscolaridade := grauEscolaridade;
end;

procedure TPessoa.setIdade(idade: integer);
begin
    self.idade := idade;
end;

end.
