query 50101 "Just Another Customer Query"
{
    QueryType = Normal;
    Caption = 'Items on invoice for customers';
    Access = Public;
    DataAccessIntent = ReadOnly;

    elements
    {
        dataitem(Customer; Customer)
        {
            column(No; "No.")
            {
                Caption = 'CustomerNo';
                ToolTip = 'Customer Number, Duh!';
            }
            column(Name; Name)
            {
                ToolTip = 'Customer Name, what else?';
            }

            filter(Blocked; Blocked) { }
            filter(Balance__LCY_; "Balance (LCY)") { }

        }
    }
}