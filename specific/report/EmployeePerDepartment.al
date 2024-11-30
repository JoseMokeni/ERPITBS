report 50010 "Employee per department"
{
    DefaultLayout = RDLC;
    // path to the report layout
    RDLCLayout = '.\specific\report\EmployeePerDepartment.rdl';

    ApplicationArea = All;

    UsageCategory = ReportsAndAnalysis;

    Caption = 'Employee per department';
    
    dataset
    {
        dataitem(Employee; Employee)
        {
            column(Status; Status)
            {
                IncludeCaption = true;
            }

            column(Department; DepartmentCode)
            {
                IncludeCaption = true;
            }

            column(Description; DepartmentDescription)
            {
                IncludeCaption = true;
            }
            
            column(EmployeeCode; "No.")
            {
                IncludeCaption = true;
            }

            column(Name; FullName())
            {
            }

            column(CompanyName; companyName)
            {
            }

            column(CompanyPhone; companyPhone)
            {
            }

            column(CompanyPicture;companyInfo.Picture)
            {
            }

            column(WorkDate; TODAY)
            {
            }

        }
    }
    labels{
        EmployeeName = 'Name';
    }
    // requestpage
    // {
        // AboutTitle = 'Teaching tip title';
        // AboutText = 'Teaching tip content';
        // layout
        // {
        //     area(Content)
        //     {
        //         group(GroupName)
        //         {
        //             field(Name; SourceExpression)
        //             {
                        
        //             }
        //         }
        //     }
        // }
    
    //     actions
    //     {
    //         area(processing)
    //         {
    //             action(LayoutName)
    //             {
                    
    //             }
    //         }
    //     }
        
    // }
    
    
    var
        companyInfo: Record "Company Information";
        companyName: Text[100];
        companyPhone: Text[30];
    trigger OnPreReport()
    begin
        // store the company information in the variable
        // fields: Picture, Phone, Name
        companyInfo.GET;
        companyInfo.CalcFields(Picture);
        companyName := companyInfo.Name;
        companyPhone := companyInfo."Phone No.";
    end;
}