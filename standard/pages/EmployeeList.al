pageextension 55201 "BC Employee List" extends "Employee List"
{
    Caption = 'Employee List';
    layout
    {
        // Add department code and department description
        addafter("Last Name")
        {
            field(DepartmentCode; Rec.DepartmentCode)
            {
                ApplicationArea = All;
            }
            field(DepartmentDescription; Rec.DepartmentDescription)
            {
                ApplicationArea = All;
            }

            field(DepartmentStatus; Rec.DepartmentStatus)
            {
                ApplicationArea = All;
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