page 50005 "Cues"
{
    PageType = CardPart;
    SourceTable = Cue;
    
    layout
    {
        area(Content)
        {
            cuegroup("Employee Assignment")
            {
                CuegroupLayout = Wide;

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
        /*
            Filter groups:
            0: Default user filters
            1: User-defined filters
            2: System/Application filters - he system filter ensures users only see their department's data, 
                while still allowing them to apply additional filters.
            3-255: Reserved for special cases
        */
        if UserSetup.Get(UserId) then begin
            Rec.FilterGroup(2);  // Use filter group 2 for system filters
            Rec.SetFilter(UserDepartmentCode, UserSetup."Department Code");
            Rec.FilterGroup(0);  // Return to default filter group
        end;

    end;
}