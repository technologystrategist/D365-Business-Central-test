page 50101 "Free Gift List"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = PJA_Free_Gifts;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(CustomerCategoryCode; CustomerCategoryCode)
                {
                    ApplicationArea = All;
                    tooltip = 'Customer Category Code';
                }
                field(ItemNo; ItemNo)
                {
                    ApplicationArea = All;
                    Tooltip = 'The Item that generates a free gift';
                }
                field(GiftQuantity; GiftQuantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Number of gifts the combination of Category, Item and quantity should entitle';
                }
                field(MinimumQuantity; MinimumQuantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Minimum quantity customers should buy in order to receive gift';
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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                end;
            }
        }
    }
}
