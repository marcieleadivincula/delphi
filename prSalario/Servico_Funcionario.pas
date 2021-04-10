unit Servico_Funcionario;

interface
uses
  Funcionario, System.Generics.Collections, System.SysUtils;

type
    ServicoFuncionario = class
    private
      listaFunci: TList<TFuncionario>;
    public
      constructor create;
      destructor destroy;
      procedure setListaFunci(Funci:TFuncionario);
      function getDadosFuncionario(Funci:TFuncionario):String;
  end;

implementation
{ServicoFuncionario}

constructor ServicoFuncionario.create;
begin
         listaFunci := TList<TFuncionario>.create;
end;

destructor ServicoFuncionario.destroy;
begin
         listaFunci.clear;
         listaFunci.free;
end;

procedure ServicoFuncionario.setListaFunci(Funci:TFuncionario);
begin
          self.listaFunci.Add(Funci);
end;

function  ServicoFuncionario.getDadosFuncionario(Funci:TFuncionario):String;
begin
          result := 'Código: ' + intToStr(Funci.getCodigo) + #10#13 + 'Categoria: ' + Funci.getCategoria + #10#13 + 'Salário Antigo: ' + FormatFloat('###,##0.00', Funci.getSalarioAtual)+ #10#13;
end;

end.
