pageextension 50102 "Item Card Ext" extends "Item Card"
{
    layout
    {
        addafter(Description)
        {
            field("waldo's Description"; Rec."waldo's Description")
            {
                ApplicationArea = All;
                ToolTip = 'waldo''s Description';
            }
        }
    }
}