codeunit 50107 "Scale Lafet" implements IScale
{
    procedure Weigh(): Decimal
    begin
        exit(Random(1000));
    end;

}