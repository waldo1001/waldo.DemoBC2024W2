pageextension 50101 "Business Manager RC Ext" extends "Business Manager Role Center"
{
    actions
    {
        addlast(embedding)
        {
            action("DemoPage")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Demo Page';
                RunObject = Page DemoPage;
            }
        }
    }

}