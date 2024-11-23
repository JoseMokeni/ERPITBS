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
            }
        }
    }
    trigger OnOpenPage()
    begin
        Rec.Reset;
        if not Rec.Get then begin
            Rec.Init;
            Rec.Insert;
        end; 
    end;
}