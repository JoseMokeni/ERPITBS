page 50005 "Cues"
{
    PageType = CardPart;
    SourceTable = Cue;
    
    layout
    {
        area(Content)
        {
            cuegroup("Employee Statistics")
            {

                field("Number of assigned employees"; Rec."Number of assigned employees")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Employee List";
                    ToolTip = 'Shows the number of employees that are assigned to departments';
                }

                field("Number of unassigned employees"; Rec."Number of unassigned employees")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Employee List"; 
                    ToolTip = 'Shows the number of employees that are not assigned to any department';
                }

                // field Nombre d'employes du département de l'utilisateur
                field("Employees in My Department"; Rec."Employees in Department")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Employee List";
                    ToolTip = 'Shows the number of employees that are assigned to the user''s department';
                }
            }
            cuegroup("General Statistics"){
                // Number of employees
                field("Number of employees"; Rec."Number of employees")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Employee List";
                    ToolTip = 'Shows the total number of employees';
                }

                // Number of departments
                field("Number of departments"; Rec."Number of departments")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Department Liste";
                    ToolTip = 'Shows the total number of departments';
                }
            }
        }
    }

    trigger OnOpenPage()
    var
        UserSetup: Record "User Setup";
    begin
        Rec.Reset;
        if not Rec.Get then begin
            Rec.Init;
            Rec.Insert;
        end; 

        // Set the user department code
        if UserSetup.Get(UserId) then begin
            Rec.SetFilter(UserDepartmentCode, UserSetup."Department Code");
        end;

    end;
}