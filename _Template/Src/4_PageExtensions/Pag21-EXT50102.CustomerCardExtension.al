pageextension 50102 CustomerCardExtension extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addLast(General)
        {
            field("PJA Customer Category"; "PJA Customer Category")
            {
                ApplicationArea = All;
                ToolTip = 'Customer Category';
            }
        }
    }

    actions
    {// Add changes to page actions here
        addLast("F&unctions")
        {
            Action("Open Category Free Gift setup")
            {
                image = Setup;
                Promoted = True;
                ApplicationArea = All;
                tooltip = 'Open the customer category free gift setup page';
                trigger OnAction();
                var
                    freegiftsetup: Page "Free Gift List";
                begin
                    freegiftsetup.run;
                END;

            }



        }

    }


}


