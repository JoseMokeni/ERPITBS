tableextension 50091 "User Setup Ext" extends "User Setup"
{
    fields
    {
        field(50000; "Department Code"; Code[20])
        {
            Caption = 'Department Code';
            TableRelation = Department;
            
            trigger OnValidate()
            var
                Department: Record Department;
            begin
                if "Department Code" <> '' then begin
                    Department.Get("Department Code");
                end;
            end;
        }
    }
}