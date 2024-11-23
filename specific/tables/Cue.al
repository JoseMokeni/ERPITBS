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

        // fields Nombre d'employes du departement de l'utilisateur
        // use flow fielter to filter the employees of the user's department
        field(4; "Employees in Department"; Integer)
        {
            Caption = 'Employees in My Department';
            FieldClass = FlowField;
            CalcFormula = COUNT(Employee WHERE(DepartmentCode = FIELD(UserDepartmentCode)));
        }

        field(5; "UserDepartmentCode"; Code[20])
        {
            Caption = 'User Department Code';
            FieldClass = FlowFilter;
        }

        // employee count
        field(6; "Number of employees"; Integer){
            Caption = 'Number of employees';
            FieldClass = FlowField;
            CalcFormula = COUNT(Employee);
        }

        // Department count
        field(7; "Number of departments"; Integer){
            Caption = 'Number of departments';
            FieldClass = FlowField;
            CalcFormula = COUNT(Department);
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