pageextension 50103 "Item list Ext" extends "Item List"
{

    layout
    {
        addafter(Description)
        {
            field("waldo's Description"; Rec."waldo's Description")
            {
                ApplicationArea = All;
                Visible = false;
            }
        }
    }
}