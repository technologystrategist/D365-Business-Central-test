codeunit 50100 "FreeGiftManagement"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, 37, 'OnAfterValidateEvent', 'quantity', false, false)]
    local procedure AddFreeGift(var Rec: Record "Sales Line")
    var
        FreeGift: Record PJA_Free_Gifts;
        SalesLine: record "Sales Line";
        Customer: record customer;

    begin
        IF (rec.type = rec.type::Item) and (customer.get(rec."Sell-to Customer No.")) then begin
            if FreeGift.GET(Customer."PJA Customer Category", rec."No.") and (rec.Quantity >= FreeGift.MinimumQuantity) then begin
                //  OnbeforeFreeGiftSalesLineAdded(rec);
                salesline.init;
                salesline.Transferfields(rec);
                Salesline."Line No." := rec."Line No." + 10000;
                salesline.validate(quantity, freegift.GiftQuantity);
                salesline.validate("Line Discount %", 100);
                if salesline.insert then;
                // OnAfterFreeGiftSalesLineAdded(Rec, SalesLine);

            end;

        end;
    end;
}
