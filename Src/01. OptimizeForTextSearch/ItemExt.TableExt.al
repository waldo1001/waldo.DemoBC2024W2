tableextension 50100 "Item Ext" extends "Item"
{
    fields
    {
        modify("Search Description")
        {
            Caption = 'Search Description';
            // NOT possible to set OptimizeForTextSearch here
            // OptimizeForTextSearch = true; 
        }

        field(50100; "waldo's Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            OptimizeForTextSearch = true;
        }
    }
}