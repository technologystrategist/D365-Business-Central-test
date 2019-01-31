page 50100 "Customer Category List"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Customer Category";
    Caption = 'Customer Category List';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(No; No)
                {
                    ApplicationArea = All;
                    ToolTip = 'The category code (max 20 characters)';

                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Description for the category';

                }
                field(Default; Default)
                {
                    ApplicationArea = All;
                    tooltip = 'Set this field if category should be the default category';
                }
                field(Newletter; Newletter)
                {
                    ApplicationArea = All;
                    tooltip = 'Newsletter settings for the customer category';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Create Default Category")
            {
                ApplicationArea = All;
                Image = CreateForm;
                Promoted = True;
                PromotedCategory = Process;
                PromotedIsBig = True;
                ToolTip = 'Creates default customer category';
                caption = 'Create default category';


                trigger OnAction();
                begin

                end;
            }
        }
    }
}