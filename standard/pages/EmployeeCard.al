pageextension 55200 "BC Employee Card" extends "Employee Card"
{
    layout
    {
        // add department code and department description
        addlast(General)
        {
            field(DepartmentCode; Rec.DepartmentCode)
            {
                ApplicationArea = All;

                trigger OnValidate()
                var
                    myInt: Integer;
                    department: Record "Department"; // Record "Department" is a table in the database
                begin
                    if department.Get(Rec.DepartmentCode) then
                        Rec.DepartmentDescription := department.Description;
                end;
            }
            field(DepartmentDescription; Rec.DepartmentDescription)
            {
                ApplicationArea = All;               
                Editable = false;
            }
            field(DepartmentStatus; Rec.DepartmentStatus)
            {
                ApplicationArea = All;
            }

        }

        modify("Search Name"){
            Visible = false;
        }

        modify("Job Title"){
            Visible = false;
        }

    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;

}