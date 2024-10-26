page 50002 "ChefDepartment List"
{
    Caption = 'ChefDepartment List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Chef Department";
    CardPageId = "ChefDepartment Card";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Name; rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Status; rec.Status)
                {
                    ApplicationArea = All;
                }
                field(CountryCode; rec.CountryCode)
                {
                    ApplicationArea = All;
                }
                field(CountryName2; rec.CountryName2)
                {
                    ApplicationArea = All;
                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}