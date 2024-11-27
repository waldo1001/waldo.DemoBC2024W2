pagecustomization MyCustomerCardCust2 customizes "Customer Card"
{
    layout
    {
        modify(Name) { Visible = true; } // Show the Name
    }

    actions
    {
        modify(Email_Promoted) { Visible = true; } // Show the Email action
    }
}