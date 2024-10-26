page 50000 "Department Liste"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Department;
    Caption = 'Department Liste';
    CardPageId = "Department Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = all;
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = all;
                }

                field(Status; Rec.Status)
                {
                    ApplicationArea = all;
                    StyleExpr = statusStyle;
                }

                field(CreatedAT; Rec.CreatedAT)
                {
                    ApplicationArea = all;
                }

                field(CreatedBy; Rec.CreatedBy)
                {
                    ApplicationArea = all;
                }
                field(updatedAT; Rec.updatedAT)
                {
                    ApplicationArea = all;
                }
                field(updatedBy; Rec.updatedBy)
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
        statusStyle: Text[250];

    trigger OnAfterGetRecord()
    begin
        // If status is open, then set the background color to green
        // If status is closed, then set the background color to red
        if Rec.Status = Rec.Status::Open then
            statusStyle := 'favorable'
        else
            statusStyle := 'unfavorable';
            
    end;
}