codeunit 50113 "The Patch Method"
{
    procedure PerformWebResourceUpdate(PartialContentToUpdate: HttpContent): Boolean
    var
        HttpClient: HttpClient;
        patchResponse: HttpResponseMessage;
    begin
        if HttpClient.Patch('http://api.waldo.be', PartialContentToUpdate, patchResponse) then
            exit(patchResponse.IsSuccessStatusCode);

        exit(false);
    end;
}