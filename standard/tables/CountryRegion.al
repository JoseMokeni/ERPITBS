tableextension 50009 "BC CountryRegion" extends "Country/Region"
{
    fields
    {
        field(50010; name2; text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'name2';
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}