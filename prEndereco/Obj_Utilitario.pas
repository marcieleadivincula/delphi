unit Obj_Utilitario;

interface

uses
    FMX.Forms, FMX.Edit, FMX.Memo, FMX.ListBox, FMX.Grid, System.Classes, System.SysUtils, Vcl.ExtCtrls, Vcl.DBGrids;

type
    TObj_Utilitario = class
      public
            class procedure LimparTela(var Form);
            class procedure AjustarTamanhoDBGrid(var dbGrid: TDBGrid);
    end;

implementation

{ TObj_Utilitario }

class procedure TObj_Utilitario.AjustarTamanhoDBGrid(var dbGrid: TDBGrid);
var
   i, tamanhoColuna, tamanho:integer;
   slPercent:TStringList;
   sAux:string;
begin
    slPercent := TStringList.Create;
    slPercent.Clear;
    tamanhoColuna := 0;
    tamanho :=  dbGrid.Width - 40;

    for i := 0 to (dbGrid.Columns.Count - 1) do
        if(dbGrid.Columns[i].Width > 0) then
           tamanhoColuna := tamanhoColuna + dbGrid.Columns[i].Width;

     for i := 0 to (dbGrid.Columns.Count - 1) do
        if(dbGrid.Columns[i].Width > 0) then
           slPercent.Add(FloatToStr((dbGrid.Columns[i].Width * 100)/tamanhoColuna))
        else
            slPercent.Add('0');

     for i := 0 to (slPercent.Count - 1) do
        begin
             try
                if (StrToFloat(slPercent.Strings[i]) > 0) then
                    begin
                        sAux := FormatFloat('##0.00', (StrToFloat(slPercent.Strings[i]) * tamanho) / 100);
                        dbGrid.Columns[i].Width := StrToInt(copy(sAux, 1, pos(',',sAux) - 1));
                    end;
             except

             end;
        end;

     slPercent.Free;
end;

class procedure TObj_Utilitario.LimparTela(var Form);
Var
   Temp: TCustomForm;
   i:integer;
begin
     Temp:= TCustomForm(form);
     for i := 0 to (Temp.ComponentCount-1) do
        begin
            if (Temp.Components[i] is TEdit) then
               TEdit(Temp.Components[i]).Text := ''
            else if (Temp.Components[i] is TMemo) then
               TMemo(Temp.Components[i]).Text := ''
            else if (Temp.Components[i] is TComboBox) then
               TComboBox(Temp.Components[i]).ItemIndex := 0;
        end;
end;

end.
