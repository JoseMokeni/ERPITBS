pageextension 50009 "BC CountryRegion List" extends "Countries/Regions"
{
    Caption = 'CountryRegion List';
    layout
    {
        addafter("Name")
        {
            field(Name2; rec.name2)
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}