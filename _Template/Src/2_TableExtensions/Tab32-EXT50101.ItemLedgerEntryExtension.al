tableextension 50101 ItemLedgerEntryExtension extends "Item Ledger Entry"
{
    fields
    {
        field(50100; "PJA Customer Category"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Customer Category".No;
            Caption = 'Customer Category';
        }
    }

    var
        myInt: Integer;
}