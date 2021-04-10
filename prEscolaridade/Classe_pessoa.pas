unit Classe_pessoa;

interface

type
    Pessoa = class
    private
      idade:integer;
      grauEscolaridade:integer;
    public
      procedure setIdade(idade:integer);
      function getIdade:integer;
      procedure setGrauEscolaridade(grauEcolaridade:integer);
      function getGrauEscolaridade:integer;
    end;

implementation

{ Pessoa }

function Pessoa.getGrauEscolaridade: integer;
begin
    result := self.grauEscolaridade;
end;

function Pessoa.getIdade: integer;
begin
    result := self.idade;
end;

procedure Pessoa.setGrauEscolaridade(grauEscolaridade: integer);
begin
     self.grauEscolaridade := grauEscolaridade;
end;

procedure Pessoa.setIdade(idade: integer);
begin
    self.idade := idade;
end;

end.
