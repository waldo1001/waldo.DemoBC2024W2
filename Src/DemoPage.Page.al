page 50100 DemoPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {

    }

    actions
    {
        area(Processing)
        {
            action(InterfaceExtension)
            {
                Caption = 'Interface Extension';

                trigger OnAction()
                begin
                    codeunit.run(codeunit::"Test Interfaces");
                end;
            }
            action(TestThis)
            {
                Caption = 'Test this';

                trigger OnAction()
                begin
                    codeunit.run(codeunit::"Test this");
                end;
            }

            action(QuerySaveAsJson)
            {
                Caption = 'Query.SaveAsJson';

                trigger OnAction()
                var
                    DemoSaveAsJson: Codeunit "Demo - SaveAsJson";
                begin
                    DemoSaveAsJson.DemoSaveAsJson();
                end;
            }
        }
    }
}