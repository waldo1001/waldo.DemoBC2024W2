pageextension 50104 "Customer Card Ext" extends "Customer Card"
{
    actions
    {
        addlast(Prompting)
        {
            action(DraftWithCopilot)
            {
                Caption = 'Draft with Copilot';
                Ellipsis = true;
                trigger OnAction()
                begin
                    message('Draft with Copilot pressed');
                end;
            }
        }
    }
}