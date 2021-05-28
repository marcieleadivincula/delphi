unit Obj_Logradouro;

interface
uses
    unit_dados, FireDAC.Comp.Client, System.SysUtils, Vcl.Dialogs, System.UITypes, FireDAC.Stan.Param, System.Classes, Data.DB;

type
  TObj_Logradouro = class
  private
        codigo: integer;
        descricao:string;
        status:byte;

  public
        procedure setCodigo(codigo:integer);
        function getCodigo:integer;
        procedure setDescricao(descricao:string);
        function getDescricao:string;
        procedure setStatus(status:byte);
        function getStatus:byte;

        procedure insert;
        procedure update;
        function delete:boolean;
        function select:boolean;
        function getUltimoCodigoInserido:integer;
        function existeRelacionamentoByEndereco:boolean;
end;

implementation

{ TObj_Logradouro }

function TObj_Logradouro.existeRelacionamentoByEndereco: boolean;
var
  qrSelect: TFDQuery;
begin
   result := false;
   qrSelect := TFDQuery.Create(nil);
   qrSelect.Connection := dm_dados.TFDConn;
   qrSelect.SQL.Clear;
   qrSelect.SQL.Add('SELECT codigo FROM endereco WHERE(logradouro = :logradouro)');
   qrSelect.Params[0].AsInteger := self.getCodigo;

   try
     qrSelect.ExecSQL;

     if (not qrSelect.IsEmpty) then
        begin
         result := true;
      end;
   except
      on e:Exception do
      begin
         result := false;
         ShowMessage('Erro no select do existeRelacionamentoByEndereco: ' + e.ToString);
      end;
   end;

   qrSelect.Free;

end;

function TObj_Logradouro.getCodigo: integer;
begin
     result := self.codigo;
end;

function TObj_Logradouro.getDescricao: string;
begin
     result := self.descricao;
end;

function TObj_Logradouro.getStatus: byte;
begin
     result := self.status;
end;

function TObj_Logradouro.getUltimoCodigoInserido: integer;
var
  qrSelectLastId: TFDQuery;
begin
   result := 0;
   qrSelectLastId := TFDQuery.Create(nil);
   qrSelectLastId.Connection := dm_dados.TFDConn;
   qrSelectLastId.SQL.Clear;
   qrSelectLastId.SQL.Add('SELECT last_insert_id() codigo');

   try
     qrSelectLastId.Open;

     if (not qrSelectLastId.IsEmpty) then
        begin
            result := qrSelectLastId.Fields[0].AsInteger;
        end;
   except
      on e:Exception do
       ShowMessage('Erro no select_last_id: ' + e.ToString);
   end;

   qrSelectLastId.Free;

end;

procedure TObj_Logradouro.setCodigo(codigo: integer);
begin
     self.codigo := codigo;
end;

procedure TObj_Logradouro.setDescricao(descricao: string);
begin
     self.descricao := descricao;
end;

procedure TObj_Logradouro.setStatus(status: byte);
begin
     self.status := status;
end;

procedure TObj_Logradouro.update;
var
   qrUpdate: TFDQuery;
begin
   qrUpdate := TFDQuery.Create(nil);
   qrUpdate.Connection := dm_dados.TFDConn;
   qrUpdate.SQL.Clear;
   qrUpdate.SQL.Add('UPDATE logradouro SET descricao = :descricao) WHERE(codigo = :codigo)');
   qrUpdate.Params[0].AsString := self.getDescricao;
   qrUpdate.Params[1].AsInteger := self.getCodigo;

   try
     qrUpdate.ExecSQL;
     //self.setCodigo(getUltimoCodigoInserido);
   except
      on e:Exception do
       ShowMessage('Erro no update: ' + e.ToString);
   end;

   qrUpdate.Free;
end;

procedure TObj_Logradouro.insert;
var
   qrInsert: TFDQuery;
begin
   qrInsert := TFDQuery.Create(nil);
   qrInsert.Connection := dm_dados.TFDConn;
   qrInsert.SQL.Clear;
   qrInsert.SQL.Add('INSERT INTO logradouro VALUES(0, :descricao)');
   qrInsert.Params[0].AsString := self.getDescricao;

   try
     qrInsert.ExecSQL;
     //self.setCodigo(getUltimoCodigoInserido);
   except
      on e:Exception do
       ShowMessage('Erro no insert: ' + e.ToString);
   end;

   qrInsert.Free;

end;

function TObj_Logradouro.select: boolean;
var
  qrSelect: TFDQuery;
begin
  result := false;
   qrSelect := TFDQuery.Create(nil);
   qrSelect.Connection := dm_dados.TFDConn;
   qrSelect.SQL.Clear;
   qrSelect.SQL.Add('SELECT * FROM logradouro WHERE(codigo = :codigo)');
   qrSelect.Params[0].AsInteger := self.getCodigo;

   try
     qrSelect.Open;
     qrSelect.First;

     if (not qrSelect.IsEmpty) then
        begin
            self.setDescricao(qrSelect.Fields[1].AsString);
            result := true;
        end;
   except
      on e:Exception do
       ShowMessage('Erro no select: ' + e.ToString);
   end;

   qrSelect.Free;
end;

function TObj_Logradouro.delete: boolean;
var
  qrDelete: TFDQuery;
begin
   qrDelete := TFDQuery.Create(nil);
   qrDelete.Connection := dm_dados.TFDConn;
   qrDelete.SQL.Clear;
   qrDelete.SQL.Add('DELETE FROM logradouro WHERE(codigo = :codigo)');
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

end.
