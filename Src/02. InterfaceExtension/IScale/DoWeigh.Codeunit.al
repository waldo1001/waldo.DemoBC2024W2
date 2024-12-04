codeunit 50100 "DoWeigh"
{
    procedure DoWeigh(): Decimal
    begin
        exit(DoWeigh(enum::"IScale Factory"::Tefal));
    end;

    procedure DoWeigh(IScale: Interface IScale): Decimal
    begin
        exit(IScale.Weigh());
    end;
}