table 50000 Department
{
    DataClassification = ToBeClassified;

    Caption = 'Department';

    fields
    {
        field(1; Code; code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Code';
        }
        field(2; Description; text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }

        field(3; Status; Enum "Description Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
        }

        field(4; CreatedAT; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'CreatedAT';
        }

        field(5; CreatedBy; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'CreatedBy';
        }
        field(6; updatedAT; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'UpdatedAT';
        }
        field(7; updatedBy; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'UpdatedBy';
        }
        field(8; ChefDepartmentCode; code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Chef Department Code';
            TableRelation = "Chef Department".Code;
        }
        field(9; ChefDepartmentName; text[100])
        {
            Caption = 'Chef Department Name';
            FieldClass = FlowField;
            CalcFormula = lookup("Chef Department".Name where(
                code = field(ChefDepartmentCode)
            ));
        }
        field(10; ChefDepartmentStatus; Enum "ChefDepartment Status")
        {
            Caption = 'Chef Department Status';
            FieldClass = FlowField;
            CalcFormula = lookup("Chef Department".Status where(
                code = field(ChefDepartmentCode)
            ));
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
        Rec.CreatedAT := TODAY;
        Rec.CreatedBy := USERID;
    end;

    trigger OnModify()
    begin
        Rec.UpdatedAT := TODAY;
        Rec.UpdatedBy := USERID;
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}