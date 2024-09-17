codeunit 50101 WithWith
{
    procedure WithWith()
    var
        Customer: Record Customer;
    begin
        with customer do begin
            Init();
            Name := 'Test';
            Insert();
        end;
    end;
}