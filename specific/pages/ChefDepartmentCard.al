page 50003 "ChefDepartment Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Chef Department";
    Caption = 'Chef Department Card';

    layout
    {
        area(Content)
        {
            group(GroupName)
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
}