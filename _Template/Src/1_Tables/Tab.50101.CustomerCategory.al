table 50101 "Customer Category"
{
    DataClassification = CustomerContent;
    LookupPageId = "Customer Category List";
    DrillDownPageId = "Customer Category List";
    Caption = 'Customer Category';

    fields
    {
        field(1; No; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
            trigger onvalidate()

            begin

            end;

        }
        field(2; Description; text[50])
        {
            DataClassification = CustomerContent;
            caption = 'Description';

        }
        field(3; Default; boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Default';

        }
        field(4; Newletter; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = " ","All","Quaterly";
            OptionCaption = ' ,All,Quaterly';
            Caption = 'Newsletter';
        }
    }

    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}