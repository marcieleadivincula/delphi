unit Obj_Consulta;

interface
uses
    unit_Consulta, System.SysUtils, Vcl.Dialogs, System.UITypes, FireDAC.Stan.Param, System.Classes, Data.DB, FireDAC.Comp.Client,
    Winapi.Windows, Winapi.Messages, System.Variants, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
    TObj_Consulta = class
      private
             titulo:string;      //caption da tela
             textoSql:string;    //comando de seleção
             //retorno:string;     //valor a ser retornado
             colunaRetorno:integer; //coluna que tem o valor a ser retornado
                                    //se o valor for -1 --> não retorna nada
      public
            procedure setTitulo(titulo:string);
            function getTitulo:string;
            procedure setTextoSql(textoSql:string);
            function getTextoSql:string;
//            procedure setRetorno(retorno:string);
//            function getRetorno:string;
            procedure setColunaRetorno(colunaRetorno:integer);
            function getColunaRetorno:integer;

            function getConsulta:string;
    end;

implementation

{ TObj_Consulta }

function TObj_Consulta.getConsulta:string;
begin
    result := '';
    if (form_Consulta = nil) then
        form_Consulta := TForm_Consulta.Create(nil);

    form_Consulta.Caption := self.getTitulo;
    form_Consulta.qrConsulta.Close;
    form_Consulta.qrConsulta.SQL.Clear;
    form_Consulta.qrConsulta.SQL.Add(self.getTextoSql);

    try
      form_Consulta.qrConsulta.Open;
      form_Consulta.qrConsulta.Last;
      form_Consulta.qrConsulta.First;

      form_Consulta.lblRegistros.Caption := FormatFloat('###,###,#00', form_Consulta.qrConsulta.RecordCount);

      if (form_Consulta.ShowModal = mrOk) then
          if (self.getColunaRetorno >= 0) then
             result := form_Consulta.qrConsulta.Fields[self.getColunaRetorno].AsString;

      FreeAndNil(form_Consulta);
    except
       on e:Exception do
          ShowMessage('Erro no getConsulta: ' + e.ToString);
    end;

     form_Consulta.qrConsulta.Free;
end;

function TObj_Consulta.getColunaRetorno: integer;
begin
     result := self.colunaRetorno;
end;

//function TObj_Consulta.getRetorno: string;
//begin
//     result := self.retorno;
//end;

function TObj_Consulta.getTextoSql: string;
begin
     result := self.textoSql;
end;

function TObj_Consulta.getTitulo: string;
begin
     result := self.titulo;
end;

procedure TObj_Consulta.setColunaRetorno(colunaRetorno: integer);
begin
    self.colunaRetorno := colunaRetorno;
end;

//procedure TObj_Consulta.setRetorno(retorno: string);
//begin
//     self.retorno := retorno;
//end;

procedure TObj_Consulta.setTextoSql(textoSql: string);
begin
     self.textoSql := textoSql;
end;

procedure TObj_Consulta.setTitulo(titulo: string);
begin
     self.titulo := titulo;
end;

end.

