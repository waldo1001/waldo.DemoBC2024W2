codeunit 50106 "Test Interfaces"
{
    var
        ISimpleScale: Interface IScale;
        IAdvancedScale: Interface IScaleExt;
        Tefal: Codeunit "Scale Tefal";
        Marek: Codeunit "Scale Marek";

    trigger OnRun()
    begin
        Message('Weight from Tefal: %1', format(GetWeight(Tefal)));
        Message('Weight from Marek: %1', format(GetWeight(Marek)));

        Message('Tare Tefal: %1', format(Tare(Tefal)));
        Message('Tare Marek: %1', format(Tare(Marek)));
    end;

    procedure GetWeight(IScale: Interface IScale): Decimal
    begin
        exit(IScale.Weigh());
    end;

    procedure Tare(IScale: Interface IScale): Boolean
    var
        IScaleExt: Interface IScaleExt;
    begin
        if not (IScale is IScaleExt) then
            exit(false);

        IScaleExt := IScale as IScaleExt;
        exit(IScaleExt.Tare());
    end;
}

