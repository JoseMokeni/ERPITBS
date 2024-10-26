page 50004 "Department Employees SubPage"
{
    PageType = ListPart;
    SourceTable = Employee;
    Caption = 'Department Employees';
    UsageCategory = Lists;
    ApplicationArea = All;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                }
                field("Job Title"; Rec."Job Title")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}