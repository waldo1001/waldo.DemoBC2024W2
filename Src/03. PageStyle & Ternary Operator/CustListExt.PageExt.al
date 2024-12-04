pageextension 50100 CustListExt extends "Customer List"
{
    layout
    {
        modify("Credit Limit (LCY)")
        {
            Visible = true;
        }
        modify("Balance (LCY)")
        {
            // Style = Unfavorable;
            // StyleExpr = BalanceStyleExpr;
            StyleExpr = BalanceStyleExpr;
        }
    }

    var
        BalanceStyleExpr: Text;

    // trigger OnAfterGetRecord()
    // begin
    //     if (Rec."Credit Amount (LCY)" <> 0) and (Rec."Balance (LCY)" > Rec."Credit Limit (LCY)") then
    //         BalanceStyleExpr := 'true'
    //     else
    //         BalanceStyleExpr := 'false';
    // end;

    trigger OnAfterGetRecord()
    var
        MyPageStyle: PageStyle;
    begin
        // if (Rec."Credit Limit (LCY)" <> 0) then
        //     if Rec."Balance (LCY)" > Rec."Credit Limit (LCY)" then
        //         MyPageStyle := PageStyle::Unfavorable
        //     else
        //         MyPageStyle := PageStyle::Favorable
        // else
        //     MyPageStyle := PageStyle::None;

        // With a Ternary Operator:
        MyPageStyle := Rec."Credit Limit (LCY)" = 0 ? PageStyle::None : Rec."Balance (LCY)" > Rec."Credit Limit (LCY)" ? PageStyle::Unfavorable : PageStyle::Favorable;

        BalanceStyleExpr := format(MyPageStyle);
    end;
}