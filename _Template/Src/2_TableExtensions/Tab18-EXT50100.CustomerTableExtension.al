tableextension 50100 "CustomerTableExtension" extends Customer
{
    fields
    {
        field(50100; "PJA Customer Category"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Customer Category".No;
            Caption = 'Customer Category Code';
        }
    }

    var
        myInt: Integer;
}