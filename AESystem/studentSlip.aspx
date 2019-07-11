<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentSlip.aspx.cs" Inherits="AESystem.studentSlip" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Automated Examination System - Student Roll Number Slip</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <rsweb:ReportViewer ID="rptViewerSlip" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Height="566px" Width="866px">
                <LocalReport ReportPath="Reports\studentSlipStudent.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="SqlDataSourceSlip" Name="DataSetRoll" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            
            <asp:SqlDataSource ID="SqlDataSourceSlip" runat="server" ConnectionString="<%$ ConnectionStrings:adminConnection %>" SelectCommand="SELECT [StudentID], [StudentName], [studentEmail], [studentPassword], [studentAddress], [studentDegree], [studentProgramme], [studentExamType], [CourseOne], [DateOne], [CourseTwo], [DateTwo], [CourseThree], [DateThree], [CourseFour], [DateFour], [CourseFive], [DateFive], [CourseSix], [DateSix] FROM [tableStudent] WHERE ([studentEmail] = @studentEmail)">
                <SelectParameters>
                    <asp:SessionParameter Name="studentEmail" SessionField="id" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:ScriptManager ID="ScriptManagerSlip" runat="server">
            </asp:ScriptManager>
            
        </div>
    </form>
</body>
</html>
