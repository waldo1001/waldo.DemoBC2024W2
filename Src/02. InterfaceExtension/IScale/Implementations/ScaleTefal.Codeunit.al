codeunit 50104 "Scale Tefal" implements IScale
{
    procedure Weigh(): Decimal
    begin
        exit(Random(100));
    end;

}