codeunit 50115 "DoTare"
{
    procedure DoTare(): Boolean
    begin
        exit(DoTare(enum::"IScale Factory"::Marek));
    end;

    procedure DoTare(IScale: Interface IScale): Boolean
    var
        IScaleExt: Interface IScaleExt;
    begin
        if not (IScale is IScaleExt) then
            exit(false);

        IScaleExt := IScale as IScaleExt;
        exit(IScaleExt.Tare());
    end;
}