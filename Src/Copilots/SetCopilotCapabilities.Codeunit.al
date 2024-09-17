codeunit 50100 SetCopilotCapabilities
{
    [EventSubscriber(ObjectType::Page, Page::"Copilot AI Capabilities", 'OnRegisterCopilotCapability', '', false, false)]
    local procedure HandleOnRegisterCopilotCapability()
    begin
        RegisterCapability();
    end;

    procedure RegisterCapability()
    var
        CopilotCapability: Codeunit "Copilot Capability";
        EnvironmentInformation: Codeunit "Environment Information";
        UpgradeTag: Codeunit "Upgrade Tag";
    begin
        if not EnvironmentInformation.IsSaaSInfrastructure() then
            exit;

        if not CopilotCapability.IsCapabilityRegistered(Enum::"Copilot Capability"::"No. Series Copilot") then
            CopilotCapability.RegisterCapability(Enum::"Copilot Capability"::"No. Series Copilot", LearnMoreUrlTxt);

        //you can't fake this - should be able to register capability for a specific AppId (which is not possible.)
    end;


    var
        LearnMoreUrlTxt: Label 'https://go.microsoft.com/fwlink/?linkid=[id]', Locked = true; //TODO: replace 'id' when docs page is ready

}