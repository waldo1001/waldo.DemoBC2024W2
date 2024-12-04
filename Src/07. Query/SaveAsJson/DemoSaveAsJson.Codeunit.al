codeunit 50102 "Demo - SaveAsJson"
{
    procedure DemoSaveAsJson()
    var
        TempBlob: Codeunit "Temp Blob";
        JustACustomerQuery: Query "Just A Customer Query";
        OutStr: OutStream;
        InStr: InStream;
        ToFile: Text;
    begin
        TempBlob.CreateOutStream(OutStr);
        JustACustomerQuery.SaveAsJson(OutStr);
        TempBlob.CreateInStream(InStr);

        Tofile := 'TheJsonFile.json';
        DownloadFromStream(InStr, '', '', '', ToFile);
    end;

}