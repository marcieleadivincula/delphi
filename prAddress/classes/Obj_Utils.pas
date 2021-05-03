unit Obj_Utils;

interface

uses
    FMX.Forms, FMX.Edit, FMX.Memo, FMX.ListBox, FMX.Grid, System.Classes, System.SysUtils;

type
    TObj_Utils = class
      public
            class procedure LimparTela(var Form);
    end;

implementation

{ TObj_Utils }

class procedure TObj_Utils.LimparTela(var Form);
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

