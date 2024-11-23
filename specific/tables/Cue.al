table 50003 Cue
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Primary Key"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        // Number of assigned employees
        field(2; "Number of assigned employees"; Integer)
        {
            Caption = 'Number of assigned employees';
            FieldClass = FlowField;
            CalcFormula = COUNT(Employee where (DepartmentCode = filter(<>'')));
        }

        // Number of unassigned employees
        field(3; "Number of unassigned employees"; Integer)
        {
            Caption = 'Number of unassigned employees';
            FieldClass = FlowField;
            CalcFormula = COUNT(Employee where (DepartmentCode = filter('')));
        }
    }
    
    keys
    {
        key(Key1; "Primary Key")
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