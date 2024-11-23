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