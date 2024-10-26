page 50001 "Department Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Department;
    Caption = 'Department Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(Code; Rec.Code)
                {
                    ApplicationArea = all;
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = all;
                }
                group(GroupDate)
                {
                    Caption = 'Date';

                    field(CreatedAT; Rec.CreatedAT)
                    {
                        ApplicationArea = all;
                        Editable = false;
                    }

                    field(CreatedBy; Rec.CreatedBy)
                    {
                        ApplicationArea = all;
                        Editable = false;
                    }
                    field(updatedAT; Rec.updatedAT)
                    {
                        ApplicationArea = all;
                        Editable = false;
                    }
                    field(updatedBy; Rec.updatedBy)
                    {
                        ApplicationArea = all;
                        Editable = false;
                    }
                }
                group(GroupChef)
                {
                    Caption = 'Department Chef';
                    field(ChefDepartmentCode; Rec.ChefDepartmentCode)
                    {
                        ApplicationArea = all;
                    }
                    field(ChefDepartmentName; Rec.ChefDepartmentName)
                    {
                        ApplicationArea = all;
                        Editable = false;
                    }
                    field(ChefDepartmentStatus; Rec.ChefDepartmentStatus)
                    {
                        ApplicationArea = all;
                        Editable = false;
                    }
                }
            }
            group(Details)
            {
                Caption = 'Details';

                field(Status; Rec.Status)
                {
                    ApplicationArea = all;
                    StyleExpr = statusStyle;
                }
            }

        
            part(DepartmentEmployees; "Department Employees SubPage")
            {
                ApplicationArea = All;
                SubPageLink = DepartmentCode= FIELD(Code);
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
        statusStyle: Text[20];
        Employee: Record Employee;

    trigger OnOpenPage()
    var
        text001: Label 'This department has more than 5 employees.';
    begin
        Employee.Reset();
        Employee.SetRange(DepartmentCode, Rec.Code);
        if Employee.Count > 5 then
            Message(text001);
    end;

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