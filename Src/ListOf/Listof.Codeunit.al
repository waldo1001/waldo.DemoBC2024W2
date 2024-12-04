codeunit 50112 "List of"
{
    procedure DoALotOfWork(var implementations: List of [Interface "IScale"])
    var
        Impl: Interface IScale;
    begin
        foreach Impl in implementations do
            message(strsubstno('weight: %1', Impl.Weigh()));
    end;

    procedure DoALotOfWork(var Implementations: list of [Codeunit "Scale Marek"])
    var
        Impl: Interface IScaleExt;
    begin
        foreach Impl in implementations do
            message(strsubstno('weight: %1', Impl.Tare()));
    end;
}