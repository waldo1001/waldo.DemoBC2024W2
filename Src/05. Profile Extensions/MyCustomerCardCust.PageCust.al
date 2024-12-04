pagecustomization MyCustomerCardCust customizes "Customer Card"
{
    ClearActions = true; // Hide all actions on the page
    ClearLayout = true; // Hide all layout elements on the page

    layout
    {
        modify(Name) { Visible = true; } // Show the Name
        modify("Credit Limit (LCY)") { Visible = true; } // Show the Credit Limit
        modify("Balance (LCY)") { Visible = true; } // Show the Balance
    }

    actions
    {
        modify(Email_Promoted) { Visible = true; } // Show the Email action
    }
}