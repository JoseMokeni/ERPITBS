pageextension 50119 "User Setup Ext" extends "User Setup"
{
    layout
    {
        addafter("User ID")
        {
            field("Department Code"; Rec."Department Code")
            {
                ApplicationArea = All;
                Caption = 'Department Code';
                ToolTip = 'Specifies the department code for this user';
            }
        }
    }
}