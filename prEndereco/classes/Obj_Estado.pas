unit Obj_Estado;

interface
uses
    unit_dados, FireDAC.Comp.Client, System.SysUtils, Vcl.Dialogs, System.UITypes, FireDAC.Stan.Param, System.Classes, Data.DB;

type
  TObj_Estado = class
  private
        codigo: integer;
        descricao:string;
        sigla:string;
        status:byte; //0 --> gravar(insert) e 1 --> alterar(update)

  public
        procedure setCodigo(codigo:integer);
        function getCodigo:integer;
        procedure setDescricao(descricao:string);
        function getDescricao:string;
        procedure setSigla(sigla:string);
        function getSigla:string;
        procedure setStatus(status:byte);
        function getStatus:byte;

        procedure insert;
        procedure update;
        function delete:boolean;
        function select:boolean;
//        function getUltimoCodigoInserido:integer;
//        function existeRelacionamentoByEndereco:boolean;
end;

implementation

uses unit_CadEstado;

{ TObj_Estado }

function TObj_Estado.getCodigo: integer;
begin
     result := self.codigo;
end;

function TObj_Estado.getDescricao: string;
begin
     result := self.descricao;
end;

function TObj_Estado.getSigla: string;
begin
     result := self.sigla;
end;

function TObj_Estado.getStatus: byte;
begin
     result := self.status;
end;

procedure TObj_Estado.setCodigo(codigo: integer);
begin
     self.codigo := codigo;
end;

procedure TObj_Estado.setDescricao(descricao: string);
begin
     self.descricao := descricao;
end;

procedure TObj_Estado.setSigla(sigla: string);
begin
     self.sigla := sigla;
end;

procedure TObj_Estado.setStatus(status: byte);
begin
     self.status := status;
end;

procedure TObj_Estado.update;
var
   qrUpdate: TFDQuery;
begin
   qrUpdate := TFDQuery.Create(nil);
   qrUpdate.Connection := dm_dados.TFDConn;
   qrUpdate.SQL.Clear;
   qrUpdate.SQL.Add('UPDATE estado SET descricao = :descricao, sigla = :sigla) WHERE (codigo = :codigo)');
   qrUpdate.Params[0].AsString := self.getDescricao;
   qrUpdate.Params[1].AsString := self.getSigla;
   qrUpdate.Params[2].AsInteger := self.getCodigo;

   try
     qrUpdate.ExecSQL;
     //self.setCodigo(getUltimoCodigoInserido);
   except
      on e:Exception do
       ShowMessage('Erro no update: ' + e.ToString);
   end;

   qrUpdate.Free;
end;

procedure TObj_Estado.insert;
var
   qrInsert: TFDQuery;
begin
   qrInsert := TFDQuery.Create(nil);
   qrInsert.Connection := dm_dados.TFDConn;
   qrInsert.SQL.Clear;
   qrInsert.SQL.Add('INSERT INTO estado VALUES(0, :descricao, :sigla)');
   qrInsert.Params[0].AsString := self.getDescricao;
   qrInsert.Params[1].AsString := self.getSigla;

   try
     qrInsert.ExecSQL;
     //self.setCodigo(getUltimoCodigoInserido);
   except
      on e:Exception do
       ShowMessage('Erro no insert: ' + e.ToString);
   end;

   qrInsert.Free;
end;

function TObj_Estado.delete: boolean;
var
  qrDelete: TFDQuery;
begin
   qrDelete := TFDQuery.Create(nil);
   qrDelete.Connection := dm_dados.TFDConn;
   qrDelete.SQL.Clear;
   qrDelete.SQL.Add('DELETE FROM estado WHERE (codigo = :codigo)');
   qrDelete.Params[0].AsInteger := self.getCodigo;

   try
     qrDelete.ExecSQL;
     result := true;
   except
      on e:Exception do
      begin
         result := false;
         ShowMessage('Erro no delete: ' + e.ToString);
      end;
   end;

   qrDelete.Free;

end;

function TObj_Estado.select: boolean;
var
  qrSelect: TFDQuery;
begin
  result := false;
   qrSelect := TFDQuery.Create(nil);
   qrSelect.Connection := dm_dados.TFDConn;
   qrSelect.SQL.Clear;
   qrSelect.SQL.Add('SELECT * FROM estado WHERE (codigo = :codigo)');
   qrSelect.Params[0].AsInteger := self.getCodigo;

   try
     qrSelect.Open;
     qrSelect.First;

     if (not qrSelect.IsEmpty) then
        begin
            self.setDescricao(qrSelect.Fields[1].AsString);
            self.setSigla(qrSelect.Fields[2].AsString);
            result := true;
        end;
   except
      on e:Exception do
       ShowMessage('Erro no select: ' + e.ToString);
   end;

   qrSelect.Free;

end;

end.
