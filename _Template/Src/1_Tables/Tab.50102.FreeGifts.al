table 50102 "PJA_Free_Gifts"
{
    DataClassification = ToBeClassified;
    LookupPageId = "Free Gift List";
    DrillDownPageId = "Free Gift List";
    Caption = 'Free Gifts';

    fields
    {
        field(1; CustomerCategoryCode; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Customer Category";
            Caption = 'Customer Category Code';

        }

        field(2; ItemNo; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Item;
            caption = 'Item No.';
        }

        field(3; MinimumQuantity; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Minimum quantity';
        }
        field(4; GiftQuantity; decimal)
        {
            DataClassification = ToBeClassified;
            caption = 'Free gift quantity';
        }

    }

    keys
    {
        key(PK; CustomerCategoryCode, ItemNo)
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