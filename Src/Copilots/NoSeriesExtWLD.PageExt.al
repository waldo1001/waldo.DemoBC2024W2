pageextension 50100 "No. Series Ext WLD" extends "No. Series"
{
    actions
    {
        addfirst(Prompting)
        {
            action("Generate With Copilot Prompting")
            {
                Caption = 'Generate';
                ToolTip = 'Generate No. Series using Copilot';
                Image = Sparkle;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Page.Run(Page::"No. Series Generation");
                end;
            }
        }
    }
}