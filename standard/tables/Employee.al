tableextension 55200 "BC Employee" extends Employee
{
    fields
    {
        // Department code
        field(55201; DepartmentCode; code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Department Code';
            TableRelation = Department.Code;
        }
        // department description
        field(55202; DepartmentDescription; text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Department Description';
        }

        // department status
        field(55203; DepartmentStatus; Enum "Description Status")
        {
            Caption = 'Department Status';
            FieldClass = FlowField;
            CalcFormula = Lookup("Department".Status WHERE(Code = FIELD(DepartmentCode)));
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