page 50100 RoleCenter
{
    Caption = 'Role Center';
    PageType = RoleCenter;
    
    layout
    {
        area(RoleCenter)
        {
            part(RC; 1441)
            {
                ApplicationArea = all;
                    
            }

            part(Cues; 50005)
            {
                ApplicationArea = All;
            }
        }
    }
    
    actions
    {
        area(Embedding)
        {
            action(Departments)
            {
                Caption = 'Departments';
                RunObject = page "Department Liste";
            }
            action(Employees)
            {
                Caption = 'Employees';
                RunObject = page "Employee List";
            }
            action(Users)
            {
                Caption = 'Users';
                RunObject = page "User Setup";
            }
        }
        area(Processing)
        {
            action(ActionName)
            {
                
            }
        }
    }
    
    var
        myInt: Integer;
}