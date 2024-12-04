codeunit 50114 "Set Report Filename"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, OnGetFilename, '', false, false)]
    local procedure ReportManagement_OnGetFilename(ReportID: Integer; Caption: Text[250]; ObjectPayload: JsonObject; FileExtension: Text[30]; ReportRecordRef: RecordRef; var Filename: Text; var Success: Boolean)
    begin
        Filename := 'waldo.xlsx';
    end;

}