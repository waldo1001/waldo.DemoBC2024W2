profileextension "BusMgrEvalExtension" extends "Business Manager Evaluation"
{
    Caption = 'waldo''s Profile';
    ProfileDescription = 'This is a profile "for waldo"';
    Enabled = true;
    Promoted = true;
    RoleCenter = 9022;
    Customizations = MyCustomerCardCust2;
    //Page::"Business Manager Role Center" doesn't work
}