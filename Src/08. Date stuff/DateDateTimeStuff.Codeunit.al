codeunit 50103 DateDateTimeStuff
{

    local procedure Datestuff()
    var
        MyDate: Date;
    begin
        // mydate.

    end;

    local procedure IsItFriday(var MyDate: Date): Boolean
    begin
        exit(MyDate.DayOfWeek = 5);
    end;

    local procedure Timestuff()
    var
        MyTime: Time;
    begin
        // MyTime.

    end;

    local procedure DateTimestuff()
    var
        MyDateTime: DateTime;
    begin
        // MyDateTime.Time.


    end;

}