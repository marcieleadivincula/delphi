unit Obj_Bairro;

interface

uses
    unit_dados, FireDAC.Comp.Client, System.SysUtils, Vcl.Dialogs, unit_CadBairro, FireDAC.Stan.Param, System.Classes, Data.DB;

type
TObj_Bairro = class
  private
        codigo: integer;
        descricao:string;
        //status:byte; //0 --> gravar(insert) e 1 --> alterar(update)

  public
        procedure setCodigo(codigo:integer);
        function getCodigo:integer;
        procedure setDescricao(descricao:string);
        function getDescricao:string;
//        procedure setStatus(status:byte);
//        function getStatus:byte;

        procedure insert;
        procedure update;
        function delete:boolean;
        function select:boolean;
//        function getUltimoCodigoInserido:integer;
//        function existeRelacionamentoByEndereco:boolean;
end;

implementation

{ TObj_Bairro }

function TObj_Bairro.getCodigo: integer;
begin
     result := self.codigo;
end;

function TObj_Bairro.getDescricao: string;
begin
    result := self.descricao;
end;

procedure TObj_Bairro.setCodigo(codigo: integer);
begin
     self.codigo := codigo;
end;

procedure TObj_Bairro.setDescricao(descricao: string);
begin
    self.descricao := descricao;
end;

procedure TObj_Bairro.update;
var
   qrUpdate: TFDQuery;
begin
   qrUpdate := TFDQuery.Create(nil);
   qrUpdate.Connection := dm_dados.TFDConn;
   qrUpdate.SQL.Clear;
   qrUpdate.SQL.Add('UPDATE bairro SET descricao = :descricao) WHERE (codigo = :codigo)');
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

function TObj_Bairro.delete: boolean;
var
  qrDelete: TFDQuery;
begin
   qrDelete := TFDQuery.Create(nil);
   qrDelete.Connection := dm_dados.TFDConn;
   qrDelete.SQL.Clear;
   qrDelete.SQL.Add('DELETE FROM bairro WHERE (codigo = :codigo)');
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

procedure TObj_Bairro.insert;
var
   qrInsert: TFDQuery;
begin
   qrInsert := TFDQuery.Create(nil);
   qrInsert.Connection := dm_dados.TFDConn;
   qrInsert.SQL.Clear;
   qrInsert.SQL.Add('INSERT INTO bairro VALUES(0, :descricao)');
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

function TObj_Bairro.select: boolean;
var
  qrSelect: TFDQuery;
begin
  result := false;
   qrSelect := TFDQuery.Create(nil);
   qrSelect.Connection := dm_dados.TFDConn;
   qrSelect.SQL.Clear;
   qrSelect.SQL.Add('SELECT * FROM bairro WHERE (codigo = :codigo)');
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

end.
