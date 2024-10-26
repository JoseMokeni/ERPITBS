table 50002 "Chef Department"
{
    DataClassification = ToBeClassified;

    Caption = 'Chef Department';

    fields
    {
        field(1; Code; code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Code';
        }
        field(2; Name; text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Name';
        }
        field(3; Status; Enum "ChefDepartment Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
        }
        field(4; CountryCode; code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Country';
            TableRelation = "Country/Region".Code;
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
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