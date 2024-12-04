codeunit 50111 "Say Hello"
{
    var
        waldo: Text;

    procedure SayHello(Testthis: Codeunit "Test this")
    var
        Value: Text;
    begin
        value := waldo;
        // Message('Hello %1', Testthis.);
    end;
}