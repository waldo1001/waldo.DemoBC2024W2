codeunit 50108 "Test this"
{
    var
        waldo: Text;

    trigger OnRun()
    var
        waldo: Text;
    begin
        this.waldo := 'Global Waldo';
        waldo := 'Local Waldo';

        this.Hello(this.waldo);
        this.Hello(waldo);

        this.TestJsonWrapper();
    end;

    procedure Hello(t: Text)
    begin
        Message('Hello %1', t);
    end;

    procedure TestJsonWrapper()
    var
        JsonObject: Codeunit JsonObject;
    begin
        JsonObject
            .Add('NickName', 'waldo')
            .Add('Age', 47)
            .Add('Mental Age', 12);
        JsonObject
            .InitObjectProperty('Address')
            .Add('Street', '123 Main St')
            .Add('City', 'Anytown')
            .Add('State', 'CA')
            .Add('Zip', '12345');

        Message(JsonObject.AsText());
    end;
}