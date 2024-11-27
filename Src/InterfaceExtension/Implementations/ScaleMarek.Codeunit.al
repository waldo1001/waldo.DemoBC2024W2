codeunit 50105 "Scale Marek" implements IScaleExt
{
    procedure Tare(): Boolean
    begin
        exit(true);
    end;

    procedure Weigh(): Decimal
    begin
        exit(random(100));
    end;

    procedure Calibrate(): Boolean
    begin
        exit(true);
    end;
}