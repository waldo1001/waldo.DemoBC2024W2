codeunit 50102 "Demo - SaveAsJson"
{
    var
        JustACustomerQuery: Query "Just A Customer Query";

    procedure DemoSaveAsJson()
    var
        Result: Boolean;
        OutStr: OutStream;
        InStr: InStream;
        ToFile: Text;
        TempBlob: Codeunit "Temp Blob";
        FileManagement: Codeunit "File Management";
    begin
        TempBlob.CreateOutStream(OutStr);
        Result := JustACustomerQuery.SaveAsJson(OutStr);
        TempBlob.CreateInStream(InStr);

        Tofile := 'TheJsonFile.json';
        DownloadFromStream(InStr, '', '', '', ToFile);
    end;

}